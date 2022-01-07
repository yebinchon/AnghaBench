; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_ethtool.c_ethtool_get_feature_mask.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_ethtool.c_ethtool_get_feature_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NETIF_F_CSUM_MASK = common dso_local global i32 0, align 4
@NETIF_F_SCTP_CRC = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_ALL_TSO = common dso_local global i32 0, align 4
@NETIF_F_GSO = common dso_local global i32 0, align 4
@NETIF_F_GRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ethtool_get_feature_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethtool_get_feature_mask(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %19 [
    i32 134, label %5
    i32 128, label %5
    i32 137, label %9
    i32 131, label %9
    i32 136, label %11
    i32 130, label %11
    i32 135, label %13
    i32 129, label %13
    i32 138, label %15
    i32 132, label %15
    i32 139, label %17
    i32 133, label %17
  ]

5:                                                ; preds = %1, %1
  %6 = load i32, i32* @NETIF_F_CSUM_MASK, align 4
  %7 = load i32, i32* @NETIF_F_SCTP_CRC, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %2, align 4
  br label %21

9:                                                ; preds = %1, %1
  %10 = load i32, i32* @NETIF_F_RXCSUM, align 4
  store i32 %10, i32* %2, align 4
  br label %21

11:                                               ; preds = %1, %1
  %12 = load i32, i32* @NETIF_F_SG, align 4
  store i32 %12, i32* %2, align 4
  br label %21

13:                                               ; preds = %1, %1
  %14 = load i32, i32* @NETIF_F_ALL_TSO, align 4
  store i32 %14, i32* %2, align 4
  br label %21

15:                                               ; preds = %1, %1
  %16 = load i32, i32* @NETIF_F_GSO, align 4
  store i32 %16, i32* %2, align 4
  br label %21

17:                                               ; preds = %1, %1
  %18 = load i32, i32* @NETIF_F_GRO, align 4
  store i32 %18, i32* %2, align 4
  br label %21

19:                                               ; preds = %1
  %20 = call i32 (...) @BUG()
  br label %21

21:                                               ; preds = %5, %9, %11, %13, %15, %17, %19
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
