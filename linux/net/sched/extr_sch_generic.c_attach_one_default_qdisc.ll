; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_attach_one_default_qdisc.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_attach_one_default_qdisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc_ops = type { i32 }
%struct.net_device = type { i32, i64 }
%struct.netdev_queue = type { %struct.Qdisc* }
%struct.Qdisc = type { i32 }

@default_qdisc_ops = common dso_local global %struct.Qdisc_ops* null, align 8
@IFF_NO_QUEUE = common dso_local global i32 0, align 4
@noqueue_qdisc_ops = common dso_local global %struct.Qdisc_ops zeroinitializer, align 4
@ARPHRD_CAN = common dso_local global i64 0, align 8
@pfifo_fast_ops = common dso_local global %struct.Qdisc_ops zeroinitializer, align 4
@TC_H_ROOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"activation failed\0A\00", align 1
@TCQ_F_ONETXQUEUE = common dso_local global i32 0, align 4
@TCQ_F_NOPARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.netdev_queue*, i8*)* @attach_one_default_qdisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @attach_one_default_qdisc(%struct.net_device* %0, %struct.netdev_queue* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.netdev_queue*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.Qdisc*, align 8
  %8 = alloca %struct.Qdisc_ops*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.netdev_queue* %1, %struct.netdev_queue** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** @default_qdisc_ops, align 8
  store %struct.Qdisc_ops* %9, %struct.Qdisc_ops** %8, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IFF_NO_QUEUE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store %struct.Qdisc_ops* @noqueue_qdisc_ops, %struct.Qdisc_ops** %8, align 8
  br label %25

17:                                               ; preds = %3
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ARPHRD_CAN, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store %struct.Qdisc_ops* @pfifo_fast_ops, %struct.Qdisc_ops** %8, align 8
  br label %24

24:                                               ; preds = %23, %17
  br label %25

25:                                               ; preds = %24, %16
  %26 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %27 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %8, align 8
  %28 = load i32, i32* @TC_H_ROOT, align 4
  %29 = call %struct.Qdisc* @qdisc_create_dflt(%struct.netdev_queue* %26, %struct.Qdisc_ops* %27, i32 %28, i32* null)
  store %struct.Qdisc* %29, %struct.Qdisc** %7, align 8
  %30 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %31 = icmp ne %struct.Qdisc* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = call i32 @netdev_info(%struct.net_device* %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %51

35:                                               ; preds = %25
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = call i32 @netif_is_multiqueue(%struct.net_device* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @TCQ_F_ONETXQUEUE, align 4
  %41 = load i32, i32* @TCQ_F_NOPARENT, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %44 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %39, %35
  %48 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %49 = load %struct.netdev_queue*, %struct.netdev_queue** %5, align 8
  %50 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %49, i32 0, i32 0
  store %struct.Qdisc* %48, %struct.Qdisc** %50, align 8
  br label %51

51:                                               ; preds = %47, %32
  ret void
}

declare dso_local %struct.Qdisc* @qdisc_create_dflt(%struct.netdev_queue*, %struct.Qdisc_ops*, i32, i32*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @netif_is_multiqueue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
