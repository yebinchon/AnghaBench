; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_icmp.c_icmp_socket_deliver.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_icmp.c_icmp_socket_deliver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.iphdr = type { i32, i32 }
%struct.net_protocol = type { i32 (%struct.sk_buff*, i32)* }

@ICMP_MIB_INERRORS = common dso_local global i32 0, align 4
@inet_protos = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32)* @icmp_socket_deliver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icmp_socket_deliver(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iphdr*, align 8
  %6 = alloca %struct.net_protocol*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.iphdr*
  store %struct.iphdr* %11, %struct.iphdr** %5, align 8
  %12 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %13 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %17 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %18, 4
  %20 = add nsw i32 %19, 8
  %21 = call i32 @pskb_may_pull(%struct.sk_buff* %15, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %2
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dev_net(i32 %26)
  %28 = load i32, i32* @ICMP_MIB_INERRORS, align 4
  %29 = call i32 @__ICMP_INC_STATS(i32 %27, i32 %28)
  br label %55

30:                                               ; preds = %2
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @raw_icmp_error(%struct.sk_buff* %31, i32 %32, i32 %33)
  %35 = load i32*, i32** @inet_protos, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.net_protocol* @rcu_dereference(i32 %39)
  store %struct.net_protocol* %40, %struct.net_protocol** %6, align 8
  %41 = load %struct.net_protocol*, %struct.net_protocol** %6, align 8
  %42 = icmp ne %struct.net_protocol* %41, null
  br i1 %42, label %43, label %55

43:                                               ; preds = %30
  %44 = load %struct.net_protocol*, %struct.net_protocol** %6, align 8
  %45 = getelementptr inbounds %struct.net_protocol, %struct.net_protocol* %44, i32 0, i32 0
  %46 = load i32 (%struct.sk_buff*, i32)*, i32 (%struct.sk_buff*, i32)** %45, align 8
  %47 = icmp ne i32 (%struct.sk_buff*, i32)* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.net_protocol*, %struct.net_protocol** %6, align 8
  %50 = getelementptr inbounds %struct.net_protocol, %struct.net_protocol* %49, i32 0, i32 0
  %51 = load i32 (%struct.sk_buff*, i32)*, i32 (%struct.sk_buff*, i32)** %50, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 %51(%struct.sk_buff* %52, i32 %53)
  br label %55

55:                                               ; preds = %23, %48, %43, %30
  ret void
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @__ICMP_INC_STATS(i32, i32) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local i32 @raw_icmp_error(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.net_protocol* @rcu_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
