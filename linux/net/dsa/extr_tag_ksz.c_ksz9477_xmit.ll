; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_tag_ksz.c_ksz9477_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_tag_ksz.c_ksz9477_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.dsa_port = type { i32 }

@KSZ9477_INGRESS_TAG_LEN = common dso_local global i32 0, align 4
@KSZ9477_TAIL_TAG_OVERRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, %struct.net_device*)* @ksz9477_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ksz9477_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.dsa_port*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.dsa_port* @dsa_slave_to_port(%struct.net_device* %10)
  store %struct.dsa_port* %11, %struct.dsa_port** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = load i32, i32* @KSZ9477_INGRESS_TAG_LEN, align 4
  %15 = call %struct.sk_buff* @ksz_common_xmit(%struct.sk_buff* %12, %struct.net_device* %13, i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %44

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = load i32, i32* @KSZ9477_INGRESS_TAG_LEN, align 4
  %22 = call i32* @skb_put(%struct.sk_buff* %20, i32 %21)
  store i32* %22, i32** %8, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = call i32* @skb_mac_header(%struct.sk_buff* %23)
  store i32* %24, i32** %9, align 8
  %25 = load %struct.dsa_port*, %struct.dsa_port** %6, align 8
  %26 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @BIT(i32 %27)
  %29 = load i32*, i32** %8, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = call i64 @is_link_local_ether_addr(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %19
  %34 = load i32, i32* @KSZ9477_TAIL_TAG_OVERRIDE, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %34
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %33, %19
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cpu_to_be16(i32 %40)
  %42 = load i32*, i32** %8, align 8
  store i32 %41, i32* %42, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %43, %struct.sk_buff** %3, align 8
  br label %44

44:                                               ; preds = %38, %18
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %45
}

declare dso_local %struct.dsa_port* @dsa_slave_to_port(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @ksz_common_xmit(%struct.sk_buff*, %struct.net_device*, i32) #1

declare dso_local i32* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32* @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @is_link_local_ether_addr(i32*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
