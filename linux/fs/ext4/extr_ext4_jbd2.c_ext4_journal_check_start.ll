; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_ext4_jbd2.c_ext4_journal_check_start.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_ext4_jbd2.c_ext4_journal_check_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32* }

@EIO = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@SB_FREEZE_COMPLETE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Detected aborted journal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @ext4_journal_check_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_journal_check_start(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %5 = call i32 (...) @might_sleep()
  %6 = load %struct.super_block*, %struct.super_block** %3, align 8
  %7 = call %struct.TYPE_5__* @EXT4_SB(%struct.super_block* %6)
  %8 = call i32 @ext4_forced_shutdown(%struct.TYPE_5__* %7)
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %46

14:                                               ; preds = %1
  %15 = load %struct.super_block*, %struct.super_block** %3, align 8
  %16 = call i64 @sb_rdonly(%struct.super_block* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @EROFS, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %46

21:                                               ; preds = %14
  %22 = load %struct.super_block*, %struct.super_block** %3, align 8
  %23 = getelementptr inbounds %struct.super_block, %struct.super_block* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SB_FREEZE_COMPLETE, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON(i32 %28)
  %30 = load %struct.super_block*, %struct.super_block** %3, align 8
  %31 = call %struct.TYPE_5__* @EXT4_SB(%struct.super_block* %30)
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %4, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %21
  %37 = load i32*, i32** %4, align 8
  %38 = call i64 @is_journal_aborted(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load %struct.super_block*, %struct.super_block** %3, align 8
  %42 = call i32 @ext4_abort(%struct.super_block* %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EROFS, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %46

45:                                               ; preds = %36, %21
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %40, %18, %11
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ext4_forced_shutdown(%struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_5__* @EXT4_SB(%struct.super_block*) #1

declare dso_local i64 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @is_journal_aborted(i32*) #1

declare dso_local i32 @ext4_abort(%struct.super_block*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
