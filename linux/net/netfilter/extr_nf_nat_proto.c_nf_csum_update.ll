; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_proto.c_nf_csum_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_proto.c_nf_csum_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conntrack_tuple = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32, i32*, %struct.nf_conntrack_tuple*, i32)* @nf_csum_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf_csum_update(%struct.sk_buff* %0, i32 %1, i32* %2, %struct.nf_conntrack_tuple* %3, i32 %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.nf_conntrack_tuple*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.nf_conntrack_tuple* %3, %struct.nf_conntrack_tuple** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %9, align 8
  %12 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %29 [
    i32 129, label %15
    i32 128, label %22
  ]

15:                                               ; preds = %5
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @nf_nat_ipv4_csum_update(%struct.sk_buff* %16, i32 %17, i32* %18, %struct.nf_conntrack_tuple* %19, i32 %20)
  br label %29

22:                                               ; preds = %5
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @nf_nat_ipv6_csum_update(%struct.sk_buff* %23, i32 %24, i32* %25, %struct.nf_conntrack_tuple* %26, i32 %27)
  br label %29

29:                                               ; preds = %15, %22, %5
  ret void
}

declare dso_local i32 @nf_nat_ipv4_csum_update(%struct.sk_buff*, i32, i32*, %struct.nf_conntrack_tuple*, i32) #1

declare dso_local i32 @nf_nat_ipv6_csum_update(%struct.sk_buff*, i32, i32*, %struct.nf_conntrack_tuple*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
