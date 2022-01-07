; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/mount/extr_unprivileged-remount-test.c_vmaybe_write_file.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/mount/extr_unprivileged-remount-test.c_vmaybe_write_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"vsnprintf failed: %s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"vsnprintf output truncated\0A\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"open of %s failed: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"short write to %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"write to %s failed: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"close of %s failed: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*, i32)* @vmaybe_write_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmaybe_write_file(i32 %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [4096 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @vsnprintf(i8* %13, i32 4096, i8* %14, i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i64, i64* @errno, align 8
  %21 = call i32 @strerror(i64 %20)
  %22 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %19, %4
  %24 = load i32, i32* %12, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp uge i64 %25, 4096
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %23
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* @O_WRONLY, align 4
  %32 = call i32 @open(i8* %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = load i64, i64* @errno, align 8
  %37 = load i64, i64* @ENOENT, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %77

43:                                               ; preds = %39, %35
  %44 = load i8*, i8** %6, align 8
  %45 = load i64, i64* @errno, align 8
  %46 = call i32 @strerror(i64 %45)
  %47 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %44, i32 %46)
  br label %48

48:                                               ; preds = %43, %29
  %49 = load i32, i32* %10, align 4
  %50 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @write(i32 %49, i8* %50, i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %48
  %57 = load i32, i32* %11, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %60)
  br label %67

62:                                               ; preds = %56
  %63 = load i8*, i8** %6, align 8
  %64 = load i64, i64* @errno, align 8
  %65 = call i32 @strerror(i64 %64)
  %66 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %63, i32 %65)
  br label %67

67:                                               ; preds = %62, %59
  br label %68

68:                                               ; preds = %67, %48
  %69 = load i32, i32* %10, align 4
  %70 = call i64 @close(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i8*, i8** %6, align 8
  %74 = load i64, i64* @errno, align 8
  %75 = call i32 @strerror(i64 %74)
  %76 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %73, i32 %75)
  br label %77

77:                                               ; preds = %42, %72, %68
  ret void
}

declare dso_local i32 @vsnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i64 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
