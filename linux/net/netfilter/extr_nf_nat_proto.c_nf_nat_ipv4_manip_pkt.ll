; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_proto.c_nf_nat_ipv4_manip_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_proto.c_nf_nat_ipv4_manip_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.nf_conntrack_tuple = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.iphdr = type { i32, i32, i32, i32 }

@NF_NAT_MANIP_SRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.nf_conntrack_tuple*, i32)* @nf_nat_ipv4_manip_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_nat_ipv4_manip_pkt(%struct.sk_buff* %0, i32 %1, %struct.nf_conntrack_tuple* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_conntrack_tuple*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iphdr*, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.nf_conntrack_tuple* %2, %struct.nf_conntrack_tuple** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = zext i32 %13 to i64
  %15 = add i64 %14, 16
  %16 = trunc i64 %15 to i32
  %17 = call i64 @skb_ensure_writable(%struct.sk_buff* %12, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %94

20:                                               ; preds = %4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr i8, i8* %24, i64 %26
  %28 = bitcast i8* %27 to %struct.iphdr*
  store %struct.iphdr* %28, %struct.iphdr** %10, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %31 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %32, 4
  %34 = add i32 %29, %33
  store i32 %34, i32* %11, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @l4proto_manip_pkt(%struct.sk_buff* %35, i32 %36, i32 %37, %struct.nf_conntrack_tuple* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %94

43:                                               ; preds = %20
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr i8, i8* %47, i64 %49
  %51 = bitcast i8* %50 to %struct.iphdr*
  store %struct.iphdr* %51, %struct.iphdr** %10, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @NF_NAT_MANIP_SRC, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %74

55:                                               ; preds = %43
  %56 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %57 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %56, i32 0, i32 2
  %58 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %59 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %8, align 8
  %62 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @csum_replace4(i32* %57, i32 %60, i32 %65)
  %67 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %8, align 8
  %68 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %73 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  br label %93

74:                                               ; preds = %43
  %75 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %76 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %75, i32 0, i32 2
  %77 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %78 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %8, align 8
  %81 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @csum_replace4(i32* %76, i32 %79, i32 %84)
  %86 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %8, align 8
  %87 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.iphdr*, %struct.iphdr** %10, align 8
  %92 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %74, %55
  store i32 1, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %42, %19
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i64 @skb_ensure_writable(%struct.sk_buff*, i32) #1

declare dso_local i32 @l4proto_manip_pkt(%struct.sk_buff*, i32, i32, %struct.nf_conntrack_tuple*, i32) #1

declare dso_local i32 @csum_replace4(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
