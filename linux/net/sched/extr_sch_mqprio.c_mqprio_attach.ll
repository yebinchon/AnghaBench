; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_mqprio.c_mqprio_attach.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_mqprio.c_mqprio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.net_device = type { i32, i32 }
%struct.mqprio_sched = type { %struct.Qdisc** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*)* @mqprio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mqprio_attach(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.mqprio_sched*, align 8
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %9 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %8)
  store %struct.net_device* %9, %struct.net_device** %3, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %11 = call %struct.mqprio_sched* @qdisc_priv(%struct.Qdisc* %10)
  store %struct.mqprio_sched* %11, %struct.mqprio_sched** %4, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %46, %1
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %12
  %19 = load %struct.mqprio_sched*, %struct.mqprio_sched** %4, align 8
  %20 = getelementptr inbounds %struct.mqprio_sched, %struct.mqprio_sched* %19, i32 0, i32 0
  %21 = load %struct.Qdisc**, %struct.Qdisc*** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %21, i64 %23
  %25 = load %struct.Qdisc*, %struct.Qdisc** %24, align 8
  store %struct.Qdisc* %25, %struct.Qdisc** %5, align 8
  %26 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %27 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %30 = call %struct.Qdisc* @dev_graft_qdisc(i32 %28, %struct.Qdisc* %29)
  store %struct.Qdisc* %30, %struct.Qdisc** %6, align 8
  %31 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %32 = icmp ne %struct.Qdisc* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %18
  %34 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %35 = call i32 @qdisc_put(%struct.Qdisc* %34)
  br label %36

36:                                               ; preds = %33, %18
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ult i32 %37, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %44 = call i32 @qdisc_hash_add(%struct.Qdisc* %43, i32 0)
  br label %45

45:                                               ; preds = %42, %36
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %7, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %12

49:                                               ; preds = %12
  %50 = load %struct.mqprio_sched*, %struct.mqprio_sched** %4, align 8
  %51 = getelementptr inbounds %struct.mqprio_sched, %struct.mqprio_sched* %50, i32 0, i32 0
  %52 = load %struct.Qdisc**, %struct.Qdisc*** %51, align 8
  %53 = call i32 @kfree(%struct.Qdisc** %52)
  %54 = load %struct.mqprio_sched*, %struct.mqprio_sched** %4, align 8
  %55 = getelementptr inbounds %struct.mqprio_sched, %struct.mqprio_sched* %54, i32 0, i32 0
  store %struct.Qdisc** null, %struct.Qdisc*** %55, align 8
  ret void
}

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local %struct.mqprio_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.Qdisc* @dev_graft_qdisc(i32, %struct.Qdisc*) #1

declare dso_local i32 @qdisc_put(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_hash_add(%struct.Qdisc*, i32) #1

declare dso_local i32 @kfree(%struct.Qdisc**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
