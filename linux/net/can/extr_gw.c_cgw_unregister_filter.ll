; ModuleID = '/home/carl/AnghaBench/linux/net/can/extr_gw.c_cgw_unregister_filter.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/extr_gw.c_cgw_unregister_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.cgw_job = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@can_can_gw_rcv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.cgw_job*)* @cgw_unregister_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgw_unregister_filter(%struct.net* %0, %struct.cgw_job* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.cgw_job*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.cgw_job* %1, %struct.cgw_job** %4, align 8
  %5 = load %struct.net*, %struct.net** %3, align 8
  %6 = load %struct.cgw_job*, %struct.cgw_job** %4, align 8
  %7 = getelementptr inbounds %struct.cgw_job, %struct.cgw_job* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.cgw_job*, %struct.cgw_job** %4, align 8
  %11 = getelementptr inbounds %struct.cgw_job, %struct.cgw_job* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.cgw_job*, %struct.cgw_job** %4, align 8
  %16 = getelementptr inbounds %struct.cgw_job, %struct.cgw_job* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @can_can_gw_rcv, align 4
  %21 = load %struct.cgw_job*, %struct.cgw_job** %4, align 8
  %22 = call i32 @can_rx_unregister(%struct.net* %5, i32 %9, i32 %14, i32 %19, i32 %20, %struct.cgw_job* %21)
  ret void
}

declare dso_local i32 @can_rx_unregister(%struct.net*, i32, i32, i32, i32, %struct.cgw_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
