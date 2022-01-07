; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_ct.c_tcf_ct_fill_params.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_ct.c_tcf_ct_fill_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tcf_ct_params = type { i32, i32, i32, i32*, %struct.nf_conn*, i32*, i32 }
%struct.nf_conn = type { i32, i32 }
%struct.tc_ct = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.tc_ct_action_net = type { i32 }
%struct.nf_conntrack_zone = type { i32 }

@ct_net_id = common dso_local global i32 0, align 4
@NF_CT_DEFAULT_ZONE_ID = common dso_local global i32 0, align 4
@TCA_CT_ACTION = common dso_local global i64 0, align 8
@TCA_CT_UNSPEC = common dso_local global i32 0, align 4
@TCA_CT_ACT_CLEAR = common dso_local global i32 0, align 4
@TCA_CT_MARK = common dso_local global i64 0, align 8
@CONFIG_NF_CONNTRACK_MARK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Conntrack mark isn't enabled.\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@TCA_CT_MARK_MASK = common dso_local global i32 0, align 4
@TCA_CT_LABELS = common dso_local global i64 0, align 8
@CONFIG_NF_CONNTRACK_LABELS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Conntrack labels isn't enabled.\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to set connlabel length\00", align 1
@TCA_CT_LABELS_MASK = common dso_local global i32 0, align 4
@TCA_CT_ZONE = common dso_local global i64 0, align 8
@CONFIG_NF_CONNTRACK_ZONES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Conntrack zones isn't enabled.\00", align 1
@NF_CT_DEFAULT_ZONE_DIR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Failed to allocate conntrack template\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IPS_CONFIRMED_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.tcf_ct_params*, %struct.tc_ct*, %struct.nlattr**, %struct.netlink_ext_ack*)* @tcf_ct_fill_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_ct_fill_params(%struct.net* %0, %struct.tcf_ct_params* %1, %struct.tc_ct* %2, %struct.nlattr** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.tcf_ct_params*, align 8
  %9 = alloca %struct.tc_ct*, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.tc_ct_action_net*, align 8
  %13 = alloca %struct.nf_conntrack_zone, align 4
  %14 = alloca %struct.nf_conn*, align 8
  %15 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.tcf_ct_params* %1, %struct.tcf_ct_params** %8, align 8
  store %struct.tc_ct* %2, %struct.tc_ct** %9, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %16 = load %struct.net*, %struct.net** %7, align 8
  %17 = load i32, i32* @ct_net_id, align 4
  %18 = call %struct.tc_ct_action_net* @net_generic(%struct.net* %16, i32 %17)
  store %struct.tc_ct_action_net* %18, %struct.tc_ct_action_net** %12, align 8
  %19 = load i32, i32* @NF_CT_DEFAULT_ZONE_ID, align 4
  %20 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %8, align 8
  %21 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %23 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %8, align 8
  %24 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %23, i32 0, i32 1
  %25 = load i64, i64* @TCA_CT_ACTION, align 8
  %26 = load i32, i32* @TCA_CT_UNSPEC, align 4
  %27 = call i32 @tcf_ct_set_key_val(%struct.nlattr** %22, i32* %24, i64 %25, i32* null, i32 %26, i32 4)
  %28 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %8, align 8
  %29 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @TCA_CT_ACT_CLEAR, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %161

35:                                               ; preds = %5
  %36 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %8, align 8
  %37 = load %struct.tc_ct*, %struct.tc_ct** %9, align 8
  %38 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %39 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %40 = call i32 @tcf_ct_fill_params_nat(%struct.tcf_ct_params* %36, %struct.tc_ct* %37, %struct.nlattr** %38, %struct.netlink_ext_ack* %39)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* %15, align 4
  store i32 %44, i32* %6, align 4
  br label %161

45:                                               ; preds = %35
  %46 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %47 = load i64, i64* @TCA_CT_MARK, align 8
  %48 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %46, i64 %47
  %49 = load %struct.nlattr*, %struct.nlattr** %48, align 8
  %50 = icmp ne %struct.nlattr* %49, null
  br i1 %50, label %51, label %69

51:                                               ; preds = %45
  %52 = load i32, i32* @CONFIG_NF_CONNTRACK_MARK, align 4
  %53 = call i32 @IS_ENABLED(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %57 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @EOPNOTSUPP, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %161

60:                                               ; preds = %51
  %61 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %62 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %8, align 8
  %63 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %62, i32 0, i32 2
  %64 = load i64, i64* @TCA_CT_MARK, align 8
  %65 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %8, align 8
  %66 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %65, i32 0, i32 6
  %67 = load i32, i32* @TCA_CT_MARK_MASK, align 4
  %68 = call i32 @tcf_ct_set_key_val(%struct.nlattr** %61, i32* %63, i64 %64, i32* %66, i32 %67, i32 4)
  br label %69

69:                                               ; preds = %60, %45
  %70 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %71 = load i64, i64* @TCA_CT_LABELS, align 8
  %72 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %70, i64 %71
  %73 = load %struct.nlattr*, %struct.nlattr** %72, align 8
  %74 = icmp ne %struct.nlattr* %73, null
  br i1 %74, label %75, label %105

75:                                               ; preds = %69
  %76 = load i32, i32* @CONFIG_NF_CONNTRACK_LABELS, align 4
  %77 = call i32 @IS_ENABLED(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %75
  %80 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %81 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* @EOPNOTSUPP, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %6, align 4
  br label %161

84:                                               ; preds = %75
  %85 = load %struct.tc_ct_action_net*, %struct.tc_ct_action_net** %12, align 8
  %86 = getelementptr inbounds %struct.tc_ct_action_net, %struct.tc_ct_action_net* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %84
  %90 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %91 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %90, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %92 = load i32, i32* @EOPNOTSUPP, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %6, align 4
  br label %161

94:                                               ; preds = %84
  %95 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %96 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %8, align 8
  %97 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* @TCA_CT_LABELS, align 8
  %100 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %8, align 8
  %101 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %100, i32 0, i32 5
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* @TCA_CT_LABELS_MASK, align 4
  %104 = call i32 @tcf_ct_set_key_val(%struct.nlattr** %95, i32* %98, i64 %99, i32* %102, i32 %103, i32 8)
  br label %105

105:                                              ; preds = %94, %69
  %106 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %107 = load i64, i64* @TCA_CT_ZONE, align 8
  %108 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %106, i64 %107
  %109 = load %struct.nlattr*, %struct.nlattr** %108, align 8
  %110 = icmp ne %struct.nlattr* %109, null
  br i1 %110, label %111, label %127

111:                                              ; preds = %105
  %112 = load i32, i32* @CONFIG_NF_CONNTRACK_ZONES, align 4
  %113 = call i32 @IS_ENABLED(i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %111
  %116 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %117 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %116, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %118 = load i32, i32* @EOPNOTSUPP, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %6, align 4
  br label %161

120:                                              ; preds = %111
  %121 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %122 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %8, align 8
  %123 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %122, i32 0, i32 0
  %124 = load i64, i64* @TCA_CT_ZONE, align 8
  %125 = load i32, i32* @TCA_CT_UNSPEC, align 4
  %126 = call i32 @tcf_ct_set_key_val(%struct.nlattr** %121, i32* %123, i64 %124, i32* null, i32 %125, i32 4)
  br label %127

127:                                              ; preds = %120, %105
  %128 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %8, align 8
  %129 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @NF_CT_DEFAULT_ZONE_ID, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  store i32 0, i32* %6, align 4
  br label %161

134:                                              ; preds = %127
  %135 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %8, align 8
  %136 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @NF_CT_DEFAULT_ZONE_DIR, align 4
  %139 = call i32 @nf_ct_zone_init(%struct.nf_conntrack_zone* %13, i32 %137, i32 %138, i32 0)
  %140 = load %struct.net*, %struct.net** %7, align 8
  %141 = load i32, i32* @GFP_KERNEL, align 4
  %142 = call %struct.nf_conn* @nf_ct_tmpl_alloc(%struct.net* %140, %struct.nf_conntrack_zone* %13, i32 %141)
  store %struct.nf_conn* %142, %struct.nf_conn** %14, align 8
  %143 = load %struct.nf_conn*, %struct.nf_conn** %14, align 8
  %144 = icmp ne %struct.nf_conn* %143, null
  br i1 %144, label %150, label %145

145:                                              ; preds = %134
  %146 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %147 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %146, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %148 = load i32, i32* @ENOMEM, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %6, align 4
  br label %161

150:                                              ; preds = %134
  %151 = load i32, i32* @IPS_CONFIRMED_BIT, align 4
  %152 = load %struct.nf_conn*, %struct.nf_conn** %14, align 8
  %153 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %152, i32 0, i32 1
  %154 = call i32 @__set_bit(i32 %151, i32* %153)
  %155 = load %struct.nf_conn*, %struct.nf_conn** %14, align 8
  %156 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %155, i32 0, i32 0
  %157 = call i32 @nf_conntrack_get(i32* %156)
  %158 = load %struct.nf_conn*, %struct.nf_conn** %14, align 8
  %159 = load %struct.tcf_ct_params*, %struct.tcf_ct_params** %8, align 8
  %160 = getelementptr inbounds %struct.tcf_ct_params, %struct.tcf_ct_params* %159, i32 0, i32 4
  store %struct.nf_conn* %158, %struct.nf_conn** %160, align 8
  store i32 0, i32* %6, align 4
  br label %161

161:                                              ; preds = %150, %145, %133, %115, %89, %79, %55, %43, %34
  %162 = load i32, i32* %6, align 4
  ret i32 %162
}

declare dso_local %struct.tc_ct_action_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @tcf_ct_set_key_val(%struct.nlattr**, i32*, i64, i32*, i32, i32) #1

declare dso_local i32 @tcf_ct_fill_params_nat(%struct.tcf_ct_params*, %struct.tc_ct*, %struct.nlattr**, %struct.netlink_ext_ack*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @nf_ct_zone_init(%struct.nf_conntrack_zone*, i32, i32, i32) #1

declare dso_local %struct.nf_conn* @nf_ct_tmpl_alloc(%struct.net*, %struct.nf_conntrack_zone*, i32) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @nf_conntrack_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
