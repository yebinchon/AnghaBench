; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_bpf_loader_strerror.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_bpf_loader_strerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STRERR_BUFSIZE = common dso_local global i32 0, align 4
@__LIBBPF_ERRNO__START = common dso_local global i32 0, align 4
@__BPF_LOADER_ERRNO__START = common dso_local global i32 0, align 4
@__BPF_LOADER_ERRNO__END = common dso_local global i32 0, align 4
@bpf_loader_strerror_table = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Unknown bpf loader error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64)* @bpf_loader_strerror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_loader_strerror(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* @STRERR_BUFSIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %3
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %83

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  br label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = sub nsw i32 0, %28
  br label %30

30:                                               ; preds = %27, %25
  %31 = phi i32 [ %26, %25 ], [ %29, %27 ]
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @__LIBBPF_ERRNO__START, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @libbpf_strerror(i32 %36, i8* %37, i64 %38)
  store i32 %39, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %83

40:                                               ; preds = %30
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @__BPF_LOADER_ERRNO__START, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @__BPF_LOADER_ERRNO__END, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = load i8**, i8*** @bpf_loader_strerror_table, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @ERRNO_OFFSET(i32 %50)
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %10, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %54, i64 %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %56)
  %58 = load i8*, i8** %6, align 8
  %59 = load i64, i64* %7, align 8
  %60 = sub i64 %59, 1
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  store i8 0, i8* %61, align 1
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %83

62:                                               ; preds = %44, %40
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @__BPF_LOADER_ERRNO__END, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load i8*, i8** %6, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %67, i64 %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %78

71:                                               ; preds = %62
  %72 = load i8*, i8** %6, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i32, i32* %5, align 4
  %75 = trunc i64 %13 to i32
  %76 = call i8* @str_error_r(i32 %74, i8* %15, i32 %75)
  %77 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %72, i64 %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %71, %66
  %79 = load i8*, i8** %6, align 8
  %80 = load i64, i64* %7, align 8
  %81 = sub i64 %80, 1
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  store i8 0, i8* %82, align 1
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %83

83:                                               ; preds = %78, %48, %35, %21
  %84 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @libbpf_strerror(i32, i8*, i64) #2

declare dso_local i64 @ERRNO_OFFSET(i32) #2

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #2

declare dso_local i8* @str_error_r(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
