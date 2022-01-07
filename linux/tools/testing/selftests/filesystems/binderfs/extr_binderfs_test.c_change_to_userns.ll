; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/filesystems/binderfs/extr_binderfs_test.c_change_to_userns.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/filesystems/binderfs/extr_binderfs_test.c_change_to_userns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLONE_NEWUSER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%s - Failed to unshare user namespace\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"/proc/self/setgroups\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"deny\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"0 %d 1\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"%s - Failed to prepare uid mapping\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"/proc/self/uid_map\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"/proc/self/gid_map\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"%s - Failed to setgid(0)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @change_to_userns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_to_userns() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [4096 x i8], align 16
  %5 = call i32 (...) @getuid()
  store i32 %5, i32* %2, align 4
  %6 = call i32 (...) @getgid()
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @CLONE_NEWUSER, align 4
  %8 = call i32 @unshare(i32 %7)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %0
  %12 = load i32, i32* @errno, align 4
  %13 = call i32 @strerror(i32 %12)
  %14 = call i32 @ksft_exit_fail_msg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %11, %0
  %16 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %17 = load i32, i32* @ENOENT, align 4
  %18 = call i32 @write_to_file(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %16, i32 %17)
  %19 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @snprintf(i8* %19, i32 4096, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %20)
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* %1, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp uge i64 %26, 4096
  br i1 %27, label %28, label %32

28:                                               ; preds = %24, %15
  %29 = load i32, i32* @errno, align 4
  %30 = call i32 @strerror(i32 %29)
  %31 = call i32 @ksft_exit_fail_msg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %28, %24
  %33 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0
  %34 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0
  %35 = call i32 @strlen(i8* %34)
  %36 = call i32 @write_to_file(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %33, i32 %35, i32 0)
  %37 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @snprintf(i8* %37, i32 4096, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  store i32 %39, i32* %1, align 4
  %40 = load i32, i32* %1, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %32
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp uge i64 %44, 4096
  br i1 %45, label %46, label %50

46:                                               ; preds = %42, %32
  %47 = load i32, i32* @errno, align 4
  %48 = call i32 @strerror(i32 %47)
  %49 = call i32 @ksft_exit_fail_msg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %46, %42
  %51 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0
  %52 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0
  %53 = call i32 @strlen(i8* %52)
  %54 = call i32 @write_to_file(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %51, i32 %53, i32 0)
  %55 = call i32 @setgid(i32 0)
  store i32 %55, i32* %1, align 4
  %56 = load i32, i32* %1, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load i32, i32* @errno, align 4
  %60 = call i32 @strerror(i32 %59)
  %61 = call i32 @ksft_exit_fail_msg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %58, %50
  %63 = call i32 @setuid(i32 0)
  store i32 %63, i32* %1, align 4
  %64 = load i32, i32* %1, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32, i32* @errno, align 4
  %68 = call i32 @strerror(i32 %67)
  %69 = call i32 @ksft_exit_fail_msg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %66, %62
  ret void
}

declare dso_local i32 @getuid(...) #1

declare dso_local i32 @getgid(...) #1

declare dso_local i32 @unshare(i32) #1

declare dso_local i32 @ksft_exit_fail_msg(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @write_to_file(i8*, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @setgid(i32) #1

declare dso_local i32 @setuid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
