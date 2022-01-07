; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_plug.c_plug_change.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_plug.c_plug_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.plug_sched_data = type { i32, i32, i32, i32, i32, i32 }
%struct.tc_plug_qopt = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* @plug_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plug_change(%struct.Qdisc* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.plug_sched_data*, align 8
  %9 = alloca %struct.tc_plug_qopt*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %11 = call %struct.plug_sched_data* @qdisc_priv(%struct.Qdisc* %10)
  store %struct.plug_sched_data* %11, %struct.plug_sched_data** %8, align 8
  %12 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %13 = icmp eq %struct.nlattr* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %90

17:                                               ; preds = %3
  %18 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %19 = call %struct.tc_plug_qopt* @nla_data(%struct.nlattr* %18)
  store %struct.tc_plug_qopt* %19, %struct.tc_plug_qopt** %9, align 8
  %20 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %21 = call i32 @nla_len(%struct.nlattr* %20)
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 8
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %90

27:                                               ; preds = %17
  %28 = load %struct.tc_plug_qopt*, %struct.tc_plug_qopt** %9, align 8
  %29 = getelementptr inbounds %struct.tc_plug_qopt, %struct.tc_plug_qopt* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %86 [
    i32 131, label %31
    i32 128, label %49
    i32 129, label %65
    i32 130, label %80
  ]

31:                                               ; preds = %27
  %32 = load %struct.plug_sched_data*, %struct.plug_sched_data** %8, align 8
  %33 = getelementptr inbounds %struct.plug_sched_data, %struct.plug_sched_data* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.plug_sched_data*, %struct.plug_sched_data** %8, align 8
  %36 = getelementptr inbounds %struct.plug_sched_data, %struct.plug_sched_data* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load %struct.plug_sched_data*, %struct.plug_sched_data** %8, align 8
  %38 = getelementptr inbounds %struct.plug_sched_data, %struct.plug_sched_data* %37, i32 0, i32 3
  store i32 0, i32* %38, align 4
  %39 = load %struct.plug_sched_data*, %struct.plug_sched_data** %8, align 8
  %40 = getelementptr inbounds %struct.plug_sched_data, %struct.plug_sched_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %31
  %44 = load %struct.plug_sched_data*, %struct.plug_sched_data** %8, align 8
  %45 = getelementptr inbounds %struct.plug_sched_data, %struct.plug_sched_data* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %31
  %47 = load %struct.plug_sched_data*, %struct.plug_sched_data** %8, align 8
  %48 = getelementptr inbounds %struct.plug_sched_data, %struct.plug_sched_data* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  br label %89

49:                                               ; preds = %27
  %50 = load %struct.plug_sched_data*, %struct.plug_sched_data** %8, align 8
  %51 = getelementptr inbounds %struct.plug_sched_data, %struct.plug_sched_data* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.plug_sched_data*, %struct.plug_sched_data** %8, align 8
  %54 = getelementptr inbounds %struct.plug_sched_data, %struct.plug_sched_data* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load %struct.plug_sched_data*, %struct.plug_sched_data** %8, align 8
  %58 = getelementptr inbounds %struct.plug_sched_data, %struct.plug_sched_data* %57, i32 0, i32 4
  store i32 0, i32* %58, align 4
  %59 = load %struct.plug_sched_data*, %struct.plug_sched_data** %8, align 8
  %60 = getelementptr inbounds %struct.plug_sched_data, %struct.plug_sched_data* %59, i32 0, i32 1
  store i32 0, i32* %60, align 4
  %61 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %62 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @netif_schedule_queue(i32 %63)
  br label %89

65:                                               ; preds = %27
  %66 = load %struct.plug_sched_data*, %struct.plug_sched_data** %8, align 8
  %67 = getelementptr inbounds %struct.plug_sched_data, %struct.plug_sched_data* %66, i32 0, i32 0
  store i32 1, i32* %67, align 4
  %68 = load %struct.plug_sched_data*, %struct.plug_sched_data** %8, align 8
  %69 = getelementptr inbounds %struct.plug_sched_data, %struct.plug_sched_data* %68, i32 0, i32 5
  store i32 0, i32* %69, align 4
  %70 = load %struct.plug_sched_data*, %struct.plug_sched_data** %8, align 8
  %71 = getelementptr inbounds %struct.plug_sched_data, %struct.plug_sched_data* %70, i32 0, i32 4
  store i32 0, i32* %71, align 4
  %72 = load %struct.plug_sched_data*, %struct.plug_sched_data** %8, align 8
  %73 = getelementptr inbounds %struct.plug_sched_data, %struct.plug_sched_data* %72, i32 0, i32 3
  store i32 0, i32* %73, align 4
  %74 = load %struct.plug_sched_data*, %struct.plug_sched_data** %8, align 8
  %75 = getelementptr inbounds %struct.plug_sched_data, %struct.plug_sched_data* %74, i32 0, i32 1
  store i32 0, i32* %75, align 4
  %76 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %77 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @netif_schedule_queue(i32 %78)
  br label %89

80:                                               ; preds = %27
  %81 = load %struct.tc_plug_qopt*, %struct.tc_plug_qopt** %9, align 8
  %82 = getelementptr inbounds %struct.tc_plug_qopt, %struct.tc_plug_qopt* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.plug_sched_data*, %struct.plug_sched_data** %8, align 8
  %85 = getelementptr inbounds %struct.plug_sched_data, %struct.plug_sched_data* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  br label %89

86:                                               ; preds = %27
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %90

89:                                               ; preds = %80, %65, %49, %46
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %86, %24, %14
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.plug_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.tc_plug_qopt* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @netif_schedule_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
