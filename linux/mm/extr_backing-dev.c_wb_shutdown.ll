; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_backing-dev.c_wb_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_backing-dev.c_wb_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdi_writeback = type { i32, i32, i32, i32 }

@WB_registered = common dso_local global i32 0, align 4
@bdi_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bdi_writeback*)* @wb_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wb_shutdown(%struct.bdi_writeback* %0) #0 {
  %2 = alloca %struct.bdi_writeback*, align 8
  store %struct.bdi_writeback* %0, %struct.bdi_writeback** %2, align 8
  %3 = load %struct.bdi_writeback*, %struct.bdi_writeback** %2, align 8
  %4 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %3, i32 0, i32 2
  %5 = call i32 @spin_lock_bh(i32* %4)
  %6 = load i32, i32* @WB_registered, align 4
  %7 = load %struct.bdi_writeback*, %struct.bdi_writeback** %2, align 8
  %8 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %7, i32 0, i32 3
  %9 = call i32 @test_and_clear_bit(i32 %6, i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load %struct.bdi_writeback*, %struct.bdi_writeback** %2, align 8
  %13 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %12, i32 0, i32 2
  %14 = call i32 @spin_unlock_bh(i32* %13)
  br label %35

15:                                               ; preds = %1
  %16 = load %struct.bdi_writeback*, %struct.bdi_writeback** %2, align 8
  %17 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %16, i32 0, i32 2
  %18 = call i32 @spin_unlock_bh(i32* %17)
  %19 = load %struct.bdi_writeback*, %struct.bdi_writeback** %2, align 8
  %20 = call i32 @cgwb_remove_from_bdi_list(%struct.bdi_writeback* %19)
  %21 = load i32, i32* @bdi_wq, align 4
  %22 = load %struct.bdi_writeback*, %struct.bdi_writeback** %2, align 8
  %23 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %22, i32 0, i32 1
  %24 = call i32 @mod_delayed_work(i32 %21, i32* %23, i32 0)
  %25 = load %struct.bdi_writeback*, %struct.bdi_writeback** %2, align 8
  %26 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %25, i32 0, i32 1
  %27 = call i32 @flush_delayed_work(i32* %26)
  %28 = load %struct.bdi_writeback*, %struct.bdi_writeback** %2, align 8
  %29 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %28, i32 0, i32 0
  %30 = call i32 @list_empty(i32* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @WARN_ON(i32 %33)
  br label %35

35:                                               ; preds = %15, %11
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @cgwb_remove_from_bdi_list(%struct.bdi_writeback*) #1

declare dso_local i32 @mod_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @flush_delayed_work(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
