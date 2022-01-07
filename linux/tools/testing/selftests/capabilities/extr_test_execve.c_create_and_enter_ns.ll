; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/capabilities/extr_test_execve.c_create_and_enter_ns.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/capabilities/extr_test_execve.c_create_and_enter_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLONE_NEWNS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"[NOTE]\09Using global UIDs for tests\0A\00", align 1
@PR_SET_KEEPCAPS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"PR_SET_KEEPCAPS - %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"setresuid - %s\0A\00", align 1
@CAP_LAST_CAP = common dso_local global i32 0, align 4
@CAPNG_PERMITTED = common dso_local global i32 0, align 4
@CAPNG_ADD = common dso_local global i32 0, align 4
@CAPNG_EFFECTIVE = common dso_local global i32 0, align 4
@CAPNG_SELECT_CAPS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"capng_apply - %s\0A\00", align 1
@CLONE_NEWUSER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"[NOTE]\09Using a user namespace for tests\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"/proc/self/setgroups\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"deny\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"/proc/self/uid_map\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%d %d 1\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"/proc/self/gid_map\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"0 %d 1\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"must be root or be able to create a userns\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@MS_REC = common dso_local global i32 0, align 4
@MS_PRIVATE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [33 x i8] c"remount everything private - %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @create_and_enter_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_and_enter_ns(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = call i32 (...) @getuid()
  store i32 %7, i32* %3, align 4
  %8 = call i32 (...) @getgid()
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @CLONE_NEWNS, align 4
  %10 = call i64 @unshare(i32 %9)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %59

12:                                               ; preds = %1
  %13 = call i32 @ksft_print_msg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @PR_SET_KEEPCAPS, align 4
  %15 = call i64 @prctl(i32 %14, i32 1, i32 0, i32 0, i32 0)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* @errno, align 4
  %19 = call i32 @strerror(i32 %18)
  %20 = call i32 @ksft_exit_fail_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %17, %12
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = call i64 @setresuid(i32 %22, i32 %23, i32 -1)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @errno, align 4
  %28 = call i32 @strerror(i32 %27)
  %29 = call i32 @ksft_exit_fail_msg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %26, %21
  %31 = call i32 (...) @capng_get_caps_process()
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %47, %30
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @CAP_LAST_CAP, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load i32, i32* @CAPNG_PERMITTED, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @capng_have_capability(i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i32, i32* @CAPNG_ADD, align 4
  %43 = load i32, i32* @CAPNG_EFFECTIVE, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @capng_update(i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %36
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %32

50:                                               ; preds = %32
  %51 = load i32, i32* @CAPNG_SELECT_CAPS, align 4
  %52 = call i64 @capng_apply(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* @errno, align 4
  %56 = call i32 @strerror(i32 %55)
  %57 = call i32 @ksft_exit_fail_msg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %54, %50
  store i32 1, i32* %6, align 4
  br label %76

59:                                               ; preds = %1
  %60 = load i32, i32* @CLONE_NEWUSER, align 4
  %61 = load i32, i32* @CLONE_NEWNS, align 4
  %62 = or i32 %60, %61
  %63 = call i64 @unshare(i32 %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = call i32 @ksft_print_msg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %67 = call i32 @maybe_write_file(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %68 = load i32, i32* %2, align 4
  %69 = load i32, i32* %3, align 4
  %70 = call i32 (i8*, i8*, i32, ...) @write_file(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %68, i32 %69)
  %71 = load i32, i32* %4, align 4
  %72 = call i32 (i8*, i8*, i32, ...) @write_file(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %71)
  store i32 0, i32* %6, align 4
  br label %75

73:                                               ; preds = %59
  %74 = call i32 @ksft_exit_skip(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %65
  br label %76

76:                                               ; preds = %75, %58
  %77 = load i32, i32* @MS_REC, align 4
  %78 = load i32, i32* @MS_PRIVATE, align 4
  %79 = or i32 %77, %78
  %80 = call i64 @mount(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32* null, i32 %79, i32* null)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i32, i32* @errno, align 4
  %84 = call i32 @strerror(i32 %83)
  %85 = call i32 @ksft_exit_fail_msg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %82, %76
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @getuid(...) #1

declare dso_local i32 @getgid(...) #1

declare dso_local i64 @unshare(i32) #1

declare dso_local i32 @ksft_print_msg(i8*) #1

declare dso_local i64 @prctl(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ksft_exit_fail_msg(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @setresuid(i32, i32, i32) #1

declare dso_local i32 @capng_get_caps_process(...) #1

declare dso_local i64 @capng_have_capability(i32, i32) #1

declare dso_local i32 @capng_update(i32, i32, i32) #1

declare dso_local i64 @capng_apply(i32) #1

declare dso_local i32 @maybe_write_file(i8*, i8*) #1

declare dso_local i32 @write_file(i8*, i8*, i32, ...) #1

declare dso_local i32 @ksft_exit_skip(i8*) #1

declare dso_local i64 @mount(i8*, i8*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
