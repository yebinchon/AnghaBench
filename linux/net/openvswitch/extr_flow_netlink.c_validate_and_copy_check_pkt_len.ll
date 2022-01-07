; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_validate_and_copy_check_pkt_len.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_validate_and_copy_check_pkt_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nlattr = type { i32 }
%struct.sw_flow_key = type { i32 }
%struct.sw_flow_actions = type { i32 }
%struct.check_pkt_len_arg = type { i32, i32, i64 }

@OVS_CHECK_PKT_LEN_ATTR_MAX = common dso_local global i32 0, align 4
@cpl_policy = common dso_local global i32 0, align 4
@OVS_CHECK_PKT_LEN_ATTR_PKT_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@OVS_CHECK_PKT_LEN_ATTR_ACTIONS_IF_LESS_EQUAL = common dso_local global i64 0, align 8
@OVS_CHECK_PKT_LEN_ATTR_ACTIONS_IF_GREATER = common dso_local global i64 0, align 8
@OVS_ACTION_ATTR_CHECK_PKT_LEN = common dso_local global i64 0, align 8
@OVS_CHECK_PKT_LEN_ATTR_ARG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.nlattr*, %struct.sw_flow_key*, %struct.sw_flow_actions**, i32, i32, i32, i32)* @validate_and_copy_check_pkt_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_and_copy_check_pkt_len(%struct.net* %0, %struct.nlattr* %1, %struct.sw_flow_key* %2, %struct.sw_flow_actions** %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.nlattr*, align 8
  %12 = alloca %struct.sw_flow_key*, align 8
  %13 = alloca %struct.sw_flow_actions**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.nlattr*, align 8
  %19 = alloca %struct.nlattr*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.check_pkt_len_arg, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %10, align 8
  store %struct.nlattr* %1, %struct.nlattr** %11, align 8
  store %struct.sw_flow_key* %2, %struct.sw_flow_key** %12, align 8
  store %struct.sw_flow_actions** %3, %struct.sw_flow_actions*** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %27 = load i32, i32* @OVS_CHECK_PKT_LEN_ATTR_MAX, align 4
  %28 = add nsw i32 %27, 1
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %20, align 8
  %31 = alloca %struct.nlattr*, i64 %29, align 16
  store i64 %29, i64* %21, align 8
  %32 = load i32, i32* @OVS_CHECK_PKT_LEN_ATTR_MAX, align 4
  %33 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %34 = call i32 @nla_data(%struct.nlattr* %33)
  %35 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %36 = call i32 @nla_len(%struct.nlattr* %35)
  %37 = load i32, i32* @cpl_policy, align 4
  %38 = call i32 @nla_parse_deprecated_strict(%struct.nlattr** %31, i32 %32, i32 %34, i32 %36, i32 %37, i32* null)
  store i32 %38, i32* %25, align 4
  %39 = load i32, i32* %25, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %8
  %42 = load i32, i32* %25, align 4
  store i32 %42, i32* %9, align 4
  store i32 1, i32* %26, align 4
  br label %174

43:                                               ; preds = %8
  %44 = load i64, i64* @OVS_CHECK_PKT_LEN_ATTR_PKT_LEN, align 8
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  %47 = icmp ne %struct.nlattr* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i64, i64* @OVS_CHECK_PKT_LEN_ATTR_PKT_LEN, align 8
  %50 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %49
  %51 = load %struct.nlattr*, %struct.nlattr** %50, align 8
  %52 = call i64 @nla_get_u16(%struct.nlattr* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %48, %43
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %9, align 4
  store i32 1, i32* %26, align 4
  br label %174

57:                                               ; preds = %48
  %58 = load i64, i64* @OVS_CHECK_PKT_LEN_ATTR_ACTIONS_IF_LESS_EQUAL, align 8
  %59 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %58
  %60 = load %struct.nlattr*, %struct.nlattr** %59, align 8
  store %struct.nlattr* %60, %struct.nlattr** %19, align 8
  %61 = load i64, i64* @OVS_CHECK_PKT_LEN_ATTR_ACTIONS_IF_GREATER, align 8
  %62 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %61
  %63 = load %struct.nlattr*, %struct.nlattr** %62, align 8
  store %struct.nlattr* %63, %struct.nlattr** %18, align 8
  %64 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %65 = icmp ne %struct.nlattr* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %57
  %67 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %68 = icmp ne %struct.nlattr* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %66, %57
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %9, align 4
  store i32 1, i32* %26, align 4
  br label %174

72:                                               ; preds = %66
  %73 = load %struct.sw_flow_actions**, %struct.sw_flow_actions*** %13, align 8
  %74 = load i64, i64* @OVS_ACTION_ATTR_CHECK_PKT_LEN, align 8
  %75 = load i32, i32* %16, align 4
  %76 = call i32 @add_nested_action_start(%struct.sw_flow_actions** %73, i64 %74, i32 %75)
  store i32 %76, i32* %24, align 4
  %77 = load i32, i32* %24, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* %24, align 4
  store i32 %80, i32* %9, align 4
  store i32 1, i32* %26, align 4
  br label %174

81:                                               ; preds = %72
  %82 = load i64, i64* @OVS_CHECK_PKT_LEN_ATTR_PKT_LEN, align 8
  %83 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %82
  %84 = load %struct.nlattr*, %struct.nlattr** %83, align 8
  %85 = call i64 @nla_get_u16(%struct.nlattr* %84)
  %86 = getelementptr inbounds %struct.check_pkt_len_arg, %struct.check_pkt_len_arg* %22, i32 0, i32 2
  store i64 %85, i64* %86, align 8
  %87 = load i32, i32* %17, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %81
  %90 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %91 = call i32 @actions_may_change_flow(%struct.nlattr* %90)
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  br label %94

94:                                               ; preds = %89, %81
  %95 = phi i1 [ true, %81 ], [ %93, %89 ]
  %96 = zext i1 %95 to i32
  %97 = getelementptr inbounds %struct.check_pkt_len_arg, %struct.check_pkt_len_arg* %22, i32 0, i32 0
  store i32 %96, i32* %97, align 8
  %98 = load i32, i32* %17, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %94
  %101 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %102 = call i32 @actions_may_change_flow(%struct.nlattr* %101)
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  br label %105

105:                                              ; preds = %100, %94
  %106 = phi i1 [ true, %94 ], [ %104, %100 ]
  %107 = zext i1 %106 to i32
  %108 = getelementptr inbounds %struct.check_pkt_len_arg, %struct.check_pkt_len_arg* %22, i32 0, i32 1
  store i32 %107, i32* %108, align 4
  %109 = load %struct.sw_flow_actions**, %struct.sw_flow_actions*** %13, align 8
  %110 = load i32, i32* @OVS_CHECK_PKT_LEN_ATTR_ARG, align 4
  %111 = load i32, i32* %16, align 4
  %112 = call i32 @ovs_nla_add_action(%struct.sw_flow_actions** %109, i32 %110, %struct.check_pkt_len_arg* %22, i32 16, i32 %111)
  store i32 %112, i32* %25, align 4
  %113 = load i32, i32* %25, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %105
  %116 = load i32, i32* %25, align 4
  store i32 %116, i32* %9, align 4
  store i32 1, i32* %26, align 4
  br label %174

117:                                              ; preds = %105
  %118 = load %struct.sw_flow_actions**, %struct.sw_flow_actions*** %13, align 8
  %119 = load i64, i64* @OVS_CHECK_PKT_LEN_ATTR_ACTIONS_IF_LESS_EQUAL, align 8
  %120 = load i32, i32* %16, align 4
  %121 = call i32 @add_nested_action_start(%struct.sw_flow_actions** %118, i64 %119, i32 %120)
  store i32 %121, i32* %23, align 4
  %122 = load i32, i32* %23, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %117
  %125 = load i32, i32* %23, align 4
  store i32 %125, i32* %9, align 4
  store i32 1, i32* %26, align 4
  br label %174

126:                                              ; preds = %117
  %127 = load %struct.net*, %struct.net** %10, align 8
  %128 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %129 = load %struct.sw_flow_key*, %struct.sw_flow_key** %12, align 8
  %130 = load %struct.sw_flow_actions**, %struct.sw_flow_actions*** %13, align 8
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %16, align 4
  %134 = call i32 @__ovs_nla_copy_actions(%struct.net* %127, %struct.nlattr* %128, %struct.sw_flow_key* %129, %struct.sw_flow_actions** %130, i32 %131, i32 %132, i32 %133)
  store i32 %134, i32* %25, align 4
  %135 = load i32, i32* %25, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %126
  %138 = load i32, i32* %25, align 4
  store i32 %138, i32* %9, align 4
  store i32 1, i32* %26, align 4
  br label %174

139:                                              ; preds = %126
  %140 = load %struct.sw_flow_actions**, %struct.sw_flow_actions*** %13, align 8
  %141 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %140, align 8
  %142 = load i32, i32* %23, align 4
  %143 = call i32 @add_nested_action_end(%struct.sw_flow_actions* %141, i32 %142)
  %144 = load %struct.sw_flow_actions**, %struct.sw_flow_actions*** %13, align 8
  %145 = load i64, i64* @OVS_CHECK_PKT_LEN_ATTR_ACTIONS_IF_GREATER, align 8
  %146 = load i32, i32* %16, align 4
  %147 = call i32 @add_nested_action_start(%struct.sw_flow_actions** %144, i64 %145, i32 %146)
  store i32 %147, i32* %23, align 4
  %148 = load i32, i32* %23, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %139
  %151 = load i32, i32* %23, align 4
  store i32 %151, i32* %9, align 4
  store i32 1, i32* %26, align 4
  br label %174

152:                                              ; preds = %139
  %153 = load %struct.net*, %struct.net** %10, align 8
  %154 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %155 = load %struct.sw_flow_key*, %struct.sw_flow_key** %12, align 8
  %156 = load %struct.sw_flow_actions**, %struct.sw_flow_actions*** %13, align 8
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* %15, align 4
  %159 = load i32, i32* %16, align 4
  %160 = call i32 @__ovs_nla_copy_actions(%struct.net* %153, %struct.nlattr* %154, %struct.sw_flow_key* %155, %struct.sw_flow_actions** %156, i32 %157, i32 %158, i32 %159)
  store i32 %160, i32* %25, align 4
  %161 = load i32, i32* %25, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %152
  %164 = load i32, i32* %25, align 4
  store i32 %164, i32* %9, align 4
  store i32 1, i32* %26, align 4
  br label %174

165:                                              ; preds = %152
  %166 = load %struct.sw_flow_actions**, %struct.sw_flow_actions*** %13, align 8
  %167 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %166, align 8
  %168 = load i32, i32* %23, align 4
  %169 = call i32 @add_nested_action_end(%struct.sw_flow_actions* %167, i32 %168)
  %170 = load %struct.sw_flow_actions**, %struct.sw_flow_actions*** %13, align 8
  %171 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %170, align 8
  %172 = load i32, i32* %24, align 4
  %173 = call i32 @add_nested_action_end(%struct.sw_flow_actions* %171, i32 %172)
  store i32 0, i32* %9, align 4
  store i32 1, i32* %26, align 4
  br label %174

174:                                              ; preds = %165, %163, %150, %137, %124, %115, %79, %69, %54, %41
  %175 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %175)
  %176 = load i32, i32* %9, align 4
  ret i32 %176
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_deprecated_strict(%struct.nlattr**, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @nla_data(%struct.nlattr*) #2

declare dso_local i32 @nla_len(%struct.nlattr*) #2

declare dso_local i64 @nla_get_u16(%struct.nlattr*) #2

declare dso_local i32 @add_nested_action_start(%struct.sw_flow_actions**, i64, i32) #2

declare dso_local i32 @actions_may_change_flow(%struct.nlattr*) #2

declare dso_local i32 @ovs_nla_add_action(%struct.sw_flow_actions**, i32, %struct.check_pkt_len_arg*, i32, i32) #2

declare dso_local i32 @__ovs_nla_copy_actions(%struct.net*, %struct.nlattr*, %struct.sw_flow_key*, %struct.sw_flow_actions**, i32, i32, i32) #2

declare dso_local i32 @add_nested_action_end(%struct.sw_flow_actions*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
