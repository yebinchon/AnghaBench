; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_qdisc_create_dflt.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_qdisc_create_dflt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.netdev_queue = type { i32 }
%struct.Qdisc_ops = type { i64 (%struct.Qdisc.0*, i32*, %struct.netlink_ext_ack*)*, i32 }
%struct.Qdisc.0 = type opaque
%struct.netlink_ext_ack = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"Failed to increase module reference counter\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Qdisc* @qdisc_create_dflt(%struct.netdev_queue* %0, %struct.Qdisc_ops* %1, i32 %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.netdev_queue*, align 8
  %7 = alloca %struct.Qdisc_ops*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.Qdisc*, align 8
  store %struct.netdev_queue* %0, %struct.netdev_queue** %6, align 8
  store %struct.Qdisc_ops* %1, %struct.Qdisc_ops** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %11 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %7, align 8
  %12 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @try_module_get(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %18 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %17, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store %struct.Qdisc* null, %struct.Qdisc** %5, align 8
  br label %54

19:                                               ; preds = %4
  %20 = load %struct.netdev_queue*, %struct.netdev_queue** %6, align 8
  %21 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %7, align 8
  %22 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %23 = call %struct.Qdisc* @qdisc_alloc(%struct.netdev_queue* %20, %struct.Qdisc_ops* %21, %struct.netlink_ext_ack* %22)
  store %struct.Qdisc* %23, %struct.Qdisc** %10, align 8
  %24 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %25 = call i64 @IS_ERR(%struct.Qdisc* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %7, align 8
  %29 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @module_put(i32 %30)
  store %struct.Qdisc* null, %struct.Qdisc** %5, align 8
  br label %54

32:                                               ; preds = %19
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %35 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %7, align 8
  %37 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %36, i32 0, i32 0
  %38 = load i64 (%struct.Qdisc.0*, i32*, %struct.netlink_ext_ack*)*, i64 (%struct.Qdisc.0*, i32*, %struct.netlink_ext_ack*)** %37, align 8
  %39 = icmp ne i64 (%struct.Qdisc.0*, i32*, %struct.netlink_ext_ack*)* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %32
  %41 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %7, align 8
  %42 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %41, i32 0, i32 0
  %43 = load i64 (%struct.Qdisc.0*, i32*, %struct.netlink_ext_ack*)*, i64 (%struct.Qdisc.0*, i32*, %struct.netlink_ext_ack*)** %42, align 8
  %44 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %45 = bitcast %struct.Qdisc* %44 to %struct.Qdisc.0*
  %46 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %47 = call i64 %43(%struct.Qdisc.0* %45, i32* null, %struct.netlink_ext_ack* %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40, %32
  %50 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  store %struct.Qdisc* %50, %struct.Qdisc** %5, align 8
  br label %54

51:                                               ; preds = %40
  %52 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %53 = call i32 @qdisc_put(%struct.Qdisc* %52)
  store %struct.Qdisc* null, %struct.Qdisc** %5, align 8
  br label %54

54:                                               ; preds = %51, %49, %27, %16
  %55 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  ret %struct.Qdisc* %55
}

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.Qdisc* @qdisc_alloc(%struct.netdev_queue*, %struct.Qdisc_ops*, %struct.netlink_ext_ack*) #1

declare dso_local i64 @IS_ERR(%struct.Qdisc*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @qdisc_put(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
