; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_region_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_region_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_region = type { i32, i32, %struct.devlink* }
%struct.devlink = type { i32 }
%struct.devlink_snapshot = type { i32 }
%struct.sk_buff = type { i32 }

@DEVLINK_CMD_REGION_NEW = common dso_local global i32 0, align 4
@DEVLINK_CMD_REGION_DEL = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@devlink_nl_family = common dso_local global i32 0, align 4
@DEVLINK_ATTR_REGION_NAME = common dso_local global i32 0, align 4
@DEVLINK_ATTR_REGION_SNAPSHOT_ID = common dso_local global i32 0, align 4
@DEVLINK_ATTR_REGION_SIZE = common dso_local global i32 0, align 4
@DEVLINK_ATTR_PAD = common dso_local global i32 0, align 4
@DEVLINK_MCGRP_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.devlink_region*, %struct.devlink_snapshot*, i32)* @devlink_nl_region_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @devlink_nl_region_notify(%struct.devlink_region* %0, %struct.devlink_snapshot* %1, i32 %2) #0 {
  %4 = alloca %struct.devlink_region*, align 8
  %5 = alloca %struct.devlink_snapshot*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.devlink*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.devlink_region* %0, %struct.devlink_region** %4, align 8
  store %struct.devlink_snapshot* %1, %struct.devlink_snapshot** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.devlink_region*, %struct.devlink_region** %4, align 8
  %12 = getelementptr inbounds %struct.devlink_region, %struct.devlink_region* %11, i32 0, i32 2
  %13 = load %struct.devlink*, %struct.devlink** %12, align 8
  store %struct.devlink* %13, %struct.devlink** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @DEVLINK_CMD_REGION_NEW, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @DEVLINK_CMD_REGION_DEL, align 4
  %20 = icmp ne i32 %18, %19
  br label %21

21:                                               ; preds = %17, %3
  %22 = phi i1 [ false, %3 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.sk_buff* @nlmsg_new(i32 %25, i32 %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %8, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  br label %98

31:                                               ; preds = %21
  %32 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i8* @genlmsg_put(%struct.sk_buff* %32, i32 0, i32 0, i32* @devlink_nl_family, i32 0, i32 %33)
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  br label %95

38:                                               ; preds = %31
  %39 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %40 = load %struct.devlink*, %struct.devlink** %7, align 8
  %41 = call i32 @devlink_nl_put_handle(%struct.sk_buff* %39, %struct.devlink* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %91

45:                                               ; preds = %38
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = load i32, i32* @DEVLINK_ATTR_REGION_NAME, align 4
  %48 = load %struct.devlink_region*, %struct.devlink_region** %4, align 8
  %49 = getelementptr inbounds %struct.devlink_region, %struct.devlink_region* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @nla_put_string(%struct.sk_buff* %46, i32 %47, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %91

55:                                               ; preds = %45
  %56 = load %struct.devlink_snapshot*, %struct.devlink_snapshot** %5, align 8
  %57 = icmp ne %struct.devlink_snapshot* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %60 = load i32, i32* @DEVLINK_ATTR_REGION_SNAPSHOT_ID, align 4
  %61 = load %struct.devlink_snapshot*, %struct.devlink_snapshot** %5, align 8
  %62 = getelementptr inbounds %struct.devlink_snapshot, %struct.devlink_snapshot* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @nla_put_u32(%struct.sk_buff* %59, i32 %60, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %91

68:                                               ; preds = %58
  br label %81

69:                                               ; preds = %55
  %70 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %71 = load i32, i32* @DEVLINK_ATTR_REGION_SIZE, align 4
  %72 = load %struct.devlink_region*, %struct.devlink_region** %4, align 8
  %73 = getelementptr inbounds %struct.devlink_region, %struct.devlink_region* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @DEVLINK_ATTR_PAD, align 4
  %76 = call i32 @nla_put_u64_64bit(%struct.sk_buff* %70, i32 %71, i32 %74, i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  br label %91

80:                                               ; preds = %69
  br label %81

81:                                               ; preds = %80, %68
  %82 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = call i32 @genlmsg_end(%struct.sk_buff* %82, i8* %83)
  %85 = load %struct.devlink*, %struct.devlink** %7, align 8
  %86 = call i32 @devlink_net(%struct.devlink* %85)
  %87 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %88 = load i32, i32* @DEVLINK_MCGRP_CONFIG, align 4
  %89 = load i32, i32* @GFP_KERNEL, align 4
  %90 = call i32 @genlmsg_multicast_netns(i32* @devlink_nl_family, i32 %86, %struct.sk_buff* %87, i32 0, i32 %88, i32 %89)
  br label %98

91:                                               ; preds = %79, %67, %54, %44
  %92 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = call i32 @genlmsg_cancel(%struct.sk_buff* %92, i8* %93)
  br label %95

95:                                               ; preds = %91, %37
  %96 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %97 = call i32 @nlmsg_free(%struct.sk_buff* %96)
  br label %98

98:                                               ; preds = %95, %81, %30
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @devlink_nl_put_handle(%struct.sk_buff*, %struct.devlink*) #1

declare dso_local i32 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_multicast_netns(i32*, i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @devlink_net(%struct.devlink*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
