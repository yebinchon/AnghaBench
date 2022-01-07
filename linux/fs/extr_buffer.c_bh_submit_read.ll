; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_buffer.c_bh_submit_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_buffer.c_bh_submit_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }

@end_buffer_read_sync = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bh_submit_read(%struct.buffer_head* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.buffer_head*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %3, align 8
  %4 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %5 = call i32 @buffer_locked(%struct.buffer_head* %4)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %11 = call i64 @buffer_uptodate(%struct.buffer_head* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %15 = call i32 @unlock_buffer(%struct.buffer_head* %14)
  store i32 0, i32* %2, align 4
  br label %34

16:                                               ; preds = %1
  %17 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %18 = call i32 @get_bh(%struct.buffer_head* %17)
  %19 = load i32, i32* @end_buffer_read_sync, align 4
  %20 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %21 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @REQ_OP_READ, align 4
  %23 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %24 = call i32 @submit_bh(i32 %22, i32 0, %struct.buffer_head* %23)
  %25 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %26 = call i32 @wait_on_buffer(%struct.buffer_head* %25)
  %27 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %28 = call i64 @buffer_uptodate(%struct.buffer_head* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %34

31:                                               ; preds = %16
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %31, %30, %13
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @buffer_locked(%struct.buffer_head*) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @submit_bh(i32, i32, %struct.buffer_head*) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
