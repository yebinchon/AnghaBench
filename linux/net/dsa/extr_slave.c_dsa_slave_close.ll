; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_close.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.dsa_port = type { i32, i32, i32 }

@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @dsa_slave_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_slave_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.dsa_port*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.net_device* @dsa_slave_to_master(%struct.net_device* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.dsa_port* @dsa_slave_to_port(%struct.net_device* %7)
  store %struct.dsa_port* %8, %struct.dsa_port** %4, align 8
  %9 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %10 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %9, i32 0, i32 2
  %11 = call i32 @cancel_work_sync(i32* %10)
  %12 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %13 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %12, i32 0, i32 1
  %14 = call i32 @skb_queue_purge(i32* %13)
  %15 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %16 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @phylink_stop(i32 %17)
  %19 = load %struct.dsa_port*, %struct.dsa_port** %4, align 8
  %20 = call i32 @dsa_port_disable(%struct.dsa_port* %19)
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = call i32 @dev_mc_unsync(%struct.net_device* %21, %struct.net_device* %22)
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = call i32 @dev_uc_unsync(%struct.net_device* %24, %struct.net_device* %25)
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IFF_ALLMULTI, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = call i32 @dev_set_allmulti(%struct.net_device* %34, i32 -1)
  br label %36

36:                                               ; preds = %33, %1
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IFF_PROMISC, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = call i32 @dev_set_promiscuity(%struct.net_device* %44, i32 -1)
  br label %46

46:                                               ; preds = %43, %36
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ether_addr_equal(i32 %49, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %46
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_uc_del(%struct.net_device* %56, i32 %59)
  br label %61

61:                                               ; preds = %55, %46
  ret i32 0
}

declare dso_local %struct.net_device* @dsa_slave_to_master(%struct.net_device*) #1

declare dso_local %struct.dsa_port* @dsa_slave_to_port(%struct.net_device*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @phylink_stop(i32) #1

declare dso_local i32 @dsa_port_disable(%struct.dsa_port*) #1

declare dso_local i32 @dev_mc_unsync(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @dev_uc_unsync(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @dev_set_allmulti(%struct.net_device*, i32) #1

declare dso_local i32 @dev_set_promiscuity(%struct.net_device*, i32) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @dev_uc_del(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
