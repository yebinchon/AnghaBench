; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_sfb.c_sfb_change.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_sfb.c_sfb_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_sfb_qopt = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.Qdisc = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.sfb_sched_data = type { i32, i64, i8*, i32, i32, i32, i32, i32, i32, i32, i64, i8*, i8*, i8*, %struct.Qdisc* }
%struct.TYPE_2__ = type { i64 }

@TCA_SFB_MAX = common dso_local global i32 0, align 4
@sfb_default_ops = common dso_local global %struct.tc_sfb_qopt zeroinitializer, align 8
@sfb_policy = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TCA_SFB_PARMS = common dso_local global i64 0, align 8
@pfifo_qdisc_ops = common dso_local global i32 0, align 4
@noop_qdisc = common dso_local global %struct.Qdisc zeroinitializer, align 4
@jiffies = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* @sfb_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfb_change(%struct.Qdisc* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.sfb_sched_data*, align 8
  %9 = alloca %struct.Qdisc*, align 8
  %10 = alloca %struct.Qdisc*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.tc_sfb_qopt*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %17 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %18 = call %struct.sfb_sched_data* @qdisc_priv(%struct.Qdisc* %17)
  store %struct.sfb_sched_data* %18, %struct.sfb_sched_data** %8, align 8
  %19 = load i32, i32* @TCA_SFB_MAX, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %11, align 8
  %23 = alloca %struct.nlattr*, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  store %struct.tc_sfb_qopt* @sfb_default_ops, %struct.tc_sfb_qopt** %13, align 8
  %24 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %25 = icmp ne %struct.nlattr* %24, null
  br i1 %25, label %26, label %49

26:                                               ; preds = %3
  %27 = load i32, i32* @TCA_SFB_MAX, align 4
  %28 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %29 = load i32, i32* @sfb_policy, align 4
  %30 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %23, i32 %27, %struct.nlattr* %28, i32 %29, i32* null)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %160

36:                                               ; preds = %26
  %37 = load i64, i64* @TCA_SFB_PARMS, align 8
  %38 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %37
  %39 = load %struct.nlattr*, %struct.nlattr** %38, align 8
  %40 = icmp eq %struct.nlattr* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %160

44:                                               ; preds = %36
  %45 = load i64, i64* @TCA_SFB_PARMS, align 8
  %46 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %45
  %47 = load %struct.nlattr*, %struct.nlattr** %46, align 8
  %48 = call %struct.tc_sfb_qopt* @nla_data(%struct.nlattr* %47)
  store %struct.tc_sfb_qopt* %48, %struct.tc_sfb_qopt** %13, align 8
  br label %49

49:                                               ; preds = %44, %3
  %50 = load %struct.tc_sfb_qopt*, %struct.tc_sfb_qopt** %13, align 8
  %51 = getelementptr inbounds %struct.tc_sfb_qopt, %struct.tc_sfb_qopt* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %14, align 8
  %53 = load i64, i64* %14, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %57 = call %struct.TYPE_2__* @qdisc_dev(%struct.Qdisc* %56)
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %14, align 8
  br label %60

60:                                               ; preds = %55, %49
  %61 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %62 = load i64, i64* %14, align 8
  %63 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %64 = call %struct.Qdisc* @fifo_create_dflt(%struct.Qdisc* %61, i32* @pfifo_qdisc_ops, i64 %62, %struct.netlink_ext_ack* %63)
  store %struct.Qdisc* %64, %struct.Qdisc** %9, align 8
  %65 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %66 = call i64 @IS_ERR(%struct.Qdisc* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %70 = call i32 @PTR_ERR(%struct.Qdisc* %69)
  store i32 %70, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %160

71:                                               ; preds = %60
  %72 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %73 = icmp ne %struct.Qdisc* %72, @noop_qdisc
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %76 = call i32 @qdisc_hash_add(%struct.Qdisc* %75, i32 1)
  br label %77

77:                                               ; preds = %74, %71
  %78 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %79 = call i32 @sch_tree_lock(%struct.Qdisc* %78)
  %80 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %81 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %80, i32 0, i32 14
  %82 = load %struct.Qdisc*, %struct.Qdisc** %81, align 8
  %83 = call i32 @qdisc_purge_queue(%struct.Qdisc* %82)
  %84 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %85 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %84, i32 0, i32 14
  %86 = load %struct.Qdisc*, %struct.Qdisc** %85, align 8
  store %struct.Qdisc* %86, %struct.Qdisc** %10, align 8
  %87 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %88 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %89 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %88, i32 0, i32 14
  store %struct.Qdisc* %87, %struct.Qdisc** %89, align 8
  %90 = load %struct.tc_sfb_qopt*, %struct.tc_sfb_qopt** %13, align 8
  %91 = getelementptr inbounds %struct.tc_sfb_qopt, %struct.tc_sfb_qopt* %90, i32 0, i32 8
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @msecs_to_jiffies(i32 %92)
  %94 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %95 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %94, i32 0, i32 13
  store i8* %93, i8** %95, align 8
  %96 = load %struct.tc_sfb_qopt*, %struct.tc_sfb_qopt** %13, align 8
  %97 = getelementptr inbounds %struct.tc_sfb_qopt, %struct.tc_sfb_qopt* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 8
  %99 = call i8* @msecs_to_jiffies(i32 %98)
  %100 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %101 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %100, i32 0, i32 12
  store i8* %99, i8** %101, align 8
  %102 = load i8*, i8** @jiffies, align 8
  %103 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %104 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %103, i32 0, i32 11
  store i8* %102, i8** %104, align 8
  %105 = load i64, i64* %14, align 8
  %106 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %107 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %106, i32 0, i32 10
  store i64 %105, i64* %107, align 8
  %108 = load %struct.tc_sfb_qopt*, %struct.tc_sfb_qopt** %13, align 8
  %109 = getelementptr inbounds %struct.tc_sfb_qopt, %struct.tc_sfb_qopt* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %112 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %111, i32 0, i32 9
  store i32 %110, i32* %112, align 8
  %113 = load %struct.tc_sfb_qopt*, %struct.tc_sfb_qopt** %13, align 8
  %114 = getelementptr inbounds %struct.tc_sfb_qopt, %struct.tc_sfb_qopt* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %117 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %116, i32 0, i32 8
  store i32 %115, i32* %117, align 4
  %118 = load %struct.tc_sfb_qopt*, %struct.tc_sfb_qopt** %13, align 8
  %119 = getelementptr inbounds %struct.tc_sfb_qopt, %struct.tc_sfb_qopt* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %122 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %121, i32 0, i32 7
  store i32 %120, i32* %122, align 8
  %123 = load %struct.tc_sfb_qopt*, %struct.tc_sfb_qopt** %13, align 8
  %124 = getelementptr inbounds %struct.tc_sfb_qopt, %struct.tc_sfb_qopt* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %127 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %126, i32 0, i32 6
  store i32 %125, i32* %127, align 4
  %128 = load %struct.tc_sfb_qopt*, %struct.tc_sfb_qopt** %13, align 8
  %129 = getelementptr inbounds %struct.tc_sfb_qopt, %struct.tc_sfb_qopt* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %132 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %131, i32 0, i32 5
  store i32 %130, i32* %132, align 8
  %133 = load %struct.tc_sfb_qopt*, %struct.tc_sfb_qopt** %13, align 8
  %134 = getelementptr inbounds %struct.tc_sfb_qopt, %struct.tc_sfb_qopt* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %137 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 4
  %138 = load %struct.tc_sfb_qopt*, %struct.tc_sfb_qopt** %13, align 8
  %139 = getelementptr inbounds %struct.tc_sfb_qopt, %struct.tc_sfb_qopt* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %142 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 8
  %143 = load i8*, i8** @jiffies, align 8
  %144 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %145 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %144, i32 0, i32 2
  store i8* %143, i8** %145, align 8
  %146 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %147 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %146, i32 0, i32 1
  store i64 0, i64* %147, align 8
  %148 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %149 = getelementptr inbounds %struct.sfb_sched_data, %struct.sfb_sched_data* %148, i32 0, i32 0
  store i32 0, i32* %149, align 8
  %150 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %151 = call i32 @sfb_zero_all_buckets(%struct.sfb_sched_data* %150)
  %152 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %153 = call i32 @sfb_init_perturbation(i32 0, %struct.sfb_sched_data* %152)
  %154 = load %struct.sfb_sched_data*, %struct.sfb_sched_data** %8, align 8
  %155 = call i32 @sfb_init_perturbation(i32 1, %struct.sfb_sched_data* %154)
  %156 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %157 = call i32 @sch_tree_unlock(%struct.Qdisc* %156)
  %158 = load %struct.Qdisc*, %struct.Qdisc** %10, align 8
  %159 = call i32 @qdisc_put(%struct.Qdisc* %158)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %160

160:                                              ; preds = %77, %68, %41, %33
  %161 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %161)
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local %struct.sfb_sched_data* @qdisc_priv(%struct.Qdisc*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #1

declare dso_local %struct.tc_sfb_qopt* @nla_data(%struct.nlattr*) #1

declare dso_local %struct.TYPE_2__* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local %struct.Qdisc* @fifo_create_dflt(%struct.Qdisc*, i32*, i64, %struct.netlink_ext_ack*) #1

declare dso_local i64 @IS_ERR(%struct.Qdisc*) #1

declare dso_local i32 @PTR_ERR(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_hash_add(%struct.Qdisc*, i32) #1

declare dso_local i32 @sch_tree_lock(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_purge_queue(%struct.Qdisc*) #1

declare dso_local i8* @msecs_to_jiffies(i32) #1

declare dso_local i32 @sfb_zero_all_buckets(%struct.sfb_sched_data*) #1

declare dso_local i32 @sfb_init_perturbation(i32, %struct.sfb_sched_data*) #1

declare dso_local i32 @sch_tree_unlock(%struct.Qdisc*) #1

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
