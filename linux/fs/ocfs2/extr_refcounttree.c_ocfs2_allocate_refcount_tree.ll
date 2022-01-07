; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_allocate_refcount_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_allocate_refcount_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_refcount_tree = type { i32, i32 }
%struct.ocfs2_super = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ocfs2_refcount_tree* (%struct.ocfs2_super*, i32)* @ocfs2_allocate_refcount_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ocfs2_refcount_tree* @ocfs2_allocate_refcount_tree(%struct.ocfs2_super* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_refcount_tree*, align 8
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_refcount_tree*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_NOFS, align 4
  %8 = call %struct.ocfs2_refcount_tree* @kzalloc(i32 8, i32 %7)
  store %struct.ocfs2_refcount_tree* %8, %struct.ocfs2_refcount_tree** %6, align 8
  %9 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %6, align 8
  %10 = icmp ne %struct.ocfs2_refcount_tree* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.ocfs2_refcount_tree* null, %struct.ocfs2_refcount_tree** %3, align 8
  br label %25

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %6, align 8
  %15 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %6, align 8
  %17 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %16, i32 0, i32 0
  %18 = call i32 @kref_init(i32* %17)
  %19 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %6, align 8
  %20 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %21 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ocfs2_init_refcount_tree_ci(%struct.ocfs2_refcount_tree* %19, i32 %22)
  %24 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %6, align 8
  store %struct.ocfs2_refcount_tree* %24, %struct.ocfs2_refcount_tree** %3, align 8
  br label %25

25:                                               ; preds = %12, %11
  %26 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %3, align 8
  ret %struct.ocfs2_refcount_tree* %26
}

declare dso_local %struct.ocfs2_refcount_tree* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @ocfs2_init_refcount_tree_ci(%struct.ocfs2_refcount_tree*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
