; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_queue_log_writer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_queue_log_writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_journal = type { i32, i32 }

@J_WRITERS_QUEUED = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @queue_log_writer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queue_log_writer(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.reiserfs_journal*, align 8
  %5 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %6 = load %struct.super_block*, %struct.super_block** %2, align 8
  %7 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %6)
  store %struct.reiserfs_journal* %7, %struct.reiserfs_journal** %4, align 8
  %8 = load i32, i32* @J_WRITERS_QUEUED, align 4
  %9 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %10 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %9, i32 0, i32 1
  %11 = call i32 @set_bit(i32 %8, i32* %10)
  %12 = load i32, i32* @current, align 4
  %13 = call i32 @init_waitqueue_entry(i32* %3, i32 %12)
  %14 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %15 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %14, i32 0, i32 0
  %16 = call i32 @add_wait_queue(i32* %15, i32* %3)
  %17 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %18 = call i32 @set_current_state(i32 %17)
  %19 = load i32, i32* @J_WRITERS_QUEUED, align 4
  %20 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %21 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %20, i32 0, i32 1
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.super_block*, %struct.super_block** %2, align 8
  %26 = call i32 @reiserfs_write_unlock_nested(%struct.super_block* %25)
  store i32 %26, i32* %5, align 4
  %27 = call i32 (...) @schedule()
  %28 = load %struct.super_block*, %struct.super_block** %2, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @reiserfs_write_lock_nested(%struct.super_block* %28, i32 %29)
  br label %31

31:                                               ; preds = %24, %1
  %32 = load i32, i32* @TASK_RUNNING, align 4
  %33 = call i32 @__set_current_state(i32 %32)
  %34 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %35 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %34, i32 0, i32 0
  %36 = call i32 @remove_wait_queue(i32* %35, i32* %3)
  ret void
}

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @init_waitqueue_entry(i32*, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @reiserfs_write_unlock_nested(%struct.super_block*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @reiserfs_write_lock_nested(%struct.super_block*, i32) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
