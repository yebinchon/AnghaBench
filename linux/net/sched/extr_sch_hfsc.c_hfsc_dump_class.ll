; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_hfsc.c_hfsc_dump_class.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_hfsc.c_hfsc_dump_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcmsg = type { i32, i32, i32 }
%struct.hfsc_class = type { i64, %struct.TYPE_7__*, %struct.TYPE_6__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.nlattr = type { i32 }

@TC_H_ROOT = common dso_local global i32 0, align 4
@TCA_OPTIONS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.sk_buff*, %struct.tcmsg*)* @hfsc_dump_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsc_dump_class(%struct.Qdisc* %0, i64 %1, %struct.sk_buff* %2, %struct.tcmsg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.tcmsg*, align 8
  %10 = alloca %struct.hfsc_class*, align 8
  %11 = alloca %struct.nlattr*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.tcmsg* %3, %struct.tcmsg** %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = inttoptr i64 %12 to %struct.hfsc_class*
  store %struct.hfsc_class* %13, %struct.hfsc_class** %10, align 8
  %14 = load %struct.hfsc_class*, %struct.hfsc_class** %10, align 8
  %15 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %14, i32 0, i32 3
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = icmp ne %struct.TYPE_8__* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load %struct.hfsc_class*, %struct.hfsc_class** %10, align 8
  %20 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %19, i32 0, i32 3
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  br label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @TC_H_ROOT, align 4
  br label %27

27:                                               ; preds = %25, %18
  %28 = phi i32 [ %24, %18 ], [ %26, %25 ]
  %29 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %30 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.hfsc_class*, %struct.hfsc_class** %10, align 8
  %32 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %36 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.hfsc_class*, %struct.hfsc_class** %10, align 8
  %38 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %27
  %42 = load %struct.hfsc_class*, %struct.hfsc_class** %10, align 8
  %43 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %42, i32 0, i32 1
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %48 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %41, %27
  %50 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %51 = load i32, i32* @TCA_OPTIONS, align 4
  %52 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %50, i32 %51)
  store %struct.nlattr* %52, %struct.nlattr** %11, align 8
  %53 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %54 = icmp eq %struct.nlattr* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %66

56:                                               ; preds = %49
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = load %struct.hfsc_class*, %struct.hfsc_class** %10, align 8
  %59 = call i64 @hfsc_dump_curves(%struct.sk_buff* %57, %struct.hfsc_class* %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %66

62:                                               ; preds = %56
  %63 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %64 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %65 = call i32 @nla_nest_end(%struct.sk_buff* %63, %struct.nlattr* %64)
  store i32 %65, i32* %5, align 4
  br label %72

66:                                               ; preds = %61, %55
  %67 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %68 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %69 = call i32 @nla_nest_cancel(%struct.sk_buff* %67, %struct.nlattr* %68)
  %70 = load i32, i32* @EMSGSIZE, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %66, %62
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @hfsc_dump_curves(%struct.sk_buff*, %struct.hfsc_class*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
