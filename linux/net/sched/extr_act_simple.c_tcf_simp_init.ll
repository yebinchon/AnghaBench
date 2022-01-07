; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_simple.c_tcf_simp_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_simple.c_tcf_simp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nlattr = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.tc_action_net = type { i32 }
%struct.tcf_chain = type { i32 }
%struct.tc_defact = type { i32, i32 }
%struct.tcf_defact = type { i32 }

@simp_net_id = common dso_local global i32 0, align 4
@TCA_DEF_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@simple_policy = common dso_local global i32 0, align 4
@TCA_DEF_PARMS = common dso_local global i64 0, align 8
@TCA_DEF_DATA = common dso_local global i64 0, align 8
@act_simp_ops = common dso_local global i32 0, align 4
@ACT_P_CREATED = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.nlattr*, %struct.nlattr*, %struct.tc_action**, i32, i32, i32, %struct.tcf_proto*, %struct.netlink_ext_ack*)* @tcf_simp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_simp_init(%struct.net* %0, %struct.nlattr* %1, %struct.nlattr* %2, %struct.tc_action** %3, i32 %4, i32 %5, i32 %6, %struct.tcf_proto* %7, %struct.netlink_ext_ack* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.nlattr*, align 8
  %13 = alloca %struct.nlattr*, align 8
  %14 = alloca %struct.tc_action**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.tcf_proto*, align 8
  %19 = alloca %struct.netlink_ext_ack*, align 8
  %20 = alloca %struct.tc_action_net*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.tcf_chain*, align 8
  %24 = alloca %struct.tc_defact*, align 8
  %25 = alloca %struct.tcf_defact*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %11, align 8
  store %struct.nlattr* %1, %struct.nlattr** %12, align 8
  store %struct.nlattr* %2, %struct.nlattr** %13, align 8
  store %struct.tc_action** %3, %struct.tc_action*** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store %struct.tcf_proto* %7, %struct.tcf_proto** %18, align 8
  store %struct.netlink_ext_ack* %8, %struct.netlink_ext_ack** %19, align 8
  %31 = load %struct.net*, %struct.net** %11, align 8
  %32 = load i32, i32* @simp_net_id, align 4
  %33 = call %struct.tc_action_net* @net_generic(%struct.net* %31, i32 %32)
  store %struct.tc_action_net* %33, %struct.tc_action_net** %20, align 8
  %34 = load i32, i32* @TCA_DEF_MAX, align 4
  %35 = add nsw i32 %34, 1
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %21, align 8
  %38 = alloca %struct.nlattr*, i64 %36, align 16
  store i64 %36, i64* %22, align 8
  store %struct.tcf_chain* null, %struct.tcf_chain** %23, align 8
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %39 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %40 = icmp eq %struct.nlattr* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %9
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %10, align 4
  store i32 1, i32* %30, align 4
  br label %197

44:                                               ; preds = %9
  %45 = load i32, i32* @TCA_DEF_MAX, align 4
  %46 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %47 = load i32, i32* @simple_policy, align 4
  %48 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %38, i32 %45, %struct.nlattr* %46, i32 %47, i32* null)
  store i32 %48, i32* %28, align 4
  %49 = load i32, i32* %28, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %28, align 4
  store i32 %52, i32* %10, align 4
  store i32 1, i32* %30, align 4
  br label %197

53:                                               ; preds = %44
  %54 = load i64, i64* @TCA_DEF_PARMS, align 8
  %55 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %38, i64 %54
  %56 = load %struct.nlattr*, %struct.nlattr** %55, align 8
  %57 = icmp eq %struct.nlattr* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %10, align 4
  store i32 1, i32* %30, align 4
  br label %197

61:                                               ; preds = %53
  %62 = load i64, i64* @TCA_DEF_PARMS, align 8
  %63 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %38, i64 %62
  %64 = load %struct.nlattr*, %struct.nlattr** %63, align 8
  %65 = call %struct.tc_defact* @nla_data(%struct.nlattr* %64)
  store %struct.tc_defact* %65, %struct.tc_defact** %24, align 8
  %66 = load %struct.tc_defact*, %struct.tc_defact** %24, align 8
  %67 = getelementptr inbounds %struct.tc_defact, %struct.tc_defact* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %29, align 4
  %69 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %70 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %71 = load i32, i32* %16, align 4
  %72 = call i32 @tcf_idr_check_alloc(%struct.tc_action_net* %69, i32* %29, %struct.tc_action** %70, i32 %71)
  store i32 %72, i32* %28, align 4
  %73 = load i32, i32* %28, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %61
  %76 = load i32, i32* %28, align 4
  store i32 %76, i32* %10, align 4
  store i32 1, i32* %30, align 4
  br label %197

77:                                               ; preds = %61
  %78 = load i32, i32* %28, align 4
  store i32 %78, i32* %26, align 4
  %79 = load i32, i32* %26, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i32, i32* %16, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 0, i32* %10, align 4
  store i32 1, i32* %30, align 4
  br label %197

85:                                               ; preds = %81, %77
  %86 = load i64, i64* @TCA_DEF_DATA, align 8
  %87 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %38, i64 %86
  %88 = load %struct.nlattr*, %struct.nlattr** %87, align 8
  %89 = icmp eq %struct.nlattr* %88, null
  br i1 %89, label %90, label %105

90:                                               ; preds = %85
  %91 = load i32, i32* %26, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %95 = load %struct.tc_action*, %struct.tc_action** %94, align 8
  %96 = load i32, i32* %16, align 4
  %97 = call i32 @tcf_idr_release(%struct.tc_action* %95, i32 %96)
  br label %102

98:                                               ; preds = %90
  %99 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %100 = load i32, i32* %29, align 4
  %101 = call i32 @tcf_idr_cleanup(%struct.tc_action_net* %99, i32 %100)
  br label %102

102:                                              ; preds = %98, %93
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %10, align 4
  store i32 1, i32* %30, align 4
  br label %197

105:                                              ; preds = %85
  %106 = load i32, i32* %26, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %153, label %108

108:                                              ; preds = %105
  %109 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %110 = load i32, i32* %29, align 4
  %111 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %112 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %113 = load i32, i32* %16, align 4
  %114 = call i32 @tcf_idr_create(%struct.tc_action_net* %109, i32 %110, %struct.nlattr* %111, %struct.tc_action** %112, i32* @act_simp_ops, i32 %113, i32 0)
  store i32 %114, i32* %27, align 4
  %115 = load i32, i32* %27, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %108
  %118 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %119 = load i32, i32* %29, align 4
  %120 = call i32 @tcf_idr_cleanup(%struct.tc_action_net* %118, i32 %119)
  %121 = load i32, i32* %27, align 4
  store i32 %121, i32* %10, align 4
  store i32 1, i32* %30, align 4
  br label %197

122:                                              ; preds = %108
  %123 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %124 = load %struct.tc_action*, %struct.tc_action** %123, align 8
  %125 = call %struct.tcf_defact* @to_defact(%struct.tc_action* %124)
  store %struct.tcf_defact* %125, %struct.tcf_defact** %25, align 8
  %126 = load %struct.tc_defact*, %struct.tc_defact** %24, align 8
  %127 = getelementptr inbounds %struct.tc_defact, %struct.tc_defact* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.tcf_proto*, %struct.tcf_proto** %18, align 8
  %130 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %131 = call i32 @tcf_action_check_ctrlact(i32 %128, %struct.tcf_proto* %129, %struct.tcf_chain** %23, %struct.netlink_ext_ack* %130)
  store i32 %131, i32* %28, align 4
  %132 = load i32, i32* %28, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %122
  br label %191

135:                                              ; preds = %122
  %136 = load %struct.tcf_defact*, %struct.tcf_defact** %25, align 8
  %137 = load i64, i64* @TCA_DEF_DATA, align 8
  %138 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %38, i64 %137
  %139 = load %struct.nlattr*, %struct.nlattr** %138, align 8
  %140 = call i32 @alloc_defdata(%struct.tcf_defact* %136, %struct.nlattr* %139)
  store i32 %140, i32* %28, align 4
  %141 = load i32, i32* %28, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %135
  br label %184

144:                                              ; preds = %135
  %145 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %146 = load %struct.tc_action*, %struct.tc_action** %145, align 8
  %147 = load %struct.tc_defact*, %struct.tc_defact** %24, align 8
  %148 = getelementptr inbounds %struct.tc_defact, %struct.tc_defact* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.tcf_chain*, %struct.tcf_chain** %23, align 8
  %151 = call i32 @tcf_action_set_ctrlact(%struct.tc_action* %146, i32 %149, %struct.tcf_chain* %150)
  %152 = load i32, i32* @ACT_P_CREATED, align 4
  store i32 %152, i32* %27, align 4
  br label %173

153:                                              ; preds = %105
  %154 = load i32, i32* %15, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %153
  %157 = load i32, i32* @EEXIST, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %28, align 4
  br label %191

159:                                              ; preds = %153
  %160 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %161 = load %struct.tc_action*, %struct.tc_action** %160, align 8
  %162 = load i64, i64* @TCA_DEF_DATA, align 8
  %163 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %38, i64 %162
  %164 = load %struct.nlattr*, %struct.nlattr** %163, align 8
  %165 = load %struct.tc_defact*, %struct.tc_defact** %24, align 8
  %166 = load %struct.tcf_proto*, %struct.tcf_proto** %18, align 8
  %167 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %168 = call i32 @reset_policy(%struct.tc_action* %161, %struct.nlattr* %164, %struct.tc_defact* %165, %struct.tcf_proto* %166, %struct.netlink_ext_ack* %167)
  store i32 %168, i32* %28, align 4
  %169 = load i32, i32* %28, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %159
  br label %191

172:                                              ; preds = %159
  br label %173

173:                                              ; preds = %172, %144
  %174 = load i32, i32* %27, align 4
  %175 = load i32, i32* @ACT_P_CREATED, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %182

177:                                              ; preds = %173
  %178 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %179 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %180 = load %struct.tc_action*, %struct.tc_action** %179, align 8
  %181 = call i32 @tcf_idr_insert(%struct.tc_action_net* %178, %struct.tc_action* %180)
  br label %182

182:                                              ; preds = %177, %173
  %183 = load i32, i32* %27, align 4
  store i32 %183, i32* %10, align 4
  store i32 1, i32* %30, align 4
  br label %197

184:                                              ; preds = %143
  %185 = load %struct.tcf_chain*, %struct.tcf_chain** %23, align 8
  %186 = icmp ne %struct.tcf_chain* %185, null
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  %188 = load %struct.tcf_chain*, %struct.tcf_chain** %23, align 8
  %189 = call i32 @tcf_chain_put_by_act(%struct.tcf_chain* %188)
  br label %190

190:                                              ; preds = %187, %184
  br label %191

191:                                              ; preds = %190, %171, %156, %134
  %192 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %193 = load %struct.tc_action*, %struct.tc_action** %192, align 8
  %194 = load i32, i32* %16, align 4
  %195 = call i32 @tcf_idr_release(%struct.tc_action* %193, i32 %194)
  %196 = load i32, i32* %28, align 4
  store i32 %196, i32* %10, align 4
  store i32 1, i32* %30, align 4
  br label %197

197:                                              ; preds = %191, %182, %117, %102, %84, %75, %58, %51, %41
  %198 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %198)
  %199 = load i32, i32* %10, align 4
  ret i32 %199
}

declare dso_local %struct.tc_action_net* @net_generic(%struct.net*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #1

declare dso_local %struct.tc_defact* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @tcf_idr_check_alloc(%struct.tc_action_net*, i32*, %struct.tc_action**, i32) #1

declare dso_local i32 @tcf_idr_release(%struct.tc_action*, i32) #1

declare dso_local i32 @tcf_idr_cleanup(%struct.tc_action_net*, i32) #1

declare dso_local i32 @tcf_idr_create(%struct.tc_action_net*, i32, %struct.nlattr*, %struct.tc_action**, i32*, i32, i32) #1

declare dso_local %struct.tcf_defact* @to_defact(%struct.tc_action*) #1

declare dso_local i32 @tcf_action_check_ctrlact(i32, %struct.tcf_proto*, %struct.tcf_chain**, %struct.netlink_ext_ack*) #1

declare dso_local i32 @alloc_defdata(%struct.tcf_defact*, %struct.nlattr*) #1

declare dso_local i32 @tcf_action_set_ctrlact(%struct.tc_action*, i32, %struct.tcf_chain*) #1

declare dso_local i32 @reset_policy(%struct.tc_action*, %struct.nlattr*, %struct.tc_defact*, %struct.tcf_proto*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @tcf_idr_insert(%struct.tc_action_net*, %struct.tc_action*) #1

declare dso_local i32 @tcf_chain_put_by_act(%struct.tcf_chain*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
