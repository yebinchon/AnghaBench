; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_utils.c_nf_ip_checksum_partial.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_utils.c_nf_ip_checksum_partial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32 }
%struct.iphdr = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i32, i32)* @nf_ip_checksum_partial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_ip_checksum_partial(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iphdr*, align 8
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %14)
  store %struct.iphdr* %15, %struct.iphdr** %12, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %57 [
    i32 129, label %19
    i32 128, label %34
  ]

19:                                               ; preds = %5
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %9, align 4
  %25 = sub i32 %23, %24
  %26 = icmp eq i32 %20, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @nf_ip_checksum(%struct.sk_buff* %28, i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %6, align 4
  br label %59

33:                                               ; preds = %19
  br label %34

34:                                               ; preds = %5, %33
  %35 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %36 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %39 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = sub i32 %44, %45
  %47 = call i32 @csum_tcpudp_nofold(i32 %37, i32 %40, i32 %41, i32 %46, i32 0)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  store i32 128, i32* %51, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = add i32 %53, %54
  %56 = call i32 @__skb_checksum_complete_head(%struct.sk_buff* %52, i32 %55)
  store i32 %56, i32* %6, align 4
  br label %59

57:                                               ; preds = %5
  %58 = load i32, i32* %13, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %57, %34, %27
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @nf_ip_checksum(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @csum_tcpudp_nofold(i32, i32, i32, i32, i32) #1

declare dso_local i32 @__skb_checksum_complete_head(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
