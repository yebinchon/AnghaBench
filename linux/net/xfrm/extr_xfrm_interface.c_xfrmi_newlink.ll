; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_interface.c_xfrmi_newlink.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_interface.c_xfrmi_newlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.xfrm_if_parms = type { i32 }
%struct.xfrm_if = type { %struct.net_device*, %struct.net*, %struct.xfrm_if_parms }

@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @xfrmi_newlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrmi_newlink(%struct.net* %0, %struct.net_device* %1, %struct.nlattr** %2, %struct.nlattr** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.net*, align 8
  %13 = alloca %struct.xfrm_if_parms, align 4
  %14 = alloca %struct.xfrm_if*, align 8
  %15 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %9, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = call %struct.net* @dev_net(%struct.net_device* %16)
  store %struct.net* %17, %struct.net** %12, align 8
  %18 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %19 = call i32 @xfrmi_netlink_parms(%struct.nlattr** %18, %struct.xfrm_if_parms* %13)
  %20 = load %struct.net*, %struct.net** %12, align 8
  %21 = call %struct.xfrm_if* @xfrmi_locate(%struct.net* %20, %struct.xfrm_if_parms* %13)
  store %struct.xfrm_if* %21, %struct.xfrm_if** %14, align 8
  %22 = load %struct.xfrm_if*, %struct.xfrm_if** %14, align 8
  %23 = icmp ne %struct.xfrm_if* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @EEXIST, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %43

27:                                               ; preds = %5
  %28 = load %struct.net_device*, %struct.net_device** %8, align 8
  %29 = call %struct.xfrm_if* @netdev_priv(%struct.net_device* %28)
  store %struct.xfrm_if* %29, %struct.xfrm_if** %14, align 8
  %30 = load %struct.xfrm_if*, %struct.xfrm_if** %14, align 8
  %31 = getelementptr inbounds %struct.xfrm_if, %struct.xfrm_if* %30, i32 0, i32 2
  %32 = bitcast %struct.xfrm_if_parms* %31 to i8*
  %33 = bitcast %struct.xfrm_if_parms* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 4 %33, i64 4, i1 false)
  %34 = load %struct.net*, %struct.net** %12, align 8
  %35 = load %struct.xfrm_if*, %struct.xfrm_if** %14, align 8
  %36 = getelementptr inbounds %struct.xfrm_if, %struct.xfrm_if* %35, i32 0, i32 1
  store %struct.net* %34, %struct.net** %36, align 8
  %37 = load %struct.net_device*, %struct.net_device** %8, align 8
  %38 = load %struct.xfrm_if*, %struct.xfrm_if** %14, align 8
  %39 = getelementptr inbounds %struct.xfrm_if, %struct.xfrm_if* %38, i32 0, i32 0
  store %struct.net_device* %37, %struct.net_device** %39, align 8
  %40 = load %struct.net_device*, %struct.net_device** %8, align 8
  %41 = call i32 @xfrmi_create(%struct.net_device* %40)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %27, %24
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local i32 @xfrmi_netlink_parms(%struct.nlattr**, %struct.xfrm_if_parms*) #1

declare dso_local %struct.xfrm_if* @xfrmi_locate(%struct.net*, %struct.xfrm_if_parms*) #1

declare dso_local %struct.xfrm_if* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @xfrmi_create(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
