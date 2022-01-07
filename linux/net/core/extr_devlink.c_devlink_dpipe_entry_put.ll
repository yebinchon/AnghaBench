; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_dpipe_entry_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_dpipe_entry_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.devlink_dpipe_entry = type { i32, i32, i32, i32, i32, i64, i32 }
%struct.nlattr = type { i32 }

@DEVLINK_ATTR_DPIPE_ENTRY = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@DEVLINK_ATTR_DPIPE_ENTRY_INDEX = common dso_local global i32 0, align 4
@DEVLINK_ATTR_PAD = common dso_local global i32 0, align 4
@DEVLINK_ATTR_DPIPE_ENTRY_COUNTER = common dso_local global i32 0, align 4
@DEVLINK_ATTR_DPIPE_ENTRY_MATCH_VALUES = common dso_local global i32 0, align 4
@DEVLINK_ATTR_DPIPE_ENTRY_ACTION_VALUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.devlink_dpipe_entry*)* @devlink_dpipe_entry_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_dpipe_entry_put(%struct.sk_buff* %0, %struct.devlink_dpipe_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.devlink_dpipe_entry*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.devlink_dpipe_entry* %1, %struct.devlink_dpipe_entry** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = load i32, i32* @DEVLINK_ATTR_DPIPE_ENTRY, align 4
  %12 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %10, i32 %11)
  store %struct.nlattr* %12, %struct.nlattr** %6, align 8
  %13 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %14 = icmp ne %struct.nlattr* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EMSGSIZE, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %107

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = load i32, i32* @DEVLINK_ATTR_DPIPE_ENTRY_INDEX, align 4
  %21 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %5, align 8
  %22 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DEVLINK_ATTR_PAD, align 4
  %25 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %19, i32 %20, i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %98

28:                                               ; preds = %18
  %29 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %5, align 8
  %30 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = load i32, i32* @DEVLINK_ATTR_DPIPE_ENTRY_COUNTER, align 4
  %36 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %5, align 8
  %37 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @DEVLINK_ATTR_PAD, align 4
  %40 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %34, i32 %35, i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %98

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %28
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = load i32, i32* @DEVLINK_ATTR_DPIPE_ENTRY_MATCH_VALUES, align 4
  %47 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %45, i32 %46)
  store %struct.nlattr* %47, %struct.nlattr** %7, align 8
  %48 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %49 = icmp ne %struct.nlattr* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  br label %98

51:                                               ; preds = %44
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %5, align 8
  %54 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %5, align 8
  %57 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @devlink_dpipe_match_values_put(%struct.sk_buff* %52, i32 %55, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %51
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %65 = call i32 @nla_nest_cancel(%struct.sk_buff* %63, %struct.nlattr* %64)
  br label %101

66:                                               ; preds = %51
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %69 = call i32 @nla_nest_end(%struct.sk_buff* %67, %struct.nlattr* %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = load i32, i32* @DEVLINK_ATTR_DPIPE_ENTRY_ACTION_VALUES, align 4
  %72 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %70, i32 %71)
  store %struct.nlattr* %72, %struct.nlattr** %8, align 8
  %73 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %74 = icmp ne %struct.nlattr* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %66
  br label %98

76:                                               ; preds = %66
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %5, align 8
  %79 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.devlink_dpipe_entry*, %struct.devlink_dpipe_entry** %5, align 8
  %82 = getelementptr inbounds %struct.devlink_dpipe_entry, %struct.devlink_dpipe_entry* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @devlink_dpipe_action_values_put(%struct.sk_buff* %77, i32 %80, i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %76
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %90 = call i32 @nla_nest_cancel(%struct.sk_buff* %88, %struct.nlattr* %89)
  br label %102

91:                                               ; preds = %76
  %92 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %93 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %94 = call i32 @nla_nest_end(%struct.sk_buff* %92, %struct.nlattr* %93)
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %97 = call i32 @nla_nest_end(%struct.sk_buff* %95, %struct.nlattr* %96)
  store i32 0, i32* %3, align 4
  br label %107

98:                                               ; preds = %75, %50, %42, %27
  %99 = load i32, i32* @EMSGSIZE, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %98, %62
  br label %102

102:                                              ; preds = %101, %87
  %103 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %104 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %105 = call i32 @nla_nest_cancel(%struct.sk_buff* %103, %struct.nlattr* %104)
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %102, %91, %15
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @devlink_dpipe_match_values_put(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @devlink_dpipe_action_values_put(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
