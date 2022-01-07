; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_log.c_audit_ip4.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_log.c_audit_ip4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_buffer = type { i32 }
%struct.sk_buff = type { i32 }
%struct.iphdr = type { i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c" saddr=%pI4 daddr=%pI4 proto=%hhu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audit_buffer*, %struct.sk_buff*)* @audit_ip4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audit_ip4(%struct.audit_buffer* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.audit_buffer*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.iphdr, align 4
  %7 = alloca %struct.iphdr*, align 8
  store %struct.audit_buffer* %0, %struct.audit_buffer** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = call i32 @skb_network_offset(%struct.sk_buff* %9)
  %11 = call %struct.iphdr* @skb_header_pointer(%struct.sk_buff* %8, i32 %10, i32 12, %struct.iphdr* %6)
  store %struct.iphdr* %11, %struct.iphdr** %7, align 8
  %12 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %13 = icmp ne %struct.iphdr* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %25

15:                                               ; preds = %2
  %16 = load %struct.audit_buffer*, %struct.audit_buffer** %4, align 8
  %17 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %18 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %17, i32 0, i32 2
  %19 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %20 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %19, i32 0, i32 1
  %21 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %22 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @audit_log_format(%struct.audit_buffer* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32* %18, i32* %20, i32 %23)
  store i32 1, i32* %3, align 4
  br label %25

25:                                               ; preds = %15, %14
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.iphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.iphdr*) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
