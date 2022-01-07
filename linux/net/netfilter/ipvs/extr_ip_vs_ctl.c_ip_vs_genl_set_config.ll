; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netns_ipvs = type { i32 }
%struct.nlattr = type { i32 }
%struct.ip_vs_timeout_user = type { i8*, i8*, i8* }

@IPVS_CMD_ATTR_TIMEOUT_TCP = common dso_local global i64 0, align 8
@IPVS_CMD_ATTR_TIMEOUT_TCP_FIN = common dso_local global i64 0, align 8
@IPVS_CMD_ATTR_TIMEOUT_UDP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netns_ipvs*, %struct.nlattr**)* @ip_vs_genl_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_genl_set_config(%struct.netns_ipvs* %0, %struct.nlattr** %1) #0 {
  %3 = alloca %struct.netns_ipvs*, align 8
  %4 = alloca %struct.nlattr**, align 8
  %5 = alloca %struct.ip_vs_timeout_user, align 8
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %3, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %4, align 8
  %6 = load %struct.netns_ipvs*, %struct.netns_ipvs** %3, align 8
  %7 = call i32 @__ip_vs_get_timeouts(%struct.netns_ipvs* %6, %struct.ip_vs_timeout_user* %5)
  %8 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %9 = load i64, i64* @IPVS_CMD_ATTR_TIMEOUT_TCP, align 8
  %10 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %8, i64 %9
  %11 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %12 = icmp ne %struct.nlattr* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %15 = load i64, i64* @IPVS_CMD_ATTR_TIMEOUT_TCP, align 8
  %16 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %15
  %17 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %18 = call i8* @nla_get_u32(%struct.nlattr* %17)
  %19 = getelementptr inbounds %struct.ip_vs_timeout_user, %struct.ip_vs_timeout_user* %5, i32 0, i32 2
  store i8* %18, i8** %19, align 8
  br label %20

20:                                               ; preds = %13, %2
  %21 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %22 = load i64, i64* @IPVS_CMD_ATTR_TIMEOUT_TCP_FIN, align 8
  %23 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %22
  %24 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  %25 = icmp ne %struct.nlattr* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %28 = load i64, i64* @IPVS_CMD_ATTR_TIMEOUT_TCP_FIN, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %31 = call i8* @nla_get_u32(%struct.nlattr* %30)
  %32 = getelementptr inbounds %struct.ip_vs_timeout_user, %struct.ip_vs_timeout_user* %5, i32 0, i32 1
  store i8* %31, i8** %32, align 8
  br label %33

33:                                               ; preds = %26, %20
  %34 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %35 = load i64, i64* @IPVS_CMD_ATTR_TIMEOUT_UDP, align 8
  %36 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %34, i64 %35
  %37 = load %struct.nlattr*, %struct.nlattr** %36, align 8
  %38 = icmp ne %struct.nlattr* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %41 = load i64, i64* @IPVS_CMD_ATTR_TIMEOUT_UDP, align 8
  %42 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %40, i64 %41
  %43 = load %struct.nlattr*, %struct.nlattr** %42, align 8
  %44 = call i8* @nla_get_u32(%struct.nlattr* %43)
  %45 = getelementptr inbounds %struct.ip_vs_timeout_user, %struct.ip_vs_timeout_user* %5, i32 0, i32 0
  store i8* %44, i8** %45, align 8
  br label %46

46:                                               ; preds = %39, %33
  %47 = load %struct.netns_ipvs*, %struct.netns_ipvs** %3, align 8
  %48 = call i32 @ip_vs_set_timeout(%struct.netns_ipvs* %47, %struct.ip_vs_timeout_user* %5)
  ret i32 %48
}

declare dso_local i32 @__ip_vs_get_timeouts(%struct.netns_ipvs*, %struct.ip_vs_timeout_user*) #1

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @ip_vs_set_timeout(%struct.netns_ipvs*, %struct.ip_vs_timeout_user*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
