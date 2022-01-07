; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_sip.c_nf_nat_sip_seq_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_sip.c_nf_nat_sip_seq_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.nf_conn = type { i32 }
%struct.tcphdr = type { i32 }

@IPPROTO_TCP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32, i64)* @nf_nat_sip_seq_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf_nat_sip_seq_adjust(%struct.sk_buff* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_conn*, align 8
  %9 = alloca %struct.tcphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %10, i32* %7)
  store %struct.nf_conn* %11, %struct.nf_conn** %8, align 8
  %12 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %13 = call i64 @nf_ct_protonum(%struct.nf_conn* %12)
  %14 = load i64, i64* @IPPROTO_TCP, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %3
  br label %35

20:                                               ; preds = %16
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = inttoptr i64 %26 to %struct.tcphdr*
  store %struct.tcphdr* %27, %struct.tcphdr** %9, align 8
  %28 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %31 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @nf_ct_seqadj_set(%struct.nf_conn* %28, i32 %29, i32 %32, i64 %33)
  br label %35

35:                                               ; preds = %20, %19
  ret void
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i64 @nf_ct_protonum(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_seqadj_set(%struct.nf_conn*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
