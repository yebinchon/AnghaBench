; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_connmark.c_tcf_connmark_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_connmark.c_tcf_connmark_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nlattr = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.tc_action_net = type { i32 }
%struct.tcf_chain = type { i32 }
%struct.tcf_connmark_info = type { i32, i32, %struct.net* }
%struct.tc_connmark = type { i32, i32, i32 }

@connmark_net_id = common dso_local global i32 0, align 4
@TCA_CONNMARK_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@connmark_policy = common dso_local global i32 0, align 4
@TCA_CONNMARK_PARMS = common dso_local global i64 0, align 8
@act_connmark_ops = common dso_local global i32 0, align 4
@ACT_P_CREATED = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.nlattr*, %struct.nlattr*, %struct.tc_action**, i32, i32, i32, %struct.tcf_proto*, %struct.netlink_ext_ack*)* @tcf_connmark_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_connmark_init(%struct.net* %0, %struct.nlattr* %1, %struct.nlattr* %2, %struct.tc_action** %3, i32 %4, i32 %5, i32 %6, %struct.tcf_proto* %7, %struct.netlink_ext_ack* %8) #0 {
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
  %24 = alloca %struct.tcf_connmark_info*, align 8
  %25 = alloca %struct.tc_connmark*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %11, align 8
  store %struct.nlattr* %1, %struct.nlattr** %12, align 8
  store %struct.nlattr* %2, %struct.nlattr** %13, align 8
  store %struct.tc_action** %3, %struct.tc_action*** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store %struct.tcf_proto* %7, %struct.tcf_proto** %18, align 8
  store %struct.netlink_ext_ack* %8, %struct.netlink_ext_ack** %19, align 8
  %30 = load %struct.net*, %struct.net** %11, align 8
  %31 = load i32, i32* @connmark_net_id, align 4
  %32 = call %struct.tc_action_net* @net_generic(%struct.net* %30, i32 %31)
  store %struct.tc_action_net* %32, %struct.tc_action_net** %20, align 8
  %33 = load i32, i32* @TCA_CONNMARK_MAX, align 4
  %34 = add nsw i32 %33, 1
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %21, align 8
  %37 = alloca %struct.nlattr*, i64 %35, align 16
  store i64 %35, i64* %22, align 8
  store %struct.tcf_chain* null, %struct.tcf_chain** %23, align 8
  store i32 0, i32* %26, align 4
  %38 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %39 = icmp ne %struct.nlattr* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %9
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %10, align 4
  store i32 1, i32* %29, align 4
  br label %186

43:                                               ; preds = %9
  %44 = load i32, i32* @TCA_CONNMARK_MAX, align 4
  %45 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %46 = load i32, i32* @connmark_policy, align 4
  %47 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %37, i32 %44, %struct.nlattr* %45, i32 %46, i32* null)
  store i32 %47, i32* %26, align 4
  %48 = load i32, i32* %26, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %26, align 4
  store i32 %51, i32* %10, align 4
  store i32 1, i32* %29, align 4
  br label %186

52:                                               ; preds = %43
  %53 = load i64, i64* @TCA_CONNMARK_PARMS, align 8
  %54 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %53
  %55 = load %struct.nlattr*, %struct.nlattr** %54, align 8
  %56 = icmp ne %struct.nlattr* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %10, align 4
  store i32 1, i32* %29, align 4
  br label %186

60:                                               ; preds = %52
  %61 = load i64, i64* @TCA_CONNMARK_PARMS, align 8
  %62 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %61
  %63 = load %struct.nlattr*, %struct.nlattr** %62, align 8
  %64 = call %struct.tc_connmark* @nla_data(%struct.nlattr* %63)
  store %struct.tc_connmark* %64, %struct.tc_connmark** %25, align 8
  %65 = load %struct.tc_connmark*, %struct.tc_connmark** %25, align 8
  %66 = getelementptr inbounds %struct.tc_connmark, %struct.tc_connmark* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %28, align 4
  %68 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %69 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %70 = load i32, i32* %16, align 4
  %71 = call i32 @tcf_idr_check_alloc(%struct.tc_action_net* %68, i32* %28, %struct.tc_action** %69, i32 %70)
  store i32 %71, i32* %26, align 4
  %72 = load i32, i32* %26, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %122, label %74

74:                                               ; preds = %60
  %75 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %76 = load i32, i32* %28, align 4
  %77 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %78 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %79 = load i32, i32* %16, align 4
  %80 = call i32 @tcf_idr_create(%struct.tc_action_net* %75, i32 %76, %struct.nlattr* %77, %struct.tc_action** %78, i32* @act_connmark_ops, i32 %79, i32 0)
  store i32 %80, i32* %26, align 4
  %81 = load i32, i32* %26, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %74
  %84 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %85 = load i32, i32* %28, align 4
  %86 = call i32 @tcf_idr_cleanup(%struct.tc_action_net* %84, i32 %85)
  %87 = load i32, i32* %26, align 4
  store i32 %87, i32* %10, align 4
  store i32 1, i32* %29, align 4
  br label %186

88:                                               ; preds = %74
  %89 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %90 = load %struct.tc_action*, %struct.tc_action** %89, align 8
  %91 = call %struct.tcf_connmark_info* @to_connmark(%struct.tc_action* %90)
  store %struct.tcf_connmark_info* %91, %struct.tcf_connmark_info** %24, align 8
  %92 = load %struct.tc_connmark*, %struct.tc_connmark** %25, align 8
  %93 = getelementptr inbounds %struct.tc_connmark, %struct.tc_connmark* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.tcf_proto*, %struct.tcf_proto** %18, align 8
  %96 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %97 = call i32 @tcf_action_check_ctrlact(i32 %94, %struct.tcf_proto* %95, %struct.tcf_chain** %23, %struct.netlink_ext_ack* %96)
  store i32 %97, i32* %27, align 4
  %98 = load i32, i32* %27, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %88
  br label %180

101:                                              ; preds = %88
  %102 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %103 = load %struct.tc_action*, %struct.tc_action** %102, align 8
  %104 = load %struct.tc_connmark*, %struct.tc_connmark** %25, align 8
  %105 = getelementptr inbounds %struct.tc_connmark, %struct.tc_connmark* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.tcf_chain*, %struct.tcf_chain** %23, align 8
  %108 = call %struct.tcf_chain* @tcf_action_set_ctrlact(%struct.tc_action* %103, i32 %106, %struct.tcf_chain* %107)
  %109 = load %struct.net*, %struct.net** %11, align 8
  %110 = load %struct.tcf_connmark_info*, %struct.tcf_connmark_info** %24, align 8
  %111 = getelementptr inbounds %struct.tcf_connmark_info, %struct.tcf_connmark_info* %110, i32 0, i32 2
  store %struct.net* %109, %struct.net** %111, align 8
  %112 = load %struct.tc_connmark*, %struct.tc_connmark** %25, align 8
  %113 = getelementptr inbounds %struct.tc_connmark, %struct.tc_connmark* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.tcf_connmark_info*, %struct.tcf_connmark_info** %24, align 8
  %116 = getelementptr inbounds %struct.tcf_connmark_info, %struct.tcf_connmark_info* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.tc_action_net*, %struct.tc_action_net** %20, align 8
  %118 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %119 = load %struct.tc_action*, %struct.tc_action** %118, align 8
  %120 = call i32 @tcf_idr_insert(%struct.tc_action_net* %117, %struct.tc_action* %119)
  %121 = load i32, i32* @ACT_P_CREATED, align 4
  store i32 %121, i32* %26, align 4
  br label %178

122:                                              ; preds = %60
  %123 = load i32, i32* %26, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %177

125:                                              ; preds = %122
  %126 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %127 = load %struct.tc_action*, %struct.tc_action** %126, align 8
  %128 = call %struct.tcf_connmark_info* @to_connmark(%struct.tc_action* %127)
  store %struct.tcf_connmark_info* %128, %struct.tcf_connmark_info** %24, align 8
  %129 = load i32, i32* %16, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  store i32 0, i32* %10, align 4
  store i32 1, i32* %29, align 4
  br label %186

132:                                              ; preds = %125
  %133 = load i32, i32* %15, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %132
  %136 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %137 = load %struct.tc_action*, %struct.tc_action** %136, align 8
  %138 = load i32, i32* %16, align 4
  %139 = call i32 @tcf_idr_release(%struct.tc_action* %137, i32 %138)
  %140 = load i32, i32* @EEXIST, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %10, align 4
  store i32 1, i32* %29, align 4
  br label %186

142:                                              ; preds = %132
  %143 = load %struct.tc_connmark*, %struct.tc_connmark** %25, align 8
  %144 = getelementptr inbounds %struct.tc_connmark, %struct.tc_connmark* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.tcf_proto*, %struct.tcf_proto** %18, align 8
  %147 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %148 = call i32 @tcf_action_check_ctrlact(i32 %145, %struct.tcf_proto* %146, %struct.tcf_chain** %23, %struct.netlink_ext_ack* %147)
  store i32 %148, i32* %27, align 4
  %149 = load i32, i32* %27, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %142
  br label %180

152:                                              ; preds = %142
  %153 = load %struct.tcf_connmark_info*, %struct.tcf_connmark_info** %24, align 8
  %154 = getelementptr inbounds %struct.tcf_connmark_info, %struct.tcf_connmark_info* %153, i32 0, i32 0
  %155 = call i32 @spin_lock_bh(i32* %154)
  %156 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %157 = load %struct.tc_action*, %struct.tc_action** %156, align 8
  %158 = load %struct.tc_connmark*, %struct.tc_connmark** %25, align 8
  %159 = getelementptr inbounds %struct.tc_connmark, %struct.tc_connmark* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.tcf_chain*, %struct.tcf_chain** %23, align 8
  %162 = call %struct.tcf_chain* @tcf_action_set_ctrlact(%struct.tc_action* %157, i32 %160, %struct.tcf_chain* %161)
  store %struct.tcf_chain* %162, %struct.tcf_chain** %23, align 8
  %163 = load %struct.tc_connmark*, %struct.tc_connmark** %25, align 8
  %164 = getelementptr inbounds %struct.tc_connmark, %struct.tc_connmark* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.tcf_connmark_info*, %struct.tcf_connmark_info** %24, align 8
  %167 = getelementptr inbounds %struct.tcf_connmark_info, %struct.tcf_connmark_info* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  %168 = load %struct.tcf_connmark_info*, %struct.tcf_connmark_info** %24, align 8
  %169 = getelementptr inbounds %struct.tcf_connmark_info, %struct.tcf_connmark_info* %168, i32 0, i32 0
  %170 = call i32 @spin_unlock_bh(i32* %169)
  %171 = load %struct.tcf_chain*, %struct.tcf_chain** %23, align 8
  %172 = icmp ne %struct.tcf_chain* %171, null
  br i1 %172, label %173, label %176

173:                                              ; preds = %152
  %174 = load %struct.tcf_chain*, %struct.tcf_chain** %23, align 8
  %175 = call i32 @tcf_chain_put_by_act(%struct.tcf_chain* %174)
  br label %176

176:                                              ; preds = %173, %152
  store i32 0, i32* %26, align 4
  br label %177

177:                                              ; preds = %176, %122
  br label %178

178:                                              ; preds = %177, %101
  %179 = load i32, i32* %26, align 4
  store i32 %179, i32* %10, align 4
  store i32 1, i32* %29, align 4
  br label %186

180:                                              ; preds = %151, %100
  %181 = load %struct.tc_action**, %struct.tc_action*** %14, align 8
  %182 = load %struct.tc_action*, %struct.tc_action** %181, align 8
  %183 = load i32, i32* %16, align 4
  %184 = call i32 @tcf_idr_release(%struct.tc_action* %182, i32 %183)
  %185 = load i32, i32* %27, align 4
  store i32 %185, i32* %10, align 4
  store i32 1, i32* %29, align 4
  br label %186

186:                                              ; preds = %180, %178, %135, %131, %83, %57, %50, %40
  %187 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %187)
  %188 = load i32, i32* %10, align 4
  ret i32 %188
}

declare dso_local %struct.tc_action_net* @net_generic(%struct.net*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #1

declare dso_local %struct.tc_connmark* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @tcf_idr_check_alloc(%struct.tc_action_net*, i32*, %struct.tc_action**, i32) #1

declare dso_local i32 @tcf_idr_create(%struct.tc_action_net*, i32, %struct.nlattr*, %struct.tc_action**, i32*, i32, i32) #1

declare dso_local i32 @tcf_idr_cleanup(%struct.tc_action_net*, i32) #1

declare dso_local %struct.tcf_connmark_info* @to_connmark(%struct.tc_action*) #1

declare dso_local i32 @tcf_action_check_ctrlact(i32, %struct.tcf_proto*, %struct.tcf_chain**, %struct.netlink_ext_ack*) #1

declare dso_local %struct.tcf_chain* @tcf_action_set_ctrlact(%struct.tc_action*, i32, %struct.tcf_chain*) #1

declare dso_local i32 @tcf_idr_insert(%struct.tc_action_net*, %struct.tc_action*) #1

declare dso_local i32 @tcf_idr_release(%struct.tc_action*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

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
