; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_interface.c_xfrmi_changelink.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_interface.c_xfrmi_changelink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.xfrm_if = type { %struct.net_device*, %struct.net* }
%struct.net = type { i32 }
%struct.xfrm_if_parms = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @xfrmi_changelink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrmi_changelink(%struct.net_device* %0, %struct.nlattr** %1, %struct.nlattr** %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.xfrm_if*, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.xfrm_if_parms, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %7, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.xfrm_if* @netdev_priv(%struct.net_device* %13)
  store %struct.xfrm_if* %14, %struct.xfrm_if** %10, align 8
  %15 = load %struct.xfrm_if*, %struct.xfrm_if** %10, align 8
  %16 = getelementptr inbounds %struct.xfrm_if, %struct.xfrm_if* %15, i32 0, i32 1
  %17 = load %struct.net*, %struct.net** %16, align 8
  store %struct.net* %17, %struct.net** %11, align 8
  %18 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %19 = call i32 @xfrmi_netlink_parms(%struct.nlattr** %18, %struct.xfrm_if_parms* %12)
  %20 = load %struct.net*, %struct.net** %11, align 8
  %21 = call %struct.xfrm_if* @xfrmi_locate(%struct.net* %20, %struct.xfrm_if_parms* %12)
  store %struct.xfrm_if* %21, %struct.xfrm_if** %10, align 8
  %22 = load %struct.xfrm_if*, %struct.xfrm_if** %10, align 8
  %23 = icmp ne %struct.xfrm_if* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = call %struct.xfrm_if* @netdev_priv(%struct.net_device* %25)
  store %struct.xfrm_if* %26, %struct.xfrm_if** %10, align 8
  br label %37

27:                                               ; preds = %4
  %28 = load %struct.xfrm_if*, %struct.xfrm_if** %10, align 8
  %29 = getelementptr inbounds %struct.xfrm_if, %struct.xfrm_if* %28, i32 0, i32 0
  %30 = load %struct.net_device*, %struct.net_device** %29, align 8
  %31 = load %struct.net_device*, %struct.net_device** %6, align 8
  %32 = icmp ne %struct.net_device* %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EEXIST, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %40

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %24
  %38 = load %struct.xfrm_if*, %struct.xfrm_if** %10, align 8
  %39 = call i32 @xfrmi_update(%struct.xfrm_if* %38, %struct.xfrm_if_parms* %12)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %37, %33
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local %struct.xfrm_if* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @xfrmi_netlink_parms(%struct.nlattr**, %struct.xfrm_if_parms*) #1

declare dso_local %struct.xfrm_if* @xfrmi_locate(%struct.net*, %struct.xfrm_if_parms*) #1

declare dso_local i32 @xfrmi_update(%struct.xfrm_if*, %struct.xfrm_if_parms*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
