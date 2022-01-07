; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_ism.c_smcd_handle_sw_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_ism.c_smcd_handle_sw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_ism_event_work = type { %struct.TYPE_6__, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_7__*, i32, i32, i32, i32)* }
%union.smcd_sw_event_info = type { i32 }

@ISM_EVENT_REQUEST = common dso_local global i32 0, align 4
@ISM_EVENT_RESPONSE = common dso_local global i32 0, align 4
@ISM_EVENT_REQUEST_IR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smc_ism_event_work*)* @smcd_handle_sw_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smcd_handle_sw_event(%struct.smc_ism_event_work* %0) #0 {
  %2 = alloca %struct.smc_ism_event_work*, align 8
  %3 = alloca %union.smcd_sw_event_info, align 4
  store %struct.smc_ism_event_work* %0, %struct.smc_ism_event_work** %2, align 8
  %4 = load %struct.smc_ism_event_work*, %struct.smc_ism_event_work** %2, align 8
  %5 = getelementptr inbounds %struct.smc_ism_event_work, %struct.smc_ism_event_work* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = bitcast %union.smcd_sw_event_info* %3 to i32*
  store i32 %7, i32* %8, align 4
  %9 = load %struct.smc_ism_event_work*, %struct.smc_ism_event_work** %2, align 8
  %10 = getelementptr inbounds %struct.smc_ism_event_work, %struct.smc_ism_event_work* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %51 [
    i32 129, label %13
    i32 128, label %24
  ]

13:                                               ; preds = %1
  %14 = load %struct.smc_ism_event_work*, %struct.smc_ism_event_work** %2, align 8
  %15 = getelementptr inbounds %struct.smc_ism_event_work, %struct.smc_ism_event_work* %14, i32 0, i32 1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = load %struct.smc_ism_event_work*, %struct.smc_ism_event_work** %2, align 8
  %18 = getelementptr inbounds %struct.smc_ism_event_work, %struct.smc_ism_event_work* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = bitcast %union.smcd_sw_event_info* %3 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @smc_smcd_terminate(%struct.TYPE_7__* %16, i32 %20, i32 %22)
  br label %51

24:                                               ; preds = %1
  %25 = bitcast %union.smcd_sw_event_info* %3 to i32*
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ISM_EVENT_REQUEST, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %24
  %30 = load i32, i32* @ISM_EVENT_RESPONSE, align 4
  %31 = bitcast %union.smcd_sw_event_info* %3 to i32*
  store i32 %30, i32* %31, align 4
  %32 = load %struct.smc_ism_event_work*, %struct.smc_ism_event_work** %2, align 8
  %33 = getelementptr inbounds %struct.smc_ism_event_work, %struct.smc_ism_event_work* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_7__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_7__*, i32, i32, i32, i32)** %37, align 8
  %39 = load %struct.smc_ism_event_work*, %struct.smc_ism_event_work** %2, align 8
  %40 = getelementptr inbounds %struct.smc_ism_event_work, %struct.smc_ism_event_work* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = load %struct.smc_ism_event_work*, %struct.smc_ism_event_work** %2, align 8
  %43 = getelementptr inbounds %struct.smc_ism_event_work, %struct.smc_ism_event_work* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ISM_EVENT_REQUEST_IR, align 4
  %47 = bitcast %union.smcd_sw_event_info* %3 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = call i32 %38(%struct.TYPE_7__* %41, i32 %45, i32 %46, i32 128, i32 %48)
  br label %50

50:                                               ; preds = %29, %24
  br label %51

51:                                               ; preds = %1, %50, %13
  ret void
}

declare dso_local i32 @smc_smcd_terminate(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
