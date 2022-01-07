; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.h_wake_up_discard_thread.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.h_wake_up_discard_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.discard_cmd_control = type { i32, i32, i32, i32, i32* }
%struct.TYPE_2__ = type { %struct.discard_cmd_control* }

@MAX_PLIST_NUM = common dso_local global i32 0, align 4
@DISCARD_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, i32)* @wake_up_discard_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wake_up_discard_thread(%struct.f2fs_sb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.discard_cmd_control*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %9 = call %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %10, align 8
  store %struct.discard_cmd_control* %11, %struct.discard_cmd_control** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %59

15:                                               ; preds = %2
  %16 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %5, align 8
  %17 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %16, i32 0, i32 3
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load i32, i32* @MAX_PLIST_NUM, align 4
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %43, %15
  %22 = load i32, i32* %7, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  %27 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %5, align 8
  %28 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %46

32:                                               ; preds = %24
  %33 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %5, align 8
  %34 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = call i32 @list_empty(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %32
  store i32 1, i32* %6, align 4
  br label %46

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %7, align 4
  br label %21

46:                                               ; preds = %41, %31, %21
  %47 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %5, align 8
  %48 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %47, i32 0, i32 3
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %54 = load i32, i32* @DISCARD_TIME, align 4
  %55 = call i32 @is_idle(%struct.f2fs_sb_info* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52, %46
  br label %65

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %14
  %60 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %5, align 8
  %61 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  %62 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %5, align 8
  %63 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %62, i32 0, i32 2
  %64 = call i32 @wake_up_interruptible_all(i32* %63)
  br label %65

65:                                               ; preds = %59, %57
  ret void
}

declare dso_local %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @is_idle(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @wake_up_interruptible_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
