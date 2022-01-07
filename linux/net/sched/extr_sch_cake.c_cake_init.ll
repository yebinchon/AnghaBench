; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.cake_sched_data = type { i32, i32, i32, i32, i64, i64, %struct.TYPE_2__*, %struct.cake_tin_data*, i32, i32, i32, i64, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cake_tin_data = type { i64*, %struct.cake_flow*, i64, i64, i64, i32, i32, i32 }
%struct.cake_flow = type { i32, i32 }

@CAKE_DIFFSERV_DIFFSERV3 = common dso_local global i32 0, align 4
@CAKE_FLOW_TRIPLE = common dso_local global i32 0, align 4
@CAKE_FLAG_SPLIT_GSO = common dso_local global i32 0, align 4
@quantum_div = common dso_local global i32* null, align 8
@CAKE_QUEUES = common dso_local global i32 0, align 4
@CAKE_MAX_TINS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* @cake_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cake_init(%struct.Qdisc* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.cake_sched_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cake_tin_data*, align 8
  %14 = alloca %struct.cake_flow*, align 8
  %15 = alloca i64, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %16 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %17 = call %struct.cake_sched_data* @qdisc_priv(%struct.Qdisc* %16)
  store %struct.cake_sched_data* %17, %struct.cake_sched_data** %8, align 8
  %18 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %19 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %18, i32 0, i32 0
  store i32 10240, i32* %19, align 4
  %20 = load i32, i32* @CAKE_DIFFSERV_DIFFSERV3, align 4
  %21 = load %struct.cake_sched_data*, %struct.cake_sched_data** %8, align 8
  %22 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %21, i32 0, i32 15
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @CAKE_FLOW_TRIPLE, align 4
  %24 = load %struct.cake_sched_data*, %struct.cake_sched_data** %8, align 8
  %25 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %24, i32 0, i32 14
  store i32 %23, i32* %25, align 4
  %26 = load %struct.cake_sched_data*, %struct.cake_sched_data** %8, align 8
  %27 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %26, i32 0, i32 4
  store i64 0, i64* %27, align 8
  %28 = load %struct.cake_sched_data*, %struct.cake_sched_data** %8, align 8
  %29 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %28, i32 0, i32 0
  store i32 100000, i32* %29, align 8
  %30 = load %struct.cake_sched_data*, %struct.cake_sched_data** %8, align 8
  %31 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %30, i32 0, i32 1
  store i32 5000, i32* %31, align 4
  %32 = load i32, i32* @CAKE_FLAG_SPLIT_GSO, align 4
  %33 = load %struct.cake_sched_data*, %struct.cake_sched_data** %8, align 8
  %34 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %33, i32 0, i32 13
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.cake_sched_data*, %struct.cake_sched_data** %8, align 8
  %38 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %37, i32 0, i32 12
  store i64 0, i64* %38, align 8
  %39 = load %struct.cake_sched_data*, %struct.cake_sched_data** %8, align 8
  %40 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %39, i32 0, i32 11
  store i64 0, i64* %40, align 8
  %41 = load %struct.cake_sched_data*, %struct.cake_sched_data** %8, align 8
  %42 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %41, i32 0, i32 10
  %43 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %44 = call i32 @qdisc_watchdog_init(i32* %42, %struct.Qdisc* %43)
  %45 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %46 = icmp ne %struct.nlattr* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %3
  %48 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %49 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %50 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %51 = call i32 @cake_change(%struct.Qdisc* %48, %struct.nlattr* %49, %struct.netlink_ext_ack* %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %4, align 4
  br label %192

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %3
  %58 = load %struct.cake_sched_data*, %struct.cake_sched_data** %8, align 8
  %59 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %58, i32 0, i32 9
  %60 = load %struct.cake_sched_data*, %struct.cake_sched_data** %8, align 8
  %61 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %60, i32 0, i32 8
  %62 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %63 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %64 = call i32 @tcf_block_get(i32* %59, i32* %61, %struct.Qdisc* %62, %struct.netlink_ext_ack* %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %4, align 4
  br label %192

69:                                               ; preds = %57
  %70 = load i32*, i32** @quantum_div, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 -1, i32* %71, align 4
  store i32 1, i32* %9, align 4
  br label %72

72:                                               ; preds = %83, %69
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @CAKE_QUEUES, align 4
  %75 = icmp sle i32 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = load i32, i32* %9, align 4
  %78 = sdiv i32 65535, %77
  %79 = load i32*, i32** @quantum_div, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 %78, i32* %82, align 4
  br label %83

83:                                               ; preds = %76
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %72

86:                                               ; preds = %72
  %87 = load i32, i32* @CAKE_MAX_TINS, align 4
  %88 = load i32, i32* @GFP_KERNEL, align 4
  %89 = call %struct.cake_tin_data* @kvcalloc(i32 %87, i32 56, i32 %88)
  %90 = load %struct.cake_sched_data*, %struct.cake_sched_data** %8, align 8
  %91 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %90, i32 0, i32 7
  store %struct.cake_tin_data* %89, %struct.cake_tin_data** %91, align 8
  %92 = load %struct.cake_sched_data*, %struct.cake_sched_data** %8, align 8
  %93 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %92, i32 0, i32 7
  %94 = load %struct.cake_tin_data*, %struct.cake_tin_data** %93, align 8
  %95 = icmp ne %struct.cake_tin_data* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %86
  br label %187

97:                                               ; preds = %86
  store i32 0, i32* %9, align 4
  br label %98

98:                                               ; preds = %172, %97
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @CAKE_MAX_TINS, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %175

102:                                              ; preds = %98
  %103 = load %struct.cake_sched_data*, %struct.cake_sched_data** %8, align 8
  %104 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %103, i32 0, i32 7
  %105 = load %struct.cake_tin_data*, %struct.cake_tin_data** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %105, i64 %107
  store %struct.cake_tin_data* %108, %struct.cake_tin_data** %13, align 8
  %109 = load %struct.cake_tin_data*, %struct.cake_tin_data** %13, align 8
  %110 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %109, i32 0, i32 7
  %111 = call i32 @INIT_LIST_HEAD(i32* %110)
  %112 = load %struct.cake_tin_data*, %struct.cake_tin_data** %13, align 8
  %113 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %112, i32 0, i32 6
  %114 = call i32 @INIT_LIST_HEAD(i32* %113)
  %115 = load %struct.cake_tin_data*, %struct.cake_tin_data** %13, align 8
  %116 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %115, i32 0, i32 5
  %117 = call i32 @INIT_LIST_HEAD(i32* %116)
  %118 = load %struct.cake_tin_data*, %struct.cake_tin_data** %13, align 8
  %119 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %118, i32 0, i32 4
  store i64 0, i64* %119, align 8
  %120 = load %struct.cake_tin_data*, %struct.cake_tin_data** %13, align 8
  %121 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %120, i32 0, i32 3
  store i64 0, i64* %121, align 8
  %122 = load %struct.cake_tin_data*, %struct.cake_tin_data** %13, align 8
  %123 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %122, i32 0, i32 2
  store i64 0, i64* %123, align 8
  store i32 0, i32* %10, align 4
  br label %124

124:                                              ; preds = %168, %102
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* @CAKE_QUEUES, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %171

128:                                              ; preds = %124
  %129 = load %struct.cake_tin_data*, %struct.cake_tin_data** %13, align 8
  %130 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %129, i32 0, i32 1
  %131 = load %struct.cake_flow*, %struct.cake_flow** %130, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.cake_flow, %struct.cake_flow* %131, i64 %133
  store %struct.cake_flow* %134, %struct.cake_flow** %14, align 8
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* @CAKE_MAX_TINS, align 4
  %137 = mul nsw i32 %135, %136
  %138 = load i32, i32* %9, align 4
  %139 = add nsw i32 %137, %138
  %140 = sext i32 %139 to i64
  store i64 %140, i64* %15, align 8
  %141 = load %struct.cake_flow*, %struct.cake_flow** %14, align 8
  %142 = getelementptr inbounds %struct.cake_flow, %struct.cake_flow* %141, i32 0, i32 1
  %143 = call i32 @INIT_LIST_HEAD(i32* %142)
  %144 = load %struct.cake_flow*, %struct.cake_flow** %14, align 8
  %145 = getelementptr inbounds %struct.cake_flow, %struct.cake_flow* %144, i32 0, i32 0
  %146 = call i32 @cobalt_vars_init(i32* %145)
  %147 = load i32, i32* %9, align 4
  %148 = load %struct.cake_sched_data*, %struct.cake_sched_data** %8, align 8
  %149 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %148, i32 0, i32 6
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = load i64, i64* %15, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  store i32 %147, i32* %153, align 4
  %154 = load i32, i32* %10, align 4
  %155 = load %struct.cake_sched_data*, %struct.cake_sched_data** %8, align 8
  %156 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %155, i32 0, i32 6
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = load i64, i64* %15, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  store i32 %154, i32* %160, align 4
  %161 = load i64, i64* %15, align 8
  %162 = load %struct.cake_tin_data*, %struct.cake_tin_data** %13, align 8
  %163 = getelementptr inbounds %struct.cake_tin_data, %struct.cake_tin_data* %162, i32 0, i32 0
  %164 = load i64*, i64** %163, align 8
  %165 = load i32, i32* %10, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %164, i64 %166
  store i64 %161, i64* %167, align 8
  br label %168

168:                                              ; preds = %128
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %10, align 4
  br label %124

171:                                              ; preds = %124
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %9, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %9, align 4
  br label %98

175:                                              ; preds = %98
  %176 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %177 = call i32 @cake_reconfigure(%struct.Qdisc* %176)
  %178 = load %struct.cake_sched_data*, %struct.cake_sched_data** %8, align 8
  %179 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %178, i32 0, i32 4
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.cake_sched_data*, %struct.cake_sched_data** %8, align 8
  %182 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %181, i32 0, i32 5
  store i64 %180, i64* %182, align 8
  %183 = load %struct.cake_sched_data*, %struct.cake_sched_data** %8, align 8
  %184 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %183, i32 0, i32 3
  store i32 -1, i32* %184, align 4
  %185 = load %struct.cake_sched_data*, %struct.cake_sched_data** %8, align 8
  %186 = getelementptr inbounds %struct.cake_sched_data, %struct.cake_sched_data* %185, i32 0, i32 2
  store i32 -1, i32* %186, align 8
  store i32 0, i32* %4, align 4
  br label %192

187:                                              ; preds = %96
  %188 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %189 = call i32 @cake_destroy(%struct.Qdisc* %188)
  %190 = load i32, i32* @ENOMEM, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %4, align 4
  br label %192

192:                                              ; preds = %187, %175, %67, %54
  %193 = load i32, i32* %4, align 4
  ret i32 %193
}

declare dso_local %struct.cake_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_watchdog_init(i32*, %struct.Qdisc*) #1

declare dso_local i32 @cake_change(%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @tcf_block_get(i32*, i32*, %struct.Qdisc*, %struct.netlink_ext_ack*) #1

declare dso_local %struct.cake_tin_data* @kvcalloc(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @cobalt_vars_init(i32*) #1

declare dso_local i32 @cake_reconfigure(%struct.Qdisc*) #1

declare dso_local i32 @cake_destroy(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
