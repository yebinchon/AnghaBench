; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_rbtree.c_nft_rbtree_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_rbtree.c_nft_rbtree_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nft_set = type { i32 }
%struct.nft_set_ext = type { i32 }
%struct.nft_rbtree = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.nft_set*, i32*, %struct.nft_set_ext**)* @nft_rbtree_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_rbtree_lookup(%struct.net* %0, %struct.nft_set* %1, i32* %2, %struct.nft_set_ext** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.nft_set*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.nft_set_ext**, align 8
  %10 = alloca %struct.nft_rbtree*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.nft_set* %1, %struct.nft_set** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.nft_set_ext** %3, %struct.nft_set_ext*** %9, align 8
  %13 = load %struct.nft_set*, %struct.nft_set** %7, align 8
  %14 = call %struct.nft_rbtree* @nft_set_priv(%struct.nft_set* %13)
  store %struct.nft_rbtree* %14, %struct.nft_rbtree** %10, align 8
  %15 = load %struct.nft_rbtree*, %struct.nft_rbtree** %10, align 8
  %16 = getelementptr inbounds %struct.nft_rbtree, %struct.nft_rbtree* %15, i32 0, i32 1
  %17 = call i32 @read_seqcount_begin(i32* %16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.net*, %struct.net** %6, align 8
  %19 = load %struct.nft_set*, %struct.nft_set** %7, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load %struct.nft_set_ext**, %struct.nft_set_ext*** %9, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @__nft_rbtree_lookup(%struct.net* %18, %struct.nft_set* %19, i32* %20, %struct.nft_set_ext** %21, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %4
  %27 = load %struct.nft_rbtree*, %struct.nft_rbtree** %10, align 8
  %28 = getelementptr inbounds %struct.nft_rbtree, %struct.nft_rbtree* %27, i32 0, i32 1
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @read_seqcount_retry(i32* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %26, %4
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %5, align 4
  br label %51

34:                                               ; preds = %26
  %35 = load %struct.nft_rbtree*, %struct.nft_rbtree** %10, align 8
  %36 = getelementptr inbounds %struct.nft_rbtree, %struct.nft_rbtree* %35, i32 0, i32 0
  %37 = call i32 @read_lock_bh(i32* %36)
  %38 = load %struct.nft_rbtree*, %struct.nft_rbtree** %10, align 8
  %39 = getelementptr inbounds %struct.nft_rbtree, %struct.nft_rbtree* %38, i32 0, i32 1
  %40 = call i32 @read_seqcount_begin(i32* %39)
  store i32 %40, i32* %11, align 4
  %41 = load %struct.net*, %struct.net** %6, align 8
  %42 = load %struct.nft_set*, %struct.nft_set** %7, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = load %struct.nft_set_ext**, %struct.nft_set_ext*** %9, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @__nft_rbtree_lookup(%struct.net* %41, %struct.nft_set* %42, i32* %43, %struct.nft_set_ext** %44, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load %struct.nft_rbtree*, %struct.nft_rbtree** %10, align 8
  %48 = getelementptr inbounds %struct.nft_rbtree, %struct.nft_rbtree* %47, i32 0, i32 0
  %49 = call i32 @read_unlock_bh(i32* %48)
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %34, %32
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local %struct.nft_rbtree* @nft_set_priv(%struct.nft_set*) #1

declare dso_local i32 @read_seqcount_begin(i32*) #1

declare dso_local i32 @__nft_rbtree_lookup(%struct.net*, %struct.nft_set*, i32*, %struct.nft_set_ext**, i32) #1

declare dso_local i32 @read_seqcount_retry(i32*, i32) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
