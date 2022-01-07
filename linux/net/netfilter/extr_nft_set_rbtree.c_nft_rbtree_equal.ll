; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_rbtree.c_nft_rbtree_equal.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_rbtree.c_nft_rbtree_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_set = type { i32 }
%struct.nft_rbtree_elem = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_set*, i8*, %struct.nft_rbtree_elem*)* @nft_rbtree_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_rbtree_equal(%struct.nft_set* %0, i8* %1, %struct.nft_rbtree_elem* %2) #0 {
  %4 = alloca %struct.nft_set*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nft_rbtree_elem*, align 8
  store %struct.nft_set* %0, %struct.nft_set** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.nft_rbtree_elem* %2, %struct.nft_rbtree_elem** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load %struct.nft_rbtree_elem*, %struct.nft_rbtree_elem** %6, align 8
  %9 = getelementptr inbounds %struct.nft_rbtree_elem, %struct.nft_rbtree_elem* %8, i32 0, i32 0
  %10 = call i32 @nft_set_ext_key(i32* %9)
  %11 = load %struct.nft_set*, %struct.nft_set** %4, align 8
  %12 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @memcmp(i8* %7, i32 %10, i32 %13)
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  ret i32 %16
}

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @nft_set_ext_key(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
