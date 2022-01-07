; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_qfq.c_qfq_dump_class.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_qfq.c_qfq_dump_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcmsg = type { i32, i32, i32 }
%struct.qfq_class = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nlattr = type { i32 }

@TC_H_ROOT = common dso_local global i32 0, align 4
@TCA_OPTIONS = common dso_local global i32 0, align 4
@TCA_QFQ_WEIGHT = common dso_local global i32 0, align 4
@TCA_QFQ_LMAX = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.sk_buff*, %struct.tcmsg*)* @qfq_dump_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qfq_dump_class(%struct.Qdisc* %0, i64 %1, %struct.sk_buff* %2, %struct.tcmsg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.tcmsg*, align 8
  %10 = alloca %struct.qfq_class*, align 8
  %11 = alloca %struct.nlattr*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.tcmsg* %3, %struct.tcmsg** %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = inttoptr i64 %12 to %struct.qfq_class*
  store %struct.qfq_class* %13, %struct.qfq_class** %10, align 8
  %14 = load i32, i32* @TC_H_ROOT, align 4
  %15 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %16 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.qfq_class*, %struct.qfq_class** %10, align 8
  %18 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %22 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.qfq_class*, %struct.qfq_class** %10, align 8
  %24 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %29 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %31 = load i32, i32* @TCA_OPTIONS, align 4
  %32 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %30, i32 %31)
  store %struct.nlattr* %32, %struct.nlattr** %11, align 8
  %33 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %34 = icmp eq %struct.nlattr* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %4
  br label %61

36:                                               ; preds = %4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = load i32, i32* @TCA_QFQ_WEIGHT, align 4
  %39 = load %struct.qfq_class*, %struct.qfq_class** %10, align 8
  %40 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @nla_put_u32(%struct.sk_buff* %37, i32 %38, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %36
  %47 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %48 = load i32, i32* @TCA_QFQ_LMAX, align 4
  %49 = load %struct.qfq_class*, %struct.qfq_class** %10, align 8
  %50 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @nla_put_u32(%struct.sk_buff* %47, i32 %48, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46, %36
  br label %61

57:                                               ; preds = %46
  %58 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %59 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %60 = call i32 @nla_nest_end(%struct.sk_buff* %58, %struct.nlattr* %59)
  store i32 %60, i32* %5, align 4
  br label %67

61:                                               ; preds = %56, %35
  %62 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %63 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %64 = call i32 @nla_nest_cancel(%struct.sk_buff* %62, %struct.nlattr* %63)
  %65 = load i32, i32* @EMSGSIZE, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %61, %57
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
