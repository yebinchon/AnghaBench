; ModuleID = '/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_mpls_fill_stats_af.c'
source_filename = "/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_mpls_fill_stats_af.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.mpls_link_stats = type { i32 }
%struct.mpls_dev = type { i32 }
%struct.nlattr = type { i32 }

@ENODATA = common dso_local global i32 0, align 4
@MPLS_STATS_LINK = common dso_local global i32 0, align 4
@MPLS_STATS_UNSPEC = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @mpls_fill_stats_af to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpls_fill_stats_af(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.mpls_link_stats*, align 8
  %7 = alloca %struct.mpls_dev*, align 8
  %8 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.mpls_dev* @mpls_dev_get(%struct.net_device* %9)
  store %struct.mpls_dev* %10, %struct.mpls_dev** %7, align 8
  %11 = load %struct.mpls_dev*, %struct.mpls_dev** %7, align 8
  %12 = icmp ne %struct.mpls_dev* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODATA, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %32

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = load i32, i32* @MPLS_STATS_LINK, align 4
  %19 = load i32, i32* @MPLS_STATS_UNSPEC, align 4
  %20 = call %struct.nlattr* @nla_reserve_64bit(%struct.sk_buff* %17, i32 %18, i32 4, i32 %19)
  store %struct.nlattr* %20, %struct.nlattr** %8, align 8
  %21 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %22 = icmp ne %struct.nlattr* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @EMSGSIZE, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %32

26:                                               ; preds = %16
  %27 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %28 = call %struct.mpls_link_stats* @nla_data(%struct.nlattr* %27)
  store %struct.mpls_link_stats* %28, %struct.mpls_link_stats** %6, align 8
  %29 = load %struct.mpls_dev*, %struct.mpls_dev** %7, align 8
  %30 = load %struct.mpls_link_stats*, %struct.mpls_link_stats** %6, align 8
  %31 = call i32 @mpls_get_stats(%struct.mpls_dev* %29, %struct.mpls_link_stats* %30)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %26, %23, %13
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.mpls_dev* @mpls_dev_get(%struct.net_device*) #1

declare dso_local %struct.nlattr* @nla_reserve_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local %struct.mpls_link_stats* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @mpls_get_stats(%struct.mpls_dev*, %struct.mpls_link_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
