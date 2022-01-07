; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/mount/extr_unprivileged-remount-test.c_test_priv_mount_unpriv_remount.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/mount/extr_unprivileged-remount-test.c_test_priv_mount_unpriv_remount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"/dev\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"fork failed: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"waitpid failed: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"waited for %d got %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"child did not terminate cleanly\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i64 0, align 8
@CLONE_NEWNS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"unshare(CLONE_NEWNS) failed: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@MS_BIND = common dso_local global i32 0, align 4
@MS_REC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [47 x i8] c"recursive bind mount of %s onto %s failed: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@MS_REMOUNT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [28 x i8] c"remount of /tmp failed: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [80 x i8] c"Mount flags unexpectedly changed during remount of %s originally mounted on %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_priv_mount_unpriv_remount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_priv_mount_unpriv_remount() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  %9 = call i32 (...) @fork()
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %16

12:                                               ; preds = %0
  %13 = load i32, i32* @errno, align 4
  %14 = call i32 @strerror(i32 %13)
  %15 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %12, %0
  %17 = load i32, i32* %1, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %16
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @waitpid(i32 %20, i32* %8, i32 0)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* @errno, align 4
  %26 = call i32 @strerror(i32 %25)
  %27 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %24, %19
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %1, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @WIFEXITED(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @WEXITSTATUS(i32 %43)
  %45 = load i64, i64* @EXIT_SUCCESS, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 1, i32 0
  ret i32 %48

49:                                               ; preds = %16
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @read_mnt_flags(i8* %50)
  store i32 %51, i32* %5, align 4
  %52 = call i32 (...) @create_and_enter_userns()
  %53 = load i32, i32* @CLONE_NEWNS, align 4
  %54 = call i32 @unshare(i32 %53)
  store i32 %54, i32* %2, align 4
  %55 = load i32, i32* %2, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load i32, i32* @errno, align 4
  %59 = call i32 @strerror(i32 %58)
  %60 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %57, %49
  %62 = load i8*, i8** %3, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = load i32, i32* @MS_BIND, align 4
  %65 = load i32, i32* @MS_REC, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @mount(i8* %62, i8* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %66, i32* null)
  store i32 %67, i32* %2, align 4
  %68 = load i32, i32* %2, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %61
  %71 = load i8*, i8** %3, align 8
  %72 = load i8*, i8** %4, align 8
  %73 = load i32, i32* @errno, align 4
  %74 = call i32 @strerror(i32 %73)
  %75 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i8* %71, i8* %72, i32 %74)
  br label %76

76:                                               ; preds = %70, %61
  %77 = load i8*, i8** %4, align 8
  %78 = load i8*, i8** %4, align 8
  %79 = load i32, i32* @MS_REMOUNT, align 4
  %80 = load i32, i32* @MS_BIND, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @mount(i8* %77, i8* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %83, i32* null)
  store i32 %84, i32* %2, align 4
  %85 = load i32, i32* %2, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %76
  %88 = load i32, i32* @errno, align 4
  %89 = call i32 @strerror(i32 %88)
  %90 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %87, %76
  %92 = load i8*, i8** %4, align 8
  %93 = call i32 @read_mnt_flags(i8* %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load i8*, i8** %4, align 8
  %99 = load i8*, i8** %3, align 8
  %100 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.11, i64 0, i64 0), i8* %98, i8* %99)
  br label %101

101:                                              ; preds = %97, %91
  %102 = load i64, i64* @EXIT_SUCCESS, align 8
  %103 = call i32 @exit(i64 %102) #3
  unreachable
}

declare dso_local i32 @fork(...) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

declare dso_local i32 @read_mnt_flags(i8*) #1

declare dso_local i32 @create_and_enter_userns(...) #1

declare dso_local i32 @unshare(i32) #1

declare dso_local i32 @mount(i8*, i8*, i8*, i32, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
