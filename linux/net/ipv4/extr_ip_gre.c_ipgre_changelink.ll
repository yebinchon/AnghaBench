; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_gre.c_ipgre_changelink.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_gre.c_ipgre_changelink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.ip_tunnel = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ip_tunnel_encap = type { i32 }
%struct.ip_tunnel_parm = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"erspan\00", align 1
@IFLA_MTU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @ipgre_changelink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipgre_changelink(%struct.net_device* %0, %struct.nlattr** %1, %struct.nlattr** %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.ip_tunnel*, align 8
  %11 = alloca %struct.ip_tunnel_encap, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ip_tunnel_parm, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %7, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %15)
  store %struct.ip_tunnel* %16, %struct.ip_tunnel** %10, align 8
  %17 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %18 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %12, align 4
  %20 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %21 = call i64 @ipgre_netlink_encap_parms(%struct.nlattr** %20, %struct.ip_tunnel_encap* %11)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %4
  %24 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %25 = call i32 @ip_tunnel_encap_setup(%struct.ip_tunnel* %24, %struct.ip_tunnel_encap* %11)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %5, align 4
  br label %78

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %4
  %32 = load %struct.net_device*, %struct.net_device** %6, align 8
  %33 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %34 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %35 = call i32 @ipgre_netlink_parms(%struct.net_device* %32, %struct.nlattr** %33, %struct.nlattr** %34, %struct.ip_tunnel_parm* %13, i32* %12)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %14, align 4
  store i32 %39, i32* %5, align 4
  br label %78

40:                                               ; preds = %31
  %41 = load %struct.net_device*, %struct.net_device** %6, align 8
  %42 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @ip_tunnel_changelink(%struct.net_device* %41, %struct.nlattr** %42, %struct.ip_tunnel_parm* %13, i32 %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %5, align 4
  br label %78

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %13, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %53 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %13, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %58 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  %60 = load %struct.net_device*, %struct.net_device** %6, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @strcmp(i32 %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %49
  %68 = load %struct.net_device*, %struct.net_device** %6, align 8
  %69 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %70 = load i64, i64* @IFLA_MTU, align 8
  %71 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %69, i64 %70
  %72 = load %struct.nlattr*, %struct.nlattr** %71, align 8
  %73 = icmp ne %struct.nlattr* %72, null
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i32 @ipgre_link_update(%struct.net_device* %68, i32 %75)
  br label %77

77:                                               ; preds = %67, %49
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %77, %47, %38, %28
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @ipgre_netlink_encap_parms(%struct.nlattr**, %struct.ip_tunnel_encap*) #1

declare dso_local i32 @ip_tunnel_encap_setup(%struct.ip_tunnel*, %struct.ip_tunnel_encap*) #1

declare dso_local i32 @ipgre_netlink_parms(%struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.ip_tunnel_parm*, i32*) #1

declare dso_local i32 @ip_tunnel_changelink(%struct.net_device*, %struct.nlattr**, %struct.ip_tunnel_parm*, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @ipgre_link_update(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
