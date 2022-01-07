; ModuleID = '/home/carl/AnghaBench/linux/net/dcb/extr_dcbnl.c_dcbnl_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/dcb/extr_dcbnl.c_dcbnl_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.dcbnl_rtnl_ops* }
%struct.dcbnl_rtnl_ops = type { i32 }
%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@DCB_CAP_DCBX_VER_IEEE = common dso_local global i32 0, align 4
@RTNLGRP_DCB = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32, i32, i32, i32)* @dcbnl_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcbnl_notify(%struct.net_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.net*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca %struct.nlmsghdr*, align 8
  %17 = alloca %struct.dcbnl_rtnl_ops*, align 8
  %18 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load %struct.net_device*, %struct.net_device** %8, align 8
  %20 = call %struct.net* @dev_net(%struct.net_device* %19)
  store %struct.net* %20, %struct.net** %14, align 8
  %21 = load %struct.net_device*, %struct.net_device** %8, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load %struct.dcbnl_rtnl_ops*, %struct.dcbnl_rtnl_ops** %22, align 8
  store %struct.dcbnl_rtnl_ops* %23, %struct.dcbnl_rtnl_ops** %17, align 8
  %24 = load %struct.dcbnl_rtnl_ops*, %struct.dcbnl_rtnl_ops** %17, align 8
  %25 = icmp ne %struct.dcbnl_rtnl_ops* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %6
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %73

29:                                               ; preds = %6
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call %struct.sk_buff* @dcbnl_newmsg(i32 %30, i32 %31, i32 %32, i32 %33, i32 0, %struct.nlmsghdr** %16)
  store %struct.sk_buff* %34, %struct.sk_buff** %15, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %36 = icmp ne %struct.sk_buff* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* @ENOBUFS, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %73

40:                                               ; preds = %29
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @DCB_CAP_DCBX_VER_IEEE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %46 = load %struct.net_device*, %struct.net_device** %8, align 8
  %47 = call i32 @dcbnl_ieee_fill(%struct.sk_buff* %45, %struct.net_device* %46)
  store i32 %47, i32* %18, align 4
  br label %52

48:                                               ; preds = %40
  %49 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %50 = load %struct.net_device*, %struct.net_device** %8, align 8
  %51 = call i32 @dcbnl_cee_fill(%struct.sk_buff* %49, %struct.net_device* %50)
  store i32 %51, i32* %18, align 4
  br label %52

52:                                               ; preds = %48, %44
  %53 = load i32, i32* %18, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %57 = call i32 @nlmsg_free(%struct.sk_buff* %56)
  %58 = load %struct.net*, %struct.net** %14, align 8
  %59 = load i32, i32* @RTNLGRP_DCB, align 4
  %60 = load i32, i32* %18, align 4
  %61 = call i32 @rtnl_set_sk_err(%struct.net* %58, i32 %59, i32 %60)
  br label %71

62:                                               ; preds = %52
  %63 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %64 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %65 = call i32 @nlmsg_end(%struct.sk_buff* %63, %struct.nlmsghdr* %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %67 = load %struct.net*, %struct.net** %14, align 8
  %68 = load i32, i32* @RTNLGRP_DCB, align 4
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i32 @rtnl_notify(%struct.sk_buff* %66, %struct.net* %67, i32 0, i32 %68, i32* null, i32 %69)
  br label %71

71:                                               ; preds = %62, %55
  %72 = load i32, i32* %18, align 4
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %71, %37, %26
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @dcbnl_newmsg(i32, i32, i32, i32, i32, %struct.nlmsghdr**) #1

declare dso_local i32 @dcbnl_ieee_fill(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @dcbnl_cee_fill(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @rtnl_set_sk_err(%struct.net*, i32, i32) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @rtnl_notify(%struct.sk_buff*, %struct.net*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
