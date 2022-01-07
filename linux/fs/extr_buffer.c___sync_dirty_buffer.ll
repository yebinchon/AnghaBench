; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_buffer.c___sync_dirty_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_buffer.c___sync_dirty_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, i32 }

@end_buffer_write_sync = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__sync_dirty_buffer(%struct.buffer_head* %0, i32 %1) #0 {
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.buffer_head* %0, %struct.buffer_head** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %7 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %6, i32 0, i32 1
  %8 = call i32 @atomic_read(i32* %7)
  %9 = icmp slt i32 %8, 1
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %13 = call i32 @lock_buffer(%struct.buffer_head* %12)
  %14 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %15 = call i64 @test_clear_buffer_dirty(%struct.buffer_head* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %2
  %18 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %19 = call i32 @get_bh(%struct.buffer_head* %18)
  %20 = load i32, i32* @end_buffer_write_sync, align 4
  %21 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %22 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @REQ_OP_WRITE, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %26 = call i32 @submit_bh(i32 %23, i32 %24, %struct.buffer_head* %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %28 = call i32 @wait_on_buffer(%struct.buffer_head* %27)
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %17
  %32 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %33 = call i32 @buffer_uptodate(%struct.buffer_head* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %35, %31, %17
  br label %42

39:                                               ; preds = %2
  %40 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %41 = call i32 @unlock_buffer(%struct.buffer_head* %40)
  br label %42

42:                                               ; preds = %39, %38
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i64 @test_clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @submit_bh(i32, i32, %struct.buffer_head*) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
