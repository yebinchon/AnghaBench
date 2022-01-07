; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_red.c_red_change.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_red.c_red_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.red_sched_data = type { i32, i64, i32, %struct.Qdisc*, i32, i32 }
%struct.tc_red_qopt = type { i64, i32, i32, i32, i32, i32, i32 }

@TCA_RED_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@red_policy = common dso_local global i32 0, align 4
@TCA_RED_PARMS = common dso_local global i64 0, align 8
@TCA_RED_STAB = common dso_local global i64 0, align 8
@TCA_RED_MAX_P = common dso_local global i64 0, align 8
@bfifo_qdisc_ops = common dso_local global i32 0, align 4
@TC_RED_ADAPTATIVE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* @red_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @red_change(%struct.Qdisc* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.Qdisc*, align 8
  %9 = alloca %struct.Qdisc*, align 8
  %10 = alloca %struct.red_sched_data*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.tc_red_qopt*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  store %struct.Qdisc* null, %struct.Qdisc** %8, align 8
  store %struct.Qdisc* null, %struct.Qdisc** %9, align 8
  %17 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %18 = call %struct.red_sched_data* @qdisc_priv(%struct.Qdisc* %17)
  store %struct.red_sched_data* %18, %struct.red_sched_data** %10, align 8
  %19 = load i32, i32* @TCA_RED_MAX, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %11, align 8
  %23 = alloca %struct.nlattr*, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  %24 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %25 = icmp eq %struct.nlattr* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %197

29:                                               ; preds = %3
  %30 = load i32, i32* @TCA_RED_MAX, align 4
  %31 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %32 = load i32, i32* @red_policy, align 4
  %33 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %23, i32 %30, %struct.nlattr* %31, i32 %32, i32* null)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %197

38:                                               ; preds = %29
  %39 = load i64, i64* @TCA_RED_PARMS, align 8
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = icmp eq %struct.nlattr* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load i64, i64* @TCA_RED_STAB, align 8
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  %47 = icmp eq %struct.nlattr* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %43, %38
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %197

51:                                               ; preds = %43
  %52 = load i64, i64* @TCA_RED_MAX_P, align 8
  %53 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %52
  %54 = load %struct.nlattr*, %struct.nlattr** %53, align 8
  %55 = icmp ne %struct.nlattr* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i64, i64* @TCA_RED_MAX_P, align 8
  %58 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %57
  %59 = load %struct.nlattr*, %struct.nlattr** %58, align 8
  %60 = call i32 @nla_get_u32(%struct.nlattr* %59)
  br label %62

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %56
  %63 = phi i32 [ %60, %56 ], [ 0, %61 ]
  store i32 %63, i32* %15, align 4
  %64 = load i64, i64* @TCA_RED_PARMS, align 8
  %65 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %64
  %66 = load %struct.nlattr*, %struct.nlattr** %65, align 8
  %67 = call %struct.tc_red_qopt* @nla_data(%struct.nlattr* %66)
  store %struct.tc_red_qopt* %67, %struct.tc_red_qopt** %13, align 8
  %68 = load %struct.tc_red_qopt*, %struct.tc_red_qopt** %13, align 8
  %69 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.tc_red_qopt*, %struct.tc_red_qopt** %13, align 8
  %72 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.tc_red_qopt*, %struct.tc_red_qopt** %13, align 8
  %75 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @red_check_params(i32 %70, i32 %73, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %62
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %197

82:                                               ; preds = %62
  %83 = load %struct.tc_red_qopt*, %struct.tc_red_qopt** %13, align 8
  %84 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %87, label %103

87:                                               ; preds = %82
  %88 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %89 = load %struct.tc_red_qopt*, %struct.tc_red_qopt** %13, align 8
  %90 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %93 = call %struct.Qdisc* @fifo_create_dflt(%struct.Qdisc* %88, i32* @bfifo_qdisc_ops, i64 %91, %struct.netlink_ext_ack* %92)
  store %struct.Qdisc* %93, %struct.Qdisc** %9, align 8
  %94 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %95 = call i64 @IS_ERR(%struct.Qdisc* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %87
  %98 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %99 = call i32 @PTR_ERR(%struct.Qdisc* %98)
  store i32 %99, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %197

100:                                              ; preds = %87
  %101 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %102 = call i32 @qdisc_hash_add(%struct.Qdisc* %101, i32 1)
  br label %103

103:                                              ; preds = %100, %82
  %104 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %105 = call i32 @sch_tree_lock(%struct.Qdisc* %104)
  %106 = load %struct.tc_red_qopt*, %struct.tc_red_qopt** %13, align 8
  %107 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.red_sched_data*, %struct.red_sched_data** %10, align 8
  %110 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load %struct.tc_red_qopt*, %struct.tc_red_qopt** %13, align 8
  %112 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.red_sched_data*, %struct.red_sched_data** %10, align 8
  %115 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %114, i32 0, i32 1
  store i64 %113, i64* %115, align 8
  %116 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %117 = icmp ne %struct.Qdisc* %116, null
  br i1 %117, label %118, label %129

118:                                              ; preds = %103
  %119 = load %struct.red_sched_data*, %struct.red_sched_data** %10, align 8
  %120 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %119, i32 0, i32 3
  %121 = load %struct.Qdisc*, %struct.Qdisc** %120, align 8
  %122 = call i32 @qdisc_tree_flush_backlog(%struct.Qdisc* %121)
  %123 = load %struct.red_sched_data*, %struct.red_sched_data** %10, align 8
  %124 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %123, i32 0, i32 3
  %125 = load %struct.Qdisc*, %struct.Qdisc** %124, align 8
  store %struct.Qdisc* %125, %struct.Qdisc** %8, align 8
  %126 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %127 = load %struct.red_sched_data*, %struct.red_sched_data** %10, align 8
  %128 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %127, i32 0, i32 3
  store %struct.Qdisc* %126, %struct.Qdisc** %128, align 8
  br label %129

129:                                              ; preds = %118, %103
  %130 = load %struct.red_sched_data*, %struct.red_sched_data** %10, align 8
  %131 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %130, i32 0, i32 5
  %132 = load %struct.tc_red_qopt*, %struct.tc_red_qopt** %13, align 8
  %133 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.tc_red_qopt*, %struct.tc_red_qopt** %13, align 8
  %136 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.tc_red_qopt*, %struct.tc_red_qopt** %13, align 8
  %139 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.tc_red_qopt*, %struct.tc_red_qopt** %13, align 8
  %142 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.tc_red_qopt*, %struct.tc_red_qopt** %13, align 8
  %145 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load i64, i64* @TCA_RED_STAB, align 8
  %148 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %147
  %149 = load %struct.nlattr*, %struct.nlattr** %148, align 8
  %150 = call %struct.tc_red_qopt* @nla_data(%struct.nlattr* %149)
  %151 = load i32, i32* %15, align 4
  %152 = call i32 @red_set_parms(i32* %131, i32 %134, i32 %137, i32 %140, i32 %143, i32 %146, %struct.tc_red_qopt* %150, i32 %151)
  %153 = load %struct.red_sched_data*, %struct.red_sched_data** %10, align 8
  %154 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %153, i32 0, i32 2
  %155 = call i32 @red_set_vars(i32* %154)
  %156 = load %struct.red_sched_data*, %struct.red_sched_data** %10, align 8
  %157 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %156, i32 0, i32 4
  %158 = call i32 @del_timer(i32* %157)
  %159 = load %struct.tc_red_qopt*, %struct.tc_red_qopt** %13, align 8
  %160 = getelementptr inbounds %struct.tc_red_qopt, %struct.tc_red_qopt* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @TC_RED_ADAPTATIVE, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %129
  %166 = load %struct.red_sched_data*, %struct.red_sched_data** %10, align 8
  %167 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %166, i32 0, i32 4
  %168 = load i64, i64* @jiffies, align 8
  %169 = load i32, i32* @HZ, align 4
  %170 = sdiv i32 %169, 2
  %171 = sext i32 %170 to i64
  %172 = add nsw i64 %168, %171
  %173 = call i32 @mod_timer(i32* %167, i64 %172)
  br label %174

174:                                              ; preds = %165, %129
  %175 = load %struct.red_sched_data*, %struct.red_sched_data** %10, align 8
  %176 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %175, i32 0, i32 3
  %177 = load %struct.Qdisc*, %struct.Qdisc** %176, align 8
  %178 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %174
  %183 = load %struct.red_sched_data*, %struct.red_sched_data** %10, align 8
  %184 = getelementptr inbounds %struct.red_sched_data, %struct.red_sched_data* %183, i32 0, i32 2
  %185 = call i32 @red_start_of_idle_period(i32* %184)
  br label %186

186:                                              ; preds = %182, %174
  %187 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %188 = call i32 @sch_tree_unlock(%struct.Qdisc* %187)
  %189 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %190 = call i32 @red_offload(%struct.Qdisc* %189, i32 1)
  %191 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %192 = icmp ne %struct.Qdisc* %191, null
  br i1 %192, label %193, label %196

193:                                              ; preds = %186
  %194 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %195 = call i32 @qdisc_put(%struct.Qdisc* %194)
  br label %196

196:                                              ; preds = %193, %186
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %197

197:                                              ; preds = %196, %97, %79, %48, %36, %26
  %198 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %198)
  %199 = load i32, i32* %4, align 4
  ret i32 %199
}

declare dso_local %struct.red_sched_data* @qdisc_priv(%struct.Qdisc*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.tc_red_qopt* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @red_check_params(i32, i32, i32) #1

declare dso_local %struct.Qdisc* @fifo_create_dflt(%struct.Qdisc*, i32*, i64, %struct.netlink_ext_ack*) #1

declare dso_local i64 @IS_ERR(%struct.Qdisc*) #1

declare dso_local i32 @PTR_ERR(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_hash_add(%struct.Qdisc*, i32) #1

declare dso_local i32 @sch_tree_lock(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_tree_flush_backlog(%struct.Qdisc*) #1

declare dso_local i32 @red_set_parms(i32*, i32, i32, i32, i32, i32, %struct.tc_red_qopt*, i32) #1

declare dso_local i32 @red_set_vars(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @red_start_of_idle_period(i32*) #1

declare dso_local i32 @sch_tree_unlock(%struct.Qdisc*) #1

declare dso_local i32 @red_offload(%struct.Qdisc*, i32) #1

declare dso_local i32 @qdisc_put(%struct.Qdisc*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
