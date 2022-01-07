; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf__load.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf__load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf = type { i32, i32, i32 }

@BPF_LOG_BUF_SIZE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Error loading BTF: %s(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btf__load(%struct.btf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.btf* %0, %struct.btf** %3, align 8
  %7 = load i32, i32* @BPF_LOG_BUF_SIZE, align 4
  store i32 %7, i32* %4, align 4
  store i8* null, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.btf*, %struct.btf** %3, align 8
  %9 = getelementptr inbounds %struct.btf, %struct.btf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EEXIST, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %61

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = call i8* @malloc(i32 %16)
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %61

23:                                               ; preds = %15
  %24 = load i8*, i8** %5, align 8
  store i8 0, i8* %24, align 1
  %25 = load %struct.btf*, %struct.btf** %3, align 8
  %26 = getelementptr inbounds %struct.btf, %struct.btf* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.btf*, %struct.btf** %3, align 8
  %29 = getelementptr inbounds %struct.btf, %struct.btf* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @bpf_load_btf(i32 %27, i32 %30, i8* %31, i32 %32, i32 0)
  %34 = load %struct.btf*, %struct.btf** %3, align 8
  %35 = getelementptr inbounds %struct.btf, %struct.btf* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.btf*, %struct.btf** %3, align 8
  %37 = getelementptr inbounds %struct.btf, %struct.btf* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %23
  %41 = load i32, i32* @errno, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* @errno, align 4
  %44 = call i32 @strerror(i32 %43)
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = load i32, i32* @errno, align 4
  %48 = call i32 (i8*, i8*, ...) @pr_warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %46, i32 %47)
  %49 = load i8*, i8** %5, align 8
  %50 = load i8, i8* %49, align 1
  %51 = icmp ne i8 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %40
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 (i8*, i8*, ...) @pr_warning(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %52, %40
  br label %57

56:                                               ; preds = %23
  br label %57

57:                                               ; preds = %56, %55
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @free(i8* %58)
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %57, %20, %12
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @bpf_load_btf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @pr_warning(i8*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
