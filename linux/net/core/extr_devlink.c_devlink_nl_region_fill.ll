; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_region_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_region_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.devlink = type { i32 }
%struct.devlink_region = type { i32, i32 }

@devlink_nl_family = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@DEVLINK_ATTR_REGION_NAME = common dso_local global i32 0, align 4
@DEVLINK_ATTR_REGION_SIZE = common dso_local global i32 0, align 4
@DEVLINK_ATTR_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.devlink*, i32, i32, i32, i32, %struct.devlink_region*)* @devlink_nl_region_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_region_fill(%struct.sk_buff* %0, %struct.devlink* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.devlink_region* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.devlink*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.devlink_region*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store %struct.devlink* %1, %struct.devlink** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.devlink_region* %6, %struct.devlink_region** %15, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %14, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i8* @genlmsg_put(%struct.sk_buff* %18, i32 %19, i32 %20, i32* @devlink_nl_family, i32 %21, i32 %22)
  store i8* %23, i8** %16, align 8
  %24 = load i8*, i8** %16, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %7
  %27 = load i32, i32* @EMSGSIZE, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %74

29:                                               ; preds = %7
  %30 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %31 = load %struct.devlink*, %struct.devlink** %10, align 8
  %32 = call i32 @devlink_nl_put_handle(%struct.sk_buff* %30, %struct.devlink* %31)
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %17, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %69

36:                                               ; preds = %29
  %37 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %38 = load i32, i32* @DEVLINK_ATTR_REGION_NAME, align 4
  %39 = load %struct.devlink_region*, %struct.devlink_region** %15, align 8
  %40 = getelementptr inbounds %struct.devlink_region, %struct.devlink_region* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @nla_put_string(%struct.sk_buff* %37, i32 %38, i32 %41)
  store i32 %42, i32* %17, align 4
  %43 = load i32, i32* %17, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %69

46:                                               ; preds = %36
  %47 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %48 = load i32, i32* @DEVLINK_ATTR_REGION_SIZE, align 4
  %49 = load %struct.devlink_region*, %struct.devlink_region** %15, align 8
  %50 = getelementptr inbounds %struct.devlink_region, %struct.devlink_region* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @DEVLINK_ATTR_PAD, align 4
  %53 = call i32 @nla_put_u64_64bit(%struct.sk_buff* %47, i32 %48, i32 %51, i32 %52)
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %17, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %69

57:                                               ; preds = %46
  %58 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %59 = load %struct.devlink*, %struct.devlink** %10, align 8
  %60 = load %struct.devlink_region*, %struct.devlink_region** %15, align 8
  %61 = call i32 @devlink_nl_region_snapshots_id_put(%struct.sk_buff* %58, %struct.devlink* %59, %struct.devlink_region* %60)
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %17, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %69

65:                                               ; preds = %57
  %66 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %67 = load i8*, i8** %16, align 8
  %68 = call i32 @genlmsg_end(%struct.sk_buff* %66, i8* %67)
  store i32 0, i32* %8, align 4
  br label %74

69:                                               ; preds = %64, %56, %45, %35
  %70 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %71 = load i8*, i8** %16, align 8
  %72 = call i32 @genlmsg_cancel(%struct.sk_buff* %70, i8* %71)
  %73 = load i32, i32* %17, align 4
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %69, %65, %26
  %75 = load i32, i32* %8, align 4
  ret i32 %75
}

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @devlink_nl_put_handle(%struct.sk_buff*, %struct.devlink*) #1

declare dso_local i32 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @devlink_nl_region_snapshots_id_put(%struct.sk_buff*, %struct.devlink*, %struct.devlink_region*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
