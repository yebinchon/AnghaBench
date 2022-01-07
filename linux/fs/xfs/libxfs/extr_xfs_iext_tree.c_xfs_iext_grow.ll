; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_iext_tree.c_xfs_iext_grow.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_iext_tree.c_xfs_iext_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_ifork = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.xfs_iext_node* }
%struct.xfs_iext_node = type { i32*, %struct.xfs_iext_node** }
%struct.xfs_iext_leaf = type { i32*, %struct.xfs_iext_leaf** }

@NODE_SIZE = common dso_local global i32 0, align 4
@KM_NOFS = common dso_local global i32 0, align 4
@KEYS_PER_NODE = common dso_local global i32 0, align 4
@XFS_IEXT_KEY_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_ifork*)* @xfs_iext_grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_iext_grow(%struct.xfs_ifork* %0) #0 {
  %2 = alloca %struct.xfs_ifork*, align 8
  %3 = alloca %struct.xfs_iext_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_iext_leaf*, align 8
  %6 = alloca %struct.xfs_iext_node*, align 8
  store %struct.xfs_ifork* %0, %struct.xfs_ifork** %2, align 8
  %7 = load i32, i32* @NODE_SIZE, align 4
  %8 = load i32, i32* @KM_NOFS, align 4
  %9 = call %struct.xfs_iext_node* @kmem_zalloc(i32 %7, i32 %8)
  store %struct.xfs_iext_node* %9, %struct.xfs_iext_node** %3, align 8
  %10 = load %struct.xfs_ifork*, %struct.xfs_ifork** %2, align 8
  %11 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %33

14:                                               ; preds = %1
  %15 = load %struct.xfs_ifork*, %struct.xfs_ifork** %2, align 8
  %16 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %17, align 8
  %19 = bitcast %struct.xfs_iext_node* %18 to %struct.xfs_iext_leaf*
  store %struct.xfs_iext_leaf* %19, %struct.xfs_iext_leaf** %5, align 8
  %20 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %5, align 8
  %21 = bitcast %struct.xfs_iext_leaf* %20 to %struct.xfs_iext_node*
  %22 = call i32 @xfs_iext_leaf_key(%struct.xfs_iext_node* %21, i32 0)
  %23 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %3, align 8
  %24 = getelementptr inbounds %struct.xfs_iext_node, %struct.xfs_iext_node* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %22, i32* %26, align 4
  %27 = load %struct.xfs_iext_leaf*, %struct.xfs_iext_leaf** %5, align 8
  %28 = bitcast %struct.xfs_iext_leaf* %27 to %struct.xfs_iext_node*
  %29 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %3, align 8
  %30 = getelementptr inbounds %struct.xfs_iext_node, %struct.xfs_iext_node* %29, i32 0, i32 1
  %31 = load %struct.xfs_iext_node**, %struct.xfs_iext_node*** %30, align 8
  %32 = getelementptr inbounds %struct.xfs_iext_node*, %struct.xfs_iext_node** %31, i64 0
  store %struct.xfs_iext_node* %28, %struct.xfs_iext_node** %32, align 8
  br label %58

33:                                               ; preds = %1
  %34 = load %struct.xfs_ifork*, %struct.xfs_ifork** %2, align 8
  %35 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %36, align 8
  store %struct.xfs_iext_node* %37, %struct.xfs_iext_node** %6, align 8
  %38 = load %struct.xfs_ifork*, %struct.xfs_ifork** %2, align 8
  %39 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %40, 1
  %42 = zext i1 %41 to i32
  %43 = call i32 @ASSERT(i32 %42)
  %44 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %6, align 8
  %45 = getelementptr inbounds %struct.xfs_iext_node, %struct.xfs_iext_node* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %3, align 8
  %50 = getelementptr inbounds %struct.xfs_iext_node, %struct.xfs_iext_node* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 %48, i32* %52, align 4
  %53 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %6, align 8
  %54 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %3, align 8
  %55 = getelementptr inbounds %struct.xfs_iext_node, %struct.xfs_iext_node* %54, i32 0, i32 1
  %56 = load %struct.xfs_iext_node**, %struct.xfs_iext_node*** %55, align 8
  %57 = getelementptr inbounds %struct.xfs_iext_node*, %struct.xfs_iext_node** %56, i64 0
  store %struct.xfs_iext_node* %53, %struct.xfs_iext_node** %57, align 8
  br label %58

58:                                               ; preds = %33, %14
  store i32 1, i32* %4, align 4
  br label %59

59:                                               ; preds = %71, %58
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @KEYS_PER_NODE, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %59
  %64 = load i32, i32* @XFS_IEXT_KEY_INVALID, align 4
  %65 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %3, align 8
  %66 = getelementptr inbounds %struct.xfs_iext_node, %struct.xfs_iext_node* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %64, i32* %70, align 4
  br label %71

71:                                               ; preds = %63
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %59

74:                                               ; preds = %59
  %75 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %3, align 8
  %76 = load %struct.xfs_ifork*, %struct.xfs_ifork** %2, align 8
  %77 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store %struct.xfs_iext_node* %75, %struct.xfs_iext_node** %78, align 8
  %79 = load %struct.xfs_ifork*, %struct.xfs_ifork** %2, align 8
  %80 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  ret void
}

declare dso_local %struct.xfs_iext_node* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @xfs_iext_leaf_key(%struct.xfs_iext_node*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
