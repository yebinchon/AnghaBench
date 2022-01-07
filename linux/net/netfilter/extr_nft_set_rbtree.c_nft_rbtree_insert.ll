; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_rbtree.c_nft_rbtree_insert.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_rbtree.c_nft_rbtree_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nft_set = type { i32 }
%struct.nft_set_elem = type { %struct.nft_rbtree_elem* }
%struct.nft_rbtree_elem = type { i32 }
%struct.nft_set_ext = type { i32 }
%struct.nft_rbtree = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.nft_set*, %struct.nft_set_elem*, %struct.nft_set_ext**)* @nft_rbtree_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_rbtree_insert(%struct.net* %0, %struct.nft_set* %1, %struct.nft_set_elem* %2, %struct.nft_set_ext** %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.nft_set*, align 8
  %7 = alloca %struct.nft_set_elem*, align 8
  %8 = alloca %struct.nft_set_ext**, align 8
  %9 = alloca %struct.nft_rbtree*, align 8
  %10 = alloca %struct.nft_rbtree_elem*, align 8
  %11 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.nft_set* %1, %struct.nft_set** %6, align 8
  store %struct.nft_set_elem* %2, %struct.nft_set_elem** %7, align 8
  store %struct.nft_set_ext** %3, %struct.nft_set_ext*** %8, align 8
  %12 = load %struct.nft_set*, %struct.nft_set** %6, align 8
  %13 = call %struct.nft_rbtree* @nft_set_priv(%struct.nft_set* %12)
  store %struct.nft_rbtree* %13, %struct.nft_rbtree** %9, align 8
  %14 = load %struct.nft_set_elem*, %struct.nft_set_elem** %7, align 8
  %15 = getelementptr inbounds %struct.nft_set_elem, %struct.nft_set_elem* %14, i32 0, i32 0
  %16 = load %struct.nft_rbtree_elem*, %struct.nft_rbtree_elem** %15, align 8
  store %struct.nft_rbtree_elem* %16, %struct.nft_rbtree_elem** %10, align 8
  %17 = load %struct.nft_rbtree*, %struct.nft_rbtree** %9, align 8
  %18 = getelementptr inbounds %struct.nft_rbtree, %struct.nft_rbtree* %17, i32 0, i32 0
  %19 = call i32 @write_lock_bh(i32* %18)
  %20 = load %struct.nft_rbtree*, %struct.nft_rbtree** %9, align 8
  %21 = getelementptr inbounds %struct.nft_rbtree, %struct.nft_rbtree* %20, i32 0, i32 1
  %22 = call i32 @write_seqcount_begin(i32* %21)
  %23 = load %struct.net*, %struct.net** %5, align 8
  %24 = load %struct.nft_set*, %struct.nft_set** %6, align 8
  %25 = load %struct.nft_rbtree_elem*, %struct.nft_rbtree_elem** %10, align 8
  %26 = load %struct.nft_set_ext**, %struct.nft_set_ext*** %8, align 8
  %27 = call i32 @__nft_rbtree_insert(%struct.net* %23, %struct.nft_set* %24, %struct.nft_rbtree_elem* %25, %struct.nft_set_ext** %26)
  store i32 %27, i32* %11, align 4
  %28 = load %struct.nft_rbtree*, %struct.nft_rbtree** %9, align 8
  %29 = getelementptr inbounds %struct.nft_rbtree, %struct.nft_rbtree* %28, i32 0, i32 1
  %30 = call i32 @write_seqcount_end(i32* %29)
  %31 = load %struct.nft_rbtree*, %struct.nft_rbtree** %9, align 8
  %32 = getelementptr inbounds %struct.nft_rbtree, %struct.nft_rbtree* %31, i32 0, i32 0
  %33 = call i32 @write_unlock_bh(i32* %32)
  %34 = load i32, i32* %11, align 4
  ret i32 %34
}

declare dso_local %struct.nft_rbtree* @nft_set_priv(%struct.nft_set*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_seqcount_begin(i32*) #1

declare dso_local i32 @__nft_rbtree_insert(%struct.net*, %struct.nft_set*, %struct.nft_rbtree_elem*, %struct.nft_set_ext**) #1

declare dso_local i32 @write_seqcount_end(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
