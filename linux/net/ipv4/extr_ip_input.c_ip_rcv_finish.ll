; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_input.c_ip_rcv_finish.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_input.c_ip_rcv_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { %struct.net_device* }
%struct.net_device = type { i32 }

@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@NET_RX_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* @ip_rcv_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_rcv_finish(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %8, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = call %struct.sk_buff* @l3mdev_ip_rcv(%struct.sk_buff* %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %18, i32* %4, align 4
  br label %33

19:                                               ; preds = %3
  %20 = load %struct.net*, %struct.net** %5, align 8
  %21 = load %struct.sock*, %struct.sock** %6, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = load %struct.net_device*, %struct.net_device** %8, align 8
  %24 = call i32 @ip_rcv_finish_core(%struct.net* %20, %struct.sock* %21, %struct.sk_buff* %22, %struct.net_device* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @NET_RX_DROP, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = call i32 @dst_input(%struct.sk_buff* %29)
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %28, %19
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %31, %17
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.sk_buff* @l3mdev_ip_rcv(%struct.sk_buff*) #1

declare dso_local i32 @ip_rcv_finish_core(%struct.net*, %struct.sock*, %struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @dst_input(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
