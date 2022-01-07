; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_rbtree.c_nft_rbtree_remove.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_rbtree.c_nft_rbtree_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nft_set = type { i32 }
%struct.nft_set_elem = type { %struct.nft_rbtree_elem* }
%struct.nft_rbtree_elem = type { i32 }
%struct.nft_rbtree = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.nft_set*, %struct.nft_set_elem*)* @nft_rbtree_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_rbtree_remove(%struct.net* %0, %struct.nft_set* %1, %struct.nft_set_elem* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.nft_set*, align 8
  %6 = alloca %struct.nft_set_elem*, align 8
  %7 = alloca %struct.nft_rbtree*, align 8
  %8 = alloca %struct.nft_rbtree_elem*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.nft_set* %1, %struct.nft_set** %5, align 8
  store %struct.nft_set_elem* %2, %struct.nft_set_elem** %6, align 8
  %9 = load %struct.nft_set*, %struct.nft_set** %5, align 8
  %10 = call %struct.nft_rbtree* @nft_set_priv(%struct.nft_set* %9)
  store %struct.nft_rbtree* %10, %struct.nft_rbtree** %7, align 8
  %11 = load %struct.nft_set_elem*, %struct.nft_set_elem** %6, align 8
  %12 = getelementptr inbounds %struct.nft_set_elem, %struct.nft_set_elem* %11, i32 0, i32 0
  %13 = load %struct.nft_rbtree_elem*, %struct.nft_rbtree_elem** %12, align 8
  store %struct.nft_rbtree_elem* %13, %struct.nft_rbtree_elem** %8, align 8
  %14 = load %struct.nft_rbtree*, %struct.nft_rbtree** %7, align 8
  %15 = getelementptr inbounds %struct.nft_rbtree, %struct.nft_rbtree* %14, i32 0, i32 0
  %16 = call i32 @write_lock_bh(i32* %15)
  %17 = load %struct.nft_rbtree*, %struct.nft_rbtree** %7, align 8
  %18 = getelementptr inbounds %struct.nft_rbtree, %struct.nft_rbtree* %17, i32 0, i32 1
  %19 = call i32 @write_seqcount_begin(i32* %18)
  %20 = load %struct.nft_rbtree_elem*, %struct.nft_rbtree_elem** %8, align 8
  %21 = getelementptr inbounds %struct.nft_rbtree_elem, %struct.nft_rbtree_elem* %20, i32 0, i32 0
  %22 = load %struct.nft_rbtree*, %struct.nft_rbtree** %7, align 8
  %23 = getelementptr inbounds %struct.nft_rbtree, %struct.nft_rbtree* %22, i32 0, i32 2
  %24 = call i32 @rb_erase(i32* %21, i32* %23)
  %25 = load %struct.nft_rbtree*, %struct.nft_rbtree** %7, align 8
  %26 = getelementptr inbounds %struct.nft_rbtree, %struct.nft_rbtree* %25, i32 0, i32 1
  %27 = call i32 @write_seqcount_end(i32* %26)
  %28 = load %struct.nft_rbtree*, %struct.nft_rbtree** %7, align 8
  %29 = getelementptr inbounds %struct.nft_rbtree, %struct.nft_rbtree* %28, i32 0, i32 0
  %30 = call i32 @write_unlock_bh(i32* %29)
  ret void
}

declare dso_local %struct.nft_rbtree* @nft_set_priv(%struct.nft_set*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_seqcount_begin(i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @write_seqcount_end(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
