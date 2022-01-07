; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_tunnel.c___ip_tunnel_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_tunnel.c___ip_tunnel_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.rtnl_link_ops* }
%struct.net = type { i32 }
%struct.rtnl_link_ops = type { i32, i32, i32 }
%struct.ip_tunnel_parm = type { i64* }
%struct.ip_tunnel = type { %struct.net*, %struct.ip_tunnel_parm }

@IFNAMSIZ = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@NET_NAME_UNKNOWN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.net*, %struct.rtnl_link_ops*, %struct.ip_tunnel_parm*)* @__ip_tunnel_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @__ip_tunnel_create(%struct.net* %0, %struct.rtnl_link_ops* %1, %struct.ip_tunnel_parm* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.rtnl_link_ops*, align 8
  %7 = alloca %struct.ip_tunnel_parm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ip_tunnel*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.rtnl_link_ops* %1, %struct.rtnl_link_ops** %6, align 8
  store %struct.ip_tunnel_parm* %2, %struct.ip_tunnel_parm** %7, align 8
  %14 = load i32, i32* @IFNAMSIZ, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load i32, i32* @E2BIG, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %21 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %3
  %27 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %28 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = call i32 @dev_valid_name(i64* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %96

33:                                               ; preds = %26
  %34 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %35 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* @IFNAMSIZ, align 4
  %38 = call i32 @strlcpy(i8* %17, i64* %36, i32 %37)
  br label %54

39:                                               ; preds = %3
  %40 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %6, align 8
  %41 = getelementptr inbounds %struct.rtnl_link_ops, %struct.rtnl_link_ops* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @strlen(i32 %42)
  %44 = load i32, i32* @IFNAMSIZ, align 4
  %45 = sub nsw i32 %44, 3
  %46 = icmp sgt i32 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %96

48:                                               ; preds = %39
  %49 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %6, align 8
  %50 = getelementptr inbounds %struct.rtnl_link_ops, %struct.rtnl_link_ops* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @strcpy(i8* %17, i32 %51)
  %53 = call i32 @strcat(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %48, %33
  %55 = call i32 (...) @ASSERT_RTNL()
  %56 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %6, align 8
  %57 = getelementptr inbounds %struct.rtnl_link_ops, %struct.rtnl_link_ops* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @NET_NAME_UNKNOWN, align 4
  %60 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %6, align 8
  %61 = getelementptr inbounds %struct.rtnl_link_ops, %struct.rtnl_link_ops* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.net_device* @alloc_netdev(i32 %58, i8* %17, i32 %59, i32 %62)
  store %struct.net_device* %63, %struct.net_device** %10, align 8
  %64 = load %struct.net_device*, %struct.net_device** %10, align 8
  %65 = icmp ne %struct.net_device* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %54
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %8, align 4
  br label %96

69:                                               ; preds = %54
  %70 = load %struct.net_device*, %struct.net_device** %10, align 8
  %71 = load %struct.net*, %struct.net** %5, align 8
  %72 = call i32 @dev_net_set(%struct.net_device* %70, %struct.net* %71)
  %73 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %6, align 8
  %74 = load %struct.net_device*, %struct.net_device** %10, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 0
  store %struct.rtnl_link_ops* %73, %struct.rtnl_link_ops** %75, align 8
  %76 = load %struct.net_device*, %struct.net_device** %10, align 8
  %77 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %76)
  store %struct.ip_tunnel* %77, %struct.ip_tunnel** %9, align 8
  %78 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %79 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %78, i32 0, i32 1
  %80 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %81 = bitcast %struct.ip_tunnel_parm* %79 to i8*
  %82 = bitcast %struct.ip_tunnel_parm* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 %82, i64 8, i1 false)
  %83 = load %struct.net*, %struct.net** %5, align 8
  %84 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %85 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %84, i32 0, i32 0
  store %struct.net* %83, %struct.net** %85, align 8
  %86 = load %struct.net_device*, %struct.net_device** %10, align 8
  %87 = call i32 @register_netdevice(%struct.net_device* %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %69
  br label %93

91:                                               ; preds = %69
  %92 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %92, %struct.net_device** %4, align 8
  store i32 1, i32* %13, align 4
  br label %99

93:                                               ; preds = %90
  %94 = load %struct.net_device*, %struct.net_device** %10, align 8
  %95 = call i32 @free_netdev(%struct.net_device* %94)
  br label %96

96:                                               ; preds = %93, %66, %47, %32
  %97 = load i32, i32* %8, align 4
  %98 = call %struct.net_device* @ERR_PTR(i32 %97)
  store %struct.net_device* %98, %struct.net_device** %4, align 8
  store i32 1, i32* %13, align 4
  br label %99

99:                                               ; preds = %96, %91
  %100 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load %struct.net_device*, %struct.net_device** %4, align 8
  ret %struct.net_device* %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dev_valid_name(i64*) #2

declare dso_local i32 @strlcpy(i8*, i64*, i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @strcpy(i8*, i32) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @ASSERT_RTNL(...) #2

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32, i32) #2

declare dso_local i32 @dev_net_set(%struct.net_device*, %struct.net*) #2

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @register_netdevice(%struct.net_device*) #2

declare dso_local i32 @free_netdev(%struct.net_device*) #2

declare dso_local %struct.net_device* @ERR_PTR(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
