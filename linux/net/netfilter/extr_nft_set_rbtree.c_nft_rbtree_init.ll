; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_rbtree.c_nft_rbtree_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_rbtree.c_nft_rbtree_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_set = type { i32 }
%struct.nft_set_desc = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_rbtree = type { i32, i32, i32, i32 }

@RB_ROOT = common dso_local global i32 0, align 4
@nft_rbtree_gc = common dso_local global i32 0, align 4
@NFT_SET_TIMEOUT = common dso_local global i32 0, align 4
@system_power_efficient_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_set*, %struct.nft_set_desc*, %struct.nlattr**)* @nft_rbtree_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_rbtree_init(%struct.nft_set* %0, %struct.nft_set_desc* %1, %struct.nlattr** %2) #0 {
  %4 = alloca %struct.nft_set*, align 8
  %5 = alloca %struct.nft_set_desc*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.nft_rbtree*, align 8
  store %struct.nft_set* %0, %struct.nft_set** %4, align 8
  store %struct.nft_set_desc* %1, %struct.nft_set_desc** %5, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %6, align 8
  %8 = load %struct.nft_set*, %struct.nft_set** %4, align 8
  %9 = call %struct.nft_rbtree* @nft_set_priv(%struct.nft_set* %8)
  store %struct.nft_rbtree* %9, %struct.nft_rbtree** %7, align 8
  %10 = load %struct.nft_rbtree*, %struct.nft_rbtree** %7, align 8
  %11 = getelementptr inbounds %struct.nft_rbtree, %struct.nft_rbtree* %10, i32 0, i32 3
  %12 = call i32 @rwlock_init(i32* %11)
  %13 = load %struct.nft_rbtree*, %struct.nft_rbtree** %7, align 8
  %14 = getelementptr inbounds %struct.nft_rbtree, %struct.nft_rbtree* %13, i32 0, i32 2
  %15 = call i32 @seqcount_init(i32* %14)
  %16 = load i32, i32* @RB_ROOT, align 4
  %17 = load %struct.nft_rbtree*, %struct.nft_rbtree** %7, align 8
  %18 = getelementptr inbounds %struct.nft_rbtree, %struct.nft_rbtree* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.nft_rbtree*, %struct.nft_rbtree** %7, align 8
  %20 = getelementptr inbounds %struct.nft_rbtree, %struct.nft_rbtree* %19, i32 0, i32 0
  %21 = load i32, i32* @nft_rbtree_gc, align 4
  %22 = call i32 @INIT_DEFERRABLE_WORK(i32* %20, i32 %21)
  %23 = load %struct.nft_set*, %struct.nft_set** %4, align 8
  %24 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @NFT_SET_TIMEOUT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %3
  %30 = load i32, i32* @system_power_efficient_wq, align 4
  %31 = load %struct.nft_rbtree*, %struct.nft_rbtree** %7, align 8
  %32 = getelementptr inbounds %struct.nft_rbtree, %struct.nft_rbtree* %31, i32 0, i32 0
  %33 = load %struct.nft_set*, %struct.nft_set** %4, align 8
  %34 = call i32 @nft_set_gc_interval(%struct.nft_set* %33)
  %35 = call i32 @queue_delayed_work(i32 %30, i32* %32, i32 %34)
  br label %36

36:                                               ; preds = %29, %3
  ret i32 0
}

declare dso_local %struct.nft_rbtree* @nft_set_priv(%struct.nft_set*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @seqcount_init(i32*) #1

declare dso_local i32 @INIT_DEFERRABLE_WORK(i32*, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @nft_set_gc_interval(%struct.nft_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
