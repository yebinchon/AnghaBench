; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_tag_trailer.c_trailer_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_tag_trailer.c_trailer_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.net_device = type { i32 }
%struct.dsa_port = type { i32 }

@NET_IP_ALIGN = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, %struct.net_device*)* @trailer_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @trailer_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.dsa_port*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.dsa_port* @dsa_slave_to_port(%struct.net_device* %10)
  store %struct.dsa_port* %11, %struct.dsa_port** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %14, 60
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 60, %19
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %16, %2
  %22 = load i64, i64* @NET_IP_ALIGN, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %22, %26
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  %31 = add nsw i64 %30, 4
  %32 = load i32, i32* @GFP_ATOMIC, align 4
  %33 = call %struct.sk_buff* @alloc_skb(i64 %31, i32 %32)
  store %struct.sk_buff* %33, %struct.sk_buff** %7, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = icmp ne %struct.sk_buff* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %21
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %90

37:                                               ; preds = %21
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = load i64, i64* @NET_IP_ALIGN, align 8
  %40 = call i32 @skb_reserve(%struct.sk_buff* %38, i64 %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = call i32 @skb_reset_mac_header(%struct.sk_buff* %41)
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = call i64 @skb_network_header(%struct.sk_buff* %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %45, %48
  %50 = call i32 @skb_set_network_header(%struct.sk_buff* %43, i64 %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = call i64 @skb_transport_header(%struct.sk_buff* %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %53, %56
  %58 = call i32 @skb_set_transport_header(%struct.sk_buff* %51, i64 %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32* @skb_put(%struct.sk_buff* %60, i32 %63)
  %65 = call i32 @skb_copy_and_csum_dev(%struct.sk_buff* %59, i32* %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = call i32 @consume_skb(%struct.sk_buff* %66)
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %37
  %71 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @skb_put_zero(%struct.sk_buff* %71, i32 %72)
  br label %74

74:                                               ; preds = %70, %37
  %75 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %76 = call i32* @skb_put(%struct.sk_buff* %75, i32 4)
  store i32* %76, i32** %9, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 128, i32* %78, align 4
  %79 = load %struct.dsa_port*, %struct.dsa_port** %6, align 8
  %80 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 1, %81
  %83 = load i32*, i32** %9, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  store i32 %82, i32* %84, align 4
  %85 = load i32*, i32** %9, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  store i32 16, i32* %86, align 4
  %87 = load i32*, i32** %9, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 3
  store i32 0, i32* %88, align 4
  %89 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %89, %struct.sk_buff** %3, align 8
  br label %90

90:                                               ; preds = %74, %36
  %91 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %91
}

declare dso_local %struct.dsa_port* @dsa_slave_to_port(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_and_csum_dev(%struct.sk_buff*, i32*) #1

declare dso_local i32* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_put_zero(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
