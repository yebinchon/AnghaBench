; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_ct.c_tcf_ct_fill_params_nat.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_ct.c_tcf_ct_fill_params_nat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_ct_params = type { i32, i32, %struct.nf_nat_range2 }
%struct.nf_nat_range2 = type { %struct.TYPE_8__, %struct.TYPE_7__, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.tc_ct = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@TCA_CT_ACT_NAT = common dso_local global i32 0, align 4
@CONFIG_NF_NAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Netfilter nat isn't enabled in kernel\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@TCA_CT_ACT_NAT_SRC = common dso_local global i32 0, align 4
@TCA_CT_ACT_NAT_DST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"dnat and snat can't be enabled at the same time\00", align 1
@TCA_CT_NAT_IPV4_MIN = common dso_local global i64 0, align 8
@TCA_CT_NAT_IPV4_MAX = common dso_local global i64 0, align 8
@NF_NAT_RANGE_MAP_IPS = common dso_local global i32 0, align 4
@TCA_CT_NAT_IPV6_MIN = common dso_local global i64 0, align 8
@TCA_CT_NAT_IPV6_MAX = common dso_local global i64 0, align 8
@TCA_CT_NAT_PORT_MIN = common dso_local global i64 0, align 8
@NF_NAT_RANGE_PROTO_SPECIFIED = common dso_local global i32 0, align 4
@TCA_CT_NAT_PORT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_ct_params*, %struct.tc_ct*, %struct.nlattr**, %struct.netlink_ext_ack*)* @tcf_ct_fill_params_nat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_ct_fill_params_nat(%struct.tcf_ct_params* %0, %struct.tc_ct* %1, %struct.nlattr** %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcf_ct_params*, align 8
  %7 = alloca %struct.tc_ct*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.nf_nat_range2*, align 8
  %11 = alloca %struct.nlattr*, align 8
  %12 = alloca %struct.nlattr*, align 8
  store %struct.tcf_ct_params* %0, %struct.tcf_ct_params** %6, align 8
  store %struct.tc_ct* %1, %struct.tc_ct** %7, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %13 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %6, align 8
  %14 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @TCA_CT_ACT_NAT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %185

20:                                               ; preds = %4
  %21 = load i32, i32* @CONFIG_NF_NAT, align 4
  %22 = call i32 @IS_ENABLED(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %26 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %185

29:                                               ; preds = %20
  %30 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %6, align 8
  %31 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @TCA_CT_ACT_NAT_SRC, align 4
  %34 = load i32, i32* @TCA_CT_ACT_NAT_DST, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %185

39:                                               ; preds = %29
  %40 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %6, align 8
  %41 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @TCA_CT_ACT_NAT_SRC, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %39
  %47 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %6, align 8
  %48 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @TCA_CT_ACT_NAT_DST, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %55 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %54, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @EOPNOTSUPP, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %185

58:                                               ; preds = %46, %39
  %59 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %6, align 8
  %60 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %59, i32 0, i32 2
  store %struct.nf_nat_range2* %60, %struct.nf_nat_range2** %10, align 8
  %61 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %62 = load i64, i64* @TCA_CT_NAT_IPV4_MIN, align 8
  %63 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %61, i64 %62
  %64 = load %struct.nlattr*, %struct.nlattr** %63, align 8
  %65 = icmp ne %struct.nlattr* %64, null
  br i1 %65, label %66, label %101

66:                                               ; preds = %58
  %67 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %68 = load i64, i64* @TCA_CT_NAT_IPV4_MAX, align 8
  %69 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %67, i64 %68
  %70 = load %struct.nlattr*, %struct.nlattr** %69, align 8
  store %struct.nlattr* %70, %struct.nlattr** %11, align 8
  %71 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %6, align 8
  %72 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %71, i32 0, i32 1
  store i32 1, i32* %72, align 4
  %73 = load i32, i32* @NF_NAT_RANGE_MAP_IPS, align 4
  %74 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %10, align 8
  %75 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %79 = load i64, i64* @TCA_CT_NAT_IPV4_MIN, align 8
  %80 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %78, i64 %79
  %81 = load %struct.nlattr*, %struct.nlattr** %80, align 8
  %82 = call i8* @nla_get_in_addr(%struct.nlattr* %81)
  %83 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %10, align 8
  %84 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store i8* %82, i8** %85, align 8
  %86 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %87 = icmp ne %struct.nlattr* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %66
  %89 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %90 = call i8* @nla_get_in_addr(%struct.nlattr* %89)
  br label %96

91:                                               ; preds = %66
  %92 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %10, align 8
  %93 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  br label %96

96:                                               ; preds = %91, %88
  %97 = phi i8* [ %90, %88 ], [ %95, %91 ]
  %98 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %10, align 8
  %99 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  store i8* %97, i8** %100, align 8
  br label %143

101:                                              ; preds = %58
  %102 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %103 = load i64, i64* @TCA_CT_NAT_IPV6_MIN, align 8
  %104 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %102, i64 %103
  %105 = load %struct.nlattr*, %struct.nlattr** %104, align 8
  %106 = icmp ne %struct.nlattr* %105, null
  br i1 %106, label %107, label %142

107:                                              ; preds = %101
  %108 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %109 = load i64, i64* @TCA_CT_NAT_IPV6_MAX, align 8
  %110 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %108, i64 %109
  %111 = load %struct.nlattr*, %struct.nlattr** %110, align 8
  store %struct.nlattr* %111, %struct.nlattr** %12, align 8
  %112 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %6, align 8
  %113 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %112, i32 0, i32 1
  store i32 0, i32* %113, align 4
  %114 = load i32, i32* @NF_NAT_RANGE_MAP_IPS, align 4
  %115 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %10, align 8
  %116 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  %119 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %120 = load i64, i64* @TCA_CT_NAT_IPV6_MIN, align 8
  %121 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %119, i64 %120
  %122 = load %struct.nlattr*, %struct.nlattr** %121, align 8
  %123 = call i8* @nla_get_in6_addr(%struct.nlattr* %122)
  %124 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %10, align 8
  %125 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  store i8* %123, i8** %126, align 8
  %127 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %128 = icmp ne %struct.nlattr* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %107
  %130 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %131 = call i8* @nla_get_in6_addr(%struct.nlattr* %130)
  br label %137

132:                                              ; preds = %107
  %133 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %10, align 8
  %134 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  br label %137

137:                                              ; preds = %132, %129
  %138 = phi i8* [ %131, %129 ], [ %136, %132 ]
  %139 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %10, align 8
  %140 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  store i8* %138, i8** %141, align 8
  br label %142

142:                                              ; preds = %137, %101
  br label %143

143:                                              ; preds = %142, %96
  %144 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %145 = load i64, i64* @TCA_CT_NAT_PORT_MIN, align 8
  %146 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %144, i64 %145
  %147 = load %struct.nlattr*, %struct.nlattr** %146, align 8
  %148 = icmp ne %struct.nlattr* %147, null
  br i1 %148, label %149, label %184

149:                                              ; preds = %143
  %150 = load i32, i32* @NF_NAT_RANGE_PROTO_SPECIFIED, align 4
  %151 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %10, align 8
  %152 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  %155 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %156 = load i64, i64* @TCA_CT_NAT_PORT_MIN, align 8
  %157 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %155, i64 %156
  %158 = load %struct.nlattr*, %struct.nlattr** %157, align 8
  %159 = call i8* @nla_get_be16(%struct.nlattr* %158)
  %160 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %10, align 8
  %161 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  store i8* %159, i8** %162, align 8
  %163 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %164 = load i64, i64* @TCA_CT_NAT_PORT_MAX, align 8
  %165 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %163, i64 %164
  %166 = load %struct.nlattr*, %struct.nlattr** %165, align 8
  %167 = icmp ne %struct.nlattr* %166, null
  br i1 %167, label %168, label %174

168:                                              ; preds = %149
  %169 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %170 = load i64, i64* @TCA_CT_NAT_PORT_MAX, align 8
  %171 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %169, i64 %170
  %172 = load %struct.nlattr*, %struct.nlattr** %171, align 8
  %173 = call i8* @nla_get_be16(%struct.nlattr* %172)
  br label %179

174:                                              ; preds = %149
  %175 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %10, align 8
  %176 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  br label %179

179:                                              ; preds = %174, %168
  %180 = phi i8* [ %173, %168 ], [ %178, %174 ]
  %181 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %10, align 8
  %182 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  store i8* %180, i8** %183, align 8
  br label %184

184:                                              ; preds = %179, %143
  store i32 0, i32* %5, align 4
  br label %185

185:                                              ; preds = %184, %53, %38, %24, %19
  %186 = load i32, i32* %5, align 4
  ret i32 %186
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i8* @nla_get_in_addr(%struct.nlattr*) #1

declare dso_local i8* @nla_get_in6_addr(%struct.nlattr*) #1

declare dso_local i8* @nla_get_be16(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
