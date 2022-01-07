; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_new_daemon.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_new_daemon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netns_ipvs = type { i64 }
%struct.nlattr = type { i32 }
%struct.ipvs_sync_daemon_cfg = type { i32, i8*, %struct.TYPE_2__, i32, i8*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@IPVS_DAEMON_ATTR_STATE = common dso_local global i64 0, align 8
@IPVS_DAEMON_ATTR_MCAST_IFN = common dso_local global i64 0, align 8
@IPVS_DAEMON_ATTR_SYNC_ID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IPVS_DAEMON_ATTR_SYNC_MAXLEN = common dso_local global i64 0, align 8
@IPVS_DAEMON_ATTR_MCAST_GROUP = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@IPVS_DAEMON_ATTR_MCAST_GROUP6 = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@IPVS_DAEMON_ATTR_MCAST_PORT = common dso_local global i64 0, align 8
@IPVS_DAEMON_ATTR_MCAST_TTL = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i32 0, align 4
@IPV6_ADDR_MULTICAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netns_ipvs*, %struct.nlattr**)* @ip_vs_genl_new_daemon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_genl_new_daemon(%struct.netns_ipvs* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netns_ipvs*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.ipvs_sync_daemon_cfg, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca i32, align 4
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %9 = call i32 @memset(%struct.ipvs_sync_daemon_cfg* %6, i32 0, i32 48)
  %10 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %11 = load i64, i64* @IPVS_DAEMON_ATTR_STATE, align 8
  %12 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %10, i64 %11
  %13 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %14 = icmp ne %struct.nlattr* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %17 = load i64, i64* @IPVS_DAEMON_ATTR_MCAST_IFN, align 8
  %18 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %17
  %19 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %20 = icmp ne %struct.nlattr* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %23 = load i64, i64* @IPVS_DAEMON_ATTR_SYNC_ID, align 8
  %24 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %23
  %25 = load %struct.nlattr*, %struct.nlattr** %24, align 8
  %26 = icmp ne %struct.nlattr* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21, %15, %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %128

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.ipvs_sync_daemon_cfg, %struct.ipvs_sync_daemon_cfg* %6, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %34 = load i64, i64* @IPVS_DAEMON_ATTR_MCAST_IFN, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %33, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = call i32 @nla_data(%struct.nlattr* %36)
  %38 = call i32 @strlcpy(i32 %32, i32 %37, i32 4)
  %39 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %40 = load i64, i64* @IPVS_DAEMON_ATTR_SYNC_ID, align 8
  %41 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %40
  %42 = load %struct.nlattr*, %struct.nlattr** %41, align 8
  %43 = call i32 @nla_get_u32(%struct.nlattr* %42)
  %44 = getelementptr inbounds %struct.ipvs_sync_daemon_cfg, %struct.ipvs_sync_daemon_cfg* %6, i32 0, i32 5
  store i32 %43, i32* %44, align 8
  %45 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %46 = load i64, i64* @IPVS_DAEMON_ATTR_SYNC_MAXLEN, align 8
  %47 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %45, i64 %46
  %48 = load %struct.nlattr*, %struct.nlattr** %47, align 8
  store %struct.nlattr* %48, %struct.nlattr** %7, align 8
  %49 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %50 = icmp ne %struct.nlattr* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %30
  %52 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %53 = call i8* @nla_get_u16(%struct.nlattr* %52)
  %54 = getelementptr inbounds %struct.ipvs_sync_daemon_cfg, %struct.ipvs_sync_daemon_cfg* %6, i32 0, i32 4
  store i8* %53, i8** %54, align 8
  br label %55

55:                                               ; preds = %51, %30
  %56 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %57 = load i64, i64* @IPVS_DAEMON_ATTR_MCAST_GROUP, align 8
  %58 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %56, i64 %57
  %59 = load %struct.nlattr*, %struct.nlattr** %58, align 8
  store %struct.nlattr* %59, %struct.nlattr** %7, align 8
  %60 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %61 = icmp ne %struct.nlattr* %60, null
  br i1 %61, label %62, label %78

62:                                               ; preds = %55
  %63 = load i32, i32* @AF_INET, align 4
  %64 = getelementptr inbounds %struct.ipvs_sync_daemon_cfg, %struct.ipvs_sync_daemon_cfg* %6, i32 0, i32 3
  store i32 %63, i32* %64, align 8
  %65 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %66 = call i32 @nla_get_in_addr(%struct.nlattr* %65)
  %67 = getelementptr inbounds %struct.ipvs_sync_daemon_cfg, %struct.ipvs_sync_daemon_cfg* %6, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = getelementptr inbounds %struct.ipvs_sync_daemon_cfg, %struct.ipvs_sync_daemon_cfg* %6, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ipv4_is_multicast(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %62
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %128

77:                                               ; preds = %62
  br label %89

78:                                               ; preds = %55
  %79 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %80 = load i64, i64* @IPVS_DAEMON_ATTR_MCAST_GROUP6, align 8
  %81 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %79, i64 %80
  %82 = load %struct.nlattr*, %struct.nlattr** %81, align 8
  store %struct.nlattr* %82, %struct.nlattr** %7, align 8
  %83 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %84 = icmp ne %struct.nlattr* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load i32, i32* @EAFNOSUPPORT, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %128

88:                                               ; preds = %78
  br label %89

89:                                               ; preds = %88, %77
  %90 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %91 = load i64, i64* @IPVS_DAEMON_ATTR_MCAST_PORT, align 8
  %92 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %90, i64 %91
  %93 = load %struct.nlattr*, %struct.nlattr** %92, align 8
  store %struct.nlattr* %93, %struct.nlattr** %7, align 8
  %94 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %95 = icmp ne %struct.nlattr* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %98 = call i8* @nla_get_u16(%struct.nlattr* %97)
  %99 = getelementptr inbounds %struct.ipvs_sync_daemon_cfg, %struct.ipvs_sync_daemon_cfg* %6, i32 0, i32 1
  store i8* %98, i8** %99, align 8
  br label %100

100:                                              ; preds = %96, %89
  %101 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %102 = load i64, i64* @IPVS_DAEMON_ATTR_MCAST_TTL, align 8
  %103 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %101, i64 %102
  %104 = load %struct.nlattr*, %struct.nlattr** %103, align 8
  store %struct.nlattr* %104, %struct.nlattr** %7, align 8
  %105 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %106 = icmp ne %struct.nlattr* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %100
  %108 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %109 = call i32 @nla_get_u8(%struct.nlattr* %108)
  %110 = getelementptr inbounds %struct.ipvs_sync_daemon_cfg, %struct.ipvs_sync_daemon_cfg* %6, i32 0, i32 0
  store i32 %109, i32* %110, align 8
  br label %111

111:                                              ; preds = %107, %100
  %112 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %113 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp sgt i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %128

119:                                              ; preds = %111
  %120 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %121 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %122 = load i64, i64* @IPVS_DAEMON_ATTR_STATE, align 8
  %123 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %121, i64 %122
  %124 = load %struct.nlattr*, %struct.nlattr** %123, align 8
  %125 = call i32 @nla_get_u32(%struct.nlattr* %124)
  %126 = call i32 @start_sync_thread(%struct.netns_ipvs* %120, %struct.ipvs_sync_daemon_cfg* %6, i32 %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %119, %116, %85, %74, %27
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @memset(%struct.ipvs_sync_daemon_cfg*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i8* @nla_get_u16(%struct.nlattr*) #1

declare dso_local i32 @nla_get_in_addr(%struct.nlattr*) #1

declare dso_local i32 @ipv4_is_multicast(i32) #1

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #1

declare dso_local i32 @start_sync_thread(%struct.netns_ipvs*, %struct.ipvs_sync_daemon_cfg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
