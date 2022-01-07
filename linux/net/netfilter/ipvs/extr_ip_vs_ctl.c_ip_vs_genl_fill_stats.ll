; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_fill_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_fill_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ip_vs_kstats = type { i64, i64, i64, i64, i64, i32, i32, i64, i64, i64 }
%struct.nlattr = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@IPVS_STATS_ATTR_CONNS = common dso_local global i32 0, align 4
@IPVS_STATS_ATTR_INPKTS = common dso_local global i32 0, align 4
@IPVS_STATS_ATTR_OUTPKTS = common dso_local global i32 0, align 4
@IPVS_STATS_ATTR_INBYTES = common dso_local global i32 0, align 4
@IPVS_STATS_ATTR_PAD = common dso_local global i32 0, align 4
@IPVS_STATS_ATTR_OUTBYTES = common dso_local global i32 0, align 4
@IPVS_STATS_ATTR_CPS = common dso_local global i32 0, align 4
@IPVS_STATS_ATTR_INPPS = common dso_local global i32 0, align 4
@IPVS_STATS_ATTR_OUTPPS = common dso_local global i32 0, align 4
@IPVS_STATS_ATTR_INBPS = common dso_local global i32 0, align 4
@IPVS_STATS_ATTR_OUTBPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.ip_vs_kstats*)* @ip_vs_genl_fill_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_genl_fill_stats(%struct.sk_buff* %0, i32 %1, %struct.ip_vs_kstats* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ip_vs_kstats*, align 8
  %8 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ip_vs_kstats* %2, %struct.ip_vs_kstats** %7, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %9, i32 %10)
  store %struct.nlattr* %11, %struct.nlattr** %8, align 8
  %12 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %13 = icmp ne %struct.nlattr* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EMSGSIZE, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %118

17:                                               ; preds = %3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = load i32, i32* @IPVS_STATS_ATTR_CONNS, align 4
  %20 = load %struct.ip_vs_kstats*, %struct.ip_vs_kstats** %7, align 8
  %21 = getelementptr inbounds %struct.ip_vs_kstats, %struct.ip_vs_kstats* %20, i32 0, i32 9
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i64 @nla_put_u32(%struct.sk_buff* %18, i32 %19, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %107, label %26

26:                                               ; preds = %17
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = load i32, i32* @IPVS_STATS_ATTR_INPKTS, align 4
  %29 = load %struct.ip_vs_kstats*, %struct.ip_vs_kstats** %7, align 8
  %30 = getelementptr inbounds %struct.ip_vs_kstats, %struct.ip_vs_kstats* %29, i32 0, i32 8
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i64 @nla_put_u32(%struct.sk_buff* %27, i32 %28, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %107, label %35

35:                                               ; preds = %26
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = load i32, i32* @IPVS_STATS_ATTR_OUTPKTS, align 4
  %38 = load %struct.ip_vs_kstats*, %struct.ip_vs_kstats** %7, align 8
  %39 = getelementptr inbounds %struct.ip_vs_kstats, %struct.ip_vs_kstats* %38, i32 0, i32 7
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i64 @nla_put_u32(%struct.sk_buff* %36, i32 %37, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %107, label %44

44:                                               ; preds = %35
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = load i32, i32* @IPVS_STATS_ATTR_INBYTES, align 4
  %47 = load %struct.ip_vs_kstats*, %struct.ip_vs_kstats** %7, align 8
  %48 = getelementptr inbounds %struct.ip_vs_kstats, %struct.ip_vs_kstats* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IPVS_STATS_ATTR_PAD, align 4
  %51 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %45, i32 %46, i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %107, label %53

53:                                               ; preds = %44
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = load i32, i32* @IPVS_STATS_ATTR_OUTBYTES, align 4
  %56 = load %struct.ip_vs_kstats*, %struct.ip_vs_kstats** %7, align 8
  %57 = getelementptr inbounds %struct.ip_vs_kstats, %struct.ip_vs_kstats* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @IPVS_STATS_ATTR_PAD, align 4
  %60 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %54, i32 %55, i32 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %107, label %62

62:                                               ; preds = %53
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = load i32, i32* @IPVS_STATS_ATTR_CPS, align 4
  %65 = load %struct.ip_vs_kstats*, %struct.ip_vs_kstats** %7, align 8
  %66 = getelementptr inbounds %struct.ip_vs_kstats, %struct.ip_vs_kstats* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i64 @nla_put_u32(%struct.sk_buff* %63, i32 %64, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %107, label %71

71:                                               ; preds = %62
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = load i32, i32* @IPVS_STATS_ATTR_INPPS, align 4
  %74 = load %struct.ip_vs_kstats*, %struct.ip_vs_kstats** %7, align 8
  %75 = getelementptr inbounds %struct.ip_vs_kstats, %struct.ip_vs_kstats* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i64 @nla_put_u32(%struct.sk_buff* %72, i32 %73, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %107, label %80

80:                                               ; preds = %71
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = load i32, i32* @IPVS_STATS_ATTR_OUTPPS, align 4
  %83 = load %struct.ip_vs_kstats*, %struct.ip_vs_kstats** %7, align 8
  %84 = getelementptr inbounds %struct.ip_vs_kstats, %struct.ip_vs_kstats* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = call i64 @nla_put_u32(%struct.sk_buff* %81, i32 %82, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %107, label %89

89:                                               ; preds = %80
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = load i32, i32* @IPVS_STATS_ATTR_INBPS, align 4
  %92 = load %struct.ip_vs_kstats*, %struct.ip_vs_kstats** %7, align 8
  %93 = getelementptr inbounds %struct.ip_vs_kstats, %struct.ip_vs_kstats* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i64 @nla_put_u32(%struct.sk_buff* %90, i32 %91, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %107, label %98

98:                                               ; preds = %89
  %99 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %100 = load i32, i32* @IPVS_STATS_ATTR_OUTBPS, align 4
  %101 = load %struct.ip_vs_kstats*, %struct.ip_vs_kstats** %7, align 8
  %102 = getelementptr inbounds %struct.ip_vs_kstats, %struct.ip_vs_kstats* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = trunc i64 %103 to i32
  %105 = call i64 @nla_put_u32(%struct.sk_buff* %99, i32 %100, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %98, %89, %80, %71, %62, %53, %44, %35, %26, %17
  br label %112

108:                                              ; preds = %98
  %109 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %110 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %111 = call i32 @nla_nest_end(%struct.sk_buff* %109, %struct.nlattr* %110)
  store i32 0, i32* %4, align 4
  br label %118

112:                                              ; preds = %107
  %113 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %114 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %115 = call i32 @nla_nest_cancel(%struct.sk_buff* %113, %struct.nlattr* %114)
  %116 = load i32, i32* @EMSGSIZE, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %112, %108, %14
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
