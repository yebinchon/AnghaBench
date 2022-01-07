; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_gred.c_gred_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_gred.c_gred_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.TYPE_3__ = type { i32 }

@TCA_GRED_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@gred_policy = common dso_local global i32 0, align 4
@TCA_GRED_PARMS = common dso_local global i64 0, align 8
@TCA_GRED_STAB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [70 x i8] c"virtual queue configuration can't be specified at initialization time\00", align 1
@TCA_GRED_LIMIT = common dso_local global i64 0, align 8
@TCA_GRED_DPS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* @gred_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gred_init(%struct.Qdisc* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %12 = load i32, i32* @TCA_GRED_MAX, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca %struct.nlattr*, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %18 = icmp ne %struct.nlattr* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %77

22:                                               ; preds = %3
  %23 = load i32, i32* @TCA_GRED_MAX, align 4
  %24 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %25 = load i32, i32* @gred_policy, align 4
  %26 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %27 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %16, i32 %23, %struct.nlattr* %24, i32 %25, %struct.netlink_ext_ack* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %77

32:                                               ; preds = %22
  %33 = load i64, i64* @TCA_GRED_PARMS, align 8
  %34 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %33
  %35 = load %struct.nlattr*, %struct.nlattr** %34, align 8
  %36 = icmp ne %struct.nlattr* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load i64, i64* @TCA_GRED_STAB, align 8
  %39 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %38
  %40 = load %struct.nlattr*, %struct.nlattr** %39, align 8
  %41 = icmp ne %struct.nlattr* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %37, %32
  %43 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %44 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %43, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %77

47:                                               ; preds = %37
  %48 = load i64, i64* @TCA_GRED_LIMIT, align 8
  %49 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %48
  %50 = load %struct.nlattr*, %struct.nlattr** %49, align 8
  %51 = icmp ne %struct.nlattr* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load i64, i64* @TCA_GRED_LIMIT, align 8
  %54 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %53
  %55 = load %struct.nlattr*, %struct.nlattr** %54, align 8
  %56 = call i32 @nla_get_u32(%struct.nlattr* %55)
  %57 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %58 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  br label %70

59:                                               ; preds = %47
  %60 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %61 = call %struct.TYPE_3__* @qdisc_dev(%struct.Qdisc* %60)
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %65 = call %struct.TYPE_3__* @qdisc_dev(%struct.Qdisc* %64)
  %66 = call i32 @psched_mtu(%struct.TYPE_3__* %65)
  %67 = mul nsw i32 %63, %66
  %68 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %69 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %59, %52
  %71 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %72 = load i64, i64* @TCA_GRED_DPS, align 8
  %73 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %72
  %74 = load %struct.nlattr*, %struct.nlattr** %73, align 8
  %75 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %76 = call i32 @gred_change_table_def(%struct.Qdisc* %71, %struct.nlattr* %74, %struct.netlink_ext_ack* %75)
  store i32 %76, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %77

77:                                               ; preds = %70, %42, %30, %19
  %78 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, %struct.netlink_ext_ack*) #2

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

declare dso_local %struct.TYPE_3__* @qdisc_dev(%struct.Qdisc*) #2

declare dso_local i32 @psched_mtu(%struct.TYPE_3__*) #2

declare dso_local i32 @gred_change_table_def(%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
