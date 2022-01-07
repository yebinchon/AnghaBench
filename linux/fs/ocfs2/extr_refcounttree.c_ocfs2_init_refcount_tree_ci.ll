; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_init_refcount_tree_ci.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_init_refcount_tree_ci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_refcount_tree = type { i32, %struct.super_block*, i32, i32 }
%struct.super_block = type { i32 }

@ocfs2_refcount_caching_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_refcount_tree*, %struct.super_block*)* @ocfs2_init_refcount_tree_ci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_init_refcount_tree_ci(%struct.ocfs2_refcount_tree* %0, %struct.super_block* %1) #0 {
  %3 = alloca %struct.ocfs2_refcount_tree*, align 8
  %4 = alloca %struct.super_block*, align 8
  store %struct.ocfs2_refcount_tree* %0, %struct.ocfs2_refcount_tree** %3, align 8
  store %struct.super_block* %1, %struct.super_block** %4, align 8
  %5 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %3, align 8
  %6 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %5, i32 0, i32 3
  %7 = call i32 @ocfs2_metadata_cache_init(i32* %6, i32* @ocfs2_refcount_caching_ops)
  %8 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %3, align 8
  %9 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %8, i32 0, i32 2
  %10 = call i32 @mutex_init(i32* %9)
  %11 = load %struct.super_block*, %struct.super_block** %4, align 8
  %12 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %3, align 8
  %13 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %12, i32 0, i32 1
  store %struct.super_block* %11, %struct.super_block** %13, align 8
  %14 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %3, align 8
  %15 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %14, i32 0, i32 0
  %16 = call i32 @spin_lock_init(i32* %15)
  ret void
}

declare dso_local i32 @ocfs2_metadata_cache_init(i32*, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
