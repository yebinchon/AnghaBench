; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_service_find.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_service_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_service = type { i32 }
%struct.netns_ipvs = type { i32, i32, i32 }
%union.nf_inet_addr = type { i32 }

@IPPROTO_TCP = common dso_local global i64 0, align 8
@FTPDATA = common dso_local global i64 0, align 8
@FTPPORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"lookup service: fwm %u %s %s:%u %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"hit\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"not hit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ip_vs_service* @ip_vs_service_find(%struct.netns_ipvs* %0, i32 %1, i64 %2, i64 %3, %union.nf_inet_addr* %4, i64 %5) #0 {
  %7 = alloca %struct.netns_ipvs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %union.nf_inet_addr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ip_vs_service*, align 8
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %union.nf_inet_addr* %4, %union.nf_inet_addr** %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %6
  %17 = load %struct.netns_ipvs*, %struct.netns_ipvs** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i64, i64* %9, align 8
  %20 = call %struct.ip_vs_service* @__ip_vs_svc_fwm_find(%struct.netns_ipvs* %17, i32 %18, i64 %19)
  store %struct.ip_vs_service* %20, %struct.ip_vs_service** %13, align 8
  %21 = load %struct.ip_vs_service*, %struct.ip_vs_service** %13, align 8
  %22 = icmp ne %struct.ip_vs_service* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %77

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24, %6
  %26 = load %struct.netns_ipvs*, %struct.netns_ipvs** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i64, i64* %10, align 8
  %29 = load %union.nf_inet_addr*, %union.nf_inet_addr** %11, align 8
  %30 = load i64, i64* %12, align 8
  %31 = call %struct.ip_vs_service* @__ip_vs_service_find(%struct.netns_ipvs* %26, i32 %27, i64 %28, %union.nf_inet_addr* %29, i64 %30)
  store %struct.ip_vs_service* %31, %struct.ip_vs_service** %13, align 8
  %32 = load %struct.ip_vs_service*, %struct.ip_vs_service** %13, align 8
  %33 = icmp ne %struct.ip_vs_service* %32, null
  br i1 %33, label %62, label %34

34:                                               ; preds = %25
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @IPPROTO_TCP, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %62

38:                                               ; preds = %34
  %39 = load %struct.netns_ipvs*, %struct.netns_ipvs** %7, align 8
  %40 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %39, i32 0, i32 2
  %41 = call i64 @atomic_read(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %38
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* @FTPDATA, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %55, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* %12, align 8
  %49 = call i64 @ntohs(i64 %48)
  %50 = load %struct.netns_ipvs*, %struct.netns_ipvs** %7, align 8
  %51 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @inet_prot_sock(i32 %52)
  %54 = icmp sge i64 %49, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %47, %43
  %56 = load %struct.netns_ipvs*, %struct.netns_ipvs** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i64, i64* %10, align 8
  %59 = load %union.nf_inet_addr*, %union.nf_inet_addr** %11, align 8
  %60 = load i64, i64* @FTPPORT, align 8
  %61 = call %struct.ip_vs_service* @__ip_vs_service_find(%struct.netns_ipvs* %56, i32 %57, i64 %58, %union.nf_inet_addr* %59, i64 %60)
  store %struct.ip_vs_service* %61, %struct.ip_vs_service** %13, align 8
  br label %62

62:                                               ; preds = %55, %47, %38, %34, %25
  %63 = load %struct.ip_vs_service*, %struct.ip_vs_service** %13, align 8
  %64 = icmp eq %struct.ip_vs_service* %63, null
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = load %struct.netns_ipvs*, %struct.netns_ipvs** %7, align 8
  %67 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %66, i32 0, i32 0
  %68 = call i64 @atomic_read(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.netns_ipvs*, %struct.netns_ipvs** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i64, i64* %10, align 8
  %74 = load %union.nf_inet_addr*, %union.nf_inet_addr** %11, align 8
  %75 = call %struct.ip_vs_service* @__ip_vs_service_find(%struct.netns_ipvs* %71, i32 %72, i64 %73, %union.nf_inet_addr* %74, i64 0)
  store %struct.ip_vs_service* %75, %struct.ip_vs_service** %13, align 8
  br label %76

76:                                               ; preds = %70, %65, %62
  br label %77

77:                                               ; preds = %76, %23
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @ip_vs_proto_name(i64 %79)
  %81 = load i32, i32* %8, align 4
  %82 = load %union.nf_inet_addr*, %union.nf_inet_addr** %11, align 8
  %83 = call i32 @IP_VS_DBG_ADDR(i32 %81, %union.nf_inet_addr* %82)
  %84 = load i64, i64* %12, align 8
  %85 = call i64 @ntohs(i64 %84)
  %86 = load %struct.ip_vs_service*, %struct.ip_vs_service** %13, align 8
  %87 = icmp ne %struct.ip_vs_service* %86, null
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %90 = call i32 @IP_VS_DBG_BUF(i32 9, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %78, i32 %80, i32 %83, i64 %85, i8* %89)
  %91 = load %struct.ip_vs_service*, %struct.ip_vs_service** %13, align 8
  ret %struct.ip_vs_service* %91
}

declare dso_local %struct.ip_vs_service* @__ip_vs_svc_fwm_find(%struct.netns_ipvs*, i32, i64) #1

declare dso_local %struct.ip_vs_service* @__ip_vs_service_find(%struct.netns_ipvs*, i32, i64, %union.nf_inet_addr*, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @ntohs(i64) #1

declare dso_local i64 @inet_prot_sock(i32) #1

declare dso_local i32 @IP_VS_DBG_BUF(i32, i8*, i64, i32, i32, i64, i8*) #1

declare dso_local i32 @ip_vs_proto_name(i64) #1

declare dso_local i32 @IP_VS_DBG_ADDR(i32, %union.nf_inet_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
