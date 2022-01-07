; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_fq_codel.c_fq_codel_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_fq_codel.c_fq_codel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.fq_codel_sched_data = type { i32, i32, i32, %struct.fq_codel_flow*, i8*, i32, i32, %struct.TYPE_2__, i32, i32, i32, i8* }
%struct.fq_codel_flow = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TCQ_F_CAN_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* @fq_codel_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fq_codel_init(%struct.Qdisc* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.fq_codel_sched_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fq_codel_flow*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %13 = call %struct.fq_codel_sched_data* @qdisc_priv(%struct.Qdisc* %12)
  store %struct.fq_codel_sched_data* %13, %struct.fq_codel_sched_data** %8, align 8
  %14 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %15 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %14, i32 0, i32 0
  store i32 10240, i32* %15, align 4
  %16 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %8, align 8
  %17 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %16, i32 0, i32 0
  store i32 1024, i32* %17, align 8
  %18 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %8, align 8
  %19 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %18, i32 0, i32 1
  store i32 33554432, i32* %19, align 4
  %20 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %8, align 8
  %21 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %20, i32 0, i32 2
  store i32 64, i32* %21, align 8
  %22 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %23 = call i32 @qdisc_dev(%struct.Qdisc* %22)
  %24 = call i8* @psched_mtu(i32 %23)
  %25 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %8, align 8
  %26 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %25, i32 0, i32 11
  store i8* %24, i8** %26, align 8
  %27 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %8, align 8
  %28 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %27, i32 0, i32 10
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %8, align 8
  %31 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %30, i32 0, i32 9
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %8, align 8
  %34 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %33, i32 0, i32 7
  %35 = call i32 @codel_params_init(%struct.TYPE_2__* %34)
  %36 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %8, align 8
  %37 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %36, i32 0, i32 8
  %38 = call i32 @codel_stats_init(i32* %37)
  %39 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %8, align 8
  %40 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %39, i32 0, i32 7
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %43 = call i32 @qdisc_dev(%struct.Qdisc* %42)
  %44 = call i8* @psched_mtu(i32 %43)
  %45 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %8, align 8
  %46 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %45, i32 0, i32 7
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i8* %44, i8** %47, align 8
  %48 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %49 = icmp ne %struct.nlattr* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %3
  %51 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %52 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %53 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %54 = call i32 @fq_codel_change(%struct.Qdisc* %51, %struct.nlattr* %52, %struct.netlink_ext_ack* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %156

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %3
  %60 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %8, align 8
  %61 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %60, i32 0, i32 6
  %62 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %8, align 8
  %63 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %62, i32 0, i32 5
  %64 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %65 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %66 = call i32 @tcf_block_get(i32* %61, i32* %63, %struct.Qdisc* %64, %struct.netlink_ext_ack* %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  br label %156

70:                                               ; preds = %59
  %71 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %8, align 8
  %72 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %71, i32 0, i32 3
  %73 = load %struct.fq_codel_flow*, %struct.fq_codel_flow** %72, align 8
  %74 = icmp ne %struct.fq_codel_flow* %73, null
  br i1 %74, label %130, label %75

75:                                               ; preds = %70
  %76 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %8, align 8
  %77 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call i8* @kvcalloc(i32 %78, i32 8, i32 %79)
  %81 = bitcast i8* %80 to %struct.fq_codel_flow*
  %82 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %8, align 8
  %83 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %82, i32 0, i32 3
  store %struct.fq_codel_flow* %81, %struct.fq_codel_flow** %83, align 8
  %84 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %8, align 8
  %85 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %84, i32 0, i32 3
  %86 = load %struct.fq_codel_flow*, %struct.fq_codel_flow** %85, align 8
  %87 = icmp ne %struct.fq_codel_flow* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %75
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %10, align 4
  br label %156

91:                                               ; preds = %75
  %92 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %8, align 8
  %93 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call i8* @kvcalloc(i32 %94, i32 4, i32 %95)
  %97 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %8, align 8
  %98 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %97, i32 0, i32 4
  store i8* %96, i8** %98, align 8
  %99 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %8, align 8
  %100 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %99, i32 0, i32 4
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %91
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %10, align 4
  br label %149

106:                                              ; preds = %91
  store i32 0, i32* %9, align 4
  br label %107

107:                                              ; preds = %126, %106
  %108 = load i32, i32* %9, align 4
  %109 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %8, align 8
  %110 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %129

113:                                              ; preds = %107
  %114 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %8, align 8
  %115 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %114, i32 0, i32 3
  %116 = load %struct.fq_codel_flow*, %struct.fq_codel_flow** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.fq_codel_flow, %struct.fq_codel_flow* %116, i64 %118
  store %struct.fq_codel_flow* %119, %struct.fq_codel_flow** %11, align 8
  %120 = load %struct.fq_codel_flow*, %struct.fq_codel_flow** %11, align 8
  %121 = getelementptr inbounds %struct.fq_codel_flow, %struct.fq_codel_flow* %120, i32 0, i32 1
  %122 = call i32 @INIT_LIST_HEAD(i32* %121)
  %123 = load %struct.fq_codel_flow*, %struct.fq_codel_flow** %11, align 8
  %124 = getelementptr inbounds %struct.fq_codel_flow, %struct.fq_codel_flow* %123, i32 0, i32 0
  %125 = call i32 @codel_vars_init(i32* %124)
  br label %126

126:                                              ; preds = %113
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %9, align 4
  br label %107

129:                                              ; preds = %107
  br label %130

130:                                              ; preds = %129, %70
  %131 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %132 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp sge i32 %133, 1
  br i1 %134, label %135, label %141

135:                                              ; preds = %130
  %136 = load i32, i32* @TCQ_F_CAN_BYPASS, align 4
  %137 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %138 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 4
  br label %148

141:                                              ; preds = %130
  %142 = load i32, i32* @TCQ_F_CAN_BYPASS, align 4
  %143 = xor i32 %142, -1
  %144 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %145 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, %143
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %141, %135
  store i32 0, i32* %4, align 4
  br label %160

149:                                              ; preds = %103
  %150 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %8, align 8
  %151 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %150, i32 0, i32 3
  %152 = load %struct.fq_codel_flow*, %struct.fq_codel_flow** %151, align 8
  %153 = call i32 @kvfree(%struct.fq_codel_flow* %152)
  %154 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %8, align 8
  %155 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %154, i32 0, i32 3
  store %struct.fq_codel_flow* null, %struct.fq_codel_flow** %155, align 8
  br label %156

156:                                              ; preds = %149, %88, %69, %57
  %157 = load %struct.fq_codel_sched_data*, %struct.fq_codel_sched_data** %8, align 8
  %158 = getelementptr inbounds %struct.fq_codel_sched_data, %struct.fq_codel_sched_data* %157, i32 0, i32 0
  store i32 0, i32* %158, align 8
  %159 = load i32, i32* %10, align 4
  store i32 %159, i32* %4, align 4
  br label %160

160:                                              ; preds = %156, %148
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local %struct.fq_codel_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i8* @psched_mtu(i32) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @codel_params_init(%struct.TYPE_2__*) #1

declare dso_local i32 @codel_stats_init(i32*) #1

declare dso_local i32 @fq_codel_change(%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @tcf_block_get(i32*, i32*, %struct.Qdisc*, %struct.netlink_ext_ack*) #1

declare dso_local i8* @kvcalloc(i32, i32, i32) #1

declare dso_local i32 @codel_vars_init(i32*) #1

declare dso_local i32 @kvfree(%struct.fq_codel_flow*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
