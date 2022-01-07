; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_backing-dev.c_wb_exit.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_backing-dev.c_wb_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdi_writeback = type { %struct.TYPE_2__*, i32, i32, i32*, i32 }
%struct.TYPE_2__ = type { %struct.bdi_writeback }

@NR_WB_STAT_ITEMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bdi_writeback*)* @wb_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wb_exit(%struct.bdi_writeback* %0) #0 {
  %2 = alloca %struct.bdi_writeback*, align 8
  %3 = alloca i32, align 4
  store %struct.bdi_writeback* %0, %struct.bdi_writeback** %2, align 8
  %4 = load %struct.bdi_writeback*, %struct.bdi_writeback** %2, align 8
  %5 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %4, i32 0, i32 4
  %6 = call i32 @delayed_work_pending(i32* %5)
  %7 = call i32 @WARN_ON(i32 %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %20, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @NR_WB_STAT_ITEMS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = load %struct.bdi_writeback*, %struct.bdi_writeback** %2, align 8
  %14 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = call i32 @percpu_counter_destroy(i32* %18)
  br label %20

20:                                               ; preds = %12
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %8

23:                                               ; preds = %8
  %24 = load %struct.bdi_writeback*, %struct.bdi_writeback** %2, align 8
  %25 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %24, i32 0, i32 2
  %26 = call i32 @fprop_local_destroy_percpu(i32* %25)
  %27 = load %struct.bdi_writeback*, %struct.bdi_writeback** %2, align 8
  %28 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @wb_congested_put(i32 %29)
  %31 = load %struct.bdi_writeback*, %struct.bdi_writeback** %2, align 8
  %32 = load %struct.bdi_writeback*, %struct.bdi_writeback** %2, align 8
  %33 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = icmp ne %struct.bdi_writeback* %31, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %23
  %38 = load %struct.bdi_writeback*, %struct.bdi_writeback** %2, align 8
  %39 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = call i32 @bdi_put(%struct.TYPE_2__* %40)
  br label %42

42:                                               ; preds = %37, %23
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @delayed_work_pending(i32*) #1

declare dso_local i32 @percpu_counter_destroy(i32*) #1

declare dso_local i32 @fprop_local_destroy_percpu(i32*) #1

declare dso_local i32 @wb_congested_put(i32) #1

declare dso_local i32 @bdi_put(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
