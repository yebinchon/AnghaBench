; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fs-writeback.c_wb_queue_work.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fs-writeback.c_wb_queue_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdi_writeback = type { i32, i32, i32, i32 }
%struct.wb_writeback_work = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WB_registered = common dso_local global i32 0, align 4
@bdi_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bdi_writeback*, %struct.wb_writeback_work*)* @wb_queue_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wb_queue_work(%struct.bdi_writeback* %0, %struct.wb_writeback_work* %1) #0 {
  %3 = alloca %struct.bdi_writeback*, align 8
  %4 = alloca %struct.wb_writeback_work*, align 8
  store %struct.bdi_writeback* %0, %struct.bdi_writeback** %3, align 8
  store %struct.wb_writeback_work* %1, %struct.wb_writeback_work** %4, align 8
  %5 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %6 = load %struct.wb_writeback_work*, %struct.wb_writeback_work** %4, align 8
  %7 = call i32 @trace_writeback_queue(%struct.bdi_writeback* %5, %struct.wb_writeback_work* %6)
  %8 = load %struct.wb_writeback_work*, %struct.wb_writeback_work** %4, align 8
  %9 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.wb_writeback_work*, %struct.wb_writeback_work** %4, align 8
  %14 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @atomic_inc(i32* %16)
  br label %18

18:                                               ; preds = %12, %2
  %19 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %20 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %19, i32 0, i32 0
  %21 = call i32 @spin_lock_bh(i32* %20)
  %22 = load i32, i32* @WB_registered, align 4
  %23 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %24 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %23, i32 0, i32 3
  %25 = call i64 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %18
  %28 = load %struct.wb_writeback_work*, %struct.wb_writeback_work** %4, align 8
  %29 = getelementptr inbounds %struct.wb_writeback_work, %struct.wb_writeback_work* %28, i32 0, i32 0
  %30 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %31 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %30, i32 0, i32 2
  %32 = call i32 @list_add_tail(i32* %29, i32* %31)
  %33 = load i32, i32* @bdi_wq, align 4
  %34 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %35 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %34, i32 0, i32 1
  %36 = call i32 @mod_delayed_work(i32 %33, i32* %35, i32 0)
  br label %41

37:                                               ; preds = %18
  %38 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %39 = load %struct.wb_writeback_work*, %struct.wb_writeback_work** %4, align 8
  %40 = call i32 @finish_writeback_work(%struct.bdi_writeback* %38, %struct.wb_writeback_work* %39)
  br label %41

41:                                               ; preds = %37, %27
  %42 = load %struct.bdi_writeback*, %struct.bdi_writeback** %3, align 8
  %43 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock_bh(i32* %43)
  ret void
}

declare dso_local i32 @trace_writeback_queue(%struct.bdi_writeback*, %struct.wb_writeback_work*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mod_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @finish_writeback_work(%struct.bdi_writeback*, %struct.wb_writeback_work*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
