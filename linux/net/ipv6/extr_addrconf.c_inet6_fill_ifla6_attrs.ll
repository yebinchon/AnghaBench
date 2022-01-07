; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_inet6_fill_ifla6_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_inet6_fill_ifla6_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.inet6_dev = type { i32, %struct.TYPE_4__, %struct.TYPE_5__, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.ifla_cacheinfo = type { i8*, i8*, i32, i32 }

@IFLA_INET6_FLAGS = common dso_local global i32 0, align 4
@IPV6_MAXPLEN = common dso_local global i32 0, align 4
@RETRANS_TIME = common dso_local global i32 0, align 4
@IFLA_INET6_CACHEINFO = common dso_local global i32 0, align 4
@IFLA_INET6_CONF = common dso_local global i32 0, align 4
@DEVCONF_MAX = common dso_local global i32 0, align 4
@RTEXT_FILTER_SKIP_STATS = common dso_local global i32 0, align 4
@IFLA_INET6_STATS = common dso_local global i32 0, align 4
@IPSTATS_MIB_MAX = common dso_local global i32 0, align 4
@IFLA_INET6_ICMP6STATS = common dso_local global i32 0, align 4
@ICMP6_MIB_MAX = common dso_local global i32 0, align 4
@IFLA_INET6_TOKEN = common dso_local global i32 0, align 4
@IFLA_INET6_ADDR_GEN_MODE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.inet6_dev*, i32)* @inet6_fill_ifla6_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet6_fill_ifla6_attrs(%struct.sk_buff* %0, %struct.inet6_dev* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.inet6_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.ifla_cacheinfo, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.inet6_dev* %1, %struct.inet6_dev** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = load i32, i32* @IFLA_INET6_FLAGS, align 4
  %12 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %13 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @nla_put_u32(%struct.sk_buff* %10, i32 %11, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %138

18:                                               ; preds = %3
  %19 = load i32, i32* @IPV6_MAXPLEN, align 4
  %20 = getelementptr inbounds %struct.ifla_cacheinfo, %struct.ifla_cacheinfo* %9, i32 0, i32 3
  store i32 %19, i32* %20, align 4
  %21 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %22 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @cstamp_delta(i32 %23)
  %25 = getelementptr inbounds %struct.ifla_cacheinfo, %struct.ifla_cacheinfo* %9, i32 0, i32 2
  store i32 %24, i32* %25, align 8
  %26 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %27 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %26, i32 0, i32 3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @jiffies_to_msecs(i32 %30)
  %32 = getelementptr inbounds %struct.ifla_cacheinfo, %struct.ifla_cacheinfo* %9, i32 0, i32 1
  store i8* %31, i8** %32, align 8
  %33 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %34 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %33, i32 0, i32 3
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load i32, i32* @RETRANS_TIME, align 4
  %37 = call i32 @NEIGH_VAR(%struct.TYPE_6__* %35, i32 %36)
  %38 = call i8* @jiffies_to_msecs(i32 %37)
  %39 = getelementptr inbounds %struct.ifla_cacheinfo, %struct.ifla_cacheinfo* %9, i32 0, i32 0
  store i8* %38, i8** %39, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = load i32, i32* @IFLA_INET6_CACHEINFO, align 4
  %42 = call i64 @nla_put(%struct.sk_buff* %40, i32 %41, i32 24, %struct.ifla_cacheinfo* %9)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %18
  br label %138

45:                                               ; preds = %18
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = load i32, i32* @IFLA_INET6_CONF, align 4
  %48 = load i32, i32* @DEVCONF_MAX, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %46, i32 %47, i32 %51)
  store %struct.nlattr* %52, %struct.nlattr** %8, align 8
  %53 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %54 = icmp ne %struct.nlattr* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %45
  br label %138

56:                                               ; preds = %45
  %57 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %58 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %57, i32 0, i32 2
  %59 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %60 = call i32 @nla_data(%struct.nlattr* %59)
  %61 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %62 = call i32 @nla_len(%struct.nlattr* %61)
  %63 = call i32 @ipv6_store_devconf(%struct.TYPE_5__* %58, i32 %60, i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @RTEXT_FILTER_SKIP_STATS, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %141

69:                                               ; preds = %56
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = load i32, i32* @IFLA_INET6_STATS, align 4
  %72 = load i32, i32* @IPSTATS_MIB_MAX, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 4
  %75 = trunc i64 %74 to i32
  %76 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %70, i32 %71, i32 %75)
  store %struct.nlattr* %76, %struct.nlattr** %8, align 8
  %77 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %78 = icmp ne %struct.nlattr* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %69
  br label %138

80:                                               ; preds = %69
  %81 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %82 = call i32 @nla_data(%struct.nlattr* %81)
  %83 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %84 = load i32, i32* @IFLA_INET6_STATS, align 4
  %85 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %86 = call i32 @nla_len(%struct.nlattr* %85)
  %87 = call i32 @snmp6_fill_stats(i32 %82, %struct.inet6_dev* %83, i32 %84, i32 %86)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %89 = load i32, i32* @IFLA_INET6_ICMP6STATS, align 4
  %90 = load i32, i32* @ICMP6_MIB_MAX, align 4
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 4
  %93 = trunc i64 %92 to i32
  %94 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %88, i32 %89, i32 %93)
  store %struct.nlattr* %94, %struct.nlattr** %8, align 8
  %95 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %96 = icmp ne %struct.nlattr* %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %80
  br label %138

98:                                               ; preds = %80
  %99 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %100 = call i32 @nla_data(%struct.nlattr* %99)
  %101 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %102 = load i32, i32* @IFLA_INET6_ICMP6STATS, align 4
  %103 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %104 = call i32 @nla_len(%struct.nlattr* %103)
  %105 = call i32 @snmp6_fill_stats(i32 %100, %struct.inet6_dev* %101, i32 %102, i32 %104)
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = load i32, i32* @IFLA_INET6_TOKEN, align 4
  %108 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %106, i32 %107, i32 4)
  store %struct.nlattr* %108, %struct.nlattr** %8, align 8
  %109 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %110 = icmp ne %struct.nlattr* %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %98
  br label %138

112:                                              ; preds = %98
  %113 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %114 = load i32, i32* @IFLA_INET6_ADDR_GEN_MODE, align 4
  %115 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %116 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @nla_put_u8(%struct.sk_buff* %113, i32 %114, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  br label %138

122:                                              ; preds = %112
  %123 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %124 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %123, i32 0, i32 0
  %125 = call i32 @read_lock_bh(i32* %124)
  %126 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %127 = call i32 @nla_data(%struct.nlattr* %126)
  %128 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %129 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %133 = call i32 @nla_len(%struct.nlattr* %132)
  %134 = call i32 @memcpy(i32 %127, i32 %131, i32 %133)
  %135 = load %struct.inet6_dev*, %struct.inet6_dev** %6, align 8
  %136 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %135, i32 0, i32 0
  %137 = call i32 @read_unlock_bh(i32* %136)
  store i32 0, i32* %4, align 4
  br label %141

138:                                              ; preds = %121, %111, %97, %79, %55, %44, %17
  %139 = load i32, i32* @EMSGSIZE, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %138, %122, %68
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @cstamp_delta(i32) #1

declare dso_local i8* @jiffies_to_msecs(i32) #1

declare dso_local i32 @NEIGH_VAR(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.ifla_cacheinfo*) #1

declare dso_local %struct.nlattr* @nla_reserve(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ipv6_store_devconf(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @snmp6_fill_stats(i32, %struct.inet6_dev*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
