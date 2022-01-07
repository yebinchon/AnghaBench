; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_xfrm.c_nft_xfrm_get_eval_in.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_xfrm.c_nft_xfrm_get_eval_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_xfrm = type { i64 }
%struct.nft_regs = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nft_pktinfo = type { i32 }
%struct.sec_path = type { i64, %struct.xfrm_state** }
%struct.xfrm_state = type { i32 }

@NFT_BREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_xfrm*, %struct.nft_regs*, %struct.nft_pktinfo*)* @nft_xfrm_get_eval_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_xfrm_get_eval_in(%struct.nft_xfrm* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_xfrm*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca %struct.sec_path*, align 8
  %8 = alloca %struct.xfrm_state*, align 8
  store %struct.nft_xfrm* %0, %struct.nft_xfrm** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %9 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %10 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.sec_path* @skb_sec_path(i32 %11)
  store %struct.sec_path* %12, %struct.sec_path** %7, align 8
  %13 = load %struct.sec_path*, %struct.sec_path** %7, align 8
  %14 = icmp eq %struct.sec_path* %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %3
  %16 = load %struct.sec_path*, %struct.sec_path** %7, align 8
  %17 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.nft_xfrm*, %struct.nft_xfrm** %4, align 8
  %20 = getelementptr inbounds %struct.nft_xfrm, %struct.nft_xfrm* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ule i64 %18, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %15, %3
  %24 = load i32, i32* @NFT_BREAK, align 4
  %25 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %26 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  br label %41

28:                                               ; preds = %15
  %29 = load %struct.sec_path*, %struct.sec_path** %7, align 8
  %30 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %29, i32 0, i32 1
  %31 = load %struct.xfrm_state**, %struct.xfrm_state*** %30, align 8
  %32 = load %struct.nft_xfrm*, %struct.nft_xfrm** %4, align 8
  %33 = getelementptr inbounds %struct.nft_xfrm, %struct.nft_xfrm* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.xfrm_state*, %struct.xfrm_state** %31, i64 %34
  %36 = load %struct.xfrm_state*, %struct.xfrm_state** %35, align 8
  store %struct.xfrm_state* %36, %struct.xfrm_state** %8, align 8
  %37 = load %struct.nft_xfrm*, %struct.nft_xfrm** %4, align 8
  %38 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %39 = load %struct.xfrm_state*, %struct.xfrm_state** %8, align 8
  %40 = call i32 @nft_xfrm_state_get_key(%struct.nft_xfrm* %37, %struct.nft_regs* %38, %struct.xfrm_state* %39)
  br label %41

41:                                               ; preds = %28, %23
  ret void
}

declare dso_local %struct.sec_path* @skb_sec_path(i32) #1

declare dso_local i32 @nft_xfrm_state_get_key(%struct.nft_xfrm*, %struct.nft_regs*, %struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
