; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto_icmp.c_icmp_pkt_to_tuple.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto_icmp.c_icmp_pkt_to_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net = type { i32 }
%struct.nf_conntrack_tuple = type { %struct.TYPE_14__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.icmphdr = type { i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @icmp_pkt_to_tuple(%struct.sk_buff* %0, i32 %1, %struct.net* %2, %struct.nf_conntrack_tuple* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.nf_conntrack_tuple*, align 8
  %10 = alloca %struct.icmphdr*, align 8
  %11 = alloca %struct.icmphdr, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.net* %2, %struct.net** %8, align 8
  store %struct.nf_conntrack_tuple* %3, %struct.nf_conntrack_tuple** %9, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.icmphdr* @skb_header_pointer(%struct.sk_buff* %12, i32 %13, i32 12, %struct.icmphdr* %11)
  store %struct.icmphdr* %14, %struct.icmphdr** %10, align 8
  %15 = load %struct.icmphdr*, %struct.icmphdr** %10, align 8
  %16 = icmp eq %struct.icmphdr* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %45

18:                                               ; preds = %4
  %19 = load %struct.icmphdr*, %struct.icmphdr** %10, align 8
  %20 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %9, align 8
  %23 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  store i32 %21, i32* %26, align 4
  %27 = load %struct.icmphdr*, %struct.icmphdr** %10, align 8
  %28 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %9, align 8
  %33 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  store i32 %31, i32* %36, align 4
  %37 = load %struct.icmphdr*, %struct.icmphdr** %10, align 8
  %38 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %9, align 8
  %41 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  store i32 %39, i32* %44, align 4
  store i32 1, i32* %5, align 4
  br label %45

45:                                               ; preds = %18, %17
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.icmphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.icmphdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
