; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6_tables.c_icmp6_checkentry.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6_tables.c_icmp6_checkentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { %struct.ip6t_icmp* }
%struct.ip6t_icmp = type { i32 }

@IP6T_ICMP_INV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @icmp6_checkentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icmp6_checkentry(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca %struct.xt_mtchk_param*, align 8
  %3 = alloca %struct.ip6t_icmp*, align 8
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %2, align 8
  %4 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %2, align 8
  %5 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %4, i32 0, i32 0
  %6 = load %struct.ip6t_icmp*, %struct.ip6t_icmp** %5, align 8
  store %struct.ip6t_icmp* %6, %struct.ip6t_icmp** %3, align 8
  %7 = load %struct.ip6t_icmp*, %struct.ip6t_icmp** %3, align 8
  %8 = getelementptr inbounds %struct.ip6t_icmp, %struct.ip6t_icmp* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IP6T_ICMP_INV, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  br label %18

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17, %14
  %19 = phi i32 [ %16, %14 ], [ 0, %17 ]
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
