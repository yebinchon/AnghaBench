; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_gre.c_ipgre_tunnel_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_gre.c_ipgre_tunnel_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.ifreq = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ip_tunnel_parm = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i32, i32 }
%struct.ip_tunnel = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@SIOCADDTUNNEL = common dso_local global i32 0, align 4
@SIOCCHGTUNNEL = common dso_local global i32 0, align 4
@IPPROTO_GRE = common dso_local global i64 0, align 8
@IP_DF = common dso_local global i32 0, align 4
@GRE_VERSION = common dso_local global i32 0, align 4
@GRE_ROUTING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"erspan\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @ipgre_tunnel_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipgre_tunnel_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ip_tunnel_parm, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ip_tunnel*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %12 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @copy_from_user(%struct.ip_tunnel_parm* %8, i32 %14, i32 32)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EFAULT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %135

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @SIOCADDTUNNEL, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @SIOCCHGTUNNEL, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %68

28:                                               ; preds = %24, %20
  %29 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %8, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 4
  br i1 %32, label %64, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %8, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @IPPROTO_GRE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %64, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %8, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 5
  br i1 %43, label %64, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %8, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IP_DF, align 4
  %49 = xor i32 %48, -1
  %50 = call i32 @htons(i32 %49)
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %8, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %8, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %55, %57
  %59 = load i32, i32* @GRE_VERSION, align 4
  %60 = load i32, i32* @GRE_ROUTING, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %53, %44, %39, %33, %28
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %135

67:                                               ; preds = %53
  br label %68

68:                                               ; preds = %67, %24
  %69 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %8, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i8* @gre_flags_to_tnl_flags(i32 %70)
  %72 = ptrtoint i8* %71 to i32
  %73 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %8, i32 0, i32 0
  store i32 %72, i32* %73, align 8
  %74 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %8, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @gre_flags_to_tnl_flags(i32 %75)
  %77 = ptrtoint i8* %76 to i32
  %78 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %8, i32 0, i32 1
  store i32 %77, i32* %78, align 4
  %79 = load %struct.net_device*, %struct.net_device** %5, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @ip_tunnel_ioctl(%struct.net_device* %79, %struct.ip_tunnel_parm* %8, i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %68
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %4, align 4
  br label %135

86:                                               ; preds = %68
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @SIOCCHGTUNNEL, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %114

90:                                               ; preds = %86
  %91 = load %struct.net_device*, %struct.net_device** %5, align 8
  %92 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %91)
  store %struct.ip_tunnel* %92, %struct.ip_tunnel** %10, align 8
  %93 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %8, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %96 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 4
  %98 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %8, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %101 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 4
  %103 = load %struct.net_device*, %struct.net_device** %5, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 0
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @strcmp(i32 %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %90
  %111 = load %struct.net_device*, %struct.net_device** %5, align 8
  %112 = call i32 @ipgre_link_update(%struct.net_device* %111, i32 1)
  br label %113

113:                                              ; preds = %110, %90
  br label %114

114:                                              ; preds = %113, %86
  %115 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %8, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i8* @gre_tnl_flags_to_gre_flags(i32 %116)
  %118 = ptrtoint i8* %117 to i32
  %119 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %8, i32 0, i32 0
  store i32 %118, i32* %119, align 8
  %120 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %8, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i8* @gre_tnl_flags_to_gre_flags(i32 %121)
  %123 = ptrtoint i8* %122 to i32
  %124 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %8, i32 0, i32 1
  store i32 %123, i32* %124, align 4
  %125 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %126 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @copy_to_user(i32 %128, %struct.ip_tunnel_parm* %8, i32 32)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %114
  %132 = load i32, i32* @EFAULT, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %4, align 4
  br label %135

134:                                              ; preds = %114
  store i32 0, i32* %4, align 4
  br label %135

135:                                              ; preds = %134, %131, %84, %64, %17
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i64 @copy_from_user(%struct.ip_tunnel_parm*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i8* @gre_flags_to_tnl_flags(i32) #1

declare dso_local i32 @ip_tunnel_ioctl(%struct.net_device*, %struct.ip_tunnel_parm*, i32) #1

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @ipgre_link_update(%struct.net_device*, i32) #1

declare dso_local i8* @gre_tnl_flags_to_gre_flags(i32) #1

declare dso_local i64 @copy_to_user(i32, %struct.ip_tunnel_parm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
