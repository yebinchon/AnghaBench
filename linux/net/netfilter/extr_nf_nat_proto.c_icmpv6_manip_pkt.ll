; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_proto.c_icmpv6_manip_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_proto.c_icmpv6_manip_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.nf_conntrack_tuple = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.icmp6hdr = type { i64, i32, i32 }

@ICMPV6_ECHO_REQUEST = common dso_local global i64 0, align 8
@ICMPV6_ECHO_REPLY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, %struct.nf_conntrack_tuple*, i32)* @icmpv6_manip_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icmpv6_manip_pkt(%struct.sk_buff* %0, i32 %1, i32 %2, %struct.nf_conntrack_tuple* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nf_conntrack_tuple*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.icmp6hdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.nf_conntrack_tuple* %3, %struct.nf_conntrack_tuple** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = load i32, i32* %9, align 4
  %15 = zext i32 %14 to i64
  %16 = add i64 %15, 16
  %17 = trunc i64 %16 to i32
  %18 = call i64 @skb_ensure_writable(%struct.sk_buff* %13, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %70

21:                                               ; preds = %5
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = zext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = inttoptr i64 %27 to %struct.icmp6hdr*
  store %struct.icmp6hdr* %28, %struct.icmp6hdr** %12, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.icmp6hdr*, %struct.icmp6hdr** %12, align 8
  %32 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %31, i32 0, i32 2
  %33 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @nf_csum_update(%struct.sk_buff* %29, i32 %30, i32* %32, %struct.nf_conntrack_tuple* %33, i32 %34)
  %36 = load %struct.icmp6hdr*, %struct.icmp6hdr** %12, align 8
  %37 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ICMPV6_ECHO_REQUEST, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %21
  %42 = load %struct.icmp6hdr*, %struct.icmp6hdr** %12, align 8
  %43 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ICMPV6_ECHO_REPLY, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %41, %21
  %48 = load %struct.icmp6hdr*, %struct.icmp6hdr** %12, align 8
  %49 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %48, i32 0, i32 2
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = load %struct.icmp6hdr*, %struct.icmp6hdr** %12, align 8
  %52 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %10, align 8
  %55 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @inet_proto_csum_replace2(i32* %49, %struct.sk_buff* %50, i32 %53, i32 %59, i32 0)
  %61 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %10, align 8
  %62 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.icmp6hdr*, %struct.icmp6hdr** %12, align 8
  %68 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %47, %41
  store i32 1, i32* %6, align 4
  br label %70

70:                                               ; preds = %69, %20
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i64 @skb_ensure_writable(%struct.sk_buff*, i32) #1

declare dso_local i32 @nf_csum_update(%struct.sk_buff*, i32, i32*, %struct.nf_conntrack_tuple*, i32) #1

declare dso_local i32 @inet_proto_csum_replace2(i32*, %struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
