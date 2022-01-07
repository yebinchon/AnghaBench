; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_proto.c_udp_manip_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_proto.c_udp_manip_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.nf_conntrack_tuple = type { i32 }
%struct.udphdr = type { i64 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, %struct.nf_conntrack_tuple*, i32)* @udp_manip_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp_manip_pkt(%struct.sk_buff* %0, i32 %1, i32 %2, %struct.nf_conntrack_tuple* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nf_conntrack_tuple*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.udphdr*, align 8
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.nf_conntrack_tuple* %3, %struct.nf_conntrack_tuple** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = load i32, i32* %9, align 4
  %16 = zext i32 %15 to i64
  %17 = add i64 %16, 8
  %18 = trunc i64 %17 to i32
  %19 = call i64 @skb_ensure_writable(%struct.sk_buff* %14, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %50

22:                                               ; preds = %5
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = zext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = inttoptr i64 %28 to %struct.udphdr*
  store %struct.udphdr* %29, %struct.udphdr** %12, align 8
  %30 = load %struct.udphdr*, %struct.udphdr** %12, align 8
  %31 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %22
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %39 = icmp eq i64 %37, %38
  br label %40

40:                                               ; preds = %34, %22
  %41 = phi i1 [ true, %22 ], [ %39, %34 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %13, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.udphdr*, %struct.udphdr** %12, align 8
  %46 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %10, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @__udp_manip_pkt(%struct.sk_buff* %43, i32 %44, %struct.udphdr* %45, %struct.nf_conntrack_tuple* %46, i32 %47, i32 %48)
  store i32 1, i32* %6, align 4
  br label %50

50:                                               ; preds = %40, %21
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i64 @skb_ensure_writable(%struct.sk_buff*, i32) #1

declare dso_local i32 @__udp_manip_pkt(%struct.sk_buff*, i32, %struct.udphdr*, %struct.nf_conntrack_tuple*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
