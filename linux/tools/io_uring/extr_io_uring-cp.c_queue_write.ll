; ModuleID = '/home/carl/AnghaBench/linux/tools/io_uring/extr_io_uring-cp.c_queue_write.c'
source_filename = "/home/carl/AnghaBench/linux/tools/io_uring/extr_io_uring-cp.c_queue_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_uring = type { i32 }
%struct.io_data = type { i32, %struct.TYPE_2__, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, %struct.io_data* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.io_uring*, %struct.io_data*)* @queue_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queue_write(%struct.io_uring* %0, %struct.io_data* %1) #0 {
  %3 = alloca %struct.io_uring*, align 8
  %4 = alloca %struct.io_data*, align 8
  store %struct.io_uring* %0, %struct.io_uring** %3, align 8
  store %struct.io_data* %1, %struct.io_data** %4, align 8
  %5 = load %struct.io_data*, %struct.io_data** %4, align 8
  %6 = getelementptr inbounds %struct.io_data, %struct.io_data* %5, i32 0, i32 4
  store i64 0, i64* %6, align 8
  %7 = load %struct.io_data*, %struct.io_data** %4, align 8
  %8 = getelementptr inbounds %struct.io_data, %struct.io_data* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.io_data*, %struct.io_data** %4, align 8
  %11 = getelementptr inbounds %struct.io_data, %struct.io_data* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 4
  %12 = load %struct.io_data*, %struct.io_data** %4, align 8
  %13 = getelementptr inbounds %struct.io_data, %struct.io_data* %12, i64 1
  %14 = load %struct.io_data*, %struct.io_data** %4, align 8
  %15 = getelementptr inbounds %struct.io_data, %struct.io_data* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store %struct.io_data* %13, %struct.io_data** %16, align 8
  %17 = load %struct.io_data*, %struct.io_data** %4, align 8
  %18 = getelementptr inbounds %struct.io_data, %struct.io_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.io_data*, %struct.io_data** %4, align 8
  %21 = getelementptr inbounds %struct.io_data, %struct.io_data* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.io_uring*, %struct.io_uring** %3, align 8
  %24 = load %struct.io_data*, %struct.io_data** %4, align 8
  %25 = call i32 @queue_prepped(%struct.io_uring* %23, %struct.io_data* %24)
  %26 = load %struct.io_uring*, %struct.io_uring** %3, align 8
  %27 = call i32 @io_uring_submit(%struct.io_uring* %26)
  ret void
}

declare dso_local i32 @queue_prepped(%struct.io_uring*, %struct.io_data*) #1

declare dso_local i32 @io_uring_submit(%struct.io_uring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
