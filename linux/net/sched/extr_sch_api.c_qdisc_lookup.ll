; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_qdisc_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_qdisc_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Qdisc* @qdisc_lookup(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Qdisc*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.Qdisc* null, %struct.Qdisc** %3, align 8
  br label %33

10:                                               ; preds = %2
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.Qdisc* @qdisc_match_from_root(i32 %13, i32 %14)
  store %struct.Qdisc* %15, %struct.Qdisc** %6, align 8
  %16 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %17 = icmp ne %struct.Qdisc* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %31

19:                                               ; preds = %10
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = call %struct.TYPE_2__* @dev_ingress_queue(%struct.net_device* %20)
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = call %struct.TYPE_2__* @dev_ingress_queue(%struct.net_device* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call %struct.Qdisc* @qdisc_match_from_root(i32 %27, i32 %28)
  store %struct.Qdisc* %29, %struct.Qdisc** %6, align 8
  br label %30

30:                                               ; preds = %23, %19
  br label %31

31:                                               ; preds = %30, %18
  %32 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  store %struct.Qdisc* %32, %struct.Qdisc** %3, align 8
  br label %33

33:                                               ; preds = %31, %9
  %34 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  ret %struct.Qdisc* %34
}

declare dso_local %struct.Qdisc* @qdisc_match_from_root(i32, i32) #1

declare dso_local %struct.TYPE_2__* @dev_ingress_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
