; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_NETMAP.c_netmap_tg4_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_NETMAP.c_netmap_tg4_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgchk_param = type { i32, i32, %struct.nf_nat_ipv4_multi_range_compat* }
%struct.nf_nat_ipv4_multi_range_compat = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NF_NAT_RANGE_MAP_IPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"bad MAP_IPS.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"bad rangesize %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_tgchk_param*)* @netmap_tg4_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netmap_tg4_check(%struct.xt_tgchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_tgchk_param*, align 8
  %4 = alloca %struct.nf_nat_ipv4_multi_range_compat*, align 8
  store %struct.xt_tgchk_param* %0, %struct.xt_tgchk_param** %3, align 8
  %5 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %6 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %5, i32 0, i32 2
  %7 = load %struct.nf_nat_ipv4_multi_range_compat*, %struct.nf_nat_ipv4_multi_range_compat** %6, align 8
  store %struct.nf_nat_ipv4_multi_range_compat* %7, %struct.nf_nat_ipv4_multi_range_compat** %4, align 8
  %8 = load %struct.nf_nat_ipv4_multi_range_compat*, %struct.nf_nat_ipv4_multi_range_compat** %4, align 8
  %9 = getelementptr inbounds %struct.nf_nat_ipv4_multi_range_compat, %struct.nf_nat_ipv4_multi_range_compat* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @NF_NAT_RANGE_MAP_IPS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %41

21:                                               ; preds = %1
  %22 = load %struct.nf_nat_ipv4_multi_range_compat*, %struct.nf_nat_ipv4_multi_range_compat** %4, align 8
  %23 = getelementptr inbounds %struct.nf_nat_ipv4_multi_range_compat, %struct.nf_nat_ipv4_multi_range_compat* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.nf_nat_ipv4_multi_range_compat*, %struct.nf_nat_ipv4_multi_range_compat** %4, align 8
  %28 = getelementptr inbounds %struct.nf_nat_ipv4_multi_range_compat, %struct.nf_nat_ipv4_multi_range_compat* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %41

33:                                               ; preds = %21
  %34 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %35 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %38 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @nf_ct_netns_get(i32 %36, i32 %39)
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %33, %26, %17
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @nf_ct_netns_get(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
