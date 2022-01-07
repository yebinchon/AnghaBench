; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_stp.c_ebt_stp_mt_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_stp.c_ebt_stp_mt_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { i32, %struct.ebt_entry*, %struct.ebt_stp_info* }
%struct.ebt_entry = type { i32, i32, i32 }
%struct.ebt_stp_info = type { i32, i32 }

@EBT_STP_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@eth_stp_addr = common dso_local global i32 0, align 4
@EBT_DESTMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @ebt_stp_mt_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_stp_mt_check(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_mtchk_param*, align 8
  %4 = alloca %struct.ebt_stp_info*, align 8
  %5 = alloca %struct.ebt_entry*, align 8
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %3, align 8
  %6 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %7 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %6, i32 0, i32 2
  %8 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %7, align 8
  store %struct.ebt_stp_info* %8, %struct.ebt_stp_info** %4, align 8
  %9 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %10 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %9, i32 0, i32 1
  %11 = load %struct.ebt_entry*, %struct.ebt_entry** %10, align 8
  store %struct.ebt_entry* %11, %struct.ebt_entry** %5, align 8
  %12 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %13 = getelementptr inbounds %struct.ebt_stp_info, %struct.ebt_stp_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @EBT_STP_MASK, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %1
  %20 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %21 = getelementptr inbounds %struct.ebt_stp_info, %struct.ebt_stp_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @EBT_STP_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %19
  %28 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %29 = getelementptr inbounds %struct.ebt_stp_info, %struct.ebt_stp_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @EBT_STP_MASK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27, %19, %1
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %66

37:                                               ; preds = %27
  %38 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %39 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %65, label %42

42:                                               ; preds = %37
  %43 = load %struct.ebt_entry*, %struct.ebt_entry** %5, align 8
  %44 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @eth_stp_addr, align 4
  %47 = call i32 @ether_addr_equal(i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %42
  %50 = load %struct.ebt_entry*, %struct.ebt_entry** %5, align 8
  %51 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @EBT_DESTMAC, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load %struct.ebt_entry*, %struct.ebt_entry** %5, align 8
  %58 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @is_broadcast_ether_addr(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %56, %49, %42
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %66

65:                                               ; preds = %56, %37
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %62, %34
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @is_broadcast_ether_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
