; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_gred.c_gred_vq_validate.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_gred.c_gred_vq_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gred_sched = type { i64, i64, i32* }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@TCA_GRED_VQ_MAX = common dso_local global i32 0, align 4
@gred_vq_policy = common dso_local global i32 0, align 4
@TCA_GRED_VQ_DP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Virtual queue with no index specified\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Virtual queue with index out of bounds\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Virtual queue not yet instantiated\00", align 1
@TCA_GRED_VQ_FLAGS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [71 x i8] c"can't change per-virtual queue RED flags when per-Qdisc flags are used\00", align 1
@GRED_VQ_RED_FLAGS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"invalid RED flags specified\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gred_sched*, i64, %struct.nlattr*, %struct.netlink_ext_ack*)* @gred_vq_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gred_vq_validate(%struct.gred_sched* %0, i64 %1, %struct.nlattr* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gred_sched*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.gred_sched* %0, %struct.gred_sched** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.nlattr* %2, %struct.nlattr** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %16 = load i32, i32* @TCA_GRED_VQ_MAX, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca %struct.nlattr*, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load i32, i32* @TCA_GRED_VQ_MAX, align 4
  %22 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %23 = load i32, i32* @gred_vq_policy, align 4
  %24 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %25 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %20, i32 %21, %struct.nlattr* %22, i32 %23, %struct.netlink_ext_ack* %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %110

30:                                               ; preds = %4
  %31 = load i64, i64* @TCA_GRED_VQ_DP, align 8
  %32 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %31
  %33 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %34 = icmp ne %struct.nlattr* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %37 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %110

40:                                               ; preds = %30
  %41 = load i64, i64* @TCA_GRED_VQ_DP, align 8
  %42 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %41
  %43 = load %struct.nlattr*, %struct.nlattr** %42, align 8
  %44 = call i64 @nla_get_u32(%struct.nlattr* %43)
  store i64 %44, i64* %13, align 8
  %45 = load i64, i64* %13, align 8
  %46 = load %struct.gred_sched*, %struct.gred_sched** %6, align 8
  %47 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp uge i64 %45, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %40
  %51 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %52 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %51, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %110

55:                                               ; preds = %40
  %56 = load i64, i64* %13, align 8
  %57 = load i64, i64* %7, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  %60 = load %struct.gred_sched*, %struct.gred_sched** %6, align 8
  %61 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %13, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %59
  %68 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %69 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %110

72:                                               ; preds = %59, %55
  %73 = load i64, i64* @TCA_GRED_VQ_FLAGS, align 8
  %74 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %73
  %75 = load %struct.nlattr*, %struct.nlattr** %74, align 8
  %76 = icmp ne %struct.nlattr* %75, null
  br i1 %76, label %77, label %109

77:                                               ; preds = %72
  %78 = load i64, i64* @TCA_GRED_VQ_FLAGS, align 8
  %79 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %78
  %80 = load %struct.nlattr*, %struct.nlattr** %79, align 8
  %81 = call i64 @nla_get_u32(%struct.nlattr* %80)
  store i64 %81, i64* %15, align 8
  %82 = load %struct.gred_sched*, %struct.gred_sched** %6, align 8
  %83 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %77
  %87 = load %struct.gred_sched*, %struct.gred_sched** %6, align 8
  %88 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %15, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %94 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %93, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0))
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %110

97:                                               ; preds = %86, %77
  %98 = load i64, i64* %15, align 8
  %99 = load i64, i64* @GRED_VQ_RED_FLAGS, align 8
  %100 = xor i64 %99, -1
  %101 = and i64 %98, %100
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %97
  %104 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %105 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %104, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %110

108:                                              ; preds = %97
  br label %109

109:                                              ; preds = %108, %72
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %110

110:                                              ; preds = %109, %103, %92, %67, %50, %35, %28
  %111 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %111)
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, %struct.netlink_ext_ack*) #2

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #2

declare dso_local i64 @nla_get_u32(%struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
