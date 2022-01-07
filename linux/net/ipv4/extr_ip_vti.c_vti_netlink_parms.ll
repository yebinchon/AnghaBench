; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_vti.c_vti_netlink_parms.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_vti.c_vti_netlink_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.ip_tunnel_parm = type { %struct.TYPE_2__, i8*, i8*, i8*, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i32 }

@IPPROTO_IPIP = common dso_local global i32 0, align 4
@VTI_ISVTI = common dso_local global i32 0, align 4
@IFLA_VTI_LINK = common dso_local global i64 0, align 8
@IFLA_VTI_IKEY = common dso_local global i64 0, align 8
@IFLA_VTI_OKEY = common dso_local global i64 0, align 8
@IFLA_VTI_LOCAL = common dso_local global i64 0, align 8
@IFLA_VTI_REMOTE = common dso_local global i64 0, align 8
@IFLA_VTI_FWMARK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlattr**, %struct.ip_tunnel_parm*, i8**)* @vti_netlink_parms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vti_netlink_parms(%struct.nlattr** %0, %struct.ip_tunnel_parm* %1, i8** %2) #0 {
  %4 = alloca %struct.nlattr**, align 8
  %5 = alloca %struct.ip_tunnel_parm*, align 8
  %6 = alloca i8**, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %4, align 8
  store %struct.ip_tunnel_parm* %1, %struct.ip_tunnel_parm** %5, align 8
  store i8** %2, i8*** %6, align 8
  %7 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %5, align 8
  %8 = call i32 @memset(%struct.ip_tunnel_parm* %7, i32 0, i32 56)
  %9 = load i32, i32* @IPPROTO_IPIP, align 4
  %10 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %5, align 8
  %11 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  store i32 %9, i32* %12, align 8
  %13 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %14 = icmp ne %struct.nlattr** %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %104

16:                                               ; preds = %3
  %17 = load i32, i32* @VTI_ISVTI, align 4
  %18 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %5, align 8
  %19 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 8
  %20 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %21 = load i64, i64* @IFLA_VTI_LINK, align 8
  %22 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %21
  %23 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %24 = icmp ne %struct.nlattr* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %16
  %26 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %27 = load i64, i64* @IFLA_VTI_LINK, align 8
  %28 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %27
  %29 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %30 = call i8* @nla_get_u32(%struct.nlattr* %29)
  %31 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %5, align 8
  %32 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  br label %33

33:                                               ; preds = %25, %16
  %34 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %35 = load i64, i64* @IFLA_VTI_IKEY, align 8
  %36 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %34, i64 %35
  %37 = load %struct.nlattr*, %struct.nlattr** %36, align 8
  %38 = icmp ne %struct.nlattr* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %41 = load i64, i64* @IFLA_VTI_IKEY, align 8
  %42 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %40, i64 %41
  %43 = load %struct.nlattr*, %struct.nlattr** %42, align 8
  %44 = call i8* @nla_get_be32(%struct.nlattr* %43)
  %45 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %5, align 8
  %46 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %39, %33
  %48 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %49 = load i64, i64* @IFLA_VTI_OKEY, align 8
  %50 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %48, i64 %49
  %51 = load %struct.nlattr*, %struct.nlattr** %50, align 8
  %52 = icmp ne %struct.nlattr* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %55 = load i64, i64* @IFLA_VTI_OKEY, align 8
  %56 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %54, i64 %55
  %57 = load %struct.nlattr*, %struct.nlattr** %56, align 8
  %58 = call i8* @nla_get_be32(%struct.nlattr* %57)
  %59 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %5, align 8
  %60 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %53, %47
  %62 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %63 = load i64, i64* @IFLA_VTI_LOCAL, align 8
  %64 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %62, i64 %63
  %65 = load %struct.nlattr*, %struct.nlattr** %64, align 8
  %66 = icmp ne %struct.nlattr* %65, null
  br i1 %66, label %67, label %76

67:                                               ; preds = %61
  %68 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %69 = load i64, i64* @IFLA_VTI_LOCAL, align 8
  %70 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %68, i64 %69
  %71 = load %struct.nlattr*, %struct.nlattr** %70, align 8
  %72 = call i8* @nla_get_in_addr(%struct.nlattr* %71)
  %73 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %5, align 8
  %74 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i8* %72, i8** %75, align 8
  br label %76

76:                                               ; preds = %67, %61
  %77 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %78 = load i64, i64* @IFLA_VTI_REMOTE, align 8
  %79 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %77, i64 %78
  %80 = load %struct.nlattr*, %struct.nlattr** %79, align 8
  %81 = icmp ne %struct.nlattr* %80, null
  br i1 %81, label %82, label %91

82:                                               ; preds = %76
  %83 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %84 = load i64, i64* @IFLA_VTI_REMOTE, align 8
  %85 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %83, i64 %84
  %86 = load %struct.nlattr*, %struct.nlattr** %85, align 8
  %87 = call i8* @nla_get_in_addr(%struct.nlattr* %86)
  %88 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %5, align 8
  %89 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i8* %87, i8** %90, align 8
  br label %91

91:                                               ; preds = %82, %76
  %92 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %93 = load i64, i64* @IFLA_VTI_FWMARK, align 8
  %94 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %92, i64 %93
  %95 = load %struct.nlattr*, %struct.nlattr** %94, align 8
  %96 = icmp ne %struct.nlattr* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %91
  %98 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %99 = load i64, i64* @IFLA_VTI_FWMARK, align 8
  %100 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %98, i64 %99
  %101 = load %struct.nlattr*, %struct.nlattr** %100, align 8
  %102 = call i8* @nla_get_u32(%struct.nlattr* %101)
  %103 = load i8**, i8*** %6, align 8
  store i8* %102, i8** %103, align 8
  br label %104

104:                                              ; preds = %15, %97, %91
  ret void
}

declare dso_local i32 @memset(%struct.ip_tunnel_parm*, i32, i32) #1

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

declare dso_local i8* @nla_get_be32(%struct.nlattr*) #1

declare dso_local i8* @nla_get_in_addr(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
