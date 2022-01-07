; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/filesystems/binderfs/extr_binderfs_test.c_change_to_mountns.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/filesystems/binderfs/extr_binderfs_test.c_change_to_mountns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLONE_NEWNS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s - Failed to unshare mount namespace\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@MS_REC = common dso_local global i32 0, align 4
@MS_PRIVATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"%s - Failed to mount / as private\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @change_to_mountns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_to_mountns() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @CLONE_NEWNS, align 4
  %3 = call i32 @unshare(i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i32, i32* @errno, align 4
  %8 = call i32 @strerror(i32 %7)
  %9 = call i32 @ksft_exit_fail_msg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %8)
  br label %10

10:                                               ; preds = %6, %0
  %11 = load i32, i32* @MS_REC, align 4
  %12 = load i32, i32* @MS_PRIVATE, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @mount(i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %13, i32 0)
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = load i32, i32* @errno, align 4
  %19 = call i32 @strerror(i32 %18)
  %20 = call i32 @ksft_exit_fail_msg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %17, %10
  ret void
}

declare dso_local i32 @unshare(i32) #1

declare dso_local i32 @ksft_exit_fail_msg(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @mount(i32*, i8*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
