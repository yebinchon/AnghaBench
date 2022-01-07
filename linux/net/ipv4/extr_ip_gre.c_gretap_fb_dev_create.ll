; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_gre.c_gretap_fb_dev_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_gre.c_gretap_fb_dev_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net = type { i32 }
%struct.ip_tunnel = type { i32 }
%struct.nlattr = type { i32 }

@IFLA_MAX = common dso_local global i32 0, align 4
@list_kill = common dso_local global i32 0, align 4
@ipgre_tap_ops = common dso_local global i32 0, align 4
@IP_MAX_MTU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @gretap_fb_dev_create(%struct.net* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.ip_tunnel*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @IFLA_MAX, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca %struct.nlattr*, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* @list_kill, align 4
  %20 = call i32 @LIST_HEAD(i32 %19)
  %21 = bitcast %struct.nlattr** %18 to %struct.nlattr***
  %22 = mul nuw i64 8, %16
  %23 = trunc i64 %22 to i32
  %24 = call i32 @memset(%struct.nlattr*** %21, i32 0, i32 %23)
  %25 = load %struct.net*, %struct.net** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.net_device* @rtnl_create_link(%struct.net* %25, i8* %26, i32 %27, i32* @ipgre_tap_ops, %struct.nlattr** %18, i32* null)
  store %struct.net_device* %28, %struct.net_device** %10, align 8
  %29 = load %struct.net_device*, %struct.net_device** %10, align 8
  %30 = call i64 @IS_ERR(%struct.net_device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %33, %struct.net_device** %4, align 8
  store i32 1, i32* %13, align 4
  br label %70

34:                                               ; preds = %3
  %35 = load %struct.net_device*, %struct.net_device** %10, align 8
  %36 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %35)
  store %struct.ip_tunnel* %36, %struct.ip_tunnel** %11, align 8
  %37 = load %struct.ip_tunnel*, %struct.ip_tunnel** %11, align 8
  %38 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load %struct.net*, %struct.net** %5, align 8
  %40 = load %struct.net_device*, %struct.net_device** %10, align 8
  %41 = call i32 @ipgre_newlink(%struct.net* %39, %struct.net_device* %40, %struct.nlattr** %18, i32* null, i32* null)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = load %struct.net_device*, %struct.net_device** %10, align 8
  %46 = call i32 @free_netdev(%struct.net_device* %45)
  %47 = load i32, i32* %12, align 4
  %48 = call %struct.net_device* @ERR_PTR(i32 %47)
  store %struct.net_device* %48, %struct.net_device** %4, align 8
  store i32 1, i32* %13, align 4
  br label %70

49:                                               ; preds = %34
  %50 = load %struct.net_device*, %struct.net_device** %10, align 8
  %51 = load i32, i32* @IP_MAX_MTU, align 4
  %52 = call i32 @__ip_tunnel_change_mtu(%struct.net_device* %50, i32 %51, i32 0)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %64

56:                                               ; preds = %49
  %57 = load %struct.net_device*, %struct.net_device** %10, align 8
  %58 = call i32 @rtnl_configure_link(%struct.net_device* %57, i32* null)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %64

62:                                               ; preds = %56
  %63 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %63, %struct.net_device** %4, align 8
  store i32 1, i32* %13, align 4
  br label %70

64:                                               ; preds = %61, %55
  %65 = load %struct.net_device*, %struct.net_device** %10, align 8
  %66 = call i32 @ip_tunnel_dellink(%struct.net_device* %65, i32* @list_kill)
  %67 = call i32 @unregister_netdevice_many(i32* @list_kill)
  %68 = load i32, i32* %12, align 4
  %69 = call %struct.net_device* @ERR_PTR(i32 %68)
  store %struct.net_device* %69, %struct.net_device** %4, align 8
  store i32 1, i32* %13, align 4
  br label %70

70:                                               ; preds = %64, %62, %44, %32
  %71 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load %struct.net_device*, %struct.net_device** %4, align 8
  ret %struct.net_device* %72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LIST_HEAD(i32) #2

declare dso_local i32 @memset(%struct.nlattr***, i32, i32) #2

declare dso_local %struct.net_device* @rtnl_create_link(%struct.net*, i8*, i32, i32*, %struct.nlattr**, i32*) #2

declare dso_local i64 @IS_ERR(%struct.net_device*) #2

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #2

declare dso_local i32 @ipgre_newlink(%struct.net*, %struct.net_device*, %struct.nlattr**, i32*, i32*) #2

declare dso_local i32 @free_netdev(%struct.net_device*) #2

declare dso_local %struct.net_device* @ERR_PTR(i32) #2

declare dso_local i32 @__ip_tunnel_change_mtu(%struct.net_device*, i32, i32) #2

declare dso_local i32 @rtnl_configure_link(%struct.net_device*, i32*) #2

declare dso_local i32 @ip_tunnel_dellink(%struct.net_device*, i32*) #2

declare dso_local i32 @unregister_netdevice_many(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
