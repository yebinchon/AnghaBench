; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_ct.c_tcf_ct_dump_nat.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_ct.c_tcf_ct_dump_nat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tcf_ct_params = type { i32, i64, %struct.nf_nat_range2 }
%struct.nf_nat_range2 = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@TCA_CT_ACT_NAT = common dso_local global i32 0, align 4
@TCA_CT_ACT_NAT_SRC = common dso_local global i32 0, align 4
@TCA_CT_ACT_NAT_DST = common dso_local global i32 0, align 4
@NF_NAT_RANGE_MAP_IPS = common dso_local global i32 0, align 4
@TCA_CT_NAT_IPV4_MIN = common dso_local global i32 0, align 4
@TCA_CT_NAT_IPV4_MAX = common dso_local global i32 0, align 4
@TCA_CT_NAT_IPV6_MIN = common dso_local global i32 0, align 4
@TCA_CT_NAT_IPV6_MAX = common dso_local global i32 0, align 4
@NF_NAT_RANGE_PROTO_SPECIFIED = common dso_local global i32 0, align 4
@TCA_CT_NAT_PORT_MIN = common dso_local global i32 0, align 4
@TCA_CT_NAT_PORT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tcf_ct_params*)* @tcf_ct_dump_nat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_ct_dump_nat(%struct.sk_buff* %0, %struct.tcf_ct_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tcf_ct_params*, align 8
  %6 = alloca %struct.nf_nat_range2*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.tcf_ct_params* %1, %struct.tcf_ct_params** %5, align 8
  %7 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %5, align 8
  %8 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %7, i32 0, i32 2
  store %struct.nf_nat_range2* %8, %struct.nf_nat_range2** %6, align 8
  %9 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %5, align 8
  %10 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @TCA_CT_ACT_NAT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %108

16:                                               ; preds = %2
  %17 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %5, align 8
  %18 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @TCA_CT_ACT_NAT_SRC, align 4
  %21 = load i32, i32* @TCA_CT_ACT_NAT_DST, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %108

26:                                               ; preds = %16
  %27 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %6, align 8
  %28 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @NF_NAT_RANGE_MAP_IPS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %79

33:                                               ; preds = %26
  %34 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %5, align 8
  %35 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %33
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = load i32, i32* @TCA_CT_NAT_IPV4_MIN, align 4
  %41 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %6, align 8
  %42 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @nla_put_in_addr(%struct.sk_buff* %39, i32 %40, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i32 -1, i32* %3, align 4
  br label %108

48:                                               ; preds = %38
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = load i32, i32* @TCA_CT_NAT_IPV4_MAX, align 4
  %51 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %6, align 8
  %52 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @nla_put_in_addr(%struct.sk_buff* %49, i32 %50, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  store i32 -1, i32* %3, align 4
  br label %108

58:                                               ; preds = %48
  br label %78

59:                                               ; preds = %33
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = load i32, i32* @TCA_CT_NAT_IPV6_MIN, align 4
  %62 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %6, align 8
  %63 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = call i64 @nla_put_in6_addr(%struct.sk_buff* %60, i32 %61, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store i32 -1, i32* %3, align 4
  br label %108

68:                                               ; preds = %59
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = load i32, i32* @TCA_CT_NAT_IPV6_MAX, align 4
  %71 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %6, align 8
  %72 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = call i64 @nla_put_in6_addr(%struct.sk_buff* %69, i32 %70, i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  store i32 -1, i32* %3, align 4
  br label %108

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77, %58
  br label %79

79:                                               ; preds = %78, %26
  %80 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %6, align 8
  %81 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @NF_NAT_RANGE_PROTO_SPECIFIED, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %107

86:                                               ; preds = %79
  %87 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %88 = load i32, i32* @TCA_CT_NAT_PORT_MIN, align 4
  %89 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %6, align 8
  %90 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @nla_put_be16(%struct.sk_buff* %87, i32 %88, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  store i32 -1, i32* %3, align 4
  br label %108

96:                                               ; preds = %86
  %97 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %98 = load i32, i32* @TCA_CT_NAT_PORT_MAX, align 4
  %99 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %6, align 8
  %100 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @nla_put_be16(%struct.sk_buff* %97, i32 %98, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  store i32 -1, i32* %3, align 4
  br label %108

106:                                              ; preds = %96
  br label %107

107:                                              ; preds = %106, %79
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %107, %105, %95, %76, %67, %57, %47, %25, %15
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i64 @nla_put_in_addr(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_in6_addr(%struct.sk_buff*, i32, i32*) #1

declare dso_local i64 @nla_put_be16(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
