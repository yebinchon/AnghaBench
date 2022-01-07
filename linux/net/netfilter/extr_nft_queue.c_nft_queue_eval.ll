; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_queue.c_nft_queue_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_queue.c_nft_queue_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr = type { i32 }
%struct.nft_regs = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.nft_pktinfo = type { i32 }
%struct.nft_queue = type { i32, i32, i64 }

@NFT_QUEUE_FLAG_CPU_FANOUT = common dso_local global i32 0, align 4
@jhash_initval = common dso_local global i32 0, align 4
@NFT_QUEUE_FLAG_BYPASS = common dso_local global i32 0, align 4
@NF_VERDICT_FLAG_QUEUE_BYPASS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_expr*, %struct.nft_regs*, %struct.nft_pktinfo*)* @nft_queue_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_queue_eval(%struct.nft_expr* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_expr*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca %struct.nft_queue*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.nft_expr* %0, %struct.nft_expr** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %11 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %12 = call %struct.nft_queue* @nft_expr_priv(%struct.nft_expr* %11)
  store %struct.nft_queue* %12, %struct.nft_queue** %7, align 8
  %13 = load %struct.nft_queue*, %struct.nft_queue** %7, align 8
  %14 = getelementptr inbounds %struct.nft_queue, %struct.nft_queue* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  %16 = load %struct.nft_queue*, %struct.nft_queue** %7, align 8
  %17 = getelementptr inbounds %struct.nft_queue, %struct.nft_queue* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %52

20:                                               ; preds = %3
  %21 = load %struct.nft_queue*, %struct.nft_queue** %7, align 8
  %22 = getelementptr inbounds %struct.nft_queue, %struct.nft_queue* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NFT_QUEUE_FLAG_CPU_FANOUT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %20
  %28 = call i32 (...) @raw_smp_processor_id()
  store i32 %28, i32* %10, align 4
  %29 = load %struct.nft_queue*, %struct.nft_queue** %7, align 8
  %30 = getelementptr inbounds %struct.nft_queue, %struct.nft_queue* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.nft_queue*, %struct.nft_queue** %7, align 8
  %34 = getelementptr inbounds %struct.nft_queue, %struct.nft_queue* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = srem i32 %32, %35
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %31, %37
  store i64 %38, i64* %8, align 8
  br label %51

39:                                               ; preds = %20
  %40 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %41 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.nft_queue*, %struct.nft_queue** %7, align 8
  %45 = getelementptr inbounds %struct.nft_queue, %struct.nft_queue* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %48 = call i32 @nft_pf(%struct.nft_pktinfo* %47)
  %49 = load i32, i32* @jhash_initval, align 4
  %50 = call i64 @nfqueue_hash(i32 %42, i64 %43, i32 %46, i32 %48, i32 %49)
  store i64 %50, i64* %8, align 8
  br label %51

51:                                               ; preds = %39, %27
  br label %52

52:                                               ; preds = %51, %3
  %53 = load i64, i64* %8, align 8
  %54 = call i64 @NF_QUEUE_NR(i64 %53)
  store i64 %54, i64* %9, align 8
  %55 = load %struct.nft_queue*, %struct.nft_queue** %7, align 8
  %56 = getelementptr inbounds %struct.nft_queue, %struct.nft_queue* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @NFT_QUEUE_FLAG_BYPASS, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %52
  %62 = load i64, i64* @NF_VERDICT_FLAG_QUEUE_BYPASS, align 8
  %63 = load i64, i64* %9, align 8
  %64 = or i64 %63, %62
  store i64 %64, i64* %9, align 8
  br label %65

65:                                               ; preds = %61, %52
  %66 = load i64, i64* %9, align 8
  %67 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %68 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i64 %66, i64* %69, align 8
  ret void
}

declare dso_local %struct.nft_queue* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i64 @nfqueue_hash(i32, i64, i32, i32, i32) #1

declare dso_local i32 @nft_pf(%struct.nft_pktinfo*) #1

declare dso_local i64 @NF_QUEUE_NR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
