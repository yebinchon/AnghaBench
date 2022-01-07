; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_proto.c_nf_nat_ipv4_in.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_proto.c_nf_nat_ipv4_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_hook_state = type { i32 }
%struct.TYPE_2__ = type { i64 }

@NF_ACCEPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sk_buff*, %struct.nf_hook_state*)* @nf_nat_ipv4_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_nat_ipv4_in(i8* %0, %struct.sk_buff* %1, %struct.nf_hook_state* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nf_hook_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.nf_hook_state* %2, %struct.nf_hook_state** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %8, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = load %struct.nf_hook_state*, %struct.nf_hook_state** %6, align 8
  %16 = call i32 @nf_nat_ipv4_fn(i8* %13, %struct.sk_buff* %14, %struct.nf_hook_state* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @NF_ACCEPT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %3
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %21, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call i32 @skb_dst_drop(%struct.sk_buff* %28)
  br label %30

30:                                               ; preds = %27, %20, %3
  %31 = load i32, i32* %7, align 4
  ret i32 %31
}

declare dso_local %struct.TYPE_2__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @nf_nat_ipv4_fn(i8*, %struct.sk_buff*, %struct.nf_hook_state*) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
