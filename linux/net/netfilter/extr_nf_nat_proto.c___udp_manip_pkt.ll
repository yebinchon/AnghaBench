; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_proto.c___udp_manip_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_proto.c___udp_manip_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.udphdr = type { i64, i32, i32 }
%struct.nf_conntrack_tuple = type { %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@NF_NAT_MANIP_SRC = common dso_local global i32 0, align 4
@CSUM_MANGLED_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32, %struct.udphdr*, %struct.nf_conntrack_tuple*, i32, i32)* @__udp_manip_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__udp_manip_pkt(%struct.sk_buff* %0, i32 %1, %struct.udphdr* %2, %struct.nf_conntrack_tuple* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.udphdr*, align 8
  %10 = alloca %struct.nf_conntrack_tuple*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.udphdr* %2, %struct.udphdr** %9, align 8
  store %struct.nf_conntrack_tuple* %3, %struct.nf_conntrack_tuple** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* @NF_NAT_MANIP_SRC, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %6
  %19 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %10, align 8
  %20 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %14, align 4
  %25 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %26 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %25, i32 0, i32 2
  store i32* %26, i32** %13, align 8
  br label %36

27:                                               ; preds = %6
  %28 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %10, align 8
  %29 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %14, align 4
  %34 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %35 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %34, i32 0, i32 1
  store i32* %35, i32** %13, align 8
  br label %36

36:                                               ; preds = %27, %18
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %36
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %43 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %42, i32 0, i32 0
  %44 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @nf_csum_update(%struct.sk_buff* %40, i32 %41, i64* %43, %struct.nf_conntrack_tuple* %44, i32 %45)
  %47 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %48 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %47, i32 0, i32 0
  %49 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @inet_proto_csum_replace2(i64* %48, %struct.sk_buff* %49, i32 %51, i32 %52, i32 0)
  %54 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %55 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %39
  %59 = load i64, i64* @CSUM_MANGLED_0, align 8
  %60 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %61 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %58, %39
  br label %63

63:                                               ; preds = %62, %36
  %64 = load i32, i32* %14, align 4
  %65 = load i32*, i32** %13, align 8
  store i32 %64, i32* %65, align 4
  ret void
}

declare dso_local i32 @nf_csum_update(%struct.sk_buff*, i32, i64*, %struct.nf_conntrack_tuple*, i32) #1

declare dso_local i32 @inet_proto_csum_replace2(i64*, %struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
