; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_output.c___ip_finish_output.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_output.c___ip_finish_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i32 }

@IPSKB_FRAG_PMTU = common dso_local global i32 0, align 4
@IPSKB_REROUTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* @__ip_finish_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ip_finish_output(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %9 = load %struct.sock*, %struct.sock** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %11 = call i32 @ip_skb_dst_mtu(%struct.sock* %9, %struct.sk_buff* %10)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %13 = call i64 @skb_is_gso(%struct.sk_buff* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.net*, %struct.net** %5, align 8
  %17 = load %struct.sock*, %struct.sock** %6, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @ip_finish_output_gso(%struct.net* %16, %struct.sock* %17, %struct.sk_buff* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  br label %46

21:                                               ; preds = %3
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ugt i32 %24, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %21
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = call %struct.TYPE_4__* @IPCB(%struct.sk_buff* %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IPSKB_FRAG_PMTU, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %27, %21
  %36 = load %struct.net*, %struct.net** %5, align 8
  %37 = load %struct.sock*, %struct.sock** %6, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @ip_fragment(%struct.net* %36, %struct.sock* %37, %struct.sk_buff* %38, i32 %39, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* @ip_finish_output2)
  store i32 %40, i32* %4, align 4
  br label %46

41:                                               ; preds = %27
  %42 = load %struct.net*, %struct.net** %5, align 8
  %43 = load %struct.sock*, %struct.sock** %6, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = call i32 @ip_finish_output2(%struct.net* %42, %struct.sock* %43, %struct.sk_buff* %44)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %41, %35, %15
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @ip_skb_dst_mtu(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @ip_finish_output_gso(%struct.net*, %struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_4__* @IPCB(%struct.sk_buff*) #1

declare dso_local i32 @ip_fragment(%struct.net*, %struct.sock*, %struct.sk_buff*, i32, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)*) #1

declare dso_local i32 @ip_finish_output2(%struct.net*, %struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
