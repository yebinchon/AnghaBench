; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_output.c___ip_local_out.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_output.c___ip_local_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i8*, i32 }
%struct.iphdr = type { i8* }
%struct.TYPE_2__ = type { i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@NFPROTO_IPV4 = common dso_local global i32 0, align 4
@NF_INET_LOCAL_OUT = common dso_local global i32 0, align 4
@dst_output = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ip_local_out(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.iphdr*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %10 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %9)
  store %struct.iphdr* %10, %struct.iphdr** %8, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i8* @htons(i32 %13)
  %15 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %16 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  %17 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %18 = call i32 @ip_send_check(%struct.iphdr* %17)
  %19 = load %struct.sock*, %struct.sock** %6, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = call %struct.sk_buff* @l3mdev_ip_out(%struct.sock* %19, %struct.sk_buff* %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %7, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %45

29:                                               ; preds = %3
  %30 = load i32, i32* @ETH_P_IP, align 4
  %31 = call i8* @htons(i32 %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* @NFPROTO_IPV4, align 4
  %35 = load i32, i32* @NF_INET_LOCAL_OUT, align 4
  %36 = load %struct.net*, %struct.net** %5, align 8
  %37 = load %struct.sock*, %struct.sock** %6, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = call %struct.TYPE_2__* @skb_dst(%struct.sk_buff* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @dst_output, align 4
  %44 = call i32 @nf_hook(i32 %34, i32 %35, %struct.net* %36, %struct.sock* %37, %struct.sk_buff* %38, i32* null, i32 %42, i32 %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %29, %28
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @ip_send_check(%struct.iphdr*) #1

declare dso_local %struct.sk_buff* @l3mdev_ip_out(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nf_hook(i32, i32, %struct.net*, %struct.sock*, %struct.sk_buff*, i32*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @skb_dst(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
