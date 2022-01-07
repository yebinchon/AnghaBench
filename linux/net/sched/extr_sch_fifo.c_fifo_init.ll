; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_fifo.c_fifo_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_fifo.c_fifo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32, i32, i32* }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.tc_fifo_qopt = type { i32 }
%struct.TYPE_3__ = type { i32 }

@bfifo_qdisc_ops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TCQ_F_CAN_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* @fifo_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fifo_init(%struct.Qdisc* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tc_fifo_qopt*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %13 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, @bfifo_qdisc_ops
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %9, align 4
  %17 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %18 = icmp eq %struct.nlattr* %17, null
  br i1 %18, label %19, label %36

19:                                               ; preds = %3
  %20 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %21 = call %struct.TYPE_3__* @qdisc_dev(%struct.Qdisc* %20)
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %28 = call %struct.TYPE_3__* @qdisc_dev(%struct.Qdisc* %27)
  %29 = call i32 @psched_mtu(%struct.TYPE_3__* %28)
  %30 = load i32, i32* %10, align 4
  %31 = mul nsw i32 %30, %29
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %26, %19
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %35 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  br label %52

36:                                               ; preds = %3
  %37 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %38 = call %struct.tc_fifo_qopt* @nla_data(%struct.nlattr* %37)
  store %struct.tc_fifo_qopt* %38, %struct.tc_fifo_qopt** %11, align 8
  %39 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %40 = call i32 @nla_len(%struct.nlattr* %39)
  %41 = sext i32 %40 to i64
  %42 = icmp ult i64 %41, 4
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %87

46:                                               ; preds = %36
  %47 = load %struct.tc_fifo_qopt*, %struct.tc_fifo_qopt** %11, align 8
  %48 = getelementptr inbounds %struct.tc_fifo_qopt, %struct.tc_fifo_qopt* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %51 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %46, %32
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %57 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %60 = call %struct.TYPE_3__* @qdisc_dev(%struct.Qdisc* %59)
  %61 = call i32 @psched_mtu(%struct.TYPE_3__* %60)
  %62 = icmp sge i32 %58, %61
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %8, align 4
  br label %70

64:                                               ; preds = %52
  %65 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %66 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp sge i32 %67, 1
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %64, %55
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i32, i32* @TCQ_F_CAN_BYPASS, align 4
  %75 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %76 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %86

79:                                               ; preds = %70
  %80 = load i32, i32* @TCQ_F_CAN_BYPASS, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %83 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %79, %73
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %43
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.TYPE_3__* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @psched_mtu(%struct.TYPE_3__*) #1

declare dso_local %struct.tc_fifo_qopt* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
