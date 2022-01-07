; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto_icmpv6.c_icmpv6_pkt_to_tuple.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto_icmpv6.c_icmpv6_pkt_to_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net = type { i32 }
%struct.nf_conntrack_tuple = type { %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.icmp6hdr = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @icmpv6_pkt_to_tuple(%struct.sk_buff* %0, i32 %1, %struct.net* %2, %struct.nf_conntrack_tuple* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.nf_conntrack_tuple*, align 8
  %10 = alloca %struct.icmp6hdr*, align 8
  %11 = alloca %struct.icmp6hdr, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.net* %2, %struct.net** %8, align 8
  store %struct.nf_conntrack_tuple* %3, %struct.nf_conntrack_tuple** %9, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.icmp6hdr* @skb_header_pointer(%struct.sk_buff* %12, i32 %13, i32 12, %struct.icmp6hdr* %11)
  store %struct.icmp6hdr* %14, %struct.icmp6hdr** %10, align 8
  %15 = load %struct.icmp6hdr*, %struct.icmp6hdr** %10, align 8
  %16 = icmp eq %struct.icmp6hdr* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %43

18:                                               ; preds = %4
  %19 = load %struct.icmp6hdr*, %struct.icmp6hdr** %10, align 8
  %20 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %9, align 8
  %23 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  store i32 %21, i32* %26, align 4
  %27 = load %struct.icmp6hdr*, %struct.icmp6hdr** %10, align 8
  %28 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %9, align 8
  %31 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i32 %29, i32* %34, align 4
  %35 = load %struct.icmp6hdr*, %struct.icmp6hdr** %10, align 8
  %36 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %9, align 8
  %39 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  store i32 %37, i32* %42, align 4
  store i32 1, i32* %5, align 4
  br label %43

43:                                               ; preds = %18, %17
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local %struct.icmp6hdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.icmp6hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
