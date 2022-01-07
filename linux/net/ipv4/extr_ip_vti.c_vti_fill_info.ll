; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_vti.c_vti_fill_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_vti.c_vti_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.ip_tunnel = type { i32, %struct.ip_tunnel_parm }
%struct.ip_tunnel_parm = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@IFLA_VTI_LINK = common dso_local global i32 0, align 4
@IFLA_VTI_IKEY = common dso_local global i32 0, align 4
@IFLA_VTI_OKEY = common dso_local global i32 0, align 4
@IFLA_VTI_LOCAL = common dso_local global i32 0, align 4
@IFLA_VTI_REMOTE = common dso_local global i32 0, align 4
@IFLA_VTI_FWMARK = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @vti_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vti_fill_info(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ip_tunnel*, align 8
  %7 = alloca %struct.ip_tunnel_parm*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %8)
  store %struct.ip_tunnel* %9, %struct.ip_tunnel** %6, align 8
  %10 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %11 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %10, i32 0, i32 1
  store %struct.ip_tunnel_parm* %11, %struct.ip_tunnel_parm** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = load i32, i32* @IFLA_VTI_LINK, align 4
  %14 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %15 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @nla_put_u32(%struct.sk_buff* %12, i32 %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %61, label %19

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = load i32, i32* @IFLA_VTI_IKEY, align 4
  %22 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %23 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @nla_put_be32(%struct.sk_buff* %20, i32 %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %61, label %27

27:                                               ; preds = %19
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = load i32, i32* @IFLA_VTI_OKEY, align 4
  %30 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %31 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @nla_put_be32(%struct.sk_buff* %28, i32 %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %61, label %35

35:                                               ; preds = %27
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = load i32, i32* @IFLA_VTI_LOCAL, align 4
  %38 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %39 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @nla_put_in_addr(%struct.sk_buff* %36, i32 %37, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %61, label %44

44:                                               ; preds = %35
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = load i32, i32* @IFLA_VTI_REMOTE, align 4
  %47 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %48 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @nla_put_in_addr(%struct.sk_buff* %45, i32 %46, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %44
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = load i32, i32* @IFLA_VTI_FWMARK, align 4
  %56 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %57 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @nla_put_u32(%struct.sk_buff* %54, i32 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %53, %44, %35, %27, %19, %2
  %62 = load i32, i32* @EMSGSIZE, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %65

64:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %61
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_in_addr(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
