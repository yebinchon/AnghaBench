; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_rbtree.c_nft_rbtree_interval_end.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_rbtree.c_nft_rbtree_interval_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_rbtree_elem = type { i32 }

@NFT_SET_EXT_FLAGS = common dso_local global i32 0, align 4
@NFT_SET_ELEM_INTERVAL_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_rbtree_elem*)* @nft_rbtree_interval_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_rbtree_interval_end(%struct.nft_rbtree_elem* %0) #0 {
  %2 = alloca %struct.nft_rbtree_elem*, align 8
  store %struct.nft_rbtree_elem* %0, %struct.nft_rbtree_elem** %2, align 8
  %3 = load %struct.nft_rbtree_elem*, %struct.nft_rbtree_elem** %2, align 8
  %4 = getelementptr inbounds %struct.nft_rbtree_elem, %struct.nft_rbtree_elem* %3, i32 0, i32 0
  %5 = load i32, i32* @NFT_SET_EXT_FLAGS, align 4
  %6 = call i64 @nft_set_ext_exists(i32* %4, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.nft_rbtree_elem*, %struct.nft_rbtree_elem** %2, align 8
  %10 = getelementptr inbounds %struct.nft_rbtree_elem, %struct.nft_rbtree_elem* %9, i32 0, i32 0
  %11 = call i32* @nft_set_ext_flags(i32* %10)
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @NFT_SET_ELEM_INTERVAL_END, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %8, %1
  %17 = phi i1 [ false, %1 ], [ %15, %8 ]
  %18 = zext i1 %17 to i32
  ret i32 %18
}

declare dso_local i64 @nft_set_ext_exists(i32*, i32) #1

declare dso_local i32* @nft_set_ext_flags(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
