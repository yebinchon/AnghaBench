; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_qdisc_class_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_qdisc_class_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.qdisc_walker = type { i32 }
%struct.qdisc_dump_args = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@NLM_F_MULTI = common dso_local global i32 0, align 4
@RTM_NEWTCLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.qdisc_walker*)* @qdisc_class_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qdisc_class_dump(%struct.Qdisc* %0, i64 %1, %struct.qdisc_walker* %2) #0 {
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.qdisc_walker*, align 8
  %7 = alloca %struct.qdisc_dump_args*, align 8
  %8 = alloca %struct.TYPE_6__, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.qdisc_walker* %2, %struct.qdisc_walker** %6, align 8
  %9 = load %struct.qdisc_walker*, %struct.qdisc_walker** %6, align 8
  %10 = bitcast %struct.qdisc_walker* %9 to %struct.qdisc_dump_args*
  store %struct.qdisc_dump_args* %10, %struct.qdisc_dump_args** %7, align 8
  %11 = load %struct.qdisc_dump_args*, %struct.qdisc_dump_args** %7, align 8
  %12 = getelementptr inbounds %struct.qdisc_dump_args, %struct.qdisc_dump_args* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.qdisc_dump_args*, %struct.qdisc_dump_args** %7, align 8
  %17 = getelementptr inbounds %struct.qdisc_dump_args, %struct.qdisc_dump_args* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @NETLINK_CB(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.qdisc_dump_args*, %struct.qdisc_dump_args** %7, align 8
  %26 = getelementptr inbounds %struct.qdisc_dump_args, %struct.qdisc_dump_args* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @NLM_F_MULTI, align 4
  %33 = load i32, i32* @RTM_NEWTCLASS, align 4
  %34 = call i32 @tc_fill_tclass(i32 %13, %struct.Qdisc* %14, i64 %15, i32 %24, i32 %31, i32 %32, i32 %33)
  ret i32 %34
}

declare dso_local i32 @tc_fill_tclass(i32, %struct.Qdisc*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
