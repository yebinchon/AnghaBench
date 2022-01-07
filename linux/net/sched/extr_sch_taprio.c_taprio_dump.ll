; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_taprio_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_taprio_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.taprio_sched = type { i64, i64, i32, i32, i32 }
%struct.net_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sched_gate_list = type { i32 }
%struct.tc_mqprio_qopt = type { i32, i32*, i32*, i32, i32 }
%struct.nlattr = type { i32 }

@TCA_OPTIONS = common dso_local global i32 0, align 4
@TCA_TAPRIO_ATTR_PRIOMAP = common dso_local global i32 0, align 4
@TCA_TAPRIO_ATTR_SCHED_CLOCKID = common dso_local global i32 0, align 4
@TCA_TAPRIO_ATTR_FLAGS = common dso_local global i32 0, align 4
@TCA_TAPRIO_ATTR_TXTIME_DELAY = common dso_local global i32 0, align 4
@TCA_TAPRIO_ATTR_ADMIN_SCHED = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.sk_buff*)* @taprio_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @taprio_dump(%struct.Qdisc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.taprio_sched*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.sched_gate_list*, align 8
  %9 = alloca %struct.sched_gate_list*, align 8
  %10 = alloca %struct.tc_mqprio_qopt, align 8
  %11 = alloca %struct.nlattr*, align 8
  %12 = alloca %struct.nlattr*, align 8
  %13 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %14 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %15 = call %struct.taprio_sched* @qdisc_priv(%struct.Qdisc* %14)
  store %struct.taprio_sched* %15, %struct.taprio_sched** %6, align 8
  %16 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %17 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %16)
  store %struct.net_device* %17, %struct.net_device** %7, align 8
  %18 = bitcast %struct.tc_mqprio_qopt* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 32, i1 false)
  %19 = call i32 (...) @rcu_read_lock()
  %20 = load %struct.taprio_sched*, %struct.taprio_sched** %6, align 8
  %21 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.sched_gate_list* @rcu_dereference(i32 %22)
  store %struct.sched_gate_list* %23, %struct.sched_gate_list** %8, align 8
  %24 = load %struct.taprio_sched*, %struct.taprio_sched** %6, align 8
  %25 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.sched_gate_list* @rcu_dereference(i32 %26)
  store %struct.sched_gate_list* %27, %struct.sched_gate_list** %9, align 8
  %28 = load %struct.net_device*, %struct.net_device** %7, align 8
  %29 = call i32 @netdev_get_num_tc(%struct.net_device* %28)
  %30 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %10, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %10, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.net_device*, %struct.net_device** %7, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @memcpy(i32 %32, i32 %35, i32 4)
  store i32 0, i32* %13, align 4
  br label %37

37:                                               ; preds = %69, %2
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.net_device*, %struct.net_device** %7, align 8
  %40 = call i32 @netdev_get_num_tc(%struct.net_device* %39)
  %41 = icmp ult i32 %38, %40
  br i1 %41, label %42, label %72

42:                                               ; preds = %37
  %43 = load %struct.net_device*, %struct.net_device** %7, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %13, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %10, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %13, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %50, i32* %55, align 4
  %56 = load %struct.net_device*, %struct.net_device** %7, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.tc_mqprio_qopt, %struct.tc_mqprio_qopt* %10, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %63, i32* %68, align 4
  br label %69

69:                                               ; preds = %42
  %70 = load i32, i32* %13, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %13, align 4
  br label %37

72:                                               ; preds = %37
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = load i32, i32* @TCA_OPTIONS, align 4
  %75 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %73, i32 %74)
  store %struct.nlattr* %75, %struct.nlattr** %11, align 8
  %76 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %77 = icmp ne %struct.nlattr* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %72
  br label %171

79:                                               ; preds = %72
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = load i32, i32* @TCA_TAPRIO_ATTR_PRIOMAP, align 4
  %82 = call i64 @nla_put(%struct.sk_buff* %80, i32 %81, i32 32, %struct.tc_mqprio_qopt* %10)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %167

85:                                               ; preds = %79
  %86 = load %struct.taprio_sched*, %struct.taprio_sched** %6, align 8
  %87 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @FULL_OFFLOAD_IS_ENABLED(i64 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %85
  %92 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %93 = load i32, i32* @TCA_TAPRIO_ATTR_SCHED_CLOCKID, align 4
  %94 = load %struct.taprio_sched*, %struct.taprio_sched** %6, align 8
  %95 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @nla_put_s32(%struct.sk_buff* %92, i32 %93, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %167

100:                                              ; preds = %91, %85
  %101 = load %struct.taprio_sched*, %struct.taprio_sched** %6, align 8
  %102 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %100
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = load i32, i32* @TCA_TAPRIO_ATTR_FLAGS, align 4
  %108 = load %struct.taprio_sched*, %struct.taprio_sched** %6, align 8
  %109 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @nla_put_u32(%struct.sk_buff* %106, i32 %107, i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %167

114:                                              ; preds = %105, %100
  %115 = load %struct.taprio_sched*, %struct.taprio_sched** %6, align 8
  %116 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %114
  %120 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %121 = load i32, i32* @TCA_TAPRIO_ATTR_TXTIME_DELAY, align 4
  %122 = load %struct.taprio_sched*, %struct.taprio_sched** %6, align 8
  %123 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i64 @nla_put_u32(%struct.sk_buff* %120, i32 %121, i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  br label %167

128:                                              ; preds = %119, %114
  %129 = load %struct.sched_gate_list*, %struct.sched_gate_list** %8, align 8
  %130 = icmp ne %struct.sched_gate_list* %129, null
  br i1 %130, label %131, label %137

131:                                              ; preds = %128
  %132 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %133 = load %struct.sched_gate_list*, %struct.sched_gate_list** %8, align 8
  %134 = call i64 @dump_schedule(%struct.sk_buff* %132, %struct.sched_gate_list* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %167

137:                                              ; preds = %131, %128
  %138 = load %struct.sched_gate_list*, %struct.sched_gate_list** %9, align 8
  %139 = icmp ne %struct.sched_gate_list* %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %137
  br label %158

141:                                              ; preds = %137
  %142 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %143 = load i32, i32* @TCA_TAPRIO_ATTR_ADMIN_SCHED, align 4
  %144 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %142, i32 %143)
  store %struct.nlattr* %144, %struct.nlattr** %12, align 8
  %145 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %146 = icmp ne %struct.nlattr* %145, null
  br i1 %146, label %148, label %147

147:                                              ; preds = %141
  br label %167

148:                                              ; preds = %141
  %149 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %150 = load %struct.sched_gate_list*, %struct.sched_gate_list** %9, align 8
  %151 = call i64 @dump_schedule(%struct.sk_buff* %149, %struct.sched_gate_list* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %163

154:                                              ; preds = %148
  %155 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %156 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %157 = call i32 @nla_nest_end(%struct.sk_buff* %155, %struct.nlattr* %156)
  br label %158

158:                                              ; preds = %154, %140
  %159 = call i32 (...) @rcu_read_unlock()
  %160 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %161 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %162 = call i32 @nla_nest_end(%struct.sk_buff* %160, %struct.nlattr* %161)
  store i32 %162, i32* %3, align 4
  br label %175

163:                                              ; preds = %153
  %164 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %165 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %166 = call i32 @nla_nest_cancel(%struct.sk_buff* %164, %struct.nlattr* %165)
  br label %167

167:                                              ; preds = %163, %147, %136, %127, %113, %99, %84
  %168 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %169 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %170 = call i32 @nla_nest_cancel(%struct.sk_buff* %168, %struct.nlattr* %169)
  br label %171

171:                                              ; preds = %167, %78
  %172 = call i32 (...) @rcu_read_unlock()
  %173 = load i32, i32* @ENOSPC, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %171, %158
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local %struct.taprio_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sched_gate_list* @rcu_dereference(i32) #1

declare dso_local i32 @netdev_get_num_tc(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.tc_mqprio_qopt*) #1

declare dso_local i32 @FULL_OFFLOAD_IS_ENABLED(i64) #1

declare dso_local i64 @nla_put_s32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @dump_schedule(%struct.sk_buff*, %struct.sched_gate_list*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
