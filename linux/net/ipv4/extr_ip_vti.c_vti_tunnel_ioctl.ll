; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_vti.c_vti_tunnel_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_vti.c_vti_tunnel_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ip_tunnel_parm = type { i32, i32, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32 }

@EFAULT = common dso_local global i32 0, align 4
@SIOCADDTUNNEL = common dso_local global i32 0, align 4
@SIOCCHGTUNNEL = common dso_local global i32 0, align 4
@IPPROTO_IPIP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GRE_KEY = common dso_local global i32 0, align 4
@VTI_ISVTI = common dso_local global i32 0, align 4
@SIOCDELTUNNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @vti_tunnel_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vti_tunnel_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
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
  br label %97

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @SIOCADDTUNNEL, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @SIOCCHGTUNNEL, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %23, %19
  %28 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %9, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 4
  br i1 %31, label %43, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %9, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @IPPROTO_IPIP, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %9, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 5
  br i1 %42, label %43, label %46

43:                                               ; preds = %38, %32, %27
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %97

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %23
  %48 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %9, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @GRE_KEY, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %9, i32 0, i32 3
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %53, %47
  %56 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %9, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @GRE_KEY, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %9, i32 0, i32 2
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %61, %55
  %64 = load i32, i32* @VTI_ISVTI, align 4
  %65 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %9, i32 0, i32 0
  store i32 %64, i32* %65, align 8
  %66 = load %struct.net_device*, %struct.net_device** %5, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @ip_tunnel_ioctl(%struct.net_device* %66, %struct.ip_tunnel_parm* %9, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %4, align 4
  br label %97

73:                                               ; preds = %63
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @SIOCDELTUNNEL, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = load i32, i32* @GRE_KEY, align 4
  %79 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %9, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %78
  store i32 %81, i32* %79, align 8
  %82 = load i32, i32* @GRE_KEY, align 4
  %83 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %9, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %82
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %77, %73
  %87 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %88 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @copy_to_user(i32 %90, %struct.ip_tunnel_parm* %9, i32 48)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load i32, i32* @EFAULT, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %97

96:                                               ; preds = %86
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %93, %71, %43, %16
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i64 @copy_from_user(%struct.ip_tunnel_parm*, i32, i32) #1

declare dso_local i32 @ip_tunnel_ioctl(%struct.net_device*, %struct.ip_tunnel_parm*, i32) #1

declare dso_local i64 @copy_to_user(i32, %struct.ip_tunnel_parm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
