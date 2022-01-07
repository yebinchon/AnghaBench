; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_rbtree.c_nft_rbtree_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_rbtree.c_nft_rbtree_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nft_set = type { i32 }
%struct.nft_set_elem = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nft_rbtree = type { i32, i32 }
%struct.nft_rbtree_elem = type opaque

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.net*, %struct.nft_set*, %struct.nft_set_elem*, i32)* @nft_rbtree_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nft_rbtree_get(%struct.net* %0, %struct.nft_set* %1, %struct.nft_set_elem* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.nft_set*, align 8
  %8 = alloca %struct.nft_set_elem*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nft_rbtree*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nft_rbtree_elem*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.nft_set* %1, %struct.nft_set** %7, align 8
  store %struct.nft_set_elem* %2, %struct.nft_set_elem** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.nft_set*, %struct.nft_set** %7, align 8
  %17 = call %struct.nft_rbtree* @nft_set_priv(%struct.nft_set* %16)
  store %struct.nft_rbtree* %17, %struct.nft_rbtree** %10, align 8
  %18 = load %struct.nft_rbtree*, %struct.nft_rbtree** %10, align 8
  %19 = getelementptr inbounds %struct.nft_rbtree, %struct.nft_rbtree* %18, i32 0, i32 1
  %20 = call i32 @read_seqcount_begin(i32* %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  %23 = call i8* @ERR_PTR(i32 %22)
  %24 = bitcast i8* %23 to %struct.nft_rbtree_elem*
  store %struct.nft_rbtree_elem* %24, %struct.nft_rbtree_elem** %12, align 8
  %25 = load %struct.nft_set_elem*, %struct.nft_set_elem** %8, align 8
  %26 = getelementptr inbounds %struct.nft_set_elem, %struct.nft_set_elem* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32* %27, i32** %13, align 8
  %28 = load %struct.net*, %struct.net** %6, align 8
  %29 = call i32 @nft_genmask_cur(%struct.net* %28)
  store i32 %29, i32* %14, align 4
  %30 = load %struct.net*, %struct.net** %6, align 8
  %31 = load %struct.nft_set*, %struct.nft_set** %7, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = bitcast %struct.nft_rbtree_elem** %12 to i8**
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @__nft_rbtree_get(%struct.net* %30, %struct.nft_set* %31, i32* %32, i8** %33, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %4
  %41 = load %struct.nft_rbtree*, %struct.nft_rbtree** %10, align 8
  %42 = getelementptr inbounds %struct.nft_rbtree, %struct.nft_rbtree* %41, i32 0, i32 1
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @read_seqcount_retry(i32* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %40, %4
  %47 = load %struct.nft_rbtree_elem*, %struct.nft_rbtree_elem** %12, align 8
  %48 = bitcast %struct.nft_rbtree_elem* %47 to i8*
  store i8* %48, i8** %5, align 8
  br label %77

49:                                               ; preds = %40
  %50 = load %struct.nft_rbtree*, %struct.nft_rbtree** %10, align 8
  %51 = getelementptr inbounds %struct.nft_rbtree, %struct.nft_rbtree* %50, i32 0, i32 0
  %52 = call i32 @read_lock_bh(i32* %51)
  %53 = load %struct.nft_rbtree*, %struct.nft_rbtree** %10, align 8
  %54 = getelementptr inbounds %struct.nft_rbtree, %struct.nft_rbtree* %53, i32 0, i32 1
  %55 = call i32 @read_seqcount_begin(i32* %54)
  store i32 %55, i32* %11, align 4
  %56 = load %struct.net*, %struct.net** %6, align 8
  %57 = load %struct.nft_set*, %struct.nft_set** %7, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = bitcast %struct.nft_rbtree_elem** %12 to i8**
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @__nft_rbtree_get(%struct.net* %56, %struct.nft_set* %57, i32* %58, i8** %59, i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %49
  %67 = load i32, i32* @ENOENT, align 4
  %68 = sub nsw i32 0, %67
  %69 = call i8* @ERR_PTR(i32 %68)
  %70 = bitcast i8* %69 to %struct.nft_rbtree_elem*
  store %struct.nft_rbtree_elem* %70, %struct.nft_rbtree_elem** %12, align 8
  br label %71

71:                                               ; preds = %66, %49
  %72 = load %struct.nft_rbtree*, %struct.nft_rbtree** %10, align 8
  %73 = getelementptr inbounds %struct.nft_rbtree, %struct.nft_rbtree* %72, i32 0, i32 0
  %74 = call i32 @read_unlock_bh(i32* %73)
  %75 = load %struct.nft_rbtree_elem*, %struct.nft_rbtree_elem** %12, align 8
  %76 = bitcast %struct.nft_rbtree_elem* %75 to i8*
  store i8* %76, i8** %5, align 8
  br label %77

77:                                               ; preds = %71, %46
  %78 = load i8*, i8** %5, align 8
  ret i8* %78
}

declare dso_local %struct.nft_rbtree* @nft_set_priv(%struct.nft_set*) #1

declare dso_local i32 @read_seqcount_begin(i32*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @nft_genmask_cur(%struct.net*) #1

declare dso_local i32 @__nft_rbtree_get(%struct.net*, %struct.nft_set*, i32*, i8**, i32, i32, i32) #1

declare dso_local i32 @read_seqcount_retry(i32*, i32) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
