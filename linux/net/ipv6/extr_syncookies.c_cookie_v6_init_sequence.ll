; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_syncookies.c_cookie_v6_init_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_syncookies.c_cookie_v6_init_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ipv6hdr = type { i32 }
%struct.tcphdr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cookie_v6_init_sequence(%struct.sk_buff* %0, i32* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ipv6hdr*, align 8
  %6 = alloca %struct.tcphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %7)
  store %struct.ipv6hdr* %8, %struct.ipv6hdr** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = call %struct.tcphdr* @tcp_hdr(%struct.sk_buff* %9)
  store %struct.tcphdr* %10, %struct.tcphdr** %6, align 8
  %11 = load %struct.ipv6hdr*, %struct.ipv6hdr** %5, align 8
  %12 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @__cookie_v6_init_sequence(%struct.ipv6hdr* %11, %struct.tcphdr* %12, i32* %13)
  ret i32 %14
}

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.tcphdr* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @__cookie_v6_init_sequence(%struct.ipv6hdr*, %struct.tcphdr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
