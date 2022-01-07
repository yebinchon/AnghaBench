; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_htb.c_htb_dump_class.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_htb.c_htb_dump_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcmsg = type { i32, i32, i32 }
%struct.htb_class = type { %struct.TYPE_12__, %struct.TYPE_12__, i64, i32, i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.tc_htb_opt = type { i64, i32, i32, i8*, i32, i8*, i32 }

@TC_H_ROOT = common dso_local global i32 0, align 4
@TCA_OPTIONS = common dso_local global i32 0, align 4
@TCA_HTB_PARMS = common dso_local global i32 0, align 4
@TCA_HTB_RATE64 = common dso_local global i32 0, align 4
@TCA_HTB_PAD = common dso_local global i32 0, align 4
@TCA_HTB_CEIL64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.sk_buff*, %struct.tcmsg*)* @htb_dump_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htb_dump_class(%struct.Qdisc* %0, i64 %1, %struct.sk_buff* %2, %struct.tcmsg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.tcmsg*, align 8
  %10 = alloca %struct.htb_class*, align 8
  %11 = alloca %struct.nlattr*, align 8
  %12 = alloca %struct.tc_htb_opt, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.tcmsg* %3, %struct.tcmsg** %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = inttoptr i64 %13 to %struct.htb_class*
  store %struct.htb_class* %14, %struct.htb_class** %10, align 8
  %15 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  %16 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %15, i32 0, i32 9
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = icmp ne %struct.TYPE_8__* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  %21 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %20, i32 0, i32 9
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  br label %28

26:                                               ; preds = %4
  %27 = load i32, i32* @TC_H_ROOT, align 4
  br label %28

28:                                               ; preds = %26, %19
  %29 = phi i32 [ %25, %19 ], [ %27, %26 ]
  %30 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %31 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  %33 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %32, i32 0, i32 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %37 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  %39 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %57, label %42

42:                                               ; preds = %28
  %43 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  %44 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %43, i32 0, i32 7
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = icmp ne %struct.TYPE_10__* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  %50 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %49, i32 0, i32 7
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %56 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %48, %42, %28
  %58 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %59 = load i32, i32* @TCA_OPTIONS, align 4
  %60 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %58, i32 %59)
  store %struct.nlattr* %60, %struct.nlattr** %11, align 8
  %61 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %62 = icmp eq %struct.nlattr* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %139

64:                                               ; preds = %57
  %65 = call i32 @memset(%struct.tc_htb_opt* %12, i32 0, i32 48)
  %66 = getelementptr inbounds %struct.tc_htb_opt, %struct.tc_htb_opt* %12, i32 0, i32 6
  %67 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  %68 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %67, i32 0, i32 1
  %69 = call i32 @psched_ratecfg_getrate(i32* %66, %struct.TYPE_12__* %68)
  %70 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  %71 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @PSCHED_NS2TICKS(i32 %72)
  %74 = getelementptr inbounds %struct.tc_htb_opt, %struct.tc_htb_opt* %12, i32 0, i32 5
  store i8* %73, i8** %74, align 8
  %75 = getelementptr inbounds %struct.tc_htb_opt, %struct.tc_htb_opt* %12, i32 0, i32 4
  %76 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  %77 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %76, i32 0, i32 0
  %78 = call i32 @psched_ratecfg_getrate(i32* %75, %struct.TYPE_12__* %77)
  %79 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  %80 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = call i8* @PSCHED_NS2TICKS(i32 %81)
  %83 = getelementptr inbounds %struct.tc_htb_opt, %struct.tc_htb_opt* %12, i32 0, i32 3
  store i8* %82, i8** %83, align 8
  %84 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  %85 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.tc_htb_opt, %struct.tc_htb_opt* %12, i32 0, i32 2
  store i32 %86, i32* %87, align 4
  %88 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  %89 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds %struct.tc_htb_opt, %struct.tc_htb_opt* %12, i32 0, i32 1
  store i32 %90, i32* %91, align 8
  %92 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  %93 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.tc_htb_opt, %struct.tc_htb_opt* %12, i32 0, i32 0
  store i64 %94, i64* %95, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %97 = load i32, i32* @TCA_HTB_PARMS, align 4
  %98 = call i64 @nla_put(%struct.sk_buff* %96, i32 %97, i32 48, %struct.tc_htb_opt* %12)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %64
  br label %139

101:                                              ; preds = %64
  %102 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  %103 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp uge i64 %105, 4294967296
  br i1 %106, label %107, label %118

107:                                              ; preds = %101
  %108 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %109 = load i32, i32* @TCA_HTB_RATE64, align 4
  %110 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  %111 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* @TCA_HTB_PAD, align 4
  %115 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %108, i32 %109, i64 %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %107
  br label %139

118:                                              ; preds = %107, %101
  %119 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  %120 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp uge i64 %122, 4294967296
  br i1 %123, label %124, label %135

124:                                              ; preds = %118
  %125 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %126 = load i32, i32* @TCA_HTB_CEIL64, align 4
  %127 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  %128 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i32, i32* @TCA_HTB_PAD, align 4
  %132 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %125, i32 %126, i64 %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %124
  br label %139

135:                                              ; preds = %124, %118
  %136 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %137 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %138 = call i32 @nla_nest_end(%struct.sk_buff* %136, %struct.nlattr* %137)
  store i32 %138, i32* %5, align 4
  br label %143

139:                                              ; preds = %134, %117, %100, %63
  %140 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %141 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %142 = call i32 @nla_nest_cancel(%struct.sk_buff* %140, %struct.nlattr* %141)
  store i32 -1, i32* %5, align 4
  br label %143

143:                                              ; preds = %139, %135
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.tc_htb_opt*, i32, i32) #1

declare dso_local i32 @psched_ratecfg_getrate(i32*, %struct.TYPE_12__*) #1

declare dso_local i8* @PSCHED_NS2TICKS(i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.tc_htb_opt*) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i64, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
