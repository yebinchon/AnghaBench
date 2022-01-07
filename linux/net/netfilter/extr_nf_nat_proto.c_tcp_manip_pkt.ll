; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_proto.c_tcp_manip_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_proto.c_tcp_manip_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.nf_conntrack_tuple = type { %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.tcphdr = type { i32, i32, i32 }

@NF_NAT_MANIP_SRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, %struct.nf_conntrack_tuple*, i32)* @tcp_manip_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_manip_pkt(%struct.sk_buff* %0, i32 %1, i32 %2, %struct.nf_conntrack_tuple* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nf_conntrack_tuple*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.tcphdr*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.nf_conntrack_tuple* %3, %struct.nf_conntrack_tuple** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 8, i32* %16, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = zext i32 %19 to i64
  %21 = load i32, i32* %9, align 4
  %22 = zext i32 %21 to i64
  %23 = add i64 %22, 12
  %24 = icmp uge i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i32 12, i32* %16, align 4
  br label %26

26:                                               ; preds = %25, %5
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %16, align 4
  %30 = add i32 %28, %29
  %31 = call i64 @skb_ensure_writable(%struct.sk_buff* %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %86

34:                                               ; preds = %26
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = inttoptr i64 %40 to %struct.tcphdr*
  store %struct.tcphdr* %41, %struct.tcphdr** %12, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @NF_NAT_MANIP_SRC, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %34
  %46 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %10, align 8
  %47 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %14, align 4
  %52 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %53 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %52, i32 0, i32 2
  store i32* %53, i32** %13, align 8
  br label %63

54:                                               ; preds = %34
  %55 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %10, align 8
  %56 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %14, align 4
  %61 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %62 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %61, i32 0, i32 1
  store i32* %62, i32** %13, align 8
  br label %63

63:                                               ; preds = %54, %45
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load i32*, i32** %13, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %16, align 4
  %69 = sext i32 %68 to i64
  %70 = icmp ult i64 %69, 12
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  store i32 1, i32* %6, align 4
  br label %86

72:                                               ; preds = %63
  %73 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %76 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %75, i32 0, i32 0
  %77 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %10, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @nf_csum_update(%struct.sk_buff* %73, i32 %74, i32* %76, %struct.nf_conntrack_tuple* %77, i32 %78)
  %80 = load %struct.tcphdr*, %struct.tcphdr** %12, align 8
  %81 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %80, i32 0, i32 0
  %82 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @inet_proto_csum_replace2(i32* %81, %struct.sk_buff* %82, i32 %83, i32 %84, i32 0)
  store i32 1, i32* %6, align 4
  br label %86

86:                                               ; preds = %72, %71, %33
  %87 = load i32, i32* %6, align 4
  ret i32 %87
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
