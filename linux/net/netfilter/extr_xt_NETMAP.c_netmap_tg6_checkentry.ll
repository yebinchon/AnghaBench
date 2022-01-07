; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_NETMAP.c_netmap_tg6_checkentry.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_NETMAP.c_netmap_tg6_checkentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgchk_param = type { i32, i32, %struct.nf_nat_range2* }
%struct.nf_nat_range2 = type { i32 }

@NF_NAT_RANGE_MAP_IPS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_tgchk_param*)* @netmap_tg6_checkentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netmap_tg6_checkentry(%struct.xt_tgchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_tgchk_param*, align 8
  %4 = alloca %struct.nf_nat_range2*, align 8
  store %struct.xt_tgchk_param* %0, %struct.xt_tgchk_param** %3, align 8
  %5 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %6 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %5, i32 0, i32 2
  %7 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %6, align 8
  store %struct.nf_nat_range2* %7, %struct.nf_nat_range2** %4, align 8
  %8 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %4, align 8
  %9 = getelementptr inbounds %struct.nf_nat_range2, %struct.nf_nat_range2* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @NF_NAT_RANGE_MAP_IPS, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %25

17:                                               ; preds = %1
  %18 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %19 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %22 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @nf_ct_netns_get(i32 %20, i32 %23)
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %17, %14
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @nf_ct_netns_get(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
