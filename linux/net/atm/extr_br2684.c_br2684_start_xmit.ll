; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_br2684.c_br2684_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_br2684.c_br2684_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.br2684_dev = type { i32 }
%struct.br2684_vcc = type { i32, %struct.atm_vcc* }
%struct.atm_vcc = type { i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"skb_dst(skb)=%p\0A\00", align 1
@devs_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"no vcc attached to dev %s\0A\00", align 1
@ATM_VF_RELEASED = common dso_local global i32 0, align 4
@ATM_VF_CLOSE = common dso_local global i32 0, align 4
@ATM_VF_READY = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @br2684_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br2684_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.br2684_dev*, align 8
  %6 = alloca %struct.br2684_vcc*, align 8
  %7 = alloca %struct.atm_vcc*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.br2684_dev* @BRPRIV(%struct.net_device* %9)
  store %struct.br2684_dev* %10, %struct.br2684_dev** %5, align 8
  %11 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = call i32 @skb_dst(%struct.sk_buff* %12)
  %14 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = call i32 @read_lock(i32* @devs_lock)
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = load %struct.br2684_dev*, %struct.br2684_dev** %5, align 8
  %18 = call %struct.br2684_vcc* @pick_outgoing_vcc(%struct.sk_buff* %16, %struct.br2684_dev* %17)
  store %struct.br2684_vcc* %18, %struct.br2684_vcc** %6, align 8
  %19 = load %struct.br2684_vcc*, %struct.br2684_vcc** %6, align 8
  %20 = icmp eq %struct.br2684_vcc* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %2
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %37 = call i32 @dev_kfree_skb(%struct.sk_buff* %36)
  br label %103

38:                                               ; preds = %2
  %39 = load %struct.br2684_vcc*, %struct.br2684_vcc** %6, align 8
  %40 = getelementptr inbounds %struct.br2684_vcc, %struct.br2684_vcc* %39, i32 0, i32 1
  %41 = load %struct.atm_vcc*, %struct.atm_vcc** %40, align 8
  store %struct.atm_vcc* %41, %struct.atm_vcc** %7, align 8
  %42 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %43 = call i32 @sk_atm(%struct.atm_vcc* %42)
  %44 = call i32 @bh_lock_sock(i32 %43)
  %45 = load i32, i32* @ATM_VF_RELEASED, align 4
  %46 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %47 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %46, i32 0, i32 0
  %48 = call i64 @test_bit(i32 %45, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %38
  %51 = load i32, i32* @ATM_VF_CLOSE, align 4
  %52 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %53 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %52, i32 0, i32 0
  %54 = call i64 @test_bit(i32 %51, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @ATM_VF_READY, align 4
  %58 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %59 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %58, i32 0, i32 0
  %60 = call i64 @test_bit(i32 %57, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %56, %50, %38
  %63 = load %struct.net_device*, %struct.net_device** %4, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %69 = call i32 @dev_kfree_skb(%struct.sk_buff* %68)
  br label %99

70:                                               ; preds = %56
  %71 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %72 = call i32 @sk_atm(%struct.atm_vcc* %71)
  %73 = call i64 @sock_owned_by_user(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.br2684_vcc*, %struct.br2684_vcc** %6, align 8
  %77 = getelementptr inbounds %struct.br2684_vcc, %struct.br2684_vcc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @netif_stop_queue(i32 %78)
  %80 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %80, i32* %8, align 4
  br label %99

81:                                               ; preds = %70
  %82 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %83 = load %struct.net_device*, %struct.net_device** %4, align 8
  %84 = load %struct.br2684_vcc*, %struct.br2684_vcc** %6, align 8
  %85 = call i32 @br2684_xmit_vcc(%struct.sk_buff* %82, %struct.net_device* %83, %struct.br2684_vcc* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %98, label %87

87:                                               ; preds = %81
  %88 = load %struct.net_device*, %struct.net_device** %4, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = load %struct.net_device*, %struct.net_device** %4, align 8
  %94 = getelementptr inbounds %struct.net_device, %struct.net_device* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %87, %81
  br label %99

99:                                               ; preds = %98, %75, %62
  %100 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %101 = call i32 @sk_atm(%struct.atm_vcc* %100)
  %102 = call i32 @bh_unlock_sock(i32 %101)
  br label %103

103:                                              ; preds = %99, %21
  %104 = call i32 @read_unlock(i32* @devs_lock)
  %105 = load i32, i32* %8, align 4
  ret i32 %105
}

declare dso_local %struct.br2684_dev* @BRPRIV(%struct.net_device*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.br2684_vcc* @pick_outgoing_vcc(%struct.sk_buff*, %struct.br2684_dev*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @bh_lock_sock(i32) #1

declare dso_local i32 @sk_atm(%struct.atm_vcc*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @sock_owned_by_user(i32) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @br2684_xmit_vcc(%struct.sk_buff*, %struct.net_device*, %struct.br2684_vcc*) #1

declare dso_local i32 @bh_unlock_sock(i32) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
