; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cbs.c_cbs_dump_class.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cbs.c_cbs_dump_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcmsg = type { i32, i32 }
%struct.cbs_sched_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.sk_buff*, %struct.tcmsg*)* @cbs_dump_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbs_dump_class(%struct.Qdisc* %0, i64 %1, %struct.sk_buff* %2, %struct.tcmsg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.tcmsg*, align 8
  %10 = alloca %struct.cbs_sched_data*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.tcmsg* %3, %struct.tcmsg** %9, align 8
  %11 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %12 = call %struct.cbs_sched_data* @qdisc_priv(%struct.Qdisc* %11)
  store %struct.cbs_sched_data* %12, %struct.cbs_sched_data** %10, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 1
  br i1 %14, label %20, label %15

15:                                               ; preds = %4
  %16 = load %struct.cbs_sched_data*, %struct.cbs_sched_data** %10, align 8
  %17 = getelementptr inbounds %struct.cbs_sched_data, %struct.cbs_sched_data* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15, %4
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %36

23:                                               ; preds = %15
  %24 = call i32 @TC_H_MIN(i32 1)
  %25 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %26 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.cbs_sched_data*, %struct.cbs_sched_data** %10, align 8
  %30 = getelementptr inbounds %struct.cbs_sched_data, %struct.cbs_sched_data* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %35 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %23, %20
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.cbs_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @TC_H_MIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
