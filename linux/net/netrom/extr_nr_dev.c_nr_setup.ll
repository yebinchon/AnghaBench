; ModuleID = '/home/carl/AnghaBench/linux/net/netrom/extr_nr_dev.c_nr_setup.c'
source_filename = "/home/carl/AnghaBench/linux/net/netrom/extr_nr_dev.c_nr_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i64, i32*, i32*, i32 }

@NR_MAX_PACKET_SIZE = common dso_local global i32 0, align 4
@nr_netdev_ops = common dso_local global i32 0, align 4
@nr_header_ops = common dso_local global i32 0, align 4
@NR_NETWORK_LEN = common dso_local global i64 0, align 8
@NR_TRANSPORT_LEN = common dso_local global i64 0, align 8
@AX25_ADDR_LEN = common dso_local global i32 0, align 4
@ARPHRD_NETROM = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nr_setup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %3 = load i32, i32* @NR_MAX_PACKET_SIZE, align 4
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 6
  store i32 %3, i32* %5, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 5
  store i32* @nr_netdev_ops, i32** %7, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 4
  store i32* @nr_header_ops, i32** %9, align 8
  %10 = load i64, i64* @NR_NETWORK_LEN, align 8
  %11 = load i64, i64* @NR_TRANSPORT_LEN, align 8
  %12 = add nsw i64 %10, %11
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 3
  store i64 %12, i64* %14, align 8
  %15 = load i32, i32* @AX25_ADDR_LEN, align 4
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @ARPHRD_NETROM, align 4
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @IFF_NOARP, align 4
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
