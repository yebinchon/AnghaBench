; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_dpipe_value_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_dpipe_value_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.devlink_dpipe_value = type { i32, i64, i64, i32, i64 }

@DEVLINK_ATTR_DPIPE_VALUE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@DEVLINK_ATTR_DPIPE_VALUE_MASK = common dso_local global i32 0, align 4
@DEVLINK_ATTR_DPIPE_VALUE_MAPPING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.devlink_dpipe_value*)* @devlink_dpipe_value_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_dpipe_value_put(%struct.sk_buff* %0, %struct.devlink_dpipe_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.devlink_dpipe_value*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.devlink_dpipe_value* %1, %struct.devlink_dpipe_value** %5, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = load i32, i32* @DEVLINK_ATTR_DPIPE_VALUE, align 4
  %8 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %5, align 8
  %9 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %5, align 8
  %12 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @nla_put(%struct.sk_buff* %6, i32 %7, i32 %10, i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EMSGSIZE, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %57

19:                                               ; preds = %2
  %20 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %5, align 8
  %21 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %19
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = load i32, i32* @DEVLINK_ATTR_DPIPE_VALUE_MASK, align 4
  %27 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %5, align 8
  %28 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %5, align 8
  %31 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @nla_put(%struct.sk_buff* %25, i32 %26, i32 %29, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load i32, i32* @EMSGSIZE, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %57

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %38, %19
  %40 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %5, align 8
  %41 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = load i32, i32* @DEVLINK_ATTR_DPIPE_VALUE_MAPPING, align 4
  %47 = load %struct.devlink_dpipe_value*, %struct.devlink_dpipe_value** %5, align 8
  %48 = getelementptr inbounds %struct.devlink_dpipe_value, %struct.devlink_dpipe_value* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @nla_put_u32(%struct.sk_buff* %45, i32 %46, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, i32* @EMSGSIZE, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %57

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %39
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %52, %35, %16
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i64) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
