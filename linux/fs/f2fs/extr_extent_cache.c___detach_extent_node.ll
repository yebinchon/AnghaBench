; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_extent_cache.c___detach_extent_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_extent_cache.c___detach_extent_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.extent_tree = type { %struct.extent_node*, i32, i32 }
%struct.extent_node = type { i32 }

@extent_node_slab = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, %struct.extent_tree*, %struct.extent_node*)* @__detach_extent_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__detach_extent_node(%struct.f2fs_sb_info* %0, %struct.extent_tree* %1, %struct.extent_node* %2) #0 {
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca %struct.extent_tree*, align 8
  %6 = alloca %struct.extent_node*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store %struct.extent_tree* %1, %struct.extent_tree** %5, align 8
  store %struct.extent_node* %2, %struct.extent_node** %6, align 8
  %7 = load %struct.extent_node*, %struct.extent_node** %6, align 8
  %8 = getelementptr inbounds %struct.extent_node, %struct.extent_node* %7, i32 0, i32 0
  %9 = load %struct.extent_tree*, %struct.extent_tree** %5, align 8
  %10 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %9, i32 0, i32 2
  %11 = call i32 @rb_erase_cached(i32* %8, i32* %10)
  %12 = load %struct.extent_tree*, %struct.extent_tree** %5, align 8
  %13 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %12, i32 0, i32 1
  %14 = call i32 @atomic_dec(i32* %13)
  %15 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %16 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %15, i32 0, i32 0
  %17 = call i32 @atomic_dec(i32* %16)
  %18 = load %struct.extent_tree*, %struct.extent_tree** %5, align 8
  %19 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %18, i32 0, i32 0
  %20 = load %struct.extent_node*, %struct.extent_node** %19, align 8
  %21 = load %struct.extent_node*, %struct.extent_node** %6, align 8
  %22 = icmp eq %struct.extent_node* %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load %struct.extent_tree*, %struct.extent_tree** %5, align 8
  %25 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %24, i32 0, i32 0
  store %struct.extent_node* null, %struct.extent_node** %25, align 8
  br label %26

26:                                               ; preds = %23, %3
  %27 = load i32, i32* @extent_node_slab, align 4
  %28 = load %struct.extent_node*, %struct.extent_node** %6, align 8
  %29 = call i32 @kmem_cache_free(i32 %27, %struct.extent_node* %28)
  ret void
}

declare dso_local i32 @rb_erase_cached(i32*, i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.extent_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
