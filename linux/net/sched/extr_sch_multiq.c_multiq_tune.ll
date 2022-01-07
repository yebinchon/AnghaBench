; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_multiq.c_multiq_tune.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_multiq.c_multiq_tune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.multiq_sched_data = type { i32, i32, %struct.Qdisc** }
%struct.tc_multiq_qopt = type { i32 }
%struct.TYPE_3__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@noop_qdisc = common dso_local global %struct.Qdisc zeroinitializer, align 4
@pfifo_qdisc_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* @multiq_tune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multiq_tune(%struct.Qdisc* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.multiq_sched_data*, align 8
  %9 = alloca %struct.tc_multiq_qopt*, align 8
  %10 = alloca %struct.Qdisc**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.Qdisc*, align 8
  %14 = alloca %struct.Qdisc*, align 8
  %15 = alloca %struct.Qdisc*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %16 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %17 = call %struct.multiq_sched_data* @qdisc_priv(%struct.Qdisc* %16)
  store %struct.multiq_sched_data* %17, %struct.multiq_sched_data** %8, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %19 = call %struct.TYPE_3__* @qdisc_dev(%struct.Qdisc* %18)
  %20 = call i32 @netif_is_multiqueue(%struct.TYPE_3__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %199

25:                                               ; preds = %3
  %26 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %27 = call i32 @nla_len(%struct.nlattr* %26)
  %28 = sext i32 %27 to i64
  %29 = icmp ult i64 %28, 4
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %199

33:                                               ; preds = %25
  %34 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %35 = call %struct.tc_multiq_qopt* @nla_data(%struct.nlattr* %34)
  store %struct.tc_multiq_qopt* %35, %struct.tc_multiq_qopt** %9, align 8
  %36 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %37 = call %struct.TYPE_3__* @qdisc_dev(%struct.Qdisc* %36)
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.tc_multiq_qopt*, %struct.tc_multiq_qopt** %9, align 8
  %41 = getelementptr inbounds %struct.tc_multiq_qopt, %struct.tc_multiq_qopt* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %8, align 8
  %43 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %8, align 8
  %46 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %44, %47
  %49 = sext i32 %48 to i64
  %50 = mul i64 8, %49
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.Qdisc** @kmalloc(i32 %51, i32 %52)
  store %struct.Qdisc** %53, %struct.Qdisc*** %10, align 8
  %54 = load %struct.Qdisc**, %struct.Qdisc*** %10, align 8
  %55 = icmp ne %struct.Qdisc** %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %33
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %199

59:                                               ; preds = %33
  %60 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %61 = call i32 @sch_tree_lock(%struct.Qdisc* %60)
  %62 = load %struct.tc_multiq_qopt*, %struct.tc_multiq_qopt** %9, align 8
  %63 = getelementptr inbounds %struct.tc_multiq_qopt, %struct.tc_multiq_qopt* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %8, align 8
  %66 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %8, align 8
  %68 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %108, %59
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %8, align 8
  %73 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %111

76:                                               ; preds = %70
  %77 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %8, align 8
  %78 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %77, i32 0, i32 2
  %79 = load %struct.Qdisc**, %struct.Qdisc*** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %79, i64 %81
  %83 = load %struct.Qdisc*, %struct.Qdisc** %82, align 8
  %84 = icmp ne %struct.Qdisc* %83, @noop_qdisc
  br i1 %84, label %85, label %107

85:                                               ; preds = %76
  %86 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %8, align 8
  %87 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %86, i32 0, i32 2
  %88 = load %struct.Qdisc**, %struct.Qdisc*** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %88, i64 %90
  %92 = load %struct.Qdisc*, %struct.Qdisc** %91, align 8
  store %struct.Qdisc* %92, %struct.Qdisc** %13, align 8
  %93 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %8, align 8
  %94 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %93, i32 0, i32 2
  %95 = load %struct.Qdisc**, %struct.Qdisc*** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %95, i64 %97
  store %struct.Qdisc* @noop_qdisc, %struct.Qdisc** %98, align 8
  %99 = load %struct.Qdisc*, %struct.Qdisc** %13, align 8
  %100 = call i32 @qdisc_purge_queue(%struct.Qdisc* %99)
  %101 = load %struct.Qdisc*, %struct.Qdisc** %13, align 8
  %102 = load %struct.Qdisc**, %struct.Qdisc*** %10, align 8
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %12, align 4
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %102, i64 %105
  store %struct.Qdisc* %101, %struct.Qdisc** %106, align 8
  br label %107

107:                                              ; preds = %85, %76
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %11, align 4
  br label %70

111:                                              ; preds = %70
  %112 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %113 = call i32 @sch_tree_unlock(%struct.Qdisc* %112)
  store i32 0, i32* %11, align 4
  br label %114

114:                                              ; preds = %125, %111
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %128

118:                                              ; preds = %114
  %119 = load %struct.Qdisc**, %struct.Qdisc*** %10, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %119, i64 %121
  %123 = load %struct.Qdisc*, %struct.Qdisc** %122, align 8
  %124 = call i32 @qdisc_put(%struct.Qdisc* %123)
  br label %125

125:                                              ; preds = %118
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %11, align 4
  br label %114

128:                                              ; preds = %114
  %129 = load %struct.Qdisc**, %struct.Qdisc*** %10, align 8
  %130 = call i32 @kfree(%struct.Qdisc** %129)
  store i32 0, i32* %11, align 4
  br label %131

131:                                              ; preds = %195, %128
  %132 = load i32, i32* %11, align 4
  %133 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %8, align 8
  %134 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %198

137:                                              ; preds = %131
  %138 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %8, align 8
  %139 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %138, i32 0, i32 2
  %140 = load %struct.Qdisc**, %struct.Qdisc*** %139, align 8
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %140, i64 %142
  %144 = load %struct.Qdisc*, %struct.Qdisc** %143, align 8
  %145 = icmp eq %struct.Qdisc* %144, @noop_qdisc
  br i1 %145, label %146, label %194

146:                                              ; preds = %137
  %147 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %148 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %151 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %11, align 4
  %154 = add nsw i32 %153, 1
  %155 = call i32 @TC_H_MAKE(i32 %152, i32 %154)
  %156 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %157 = call %struct.Qdisc* @qdisc_create_dflt(i32 %149, i32* @pfifo_qdisc_ops, i32 %155, %struct.netlink_ext_ack* %156)
  store %struct.Qdisc* %157, %struct.Qdisc** %14, align 8
  %158 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %159 = icmp ne %struct.Qdisc* %158, null
  br i1 %159, label %160, label %193

160:                                              ; preds = %146
  %161 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %162 = call i32 @sch_tree_lock(%struct.Qdisc* %161)
  %163 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %8, align 8
  %164 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %163, i32 0, i32 2
  %165 = load %struct.Qdisc**, %struct.Qdisc*** %164, align 8
  %166 = load i32, i32* %11, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %165, i64 %167
  %169 = load %struct.Qdisc*, %struct.Qdisc** %168, align 8
  store %struct.Qdisc* %169, %struct.Qdisc** %15, align 8
  %170 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %171 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %8, align 8
  %172 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %171, i32 0, i32 2
  %173 = load %struct.Qdisc**, %struct.Qdisc*** %172, align 8
  %174 = load i32, i32* %11, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %173, i64 %175
  store %struct.Qdisc* %170, %struct.Qdisc** %176, align 8
  %177 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %178 = icmp ne %struct.Qdisc* %177, @noop_qdisc
  br i1 %178, label %179, label %182

179:                                              ; preds = %160
  %180 = load %struct.Qdisc*, %struct.Qdisc** %14, align 8
  %181 = call i32 @qdisc_hash_add(%struct.Qdisc* %180, i32 1)
  br label %182

182:                                              ; preds = %179, %160
  %183 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %184 = icmp ne %struct.Qdisc* %183, @noop_qdisc
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %187 = call i32 @qdisc_purge_queue(%struct.Qdisc* %186)
  br label %188

188:                                              ; preds = %185, %182
  %189 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %190 = call i32 @sch_tree_unlock(%struct.Qdisc* %189)
  %191 = load %struct.Qdisc*, %struct.Qdisc** %15, align 8
  %192 = call i32 @qdisc_put(%struct.Qdisc* %191)
  br label %193

193:                                              ; preds = %188, %146
  br label %194

194:                                              ; preds = %193, %137
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %11, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %11, align 4
  br label %131

198:                                              ; preds = %131
  store i32 0, i32* %4, align 4
  br label %199

199:                                              ; preds = %198, %56, %30, %22
  %200 = load i32, i32* %4, align 4
  ret i32 %200
}

declare dso_local %struct.multiq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @netif_is_multiqueue(%struct.TYPE_3__*) #1

declare dso_local %struct.TYPE_3__* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local %struct.tc_multiq_qopt* @nla_data(%struct.nlattr*) #1

declare dso_local %struct.Qdisc** @kmalloc(i32, i32) #1

declare dso_local i32 @sch_tree_lock(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_purge_queue(%struct.Qdisc*) #1

declare dso_local i32 @sch_tree_unlock(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_put(%struct.Qdisc*) #1

declare dso_local i32 @kfree(%struct.Qdisc**) #1

declare dso_local %struct.Qdisc* @qdisc_create_dflt(i32, i32*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @TC_H_MAKE(i32, i32) #1

declare dso_local i32 @qdisc_hash_add(%struct.Qdisc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
