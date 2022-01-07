; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_htb.c_htb_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_htb.c_htb_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.htb_sched = type { i32, i32, i32, i32, i32 }
%struct.nlattr = type { i32 }
%struct.tc_htb_glob = type { i64, i32, i32, i32, i32 }

@HTB_VER = common dso_local global i32 0, align 4
@TCA_OPTIONS = common dso_local global i32 0, align 4
@TCA_HTB_INIT = common dso_local global i32 0, align 4
@TCA_HTB_DIRECT_QLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.sk_buff*)* @htb_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htb_dump(%struct.Qdisc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.htb_sched*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.tc_htb_glob, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %10 = call %struct.htb_sched* @qdisc_priv(%struct.Qdisc* %9)
  store %struct.htb_sched* %10, %struct.htb_sched** %6, align 8
  %11 = load %struct.htb_sched*, %struct.htb_sched** %6, align 8
  %12 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %15 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load %struct.htb_sched*, %struct.htb_sched** %6, align 8
  %18 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.tc_htb_glob, %struct.tc_htb_glob* %8, i32 0, i32 4
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @HTB_VER, align 4
  %22 = getelementptr inbounds %struct.tc_htb_glob, %struct.tc_htb_glob* %8, i32 0, i32 3
  store i32 %21, i32* %22, align 8
  %23 = load %struct.htb_sched*, %struct.htb_sched** %6, align 8
  %24 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.tc_htb_glob, %struct.tc_htb_glob* %8, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = load %struct.htb_sched*, %struct.htb_sched** %6, align 8
  %28 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.tc_htb_glob, %struct.tc_htb_glob* %8, i32 0, i32 1
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.tc_htb_glob, %struct.tc_htb_glob* %8, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = load i32, i32* @TCA_OPTIONS, align 4
  %34 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %32, i32 %33)
  store %struct.nlattr* %34, %struct.nlattr** %7, align 8
  %35 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %36 = icmp eq %struct.nlattr* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  br label %56

38:                                               ; preds = %2
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = load i32, i32* @TCA_HTB_INIT, align 4
  %41 = call i64 @nla_put(%struct.sk_buff* %39, i32 %40, i32 24, %struct.tc_htb_glob* %8)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %38
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = load i32, i32* @TCA_HTB_DIRECT_QLEN, align 4
  %46 = load %struct.htb_sched*, %struct.htb_sched** %6, align 8
  %47 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @nla_put_u32(%struct.sk_buff* %44, i32 %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43, %38
  br label %56

52:                                               ; preds = %43
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %55 = call i32 @nla_nest_end(%struct.sk_buff* %53, %struct.nlattr* %54)
  store i32 %55, i32* %3, align 4
  br label %60

56:                                               ; preds = %51, %37
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %59 = call i32 @nla_nest_cancel(%struct.sk_buff* %57, %struct.nlattr* %58)
  store i32 -1, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %52
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.htb_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.tc_htb_glob*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
