; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_rbtree.c_nft_rbtree_activate.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_rbtree.c_nft_rbtree_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nft_set = type { i32 }
%struct.nft_set_elem = type { %struct.nft_rbtree_elem* }
%struct.nft_rbtree_elem = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.nft_set*, %struct.nft_set_elem*)* @nft_rbtree_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_rbtree_activate(%struct.net* %0, %struct.nft_set* %1, %struct.nft_set_elem* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.nft_set*, align 8
  %6 = alloca %struct.nft_set_elem*, align 8
  %7 = alloca %struct.nft_rbtree_elem*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.nft_set* %1, %struct.nft_set** %5, align 8
  store %struct.nft_set_elem* %2, %struct.nft_set_elem** %6, align 8
  %8 = load %struct.nft_set_elem*, %struct.nft_set_elem** %6, align 8
  %9 = getelementptr inbounds %struct.nft_set_elem, %struct.nft_set_elem* %8, i32 0, i32 0
  %10 = load %struct.nft_rbtree_elem*, %struct.nft_rbtree_elem** %9, align 8
  store %struct.nft_rbtree_elem* %10, %struct.nft_rbtree_elem** %7, align 8
  %11 = load %struct.net*, %struct.net** %4, align 8
  %12 = load %struct.nft_set*, %struct.nft_set** %5, align 8
  %13 = load %struct.nft_rbtree_elem*, %struct.nft_rbtree_elem** %7, align 8
  %14 = getelementptr inbounds %struct.nft_rbtree_elem, %struct.nft_rbtree_elem* %13, i32 0, i32 0
  %15 = call i32 @nft_set_elem_change_active(%struct.net* %11, %struct.nft_set* %12, i32* %14)
  %16 = load %struct.nft_rbtree_elem*, %struct.nft_rbtree_elem** %7, align 8
  %17 = getelementptr inbounds %struct.nft_rbtree_elem, %struct.nft_rbtree_elem* %16, i32 0, i32 0
  %18 = call i32 @nft_set_elem_clear_busy(i32* %17)
  ret void
}

declare dso_local i32 @nft_set_elem_change_active(%struct.net*, %struct.nft_set*, i32*) #1

declare dso_local i32 @nft_set_elem_clear_busy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
