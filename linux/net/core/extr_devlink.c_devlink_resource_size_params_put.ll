; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_resource_size_params_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_resource_size_params_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_resource = type { %struct.devlink_resource_size_params }
%struct.devlink_resource_size_params = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@DEVLINK_ATTR_RESOURCE_SIZE_GRAN = common dso_local global i32 0, align 4
@DEVLINK_ATTR_PAD = common dso_local global i32 0, align 4
@DEVLINK_ATTR_RESOURCE_SIZE_MAX = common dso_local global i32 0, align 4
@DEVLINK_ATTR_RESOURCE_SIZE_MIN = common dso_local global i32 0, align 4
@DEVLINK_ATTR_RESOURCE_UNIT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_resource*, %struct.sk_buff*)* @devlink_resource_size_params_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_resource_size_params_put(%struct.devlink_resource* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.devlink_resource*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.devlink_resource_size_params*, align 8
  store %struct.devlink_resource* %0, %struct.devlink_resource** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.devlink_resource*, %struct.devlink_resource** %4, align 8
  %8 = getelementptr inbounds %struct.devlink_resource, %struct.devlink_resource* %7, i32 0, i32 0
  store %struct.devlink_resource_size_params* %8, %struct.devlink_resource_size_params** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = load i32, i32* @DEVLINK_ATTR_RESOURCE_SIZE_GRAN, align 4
  %11 = load %struct.devlink_resource_size_params*, %struct.devlink_resource_size_params** %6, align 8
  %12 = getelementptr inbounds %struct.devlink_resource_size_params, %struct.devlink_resource_size_params* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @DEVLINK_ATTR_PAD, align 4
  %15 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %9, i32 %10, i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %43, label %17

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = load i32, i32* @DEVLINK_ATTR_RESOURCE_SIZE_MAX, align 4
  %20 = load %struct.devlink_resource_size_params*, %struct.devlink_resource_size_params** %6, align 8
  %21 = getelementptr inbounds %struct.devlink_resource_size_params, %struct.devlink_resource_size_params* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DEVLINK_ATTR_PAD, align 4
  %24 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %18, i32 %19, i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %17
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = load i32, i32* @DEVLINK_ATTR_RESOURCE_SIZE_MIN, align 4
  %29 = load %struct.devlink_resource_size_params*, %struct.devlink_resource_size_params** %6, align 8
  %30 = getelementptr inbounds %struct.devlink_resource_size_params, %struct.devlink_resource_size_params* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DEVLINK_ATTR_PAD, align 4
  %33 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %27, i32 %28, i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %26
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = load i32, i32* @DEVLINK_ATTR_RESOURCE_UNIT, align 4
  %38 = load %struct.devlink_resource_size_params*, %struct.devlink_resource_size_params** %6, align 8
  %39 = getelementptr inbounds %struct.devlink_resource_size_params, %struct.devlink_resource_size_params* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @nla_put_u8(%struct.sk_buff* %36, i32 %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35, %26, %17, %2
  %44 = load i32, i32* @EMSGSIZE, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %47

46:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %43
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
