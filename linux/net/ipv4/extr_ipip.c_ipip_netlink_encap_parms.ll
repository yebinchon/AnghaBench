; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipip.c_ipip_netlink_encap_parms.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipip.c_ipip_netlink_encap_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.ip_tunnel_encap = type { i8*, i8*, i8*, i8* }

@IFLA_IPTUN_ENCAP_TYPE = common dso_local global i64 0, align 8
@IFLA_IPTUN_ENCAP_FLAGS = common dso_local global i64 0, align 8
@IFLA_IPTUN_ENCAP_SPORT = common dso_local global i64 0, align 8
@IFLA_IPTUN_ENCAP_DPORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.ip_tunnel_encap*)* @ipip_netlink_encap_parms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipip_netlink_encap_parms(%struct.nlattr** %0, %struct.ip_tunnel_encap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlattr**, align 8
  %5 = alloca %struct.ip_tunnel_encap*, align 8
  %6 = alloca i32, align 4
  store %struct.nlattr** %0, %struct.nlattr*** %4, align 8
  store %struct.ip_tunnel_encap* %1, %struct.ip_tunnel_encap** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.ip_tunnel_encap*, %struct.ip_tunnel_encap** %5, align 8
  %8 = call i32 @memset(%struct.ip_tunnel_encap* %7, i32 0, i32 32)
  %9 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %10 = icmp ne %struct.nlattr** %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %71

13:                                               ; preds = %2
  %14 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %15 = load i64, i64* @IFLA_IPTUN_ENCAP_TYPE, align 8
  %16 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %15
  %17 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %18 = icmp ne %struct.nlattr* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  store i32 1, i32* %6, align 4
  %20 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %21 = load i64, i64* @IFLA_IPTUN_ENCAP_TYPE, align 8
  %22 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %21
  %23 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %24 = call i8* @nla_get_u16(%struct.nlattr* %23)
  %25 = load %struct.ip_tunnel_encap*, %struct.ip_tunnel_encap** %5, align 8
  %26 = getelementptr inbounds %struct.ip_tunnel_encap, %struct.ip_tunnel_encap* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  br label %27

27:                                               ; preds = %19, %13
  %28 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %29 = load i64, i64* @IFLA_IPTUN_ENCAP_FLAGS, align 8
  %30 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %29
  %31 = load %struct.nlattr*, %struct.nlattr** %30, align 8
  %32 = icmp ne %struct.nlattr* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  store i32 1, i32* %6, align 4
  %34 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %35 = load i64, i64* @IFLA_IPTUN_ENCAP_FLAGS, align 8
  %36 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %34, i64 %35
  %37 = load %struct.nlattr*, %struct.nlattr** %36, align 8
  %38 = call i8* @nla_get_u16(%struct.nlattr* %37)
  %39 = load %struct.ip_tunnel_encap*, %struct.ip_tunnel_encap** %5, align 8
  %40 = getelementptr inbounds %struct.ip_tunnel_encap, %struct.ip_tunnel_encap* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  br label %41

41:                                               ; preds = %33, %27
  %42 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %43 = load i64, i64* @IFLA_IPTUN_ENCAP_SPORT, align 8
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %42, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  %46 = icmp ne %struct.nlattr* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  store i32 1, i32* %6, align 4
  %48 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %49 = load i64, i64* @IFLA_IPTUN_ENCAP_SPORT, align 8
  %50 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %48, i64 %49
  %51 = load %struct.nlattr*, %struct.nlattr** %50, align 8
  %52 = call i8* @nla_get_be16(%struct.nlattr* %51)
  %53 = load %struct.ip_tunnel_encap*, %struct.ip_tunnel_encap** %5, align 8
  %54 = getelementptr inbounds %struct.ip_tunnel_encap, %struct.ip_tunnel_encap* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %47, %41
  %56 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %57 = load i64, i64* @IFLA_IPTUN_ENCAP_DPORT, align 8
  %58 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %56, i64 %57
  %59 = load %struct.nlattr*, %struct.nlattr** %58, align 8
  %60 = icmp ne %struct.nlattr* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %55
  store i32 1, i32* %6, align 4
  %62 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %63 = load i64, i64* @IFLA_IPTUN_ENCAP_DPORT, align 8
  %64 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %62, i64 %63
  %65 = load %struct.nlattr*, %struct.nlattr** %64, align 8
  %66 = call i8* @nla_get_be16(%struct.nlattr* %65)
  %67 = load %struct.ip_tunnel_encap*, %struct.ip_tunnel_encap** %5, align 8
  %68 = getelementptr inbounds %struct.ip_tunnel_encap, %struct.ip_tunnel_encap* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  br label %69

69:                                               ; preds = %61, %55
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %11
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @memset(%struct.ip_tunnel_encap*, i32, i32) #1

declare dso_local i8* @nla_get_u16(%struct.nlattr*) #1

declare dso_local i8* @nla_get_be16(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
