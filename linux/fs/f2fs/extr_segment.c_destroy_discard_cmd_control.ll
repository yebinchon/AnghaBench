; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_destroy_discard_cmd_control.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_destroy_discard_cmd_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.discard_cmd_control = type { i32 }
%struct.TYPE_2__ = type { %struct.discard_cmd_control* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*)* @destroy_discard_cmd_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_discard_cmd_control(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca %struct.f2fs_sb_info*, align 8
  %3 = alloca %struct.discard_cmd_control*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %2, align 8
  %4 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %5 = call %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info* %4)
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %6, align 8
  store %struct.discard_cmd_control* %7, %struct.discard_cmd_control** %3, align 8
  %8 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %3, align 8
  %9 = icmp ne %struct.discard_cmd_control* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %28

11:                                               ; preds = %1
  %12 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %13 = call i32 @f2fs_stop_discard_thread(%struct.f2fs_sb_info* %12)
  %14 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %3, align 8
  %15 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %14, i32 0, i32 0
  %16 = call i32 @atomic_read(i32* %15)
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %21 = call i32 @f2fs_issue_discard_timeout(%struct.f2fs_sb_info* %20)
  br label %22

22:                                               ; preds = %19, %11
  %23 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %3, align 8
  %24 = call i32 @kvfree(%struct.discard_cmd_control* %23)
  %25 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %26 = call %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store %struct.discard_cmd_control* null, %struct.discard_cmd_control** %27, align 8
  br label %28

28:                                               ; preds = %22, %10
  ret void
}

declare dso_local %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_stop_discard_thread(%struct.f2fs_sb_info*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @f2fs_issue_discard_timeout(%struct.f2fs_sb_info*) #1

declare dso_local i32 @kvfree(%struct.discard_cmd_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
