; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cbq.c_cbq_dump_class.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cbq.c_cbq_dump_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcmsg = type { i32, i32, i32 }
%struct.cbq_class = type { %struct.TYPE_7__*, %struct.TYPE_6__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.nlattr = type { i32 }

@TC_H_ROOT = common dso_local global i32 0, align 4
@TCA_OPTIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.sk_buff*, %struct.tcmsg*)* @cbq_dump_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbq_dump_class(%struct.Qdisc* %0, i64 %1, %struct.sk_buff* %2, %struct.tcmsg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.tcmsg*, align 8
  %10 = alloca %struct.cbq_class*, align 8
  %11 = alloca %struct.nlattr*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.tcmsg* %3, %struct.tcmsg** %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = inttoptr i64 %12 to %struct.cbq_class*
  store %struct.cbq_class* %13, %struct.cbq_class** %10, align 8
  %14 = load %struct.cbq_class*, %struct.cbq_class** %10, align 8
  %15 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %14, i32 0, i32 2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = icmp ne %struct.TYPE_8__* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %4
  %19 = load %struct.cbq_class*, %struct.cbq_class** %10, align 8
  %20 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %19, i32 0, i32 2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %26 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  br label %31

27:                                               ; preds = %4
  %28 = load i32, i32* @TC_H_ROOT, align 4
  %29 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %30 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %27, %18
  %32 = load %struct.cbq_class*, %struct.cbq_class** %10, align 8
  %33 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %37 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.cbq_class*, %struct.cbq_class** %10, align 8
  %39 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %44 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = load i32, i32* @TCA_OPTIONS, align 4
  %47 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %45, i32 %46)
  store %struct.nlattr* %47, %struct.nlattr** %11, align 8
  %48 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %49 = icmp eq %struct.nlattr* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %31
  br label %61

51:                                               ; preds = %31
  %52 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %53 = load %struct.cbq_class*, %struct.cbq_class** %10, align 8
  %54 = call i64 @cbq_dump_attr(%struct.sk_buff* %52, %struct.cbq_class* %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %61

57:                                               ; preds = %51
  %58 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %59 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %60 = call i32 @nla_nest_end(%struct.sk_buff* %58, %struct.nlattr* %59)
  store i32 %60, i32* %5, align 4
  br label %65

61:                                               ; preds = %56, %50
  %62 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %63 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %64 = call i32 @nla_nest_cancel(%struct.sk_buff* %62, %struct.nlattr* %63)
  store i32 -1, i32* %5, align 4
  br label %65

65:                                               ; preds = %61, %57
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @cbq_dump_attr(%struct.sk_buff*, %struct.cbq_class*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
