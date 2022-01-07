; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_submit_logged_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_submit_logged_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }

@reiserfs_end_buffer_io_sync = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer_head*)* @submit_logged_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @submit_logged_buffer(%struct.buffer_head* %0) #0 {
  %2 = alloca %struct.buffer_head*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %2, align 8
  %3 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %4 = call i32 @get_bh(%struct.buffer_head* %3)
  %5 = load i32, i32* @reiserfs_end_buffer_io_sync, align 4
  %6 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %7 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %9 = call i32 @clear_buffer_journal_new(%struct.buffer_head* %8)
  %10 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %11 = call i32 @clear_buffer_dirty(%struct.buffer_head* %10)
  %12 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %13 = call i32 @test_clear_buffer_journal_test(%struct.buffer_head* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = call i32 (...) @BUG()
  br label %17

17:                                               ; preds = %15, %1
  %18 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %19 = call i32 @buffer_uptodate(%struct.buffer_head* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = call i32 (...) @BUG()
  br label %23

23:                                               ; preds = %21, %17
  %24 = load i32, i32* @REQ_OP_WRITE, align 4
  %25 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %26 = call i32 @submit_bh(i32 %24, i32 0, %struct.buffer_head* %25)
  ret void
}

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_journal_new(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @test_clear_buffer_journal_test(%struct.buffer_head*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @submit_bh(i32, i32, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
