; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_qos.c___pm_qos_update_request.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_qos.c___pm_qos_update_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.pm_qos_request = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@pm_qos_array = common dso_local global %struct.TYPE_4__** null, align 8
@PM_QOS_UPDATE_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm_qos_request*, i64)* @__pm_qos_update_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__pm_qos_update_request(%struct.pm_qos_request* %0, i64 %1) #0 {
  %3 = alloca %struct.pm_qos_request*, align 8
  %4 = alloca i64, align 8
  store %struct.pm_qos_request* %0, %struct.pm_qos_request** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.pm_qos_request*, %struct.pm_qos_request** %3, align 8
  %6 = getelementptr inbounds %struct.pm_qos_request, %struct.pm_qos_request* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @trace_pm_qos_update_request(i64 %7, i64 %8)
  %10 = load i64, i64* %4, align 8
  %11 = load %struct.pm_qos_request*, %struct.pm_qos_request** %3, align 8
  %12 = getelementptr inbounds %struct.pm_qos_request, %struct.pm_qos_request* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %10, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %2
  %17 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @pm_qos_array, align 8
  %18 = load %struct.pm_qos_request*, %struct.pm_qos_request** %3, align 8
  %19 = getelementptr inbounds %struct.pm_qos_request, %struct.pm_qos_request* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %17, i64 %20
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.pm_qos_request*, %struct.pm_qos_request** %3, align 8
  %26 = getelementptr inbounds %struct.pm_qos_request, %struct.pm_qos_request* %25, i32 0, i32 1
  %27 = load i32, i32* @PM_QOS_UPDATE_REQ, align 4
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @pm_qos_update_target(i32 %24, %struct.TYPE_3__* %26, i32 %27, i64 %28)
  br label %30

30:                                               ; preds = %16, %2
  ret void
}

declare dso_local i32 @trace_pm_qos_update_request(i64, i64) #1

declare dso_local i32 @pm_qos_update_target(i32, %struct.TYPE_3__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
