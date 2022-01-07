; ModuleID = '/home/carl/AnghaBench/linux/net/hsr/extr_hsr_netlink.c_hsr_fill_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/hsr/extr_hsr_netlink.c_hsr_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.hsr_priv = type { i32, i32 }
%struct.hsr_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HSR_PT_SLAVE_A = common dso_local global i32 0, align 4
@IFLA_HSR_SLAVE1 = common dso_local global i32 0, align 4
@HSR_PT_SLAVE_B = common dso_local global i32 0, align 4
@IFLA_HSR_SLAVE2 = common dso_local global i32 0, align 4
@IFLA_HSR_SUPERVISION_ADDR = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IFLA_HSR_SEQ_NR = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @hsr_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsr_fill_info(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.hsr_priv*, align 8
  %7 = alloca %struct.hsr_port*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.hsr_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.hsr_priv* %10, %struct.hsr_priv** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load %struct.hsr_priv*, %struct.hsr_priv** %6, align 8
  %13 = load i32, i32* @HSR_PT_SLAVE_A, align 4
  %14 = call %struct.hsr_port* @hsr_port_get_hsr(%struct.hsr_priv* %12, i32 %13)
  store %struct.hsr_port* %14, %struct.hsr_port** %7, align 8
  %15 = load %struct.hsr_port*, %struct.hsr_port** %7, align 8
  %16 = icmp ne %struct.hsr_port* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = load i32, i32* @IFLA_HSR_SLAVE1, align 4
  %20 = load %struct.hsr_port*, %struct.hsr_port** %7, align 8
  %21 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @nla_put_u32(%struct.sk_buff* %18, i32 %19, i32 %24)
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %17, %2
  %27 = call i32 (...) @rcu_read_unlock()
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %71

31:                                               ; preds = %26
  %32 = call i32 (...) @rcu_read_lock()
  %33 = load %struct.hsr_priv*, %struct.hsr_priv** %6, align 8
  %34 = load i32, i32* @HSR_PT_SLAVE_B, align 4
  %35 = call %struct.hsr_port* @hsr_port_get_hsr(%struct.hsr_priv* %33, i32 %34)
  store %struct.hsr_port* %35, %struct.hsr_port** %7, align 8
  %36 = load %struct.hsr_port*, %struct.hsr_port** %7, align 8
  %37 = icmp ne %struct.hsr_port* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %31
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = load i32, i32* @IFLA_HSR_SLAVE2, align 4
  %41 = load %struct.hsr_port*, %struct.hsr_port** %7, align 8
  %42 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @nla_put_u32(%struct.sk_buff* %39, i32 %40, i32 %45)
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %38, %31
  %48 = call i32 (...) @rcu_read_unlock()
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %71

52:                                               ; preds = %47
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = load i32, i32* @IFLA_HSR_SUPERVISION_ADDR, align 4
  %55 = load i32, i32* @ETH_ALEN, align 4
  %56 = load %struct.hsr_priv*, %struct.hsr_priv** %6, align 8
  %57 = getelementptr inbounds %struct.hsr_priv, %struct.hsr_priv* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @nla_put(%struct.sk_buff* %53, i32 %54, i32 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %52
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = load i32, i32* @IFLA_HSR_SEQ_NR, align 4
  %64 = load %struct.hsr_priv*, %struct.hsr_priv** %6, align 8
  %65 = getelementptr inbounds %struct.hsr_priv, %struct.hsr_priv* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @nla_put_u16(%struct.sk_buff* %62, i32 %63, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61, %52
  br label %71

70:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %74

71:                                               ; preds = %69, %51, %30
  %72 = load i32, i32* @EMSGSIZE, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %71, %70
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.hsr_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.hsr_port* @hsr_port_get_hsr(%struct.hsr_priv*, i32) #1

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
