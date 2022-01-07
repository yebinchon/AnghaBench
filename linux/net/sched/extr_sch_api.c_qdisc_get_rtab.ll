; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_qdisc_get_rtab.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_qdisc_get_rtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdisc_rate_table = type { i32, %struct.qdisc_rate_table*, %struct.tc_ratespec, %struct.tc_ratespec }
%struct.tc_ratespec = type { i64, i64, i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@TC_RTAB_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Invalid rate table parameters for searching\00", align 1
@qdisc_rtab_list = common dso_local global %struct.qdisc_rate_table* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@TC_LINKLAYER_UNAWARE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to allocate new qdisc rate table\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.qdisc_rate_table* @qdisc_get_rtab(%struct.tc_ratespec* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.qdisc_rate_table*, align 8
  %5 = alloca %struct.tc_ratespec*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.qdisc_rate_table*, align 8
  store %struct.tc_ratespec* %0, %struct.tc_ratespec** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %9 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %10 = icmp eq %struct.nlattr* %9, null
  br i1 %10, label %26, label %11

11:                                               ; preds = %3
  %12 = load %struct.tc_ratespec*, %struct.tc_ratespec** %5, align 8
  %13 = getelementptr inbounds %struct.tc_ratespec, %struct.tc_ratespec* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %11
  %17 = load %struct.tc_ratespec*, %struct.tc_ratespec** %5, align 8
  %18 = getelementptr inbounds %struct.tc_ratespec, %struct.tc_ratespec* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %23 = call i64 @nla_len(%struct.nlattr* %22)
  %24 = load i64, i64* @TC_RTAB_SIZE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21, %16, %11, %3
  %27 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %28 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %27, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store %struct.qdisc_rate_table* null, %struct.qdisc_rate_table** %4, align 8
  br label %98

29:                                               ; preds = %21
  %30 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** @qdisc_rtab_list, align 8
  store %struct.qdisc_rate_table* %30, %struct.qdisc_rate_table** %8, align 8
  br label %31

31:                                               ; preds = %54, %29
  %32 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %8, align 8
  %33 = icmp ne %struct.qdisc_rate_table* %32, null
  br i1 %33, label %34, label %58

34:                                               ; preds = %31
  %35 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %8, align 8
  %36 = getelementptr inbounds %struct.qdisc_rate_table, %struct.qdisc_rate_table* %35, i32 0, i32 3
  %37 = load %struct.tc_ratespec*, %struct.tc_ratespec** %5, align 8
  %38 = call i32 @memcmp(%struct.tc_ratespec* %36, %struct.tc_ratespec* %37, i32 24)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %34
  %41 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %8, align 8
  %42 = getelementptr inbounds %struct.qdisc_rate_table, %struct.qdisc_rate_table* %41, i32 0, i32 2
  %43 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %44 = call %struct.tc_ratespec* @nla_data(%struct.nlattr* %43)
  %45 = call i32 @memcmp(%struct.tc_ratespec* %42, %struct.tc_ratespec* %44, i32 1024)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %40
  %48 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %8, align 8
  %49 = getelementptr inbounds %struct.qdisc_rate_table, %struct.qdisc_rate_table* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  %52 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %8, align 8
  store %struct.qdisc_rate_table* %52, %struct.qdisc_rate_table** %4, align 8
  br label %98

53:                                               ; preds = %40, %34
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %8, align 8
  %56 = getelementptr inbounds %struct.qdisc_rate_table, %struct.qdisc_rate_table* %55, i32 0, i32 1
  %57 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %56, align 8
  store %struct.qdisc_rate_table* %57, %struct.qdisc_rate_table** %8, align 8
  br label %31

58:                                               ; preds = %31
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call %struct.qdisc_rate_table* @kmalloc(i32 64, i32 %59)
  store %struct.qdisc_rate_table* %60, %struct.qdisc_rate_table** %8, align 8
  %61 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %8, align 8
  %62 = icmp ne %struct.qdisc_rate_table* %61, null
  br i1 %62, label %63, label %93

63:                                               ; preds = %58
  %64 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %8, align 8
  %65 = getelementptr inbounds %struct.qdisc_rate_table, %struct.qdisc_rate_table* %64, i32 0, i32 3
  %66 = load %struct.tc_ratespec*, %struct.tc_ratespec** %5, align 8
  %67 = bitcast %struct.tc_ratespec* %65 to i8*
  %68 = bitcast %struct.tc_ratespec* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %68, i64 24, i1 false)
  %69 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %8, align 8
  %70 = getelementptr inbounds %struct.qdisc_rate_table, %struct.qdisc_rate_table* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %8, align 8
  %72 = getelementptr inbounds %struct.qdisc_rate_table, %struct.qdisc_rate_table* %71, i32 0, i32 2
  %73 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %74 = call %struct.tc_ratespec* @nla_data(%struct.nlattr* %73)
  %75 = call i32 @memcpy(%struct.tc_ratespec* byval(%struct.tc_ratespec) align 8 %72, %struct.tc_ratespec* %74, i32 1024)
  %76 = load %struct.tc_ratespec*, %struct.tc_ratespec** %5, align 8
  %77 = getelementptr inbounds %struct.tc_ratespec, %struct.tc_ratespec* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @TC_LINKLAYER_UNAWARE, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %63
  %82 = load %struct.tc_ratespec*, %struct.tc_ratespec** %5, align 8
  %83 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %8, align 8
  %84 = getelementptr inbounds %struct.qdisc_rate_table, %struct.qdisc_rate_table* %83, i32 0, i32 2
  %85 = call i32 @__detect_linklayer(%struct.tc_ratespec* %82, %struct.tc_ratespec* byval(%struct.tc_ratespec) align 8 %84)
  %86 = load %struct.tc_ratespec*, %struct.tc_ratespec** %5, align 8
  %87 = getelementptr inbounds %struct.tc_ratespec, %struct.tc_ratespec* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %81, %63
  %89 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** @qdisc_rtab_list, align 8
  %90 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %8, align 8
  %91 = getelementptr inbounds %struct.qdisc_rate_table, %struct.qdisc_rate_table* %90, i32 0, i32 1
  store %struct.qdisc_rate_table* %89, %struct.qdisc_rate_table** %91, align 8
  %92 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %8, align 8
  store %struct.qdisc_rate_table* %92, %struct.qdisc_rate_table** @qdisc_rtab_list, align 8
  br label %96

93:                                               ; preds = %58
  %94 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %95 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %94, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %88
  %97 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %8, align 8
  store %struct.qdisc_rate_table* %97, %struct.qdisc_rate_table** %4, align 8
  br label %98

98:                                               ; preds = %96, %47, %26
  %99 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %4, align 8
  ret %struct.qdisc_rate_table* %99
}

declare dso_local i64 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @memcmp(%struct.tc_ratespec*, %struct.tc_ratespec*, i32) #1

declare dso_local %struct.tc_ratespec* @nla_data(%struct.nlattr*) #1

declare dso_local %struct.qdisc_rate_table* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(%struct.tc_ratespec* byval(%struct.tc_ratespec) align 8, %struct.tc_ratespec*, i32) #1

declare dso_local i32 @__detect_linklayer(%struct.tc_ratespec*, %struct.tc_ratespec* byval(%struct.tc_ratespec) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
