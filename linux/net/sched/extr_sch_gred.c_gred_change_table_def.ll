; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_gred.c_gred_change_table_def.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_gred.c_gred_change_table_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.gred_sched = type { i64, i64, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }
%struct.tc_gred_sopt = type { i32, i64, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@MAX_DPs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"number of virtual queues too high\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"number of virtual queues can't be 0\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"default virtual queue above virtual queue count\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"can't set per-Qdisc RED flags when per-virtual queue flags are used\00", align 1
@GRED_VQ_RED_FLAGS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"GRED: Warning: Destroying shadowed VQ 0x%x\0A\00", align 1
@TC_GRED_REPLACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* @gred_change_table_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gred_change_table_def(%struct.Qdisc* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.gred_sched*, align 8
  %9 = alloca %struct.tc_gred_sopt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %13 = call %struct.gred_sched* @qdisc_priv(%struct.Qdisc* %12)
  store %struct.gred_sched* %13, %struct.gred_sched** %8, align 8
  %14 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %15 = icmp ne %struct.nlattr* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %202

19:                                               ; preds = %3
  %20 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %21 = call %struct.tc_gred_sopt* @nla_data(%struct.nlattr* %20)
  store %struct.tc_gred_sopt* %21, %struct.tc_gred_sopt** %9, align 8
  %22 = load %struct.tc_gred_sopt*, %struct.tc_gred_sopt** %9, align 8
  %23 = getelementptr inbounds %struct.tc_gred_sopt, %struct.tc_gred_sopt* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MAX_DPs, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %29 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %202

32:                                               ; preds = %19
  %33 = load %struct.tc_gred_sopt*, %struct.tc_gred_sopt** %9, align 8
  %34 = getelementptr inbounds %struct.tc_gred_sopt, %struct.tc_gred_sopt* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %39 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %202

42:                                               ; preds = %32
  %43 = load %struct.tc_gred_sopt*, %struct.tc_gred_sopt** %9, align 8
  %44 = getelementptr inbounds %struct.tc_gred_sopt, %struct.tc_gred_sopt* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.tc_gred_sopt*, %struct.tc_gred_sopt** %9, align 8
  %47 = getelementptr inbounds %struct.tc_gred_sopt, %struct.tc_gred_sopt* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = icmp sge i64 %45, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %53 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %52, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %202

56:                                               ; preds = %42
  %57 = load %struct.tc_gred_sopt*, %struct.tc_gred_sopt** %9, align 8
  %58 = getelementptr inbounds %struct.tc_gred_sopt, %struct.tc_gred_sopt* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %56
  %62 = load %struct.gred_sched*, %struct.gred_sched** %8, align 8
  %63 = call i64 @gred_per_vq_red_flags_used(%struct.gred_sched* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %67 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %66, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %202

70:                                               ; preds = %61, %56
  %71 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %72 = call i32 @sch_tree_lock(%struct.Qdisc* %71)
  %73 = load %struct.tc_gred_sopt*, %struct.tc_gred_sopt** %9, align 8
  %74 = getelementptr inbounds %struct.tc_gred_sopt, %struct.tc_gred_sopt* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = load %struct.gred_sched*, %struct.gred_sched** %8, align 8
  %78 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.tc_gred_sopt*, %struct.tc_gred_sopt** %9, align 8
  %80 = getelementptr inbounds %struct.tc_gred_sopt, %struct.tc_gred_sopt* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.gred_sched*, %struct.gred_sched** %8, align 8
  %83 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = load %struct.gred_sched*, %struct.gred_sched** %8, align 8
  %85 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.tc_gred_sopt*, %struct.tc_gred_sopt** %9, align 8
  %88 = getelementptr inbounds %struct.tc_gred_sopt, %struct.tc_gred_sopt* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %86, %89
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %10, align 4
  %92 = load %struct.tc_gred_sopt*, %struct.tc_gred_sopt** %9, align 8
  %93 = getelementptr inbounds %struct.tc_gred_sopt, %struct.tc_gred_sopt* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.gred_sched*, %struct.gred_sched** %8, align 8
  %96 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %98 = call i32 @sch_tree_unlock(%struct.Qdisc* %97)
  %99 = load %struct.tc_gred_sopt*, %struct.tc_gred_sopt** %9, align 8
  %100 = getelementptr inbounds %struct.tc_gred_sopt, %struct.tc_gred_sopt* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %70
  %104 = load %struct.gred_sched*, %struct.gred_sched** %8, align 8
  %105 = call i32 @gred_enable_rio_mode(%struct.gred_sched* %104)
  %106 = load %struct.gred_sched*, %struct.gred_sched** %8, align 8
  %107 = call i32 @gred_disable_wred_mode(%struct.gred_sched* %106)
  %108 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %109 = call i64 @gred_wred_mode_check(%struct.Qdisc* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %103
  %112 = load %struct.gred_sched*, %struct.gred_sched** %8, align 8
  %113 = call i32 @gred_enable_wred_mode(%struct.gred_sched* %112)
  br label %114

114:                                              ; preds = %111, %103
  br label %120

115:                                              ; preds = %70
  %116 = load %struct.gred_sched*, %struct.gred_sched** %8, align 8
  %117 = call i32 @gred_disable_rio_mode(%struct.gred_sched* %116)
  %118 = load %struct.gred_sched*, %struct.gred_sched** %8, align 8
  %119 = call i32 @gred_disable_wred_mode(%struct.gred_sched* %118)
  br label %120

120:                                              ; preds = %115, %114
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %159

123:                                              ; preds = %120
  store i32 0, i32* %11, align 4
  br label %124

124:                                              ; preds = %155, %123
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = load %struct.gred_sched*, %struct.gred_sched** %8, align 8
  %128 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp slt i64 %126, %129
  br i1 %130, label %131, label %158

131:                                              ; preds = %124
  %132 = load %struct.gred_sched*, %struct.gred_sched** %8, align 8
  %133 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %132, i32 0, i32 3
  %134 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %133, align 8
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %134, i64 %136
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = icmp ne %struct.TYPE_2__* %138, null
  br i1 %139, label %140, label %154

140:                                              ; preds = %131
  %141 = load %struct.gred_sched*, %struct.gred_sched** %8, align 8
  %142 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @GRED_VQ_RED_FLAGS, align 4
  %145 = and i32 %143, %144
  %146 = load %struct.gred_sched*, %struct.gred_sched** %8, align 8
  %147 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %146, i32 0, i32 3
  %148 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %147, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %148, i64 %150
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  store i32 %145, i32* %153, align 4
  br label %154

154:                                              ; preds = %140, %131
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %11, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %11, align 4
  br label %124

158:                                              ; preds = %124
  br label %159

159:                                              ; preds = %158, %120
  %160 = load %struct.gred_sched*, %struct.gred_sched** %8, align 8
  %161 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %11, align 4
  br label %164

164:                                              ; preds = %195, %159
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* @MAX_DPs, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %198

168:                                              ; preds = %164
  %169 = load %struct.gred_sched*, %struct.gred_sched** %8, align 8
  %170 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %169, i32 0, i32 3
  %171 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %170, align 8
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %171, i64 %173
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = icmp ne %struct.TYPE_2__* %175, null
  br i1 %176, label %177, label %194

177:                                              ; preds = %168
  %178 = load i32, i32* %11, align 4
  %179 = call i32 @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %178)
  %180 = load %struct.gred_sched*, %struct.gred_sched** %8, align 8
  %181 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %180, i32 0, i32 3
  %182 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %181, align 8
  %183 = load i32, i32* %11, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %182, i64 %184
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** %185, align 8
  %187 = call i32 @gred_destroy_vq(%struct.TYPE_2__* %186)
  %188 = load %struct.gred_sched*, %struct.gred_sched** %8, align 8
  %189 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %188, i32 0, i32 3
  %190 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %189, align 8
  %191 = load i32, i32* %11, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %190, i64 %192
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %193, align 8
  br label %194

194:                                              ; preds = %177, %168
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %11, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %11, align 4
  br label %164

198:                                              ; preds = %164
  %199 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %200 = load i32, i32* @TC_GRED_REPLACE, align 4
  %201 = call i32 @gred_offload(%struct.Qdisc* %199, i32 %200)
  store i32 0, i32* %4, align 4
  br label %202

202:                                              ; preds = %198, %65, %51, %37, %27, %16
  %203 = load i32, i32* %4, align 4
  ret i32 %203
}

declare dso_local %struct.gred_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.tc_gred_sopt* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i64 @gred_per_vq_red_flags_used(%struct.gred_sched*) #1

declare dso_local i32 @sch_tree_lock(%struct.Qdisc*) #1

declare dso_local i32 @sch_tree_unlock(%struct.Qdisc*) #1

declare dso_local i32 @gred_enable_rio_mode(%struct.gred_sched*) #1

declare dso_local i32 @gred_disable_wred_mode(%struct.gred_sched*) #1

declare dso_local i64 @gred_wred_mode_check(%struct.Qdisc*) #1

declare dso_local i32 @gred_enable_wred_mode(%struct.gred_sched*) #1

declare dso_local i32 @gred_disable_rio_mode(%struct.gred_sched*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @gred_destroy_vq(%struct.TYPE_2__*) #1

declare dso_local i32 @gred_offload(%struct.Qdisc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
