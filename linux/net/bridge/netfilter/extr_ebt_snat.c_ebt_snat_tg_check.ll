; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_snat.c_ebt_snat_tg_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_snat.c_ebt_snat_tg_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgchk_param = type { %struct.ebt_nat_info* }
%struct.ebt_nat_info = type { i32 }

@EBT_VERDICT_BITS = common dso_local global i32 0, align 4
@BASE_CHAIN = common dso_local global i64 0, align 8
@EBT_RETURN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NAT_ARP_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_tgchk_param*)* @ebt_snat_tg_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_snat_tg_check(%struct.xt_tgchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_tgchk_param*, align 8
  %4 = alloca %struct.ebt_nat_info*, align 8
  %5 = alloca i32, align 4
  store %struct.xt_tgchk_param* %0, %struct.xt_tgchk_param** %3, align 8
  %6 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %7 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %6, i32 0, i32 0
  %8 = load %struct.ebt_nat_info*, %struct.ebt_nat_info** %7, align 8
  store %struct.ebt_nat_info* %8, %struct.ebt_nat_info** %4, align 8
  %9 = load %struct.ebt_nat_info*, %struct.ebt_nat_info** %4, align 8
  %10 = getelementptr inbounds %struct.ebt_nat_info, %struct.ebt_nat_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @EBT_VERDICT_BITS, align 4
  %13 = xor i32 %12, -1
  %14 = or i32 %11, %13
  store i32 %14, i32* %5, align 4
  %15 = load i64, i64* @BASE_CHAIN, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @EBT_RETURN, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %48

24:                                               ; preds = %17, %1
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @ebt_invalid_target(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %48

31:                                               ; preds = %24
  %32 = load %struct.ebt_nat_info*, %struct.ebt_nat_info** %4, align 8
  %33 = getelementptr inbounds %struct.ebt_nat_info, %struct.ebt_nat_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @EBT_VERDICT_BITS, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @NAT_ARP_BIT, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = load i32, i32* @NAT_ARP_BIT, align 4
  %42 = xor i32 %41, -1
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %31
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %48

47:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %44, %28, %21
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @ebt_invalid_target(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
