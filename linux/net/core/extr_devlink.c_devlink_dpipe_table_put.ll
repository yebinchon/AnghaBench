; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_dpipe_table_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_dpipe_table_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.devlink_dpipe_table = type { i32, i32, i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)* }
%struct.nlattr = type { i32 }

@DEVLINK_ATTR_DPIPE_TABLE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@DEVLINK_ATTR_DPIPE_TABLE_NAME = common dso_local global i32 0, align 4
@DEVLINK_ATTR_DPIPE_TABLE_SIZE = common dso_local global i32 0, align 4
@DEVLINK_ATTR_PAD = common dso_local global i32 0, align 4
@DEVLINK_ATTR_DPIPE_TABLE_COUNTERS_ENABLED = common dso_local global i32 0, align 4
@DEVLINK_ATTR_DPIPE_TABLE_RESOURCE_ID = common dso_local global i32 0, align 4
@DEVLINK_ATTR_DPIPE_TABLE_RESOURCE_UNITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.devlink_dpipe_table*)* @devlink_dpipe_table_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_dpipe_table_put(%struct.sk_buff* %0, %struct.devlink_dpipe_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.devlink_dpipe_table*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.devlink_dpipe_table* %1, %struct.devlink_dpipe_table** %5, align 8
  %8 = load %struct.devlink_dpipe_table*, %struct.devlink_dpipe_table** %5, align 8
  %9 = getelementptr inbounds %struct.devlink_dpipe_table, %struct.devlink_dpipe_table* %8, i32 0, i32 6
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (i32)*, i32 (i32)** %11, align 8
  %13 = load %struct.devlink_dpipe_table*, %struct.devlink_dpipe_table** %5, align 8
  %14 = getelementptr inbounds %struct.devlink_dpipe_table, %struct.devlink_dpipe_table* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = call i32 %12(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = load i32, i32* @DEVLINK_ATTR_DPIPE_TABLE, align 4
  %19 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %17, i32 %18)
  store %struct.nlattr* %19, %struct.nlattr** %6, align 8
  %20 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %21 = icmp ne %struct.nlattr* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EMSGSIZE, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %97

25:                                               ; preds = %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = load i32, i32* @DEVLINK_ATTR_DPIPE_TABLE_NAME, align 4
  %28 = load %struct.devlink_dpipe_table*, %struct.devlink_dpipe_table** %5, align 8
  %29 = getelementptr inbounds %struct.devlink_dpipe_table, %struct.devlink_dpipe_table* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @nla_put_string(%struct.sk_buff* %26, i32 %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %25
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = load i32, i32* @DEVLINK_ATTR_DPIPE_TABLE_SIZE, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @DEVLINK_ATTR_PAD, align 4
  %38 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %34, i32 %35, i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33, %25
  br label %91

41:                                               ; preds = %33
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = load i32, i32* @DEVLINK_ATTR_DPIPE_TABLE_COUNTERS_ENABLED, align 4
  %44 = load %struct.devlink_dpipe_table*, %struct.devlink_dpipe_table** %5, align 8
  %45 = getelementptr inbounds %struct.devlink_dpipe_table, %struct.devlink_dpipe_table* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @nla_put_u8(%struct.sk_buff* %42, i32 %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %91

50:                                               ; preds = %41
  %51 = load %struct.devlink_dpipe_table*, %struct.devlink_dpipe_table** %5, align 8
  %52 = getelementptr inbounds %struct.devlink_dpipe_table, %struct.devlink_dpipe_table* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %50
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = load i32, i32* @DEVLINK_ATTR_DPIPE_TABLE_RESOURCE_ID, align 4
  %58 = load %struct.devlink_dpipe_table*, %struct.devlink_dpipe_table** %5, align 8
  %59 = getelementptr inbounds %struct.devlink_dpipe_table, %struct.devlink_dpipe_table* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @DEVLINK_ATTR_PAD, align 4
  %62 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %56, i32 %57, i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %55
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = load i32, i32* @DEVLINK_ATTR_DPIPE_TABLE_RESOURCE_UNITS, align 4
  %67 = load %struct.devlink_dpipe_table*, %struct.devlink_dpipe_table** %5, align 8
  %68 = getelementptr inbounds %struct.devlink_dpipe_table, %struct.devlink_dpipe_table* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @DEVLINK_ATTR_PAD, align 4
  %71 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %65, i32 %66, i32 %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64, %55
  br label %91

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %50
  %76 = load %struct.devlink_dpipe_table*, %struct.devlink_dpipe_table** %5, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = call i64 @devlink_dpipe_matches_put(%struct.devlink_dpipe_table* %76, %struct.sk_buff* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %91

81:                                               ; preds = %75
  %82 = load %struct.devlink_dpipe_table*, %struct.devlink_dpipe_table** %5, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %84 = call i64 @devlink_dpipe_actions_put(%struct.devlink_dpipe_table* %82, %struct.sk_buff* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %91

87:                                               ; preds = %81
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %90 = call i32 @nla_nest_end(%struct.sk_buff* %88, %struct.nlattr* %89)
  store i32 0, i32* %3, align 4
  br label %97

91:                                               ; preds = %86, %80, %73, %49, %40
  %92 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %93 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %94 = call i32 @nla_nest_cancel(%struct.sk_buff* %92, %struct.nlattr* %93)
  %95 = load i32, i32* @EMSGSIZE, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %91, %87, %22
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @devlink_dpipe_matches_put(%struct.devlink_dpipe_table*, %struct.sk_buff*) #1

declare dso_local i64 @devlink_dpipe_actions_put(%struct.devlink_dpipe_table*, %struct.sk_buff*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
