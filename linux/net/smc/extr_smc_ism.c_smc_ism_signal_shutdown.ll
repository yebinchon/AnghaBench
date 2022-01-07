; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_ism.c_smc_ism_signal_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_ism.c_smc_ism_signal_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_link_group = type { i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32, i32, i32, i32)* }
%union.smcd_sw_event_info = type { i32 }

@SMC_LGR_ID_SIZE = common dso_local global i32 0, align 4
@ISM_EVENT_REQUEST = common dso_local global i32 0, align 4
@ISM_EVENT_REQUEST_IR = common dso_local global i32 0, align 4
@ISM_EVENT_CODE_SHUTDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smc_ism_signal_shutdown(%struct.smc_link_group* %0) #0 {
  %2 = alloca %struct.smc_link_group*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %union.smcd_sw_event_info, align 4
  store %struct.smc_link_group* %0, %struct.smc_link_group** %2, align 8
  %5 = bitcast %union.smcd_sw_event_info* %4 to i32*
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.smc_link_group*, %struct.smc_link_group** %2, align 8
  %8 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SMC_LGR_ID_SIZE, align 4
  %11 = call i32 @memcpy(i32 %6, i32 %9, i32 %10)
  %12 = load %struct.smc_link_group*, %struct.smc_link_group** %2, align 8
  %13 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = bitcast %union.smcd_sw_event_info* %4 to i32*
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @ISM_EVENT_REQUEST, align 4
  %17 = bitcast %union.smcd_sw_event_info* %4 to i32*
  store i32 %16, i32* %17, align 4
  %18 = load %struct.smc_link_group*, %struct.smc_link_group** %2, align 8
  %19 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_4__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32, i32, i32)** %23, align 8
  %25 = load %struct.smc_link_group*, %struct.smc_link_group** %2, align 8
  %26 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load %struct.smc_link_group*, %struct.smc_link_group** %2, align 8
  %29 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ISM_EVENT_REQUEST_IR, align 4
  %32 = load i32, i32* @ISM_EVENT_CODE_SHUTDOWN, align 4
  %33 = bitcast %union.smcd_sw_event_info* %4 to i32*
  %34 = load i32, i32* %33, align 4
  %35 = call i32 %24(%struct.TYPE_4__* %27, i32 %30, i32 %31, i32 %32, i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
