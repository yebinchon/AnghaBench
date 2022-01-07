; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_check_path.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_check_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i64 }

@STRERR_BUFSIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to statfs %s: %s\0A\00", align 1
@BPF_FS_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"specified path %s is not on BPF FS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @check_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_path(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.statfs, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %12 = load i32, i32* @STRERR_BUFSIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  store i32 0, i32* %10, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %61

21:                                               ; preds = %1
  %22 = load i8*, i8** %3, align 8
  %23 = call i8* @strdup(i8* %22)
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %61

29:                                               ; preds = %21
  %30 = load i8*, i8** %8, align 8
  %31 = call i8* @dirname(i8* %30)
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = call i64 @statfs(i8* %32, %struct.statfs* %7)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load i32, i32* @errno, align 4
  %37 = trunc i64 %13 to i32
  %38 = call i8* @libbpf_strerror_r(i32 %36, i8* %15, i32 %37)
  store i8* %38, i8** %4, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 (i8*, i8*, ...) @pr_warning(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %39, i8* %40)
  %42 = load i32, i32* @errno, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %35, %29
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @free(i8* %45)
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.statfs, %struct.statfs* %7, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @BPF_FS_MAGIC, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i8*, i8** %3, align 8
  %56 = call i32 (i8*, i8*, ...) @pr_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %54, %49, %44
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %61

61:                                               ; preds = %59, %26, %18
  %62 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strdup(i8*) #2

declare dso_local i8* @dirname(i8*) #2

declare dso_local i64 @statfs(i8*, %struct.statfs*) #2

declare dso_local i8* @libbpf_strerror_r(i32, i8*, i32) #2

declare dso_local i32 @pr_warning(i8*, i8*, ...) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
