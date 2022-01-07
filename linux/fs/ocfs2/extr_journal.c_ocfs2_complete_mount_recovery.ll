; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_complete_mount_recovery.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_complete_mount_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32*, i32, %struct.ocfs2_journal* }
%struct.ocfs2_journal = type { i32 }

@ORPHAN_NEED_TRUNCATE = common dso_local global i32 0, align 4
@REPLAY_NEEDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_complete_mount_recovery(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  %3 = alloca %struct.ocfs2_journal*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  %4 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %5 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %4, i32 0, i32 2
  %6 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %5, align 8
  store %struct.ocfs2_journal* %6, %struct.ocfs2_journal** %3, align 8
  %7 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %8 = call i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %33

11:                                               ; preds = %1
  %12 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %13 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %14 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %17 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* @ORPHAN_NEED_TRUNCATE, align 4
  %20 = call i32 @ocfs2_queue_recovery_completion(%struct.ocfs2_journal* %12, i32 %15, i32* %18, i32* null, i32* null, i32 %19)
  %21 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %22 = call i32 @ocfs2_schedule_truncate_log_flush(%struct.ocfs2_super* %21, i32 0)
  %23 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %24 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  %25 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %26 = load i32, i32* @REPLAY_NEEDED, align 4
  %27 = call i32 @ocfs2_replay_map_set_state(%struct.ocfs2_super* %25, i32 %26)
  %28 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %29 = load i32, i32* @ORPHAN_NEED_TRUNCATE, align 4
  %30 = call i32 @ocfs2_queue_replay_slots(%struct.ocfs2_super* %28, i32 %29)
  %31 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %32 = call i32 @ocfs2_free_replay_slots(%struct.ocfs2_super* %31)
  br label %33

33:                                               ; preds = %11, %10
  ret void
}

declare dso_local i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_queue_recovery_completion(%struct.ocfs2_journal*, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @ocfs2_schedule_truncate_log_flush(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_replay_map_set_state(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_queue_replay_slots(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_free_replay_slots(%struct.ocfs2_super*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
