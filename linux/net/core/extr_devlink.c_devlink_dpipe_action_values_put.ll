; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_dpipe_action_values_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_dpipe_action_values_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.devlink_dpipe_value = type { i32 }
%struct.nlattr = type { i32 }

@DEVLINK_ATTR_DPIPE_ACTION_VALUE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.devlink_dpipe_value*, i32)* @devlink_dpipe_action_values_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_dpipe_action_values_put(%struct.sk_buff* %0, %struct.devlink_dpipe_value* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.devlink_dpipe_value*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.devlink_dpipe_value* %1, %struct.devlink_dpipe_value** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %38, %3
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %11
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = load i32, i32* @DEVLINK_ATTR_DPIPE_ACTION_VALUE, align 4
  %18 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %16, i32 %17)
  store %struct.nlattr* %18, %struct.nlattr** %8, align 8
  %19 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %20 = icmp ne %struct.nlattr* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @EMSGSIZE, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %47

24:                                               ; preds = %15
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %6, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %26, i64 %28
  %30 = call i32 @devlink_dpipe_action_value_put(%struct.sk_buff* %25, %struct.devlink_dpipe_value* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %42

34:                                               ; preds = %24
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %37 = call i32 @nla_nest_end(%struct.sk_buff* %35, %struct.nlattr* %36)
  br label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %11

41:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %47

42:                                               ; preds = %33
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %45 = call i32 @nla_nest_cancel(%struct.sk_buff* %43, %struct.nlattr* %44)
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %42, %41, %21
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @devlink_dpipe_action_value_put(%struct.sk_buff*, %struct.devlink_dpipe_value*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
