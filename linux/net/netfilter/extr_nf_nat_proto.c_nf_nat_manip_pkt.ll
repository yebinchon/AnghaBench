; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_proto.c_nf_nat_manip_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_proto.c_nf_nat_manip_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.nf_conntrack_tuple = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@NF_ACCEPT = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_nat_manip_pkt(%struct.sk_buff* %0, %struct.nf_conn* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nf_conn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nf_conntrack_tuple, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %12 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call i32 @nf_ct_invert_tuple(%struct.nf_conntrack_tuple* %10, i32* %20)
  %22 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %10, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %41 [
    i32 128, label %25
    i32 129, label %33
  ]

25:                                               ; preds = %4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @nf_nat_ipv6_manip_pkt(%struct.sk_buff* %26, i32 0, %struct.nf_conntrack_tuple* %10, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %31, i32* %5, align 4
  br label %45

32:                                               ; preds = %25
  br label %43

33:                                               ; preds = %4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @nf_nat_ipv4_manip_pkt(%struct.sk_buff* %34, i32 0, %struct.nf_conntrack_tuple* %10, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %39, i32* %5, align 4
  br label %45

40:                                               ; preds = %33
  br label %43

41:                                               ; preds = %4
  %42 = call i32 @WARN_ON_ONCE(i32 1)
  br label %43

43:                                               ; preds = %41, %40, %32
  %44 = load i32, i32* @NF_DROP, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %43, %38, %30
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @nf_ct_invert_tuple(%struct.nf_conntrack_tuple*, i32*) #1

declare dso_local i32 @nf_nat_ipv6_manip_pkt(%struct.sk_buff*, i32, %struct.nf_conntrack_tuple*, i32) #1

declare dso_local i32 @nf_nat_ipv4_manip_pkt(%struct.sk_buff*, i32, %struct.nf_conntrack_tuple*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
