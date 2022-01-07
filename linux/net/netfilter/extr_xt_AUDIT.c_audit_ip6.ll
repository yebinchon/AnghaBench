; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_AUDIT.c_audit_ip6.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_AUDIT.c_audit_ip6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_buffer = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ipv6hdr = type { i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c" saddr=%pI6c daddr=%pI6c proto=%hhu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audit_buffer*, %struct.sk_buff*)* @audit_ip6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audit_ip6(%struct.audit_buffer* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.audit_buffer*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ipv6hdr, align 4
  %7 = alloca %struct.ipv6hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.audit_buffer* %0, %struct.audit_buffer** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call i64 @skb_network_offset(%struct.sk_buff* %11)
  %13 = call %struct.ipv6hdr* @skb_header_pointer(%struct.sk_buff* %10, i64 %12, i32 12, %struct.ipv6hdr* %6)
  store %struct.ipv6hdr* %13, %struct.ipv6hdr** %7, align 8
  %14 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %15 = icmp ne %struct.ipv6hdr* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

17:                                               ; preds = %2
  %18 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %19 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call i64 @skb_network_offset(%struct.sk_buff* %22)
  %24 = add i64 %23, 12
  %25 = call i32 @ipv6_skip_exthdr(%struct.sk_buff* %21, i64 %24, i32* %8, i32* %9)
  %26 = load %struct.audit_buffer*, %struct.audit_buffer** %4, align 8
  %27 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %28 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %27, i32 0, i32 1
  %29 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %30 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %29, i32 0, i32 0
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @audit_log_format(%struct.audit_buffer* %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32* %28, i32* %30, i32 %31)
  store i32 1, i32* %3, align 4
  br label %33

33:                                               ; preds = %17, %16
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.ipv6hdr* @skb_header_pointer(%struct.sk_buff*, i64, i32, %struct.ipv6hdr*) #1

declare dso_local i64 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_skip_exthdr(%struct.sk_buff*, i64, i32*, i32*) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
