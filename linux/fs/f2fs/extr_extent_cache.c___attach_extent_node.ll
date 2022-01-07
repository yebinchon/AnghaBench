; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_extent_cache.c___attach_extent_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_extent_cache.c___attach_extent_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_node = type { i32, %struct.extent_tree*, i32, %struct.extent_info }
%struct.extent_info = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.extent_tree = type { i32, i32 }
%struct.rb_node = type { i32 }

@extent_node_slab = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.extent_node* (%struct.f2fs_sb_info*, %struct.extent_tree*, %struct.extent_info*, %struct.rb_node*, %struct.rb_node**, i32)* @__attach_extent_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.extent_node* @__attach_extent_node(%struct.f2fs_sb_info* %0, %struct.extent_tree* %1, %struct.extent_info* %2, %struct.rb_node* %3, %struct.rb_node** %4, i32 %5) #0 {
  %7 = alloca %struct.extent_node*, align 8
  %8 = alloca %struct.f2fs_sb_info*, align 8
  %9 = alloca %struct.extent_tree*, align 8
  %10 = alloca %struct.extent_info*, align 8
  %11 = alloca %struct.rb_node*, align 8
  %12 = alloca %struct.rb_node**, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.extent_node*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %8, align 8
  store %struct.extent_tree* %1, %struct.extent_tree** %9, align 8
  store %struct.extent_info* %2, %struct.extent_info** %10, align 8
  store %struct.rb_node* %3, %struct.rb_node** %11, align 8
  store %struct.rb_node** %4, %struct.rb_node*** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* @extent_node_slab, align 4
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call %struct.extent_node* @kmem_cache_alloc(i32 %15, i32 %16)
  store %struct.extent_node* %17, %struct.extent_node** %14, align 8
  %18 = load %struct.extent_node*, %struct.extent_node** %14, align 8
  %19 = icmp ne %struct.extent_node* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %6
  store %struct.extent_node* null, %struct.extent_node** %7, align 8
  br label %51

21:                                               ; preds = %6
  %22 = load %struct.extent_node*, %struct.extent_node** %14, align 8
  %23 = getelementptr inbounds %struct.extent_node, %struct.extent_node* %22, i32 0, i32 3
  %24 = load %struct.extent_info*, %struct.extent_info** %10, align 8
  %25 = bitcast %struct.extent_info* %23 to i8*
  %26 = bitcast %struct.extent_info* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 4, i1 false)
  %27 = load %struct.extent_node*, %struct.extent_node** %14, align 8
  %28 = getelementptr inbounds %struct.extent_node, %struct.extent_node* %27, i32 0, i32 2
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.extent_tree*, %struct.extent_tree** %9, align 8
  %31 = load %struct.extent_node*, %struct.extent_node** %14, align 8
  %32 = getelementptr inbounds %struct.extent_node, %struct.extent_node* %31, i32 0, i32 1
  store %struct.extent_tree* %30, %struct.extent_tree** %32, align 8
  %33 = load %struct.extent_node*, %struct.extent_node** %14, align 8
  %34 = getelementptr inbounds %struct.extent_node, %struct.extent_node* %33, i32 0, i32 0
  %35 = load %struct.rb_node*, %struct.rb_node** %11, align 8
  %36 = load %struct.rb_node**, %struct.rb_node*** %12, align 8
  %37 = call i32 @rb_link_node(i32* %34, %struct.rb_node* %35, %struct.rb_node** %36)
  %38 = load %struct.extent_node*, %struct.extent_node** %14, align 8
  %39 = getelementptr inbounds %struct.extent_node, %struct.extent_node* %38, i32 0, i32 0
  %40 = load %struct.extent_tree*, %struct.extent_tree** %9, align 8
  %41 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %40, i32 0, i32 1
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @rb_insert_color_cached(i32* %39, i32* %41, i32 %42)
  %44 = load %struct.extent_tree*, %struct.extent_tree** %9, align 8
  %45 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %44, i32 0, i32 0
  %46 = call i32 @atomic_inc(i32* %45)
  %47 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %48 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %47, i32 0, i32 0
  %49 = call i32 @atomic_inc(i32* %48)
  %50 = load %struct.extent_node*, %struct.extent_node** %14, align 8
  store %struct.extent_node* %50, %struct.extent_node** %7, align 8
  br label %51

51:                                               ; preds = %21, %20
  %52 = load %struct.extent_node*, %struct.extent_node** %7, align 8
  ret %struct.extent_node* %52
}

declare dso_local %struct.extent_node* @kmem_cache_alloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @rb_link_node(i32*, %struct.rb_node*, %struct.rb_node**) #1

declare dso_local i32 @rb_insert_color_cached(i32*, i32*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
