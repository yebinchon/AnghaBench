; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/mount/extr_unprivileged-remount-test.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/mount/extr_unprivileged-remount-test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MS_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"MS_RDONLY malfunctions\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"devpts\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"newinstance\00", align 1
@MS_NODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"MS_NODEV malfunctions\0A\00", align 1
@MS_NOSUID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"MS_NOSUID malfunctions\0A\00", align 1
@MS_NOEXEC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"MS_NOEXEC malfunctions\0A\00", align 1
@MS_RELATIME = common dso_local global i32 0, align 4
@MS_NOATIME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"MS_RELATIME malfunctions\0A\00", align 1
@MS_STRICTATIME = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"MS_STRICTATIME malfunctions\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"MS_NOATIME malfunctions\0A\00", align 1
@MS_NODIRATIME = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [40 x i8] c"MS_RELATIME|MS_NODIRATIME malfunctions\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"MS_STRICTATIME|MS_NODIRATIME malfunctions\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"MS_NOATIME|MS_DIRATIME malfunctions\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"ramfs\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Default atime malfunctions\0A\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"Mount flags unexpectedly changed after remount\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i32, i32* @MS_RDONLY, align 4
  %7 = call i32 @test_unpriv_remount_simple(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = call i32 @die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %2
  %12 = load i32, i32* @MS_NODEV, align 4
  %13 = load i32, i32* @MS_NODEV, align 4
  %14 = call i32 @test_unpriv_remount(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %12, i32 %13, i32 0)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = call i32 @die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %11
  %19 = load i32, i32* @MS_NOSUID, align 4
  %20 = call i32 @test_unpriv_remount_simple(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = call i32 @die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %18
  %25 = load i32, i32* @MS_NOEXEC, align 4
  %26 = call i32 @test_unpriv_remount_simple(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = call i32 @die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i32, i32* @MS_RELATIME, align 4
  %32 = load i32, i32* @MS_NOATIME, align 4
  %33 = call i32 @test_unpriv_remount_atime(i32 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = call i32 @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %30
  %38 = load i32, i32* @MS_STRICTATIME, align 4
  %39 = load i32, i32* @MS_NOATIME, align 4
  %40 = call i32 @test_unpriv_remount_atime(i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = call i32 @die(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %37
  %45 = load i32, i32* @MS_NOATIME, align 4
  %46 = load i32, i32* @MS_STRICTATIME, align 4
  %47 = call i32 @test_unpriv_remount_atime(i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = call i32 @die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %44
  %52 = load i32, i32* @MS_RELATIME, align 4
  %53 = load i32, i32* @MS_NODIRATIME, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @MS_NOATIME, align 4
  %56 = call i32 @test_unpriv_remount_atime(i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %51
  %59 = call i32 @die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %51
  %61 = load i32, i32* @MS_STRICTATIME, align 4
  %62 = load i32, i32* @MS_NODIRATIME, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @MS_NOATIME, align 4
  %65 = call i32 @test_unpriv_remount_atime(i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %60
  %68 = call i32 @die(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %60
  %70 = load i32, i32* @MS_NOATIME, align 4
  %71 = load i32, i32* @MS_NODIRATIME, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @MS_STRICTATIME, align 4
  %74 = call i32 @test_unpriv_remount_atime(i32 %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %69
  %77 = call i32 @die(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %69
  %79 = load i32, i32* @MS_STRICTATIME, align 4
  %80 = load i32, i32* @MS_NOATIME, align 4
  %81 = call i32 @test_unpriv_remount(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* null, i32 %79, i32 0, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %78
  %84 = call i32 @die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %78
  %86 = call i32 (...) @test_priv_mount_unpriv_remount()
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = call i32 @die(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %85
  %91 = load i32, i32* @EXIT_SUCCESS, align 4
  ret i32 %91
}

declare dso_local i32 @test_unpriv_remount_simple(i32) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @test_unpriv_remount(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @test_unpriv_remount_atime(i32, i32) #1

declare dso_local i32 @test_priv_mount_unpriv_remount(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
