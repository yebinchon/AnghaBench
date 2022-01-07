; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipip.c_ipip_tunnel_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipip.c_ipip_tunnel_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ip_tunnel_parm = type { i64, i64, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@SIOCADDTUNNEL = common dso_local global i32 0, align 4
@SIOCCHGTUNNEL = common dso_local global i32 0, align 4
@IP_DF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @ipip_tunnel_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipip_tunnel_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ip_tunnel_parm, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %11 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @copy_from_user(%struct.ip_tunnel_parm* %9, i32 %13, i32 48)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EFAULT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %79

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @SIOCADDTUNNEL, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @SIOCCHGTUNNEL, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %56

27:                                               ; preds = %23, %19
  %28 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %9, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 4
  br i1 %31, label %52, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %9, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ipip_tunnel_ioctl_verify_protocol(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %9, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 5
  br i1 %42, label %52, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %9, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @IP_DF, align 4
  %48 = xor i32 %47, -1
  %49 = call i32 @htons(i32 %48)
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43, %38, %32, %27
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %79

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55, %23
  %57 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %9, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %9, i32 0, i32 3
  store i64 0, i64* %58, align 8
  %59 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %9, i32 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %9, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load %struct.net_device*, %struct.net_device** %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @ip_tunnel_ioctl(%struct.net_device* %61, %struct.ip_tunnel_parm* %9, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %4, align 4
  br label %79

68:                                               ; preds = %56
  %69 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %70 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @copy_to_user(i32 %72, %struct.ip_tunnel_parm* %9, i32 48)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i32, i32* @EFAULT, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %79

78:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %75, %66, %52, %16
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i64 @copy_from_user(%struct.ip_tunnel_parm*, i32, i32) #1

declare dso_local i32 @ipip_tunnel_ioctl_verify_protocol(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ip_tunnel_ioctl(%struct.net_device*, %struct.ip_tunnel_parm*, i32) #1

declare dso_local i64 @copy_to_user(i32, %struct.ip_tunnel_parm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
