; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_qdisc_offload_graft_helper.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_qdisc_offload_graft_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, i32, i8*)* }
%struct.netlink_ext_ack = type { i32 }

@noop_qdisc = common dso_local global %struct.Qdisc zeroinitializer, align 4
@TCQ_F_OFFLOADED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Offloading graft operation failed.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qdisc_offload_graft_helper(%struct.net_device* %0, %struct.Qdisc* %1, %struct.Qdisc* %2, %struct.Qdisc* %3, i32 %4, i8* %5, %struct.netlink_ext_ack* %6) #0 {
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.Qdisc*, align 8
  %10 = alloca %struct.Qdisc*, align 8
  %11 = alloca %struct.Qdisc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.netlink_ext_ack*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %8, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %9, align 8
  store %struct.Qdisc* %2, %struct.Qdisc** %10, align 8
  store %struct.Qdisc* %3, %struct.Qdisc** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store %struct.netlink_ext_ack* %6, %struct.netlink_ext_ack** %14, align 8
  %17 = load %struct.net_device*, %struct.net_device** %8, align 8
  %18 = call i32 @tc_can_offload(%struct.net_device* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %7
  %21 = load %struct.net_device*, %struct.net_device** %8, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.net_device*, i32, i8*)*, i32 (%struct.net_device*, i32, i8*)** %24, align 8
  %26 = icmp ne i32 (%struct.net_device*, i32, i8*)* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20, %7
  br label %86

28:                                               ; preds = %20
  %29 = load %struct.net_device*, %struct.net_device** %8, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.net_device*, i32, i8*)*, i32 (%struct.net_device*, i32, i8*)** %32, align 8
  %34 = load %struct.net_device*, %struct.net_device** %8, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i8*, i8** %13, align 8
  %37 = call i32 %33(%struct.net_device* %34, i32 %35, i8* %36)
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %28
  %41 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %42 = icmp ne %struct.Qdisc* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %45 = icmp eq %struct.Qdisc* %44, @noop_qdisc
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %40, %28
  br label %86

47:                                               ; preds = %43
  %48 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %49 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @TCQ_F_OFFLOADED, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %15, align 4
  %53 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %54 = icmp ne %struct.Qdisc* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %47
  %56 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %57 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @TCQ_F_OFFLOADED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br label %62

62:                                               ; preds = %55, %47
  %63 = phi i1 [ false, %47 ], [ %61, %55 ]
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %15, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %15, align 4
  %67 = load %struct.Qdisc*, %struct.Qdisc** %11, align 8
  %68 = icmp ne %struct.Qdisc* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %62
  %70 = load %struct.Qdisc*, %struct.Qdisc** %11, align 8
  %71 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @TCQ_F_OFFLOADED, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br label %76

76:                                               ; preds = %69, %62
  %77 = phi i1 [ false, %62 ], [ %75, %69 ]
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %15, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %14, align 8
  %85 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %84, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %86

86:                                               ; preds = %27, %46, %83, %76
  ret void
}

declare dso_local i32 @tc_can_offload(%struct.net_device*) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
