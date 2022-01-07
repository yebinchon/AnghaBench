; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_proto.c_l4proto_manip_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_proto.c_l4proto_manip_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conntrack_tuple = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, %struct.nf_conntrack_tuple*, i32)* @l4proto_manip_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l4proto_manip_pkt(%struct.sk_buff* %0, i32 %1, i32 %2, %struct.nf_conntrack_tuple* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nf_conntrack_tuple*, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.nf_conntrack_tuple* %3, %struct.nf_conntrack_tuple** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %10, align 8
  %13 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %72 [
    i32 130, label %16
    i32 129, label %23
    i32 128, label %30
    i32 131, label %37
    i32 133, label %44
    i32 132, label %51
    i32 135, label %58
    i32 134, label %65
  ]

16:                                               ; preds = %5
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @tcp_manip_pkt(%struct.sk_buff* %17, i32 %18, i32 %19, %struct.nf_conntrack_tuple* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  br label %73

23:                                               ; preds = %5
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @udp_manip_pkt(%struct.sk_buff* %24, i32 %25, i32 %26, %struct.nf_conntrack_tuple* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  br label %73

30:                                               ; preds = %5
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @udplite_manip_pkt(%struct.sk_buff* %31, i32 %32, i32 %33, %struct.nf_conntrack_tuple* %34, i32 %35)
  store i32 %36, i32* %6, align 4
  br label %73

37:                                               ; preds = %5
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @sctp_manip_pkt(%struct.sk_buff* %38, i32 %39, i32 %40, %struct.nf_conntrack_tuple* %41, i32 %42)
  store i32 %43, i32* %6, align 4
  br label %73

44:                                               ; preds = %5
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @icmp_manip_pkt(%struct.sk_buff* %45, i32 %46, i32 %47, %struct.nf_conntrack_tuple* %48, i32 %49)
  store i32 %50, i32* %6, align 4
  br label %73

51:                                               ; preds = %5
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %10, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @icmpv6_manip_pkt(%struct.sk_buff* %52, i32 %53, i32 %54, %struct.nf_conntrack_tuple* %55, i32 %56)
  store i32 %57, i32* %6, align 4
  br label %73

58:                                               ; preds = %5
  %59 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %10, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @dccp_manip_pkt(%struct.sk_buff* %59, i32 %60, i32 %61, %struct.nf_conntrack_tuple* %62, i32 %63)
  store i32 %64, i32* %6, align 4
  br label %73

65:                                               ; preds = %5
  %66 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %10, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @gre_manip_pkt(%struct.sk_buff* %66, i32 %67, i32 %68, %struct.nf_conntrack_tuple* %69, i32 %70)
  store i32 %71, i32* %6, align 4
  br label %73

72:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %73

73:                                               ; preds = %72, %65, %58, %51, %44, %37, %30, %23, %16
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @tcp_manip_pkt(%struct.sk_buff*, i32, i32, %struct.nf_conntrack_tuple*, i32) #1

declare dso_local i32 @udp_manip_pkt(%struct.sk_buff*, i32, i32, %struct.nf_conntrack_tuple*, i32) #1

declare dso_local i32 @udplite_manip_pkt(%struct.sk_buff*, i32, i32, %struct.nf_conntrack_tuple*, i32) #1

declare dso_local i32 @sctp_manip_pkt(%struct.sk_buff*, i32, i32, %struct.nf_conntrack_tuple*, i32) #1

declare dso_local i32 @icmp_manip_pkt(%struct.sk_buff*, i32, i32, %struct.nf_conntrack_tuple*, i32) #1

declare dso_local i32 @icmpv6_manip_pkt(%struct.sk_buff*, i32, i32, %struct.nf_conntrack_tuple*, i32) #1

declare dso_local i32 @dccp_manip_pkt(%struct.sk_buff*, i32, i32, %struct.nf_conntrack_tuple*, i32) #1

declare dso_local i32 @gre_manip_pkt(%struct.sk_buff*, i32, i32, %struct.nf_conntrack_tuple*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
