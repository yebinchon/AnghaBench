; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_backing-dev.c_wb_wakeup_delayed.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_backing-dev.c_wb_wakeup_delayed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdi_writeback = type { i32, i32, i32 }

@dirty_writeback_interval = common dso_local global i32 0, align 4
@WB_registered = common dso_local global i32 0, align 4
@bdi_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wb_wakeup_delayed(%struct.bdi_writeback* %0) #0 {
  %2 = alloca %struct.bdi_writeback*, align 8
  %3 = alloca i64, align 8
  store %struct.bdi_writeback* %0, %struct.bdi_writeback** %2, align 8
  %4 = load i32, i32* @dirty_writeback_interval, align 4
  %5 = mul nsw i32 %4, 10
  %6 = call i64 @msecs_to_jiffies(i32 %5)
  store i64 %6, i64* %3, align 8
  %7 = load %struct.bdi_writeback*, %struct.bdi_writeback** %2, align 8
  %8 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %7, i32 0, i32 0
  %9 = call i32 @spin_lock_bh(i32* %8)
  %10 = load i32, i32* @WB_registered, align 4
  %11 = load %struct.bdi_writeback*, %struct.bdi_writeback** %2, align 8
  %12 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %11, i32 0, i32 2
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load i32, i32* @bdi_wq, align 4
  %17 = load %struct.bdi_writeback*, %struct.bdi_writeback** %2, align 8
  %18 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %17, i32 0, i32 1
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @queue_delayed_work(i32 %16, i32* %18, i64 %19)
  br label %21

21:                                               ; preds = %15, %1
  %22 = load %struct.bdi_writeback*, %struct.bdi_writeback** %2, align 8
  %23 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock_bh(i32* %23)
  ret void
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
