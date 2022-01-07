; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_flow_dissector.c___skb_flow_dissect_ipv4.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_flow_dissector.c___skb_flow_dissect_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.flow_dissector = type { i32 }
%struct.iphdr = type { i32, i32 }
%struct.flow_dissector_key_ip = type { i32, i32 }

@FLOW_DISSECTOR_KEY_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.flow_dissector*, i8*, i8*, %struct.iphdr*)* @__skb_flow_dissect_ipv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__skb_flow_dissect_ipv4(%struct.sk_buff* %0, %struct.flow_dissector* %1, i8* %2, i8* %3, %struct.iphdr* %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.flow_dissector*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.iphdr*, align 8
  %11 = alloca %struct.flow_dissector_key_ip*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.flow_dissector* %1, %struct.flow_dissector** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.iphdr* %4, %struct.iphdr** %10, align 8
  %12 = load %struct.flow_dissector*, %struct.flow_dissector** %7, align 8
  %13 = load i32, i32* @FLOW_DISSECTOR_KEY_IP, align 4
  %14 = call i32 @dissector_uses_key(%struct.flow_dissector* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  br label %32

17:                                               ; preds = %5
  %18 = load %struct.flow_dissector*, %struct.flow_dissector** %7, align 8
  %19 = load i32, i32* @FLOW_DISSECTOR_KEY_IP, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = call %struct.flow_dissector_key_ip* @skb_flow_dissector_target(%struct.flow_dissector* %18, i32 %19, i8* %20)
  store %struct.flow_dissector_key_ip* %21, %struct.flow_dissector_key_ip** %11, align 8
  %22 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %23 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.flow_dissector_key_ip*, %struct.flow_dissector_key_ip** %11, align 8
  %26 = getelementptr inbounds %struct.flow_dissector_key_ip, %struct.flow_dissector_key_ip* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %28 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.flow_dissector_key_ip*, %struct.flow_dissector_key_ip** %11, align 8
  %31 = getelementptr inbounds %struct.flow_dissector_key_ip, %struct.flow_dissector_key_ip* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @dissector_uses_key(%struct.flow_dissector*, i32) #1

declare dso_local %struct.flow_dissector_key_ip* @skb_flow_dissector_target(%struct.flow_dissector*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
