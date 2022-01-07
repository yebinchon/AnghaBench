; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_fifo.c_fifo_create_dflt.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_fifo.c_fifo_create_dflt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32, i32 }
%struct.Qdisc_ops = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Qdisc* @fifo_create_dflt(%struct.Qdisc* %0, %struct.Qdisc_ops* %1, i32 %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.Qdisc_ops*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.netlink_ext_ack*, align 8
  %9 = alloca %struct.Qdisc*, align 8
  %10 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.Qdisc_ops* %1, %struct.Qdisc_ops** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %8, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %14 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %6, align 8
  %17 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %18 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @TC_H_MAKE(i32 %19, i32 1)
  %21 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %22 = call %struct.Qdisc* @qdisc_create_dflt(i32 %15, %struct.Qdisc_ops* %16, i32 %20, %struct.netlink_ext_ack* %21)
  store %struct.Qdisc* %22, %struct.Qdisc** %9, align 8
  %23 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %24 = icmp ne %struct.Qdisc* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %4
  %26 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @fifo_set_limit(%struct.Qdisc* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %33 = call i32 @qdisc_put(%struct.Qdisc* %32)
  store %struct.Qdisc* null, %struct.Qdisc** %9, align 8
  br label %34

34:                                               ; preds = %31, %25
  br label %35

35:                                               ; preds = %34, %4
  %36 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %37 = icmp ne %struct.Qdisc* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %42

39:                                               ; preds = %35
  %40 = load i32, i32* %10, align 4
  %41 = call %struct.Qdisc* @ERR_PTR(i32 %40)
  br label %42

42:                                               ; preds = %39, %38
  %43 = phi %struct.Qdisc* [ %36, %38 ], [ %41, %39 ]
  ret %struct.Qdisc* %43
}

declare dso_local %struct.Qdisc* @qdisc_create_dflt(i32, %struct.Qdisc_ops*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @TC_H_MAKE(i32, i32) #1

declare dso_local i32 @fifo_set_limit(%struct.Qdisc*, i32) #1

declare dso_local i32 @qdisc_put(%struct.Qdisc*) #1

declare dso_local %struct.Qdisc* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
