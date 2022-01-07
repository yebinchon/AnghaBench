; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_atm.c_atm_tc_dump_class.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_atm.c_atm_tc_dump_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcmsg = type { i32, i32 }
%struct.atm_qdisc_data = type { i32 }
%struct.atm_flow_data = type { i32, %struct.TYPE_10__, i64, %struct.TYPE_9__*, %struct.sockaddr_atmpvc*, %struct.TYPE_6__*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.sockaddr_atmpvc = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.nlattr = type { i32 }

@.str = private unnamed_addr constant [60 x i8] c"atm_tc_dump_class(sch %p,[qdisc %p],flow %p,skb %p,tcm %p)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TCA_OPTIONS = common dso_local global i32 0, align 4
@TCA_ATM_HDR = common dso_local global i32 0, align 4
@AF_ATMPVC = common dso_local global i32 0, align 4
@TCA_ATM_ADDR = common dso_local global i32 0, align 4
@TCA_ATM_STATE = common dso_local global i32 0, align 4
@TCA_ATM_EXCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.sk_buff*, %struct.tcmsg*)* @atm_tc_dump_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atm_tc_dump_class(%struct.Qdisc* %0, i64 %1, %struct.sk_buff* %2, %struct.tcmsg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.tcmsg*, align 8
  %10 = alloca %struct.atm_qdisc_data*, align 8
  %11 = alloca %struct.atm_flow_data*, align 8
  %12 = alloca %struct.nlattr*, align 8
  %13 = alloca %struct.sockaddr_atmpvc, align 4
  %14 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.tcmsg* %3, %struct.tcmsg** %9, align 8
  %15 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %16 = call %struct.atm_qdisc_data* @qdisc_priv(%struct.Qdisc* %15)
  store %struct.atm_qdisc_data* %16, %struct.atm_qdisc_data** %10, align 8
  %17 = load i64, i64* %7, align 8
  %18 = inttoptr i64 %17 to %struct.atm_flow_data*
  store %struct.atm_flow_data* %18, %struct.atm_flow_data** %11, align 8
  %19 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %20 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %10, align 8
  %21 = load %struct.atm_flow_data*, %struct.atm_flow_data** %11, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %24 = call i32 @pr_debug(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), %struct.Qdisc* %19, %struct.atm_qdisc_data* %20, %struct.atm_flow_data* %21, %struct.sk_buff* %22, %struct.tcmsg* %23)
  %25 = load %struct.atm_flow_data*, %struct.atm_flow_data** %11, align 8
  %26 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %25, i32 0, i32 6
  %27 = call i64 @list_empty(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %156

32:                                               ; preds = %4
  %33 = load %struct.atm_flow_data*, %struct.atm_flow_data** %11, align 8
  %34 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %38 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.atm_flow_data*, %struct.atm_flow_data** %11, align 8
  %40 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %39, i32 0, i32 5
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %45 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = load i32, i32* @TCA_OPTIONS, align 4
  %48 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %46, i32 %47)
  store %struct.nlattr* %48, %struct.nlattr** %12, align 8
  %49 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %50 = icmp eq %struct.nlattr* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %32
  br label %152

52:                                               ; preds = %32
  %53 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %54 = load i32, i32* @TCA_ATM_HDR, align 4
  %55 = load %struct.atm_flow_data*, %struct.atm_flow_data** %11, align 8
  %56 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.atm_flow_data*, %struct.atm_flow_data** %11, align 8
  %59 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %58, i32 0, i32 4
  %60 = load %struct.sockaddr_atmpvc*, %struct.sockaddr_atmpvc** %59, align 8
  %61 = call i64 @nla_put(%struct.sk_buff* %53, i32 %54, i32 %57, %struct.sockaddr_atmpvc* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %152

64:                                               ; preds = %52
  %65 = load %struct.atm_flow_data*, %struct.atm_flow_data** %11, align 8
  %66 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %65, i32 0, i32 3
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = icmp ne %struct.TYPE_9__* %67, null
  br i1 %68, label %69, label %125

69:                                               ; preds = %64
  %70 = call i32 @memset(%struct.sockaddr_atmpvc* %13, i32 0, i32 16)
  %71 = load i32, i32* @AF_ATMPVC, align 4
  %72 = getelementptr inbounds %struct.sockaddr_atmpvc, %struct.sockaddr_atmpvc* %13, i32 0, i32 1
  store i32 %71, i32* %72, align 4
  %73 = load %struct.atm_flow_data*, %struct.atm_flow_data** %11, align 8
  %74 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %73, i32 0, i32 3
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = icmp ne %struct.TYPE_7__* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %69
  %80 = load %struct.atm_flow_data*, %struct.atm_flow_data** %11, align 8
  %81 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %80, i32 0, i32 3
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  br label %88

87:                                               ; preds = %69
  br label %88

88:                                               ; preds = %87, %79
  %89 = phi i32 [ %86, %79 ], [ -1, %87 ]
  %90 = getelementptr inbounds %struct.sockaddr_atmpvc, %struct.sockaddr_atmpvc* %13, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load %struct.atm_flow_data*, %struct.atm_flow_data** %11, align 8
  %93 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %92, i32 0, i32 3
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds %struct.sockaddr_atmpvc, %struct.sockaddr_atmpvc* %13, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  %99 = load %struct.atm_flow_data*, %struct.atm_flow_data** %11, align 8
  %100 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %99, i32 0, i32 3
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.sockaddr_atmpvc, %struct.sockaddr_atmpvc* %13, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %107 = load i32, i32* @TCA_ATM_ADDR, align 4
  %108 = call i64 @nla_put(%struct.sk_buff* %106, i32 %107, i32 16, %struct.sockaddr_atmpvc* %13)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %88
  br label %152

111:                                              ; preds = %88
  %112 = load %struct.atm_flow_data*, %struct.atm_flow_data** %11, align 8
  %113 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %112, i32 0, i32 3
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @ATM_VF2VS(i32 %116)
  store i32 %117, i32* %14, align 4
  %118 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %119 = load i32, i32* @TCA_ATM_STATE, align 4
  %120 = load i32, i32* %14, align 4
  %121 = call i64 @nla_put_u32(%struct.sk_buff* %118, i32 %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %111
  br label %152

124:                                              ; preds = %111
  br label %125

125:                                              ; preds = %124, %64
  %126 = load %struct.atm_flow_data*, %struct.atm_flow_data** %11, align 8
  %127 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %125
  %131 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %132 = load i32, i32* @TCA_ATM_EXCESS, align 4
  %133 = load %struct.atm_flow_data*, %struct.atm_flow_data** %11, align 8
  %134 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @nla_put_u32(%struct.sk_buff* %131, i32 %132, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %130
  br label %152

140:                                              ; preds = %130
  br label %148

141:                                              ; preds = %125
  %142 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %143 = load i32, i32* @TCA_ATM_EXCESS, align 4
  %144 = call i64 @nla_put_u32(%struct.sk_buff* %142, i32 %143, i32 0)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  br label %152

147:                                              ; preds = %141
  br label %148

148:                                              ; preds = %147, %140
  %149 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %150 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %151 = call i32 @nla_nest_end(%struct.sk_buff* %149, %struct.nlattr* %150)
  store i32 %151, i32* %5, align 4
  br label %156

152:                                              ; preds = %146, %139, %123, %110, %63, %51
  %153 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %154 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %155 = call i32 @nla_nest_cancel(%struct.sk_buff* %153, %struct.nlattr* %154)
  store i32 -1, i32* %5, align 4
  br label %156

156:                                              ; preds = %152, %148, %29
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local %struct.atm_qdisc_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @pr_debug(i8*, %struct.Qdisc*, %struct.atm_qdisc_data*, %struct.atm_flow_data*, %struct.sk_buff*, %struct.tcmsg*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.sockaddr_atmpvc*) #1

declare dso_local i32 @memset(%struct.sockaddr_atmpvc*, i32, i32) #1

declare dso_local i32 @ATM_VF2VS(i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
