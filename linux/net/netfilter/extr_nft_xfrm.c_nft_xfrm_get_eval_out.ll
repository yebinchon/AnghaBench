; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_xfrm.c_nft_xfrm_get_eval_out.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_xfrm.c_nft_xfrm_get_eval_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_xfrm = type { i32 }
%struct.nft_regs = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nft_pktinfo = type { i32 }
%struct.dst_entry = type { i64 }
%struct.xfrm_dst = type { %struct.dst_entry* }

@NFT_BREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_xfrm*, %struct.nft_regs*, %struct.nft_pktinfo*)* @nft_xfrm_get_eval_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_xfrm_get_eval_out(%struct.nft_xfrm* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_xfrm*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca %struct.dst_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.nft_xfrm* %0, %struct.nft_xfrm** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %9 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %10 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.dst_entry* @skb_dst(i32 %11)
  store %struct.dst_entry* %12, %struct.dst_entry** %7, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %37, %3
  %14 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %15 = icmp ne %struct.dst_entry* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %18 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %16, %13
  %22 = phi i1 [ false, %13 ], [ %20, %16 ]
  br i1 %22, label %23, label %44

23:                                               ; preds = %21
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.nft_xfrm*, %struct.nft_xfrm** %4, align 8
  %26 = getelementptr inbounds %struct.nft_xfrm, %struct.nft_xfrm* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %37

30:                                               ; preds = %23
  %31 = load %struct.nft_xfrm*, %struct.nft_xfrm** %4, align 8
  %32 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %33 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %34 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @nft_xfrm_state_get_key(%struct.nft_xfrm* %31, %struct.nft_regs* %32, i64 %35)
  br label %49

37:                                               ; preds = %29
  %38 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %39 = bitcast %struct.dst_entry* %38 to %struct.xfrm_dst*
  %40 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %39, i32 0, i32 0
  %41 = load %struct.dst_entry*, %struct.dst_entry** %40, align 8
  store %struct.dst_entry* %41, %struct.dst_entry** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %13

44:                                               ; preds = %21
  %45 = load i32, i32* @NFT_BREAK, align 4
  %46 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %47 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  br label %49

49:                                               ; preds = %44, %30
  ret void
}

declare dso_local %struct.dst_entry* @skb_dst(i32) #1

declare dso_local i32 @nft_xfrm_state_get_key(%struct.nft_xfrm*, %struct.nft_regs*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
