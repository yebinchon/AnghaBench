; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_lec.c_lane2_resolve.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_lec.c_lane2_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.lec_priv = type { i32 }
%struct.lec_arp_table = type { i32, i32 }
%struct.sk_buff = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@l_arp_xmt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*, i32, i32**, i32*)* @lane2_resolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lane2_resolve(%struct.net_device* %0, i32* %1, i32 %2, i32** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.lec_priv*, align 8
  %14 = alloca %struct.lec_arp_table*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32** %3, i32*** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %struct.net_device*, %struct.net_device** %7, align 8
  %18 = call %struct.lec_priv* @netdev_priv(%struct.net_device* %17)
  store %struct.lec_priv* %18, %struct.lec_priv** %13, align 8
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %55

21:                                               ; preds = %5
  %22 = load %struct.lec_priv*, %struct.lec_priv** %13, align 8
  %23 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %22, i32 0, i32 0
  %24 = load i64, i64* %12, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.lec_priv*, %struct.lec_priv** %13, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call %struct.lec_arp_table* @lec_arp_find(%struct.lec_priv* %26, i32* %27)
  store %struct.lec_arp_table* %28, %struct.lec_arp_table** %14, align 8
  %29 = load %struct.lec_priv*, %struct.lec_priv** %13, align 8
  %30 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %29, i32 0, i32 0
  %31 = load i64, i64* %12, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load %struct.lec_arp_table*, %struct.lec_arp_table** %14, align 8
  %34 = icmp eq %struct.lec_arp_table* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  store i32 -1, i32* %6, align 4
  br label %89

36:                                               ; preds = %21
  %37 = load %struct.lec_arp_table*, %struct.lec_arp_table** %14, align 8
  %38 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.lec_arp_table*, %struct.lec_arp_table** %14, align 8
  %41 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @GFP_ATOMIC, align 4
  %44 = call i32* @kmemdup(i32 %39, i32 %42, i32 %43)
  %45 = load i32**, i32*** %10, align 8
  store i32* %44, i32** %45, align 8
  %46 = load i32**, i32*** %10, align 8
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  store i32 -1, i32* %6, align 4
  br label %89

50:                                               ; preds = %36
  %51 = load %struct.lec_arp_table*, %struct.lec_arp_table** %14, align 8
  %52 = getelementptr inbounds %struct.lec_arp_table, %struct.lec_arp_table* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %11, align 8
  store i32 %53, i32* %54, align 4
  store i32 0, i32* %6, align 4
  br label %89

55:                                               ; preds = %5
  %56 = load i32*, i32** %11, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load %struct.lec_priv*, %struct.lec_priv** %13, align 8
  %60 = load i32, i32* @l_arp_xmt, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @send_to_lecd(%struct.lec_priv* %59, i32 %60, i32* %61, i32* null, %struct.sk_buff* null)
  store i32 %62, i32* %16, align 4
  br label %87

63:                                               ; preds = %55
  %64 = load i32*, i32** %11, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @GFP_ATOMIC, align 4
  %67 = call %struct.sk_buff* @alloc_skb(i32 %65, i32 %66)
  store %struct.sk_buff* %67, %struct.sk_buff** %15, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %69 = icmp eq %struct.sk_buff* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  store i32 -1, i32* %6, align 4
  br label %89

71:                                               ; preds = %63
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %77 = load i32**, i32*** %10, align 8
  %78 = load i32*, i32** %77, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %76, i32* %78, i32 %80)
  %82 = load %struct.lec_priv*, %struct.lec_priv** %13, align 8
  %83 = load i32, i32* @l_arp_xmt, align 4
  %84 = load i32*, i32** %8, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %86 = call i32 @send_to_lecd(%struct.lec_priv* %82, i32 %83, i32* %84, i32* null, %struct.sk_buff* %85)
  store i32 %86, i32* %16, align 4
  br label %87

87:                                               ; preds = %71, %58
  %88 = load i32, i32* %16, align 4
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %87, %70, %50, %49, %35
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local %struct.lec_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.lec_arp_table* @lec_arp_find(%struct.lec_priv*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32* @kmemdup(i32, i32, i32) #1

declare dso_local i32 @send_to_lecd(%struct.lec_priv*, i32, i32*, i32*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
