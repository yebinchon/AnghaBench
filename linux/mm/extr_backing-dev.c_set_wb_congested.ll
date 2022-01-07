; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_backing-dev.c_set_wb_congested.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_backing-dev.c_set_wb_congested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdi_writeback_congested = type { i32 }

@WB_sync_congested = common dso_local global i32 0, align 4
@WB_async_congested = common dso_local global i32 0, align 4
@nr_wb_congested = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_wb_congested(%struct.bdi_writeback_congested* %0, i32 %1) #0 {
  %3 = alloca %struct.bdi_writeback_congested*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bdi_writeback_congested* %0, %struct.bdi_writeback_congested** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @WB_sync_congested, align 4
  br label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @WB_async_congested, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.bdi_writeback_congested*, %struct.bdi_writeback_congested** %3, align 8
  %16 = getelementptr inbounds %struct.bdi_writeback_congested, %struct.bdi_writeback_congested* %15, i32 0, i32 0
  %17 = call i32 @test_and_set_bit(i32 %14, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %12
  %20 = load i32*, i32** @nr_wb_congested, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @atomic_inc(i32* %23)
  br label %25

25:                                               ; preds = %19, %12
  ret void
}

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
