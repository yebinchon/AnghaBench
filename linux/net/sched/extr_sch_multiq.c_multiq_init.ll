; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_multiq.c_multiq_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_multiq.c_multiq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.multiq_sched_data = type { i32, i32**, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@noop_qdisc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* @multiq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multiq_init(%struct.Qdisc* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.multiq_sched_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %11 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %12 = call %struct.multiq_sched_data* @qdisc_priv(%struct.Qdisc* %11)
  store %struct.multiq_sched_data* %12, %struct.multiq_sched_data** %8, align 8
  %13 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %8, align 8
  %14 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %13, i32 0, i32 1
  store i32** null, i32*** %14, align 8
  %15 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %16 = icmp ne %struct.nlattr* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %75

20:                                               ; preds = %3
  %21 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %8, align 8
  %22 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %21, i32 0, i32 3
  %23 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %8, align 8
  %24 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %23, i32 0, i32 2
  %25 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %26 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %27 = call i32 @tcf_block_get(i32* %22, i32* %24, %struct.Qdisc* %25, %struct.netlink_ext_ack* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %4, align 4
  br label %75

32:                                               ; preds = %20
  %33 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %34 = call %struct.TYPE_2__* @qdisc_dev(%struct.Qdisc* %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %8, align 8
  %38 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %8, align 8
  %40 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i32** @kcalloc(i32 %41, i32 8, i32 %42)
  %44 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %8, align 8
  %45 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %44, i32 0, i32 1
  store i32** %43, i32*** %45, align 8
  %46 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %8, align 8
  %47 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %46, i32 0, i32 1
  %48 = load i32**, i32*** %47, align 8
  %49 = icmp ne i32** %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %32
  %51 = load i32, i32* @ENOBUFS, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %75

53:                                               ; preds = %32
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %67, %53
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %8, align 8
  %57 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %8, align 8
  %62 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %61, i32 0, i32 1
  %63 = load i32**, i32*** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  store i32* @noop_qdisc, i32** %66, align 8
  br label %67

67:                                               ; preds = %60
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %54

70:                                               ; preds = %54
  %71 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %72 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %73 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %74 = call i32 @multiq_tune(%struct.Qdisc* %71, %struct.nlattr* %72, %struct.netlink_ext_ack* %73)
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %70, %50, %30, %17
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.multiq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @tcf_block_get(i32*, i32*, %struct.Qdisc*, %struct.netlink_ext_ack*) #1

declare dso_local %struct.TYPE_2__* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @multiq_tune(%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
