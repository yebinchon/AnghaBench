; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_extent_tree.c___ext_tree_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_extent_tree.c___ext_tree_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }
%struct.pnfs_block_extent = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rb_root*, i64, %struct.pnfs_block_extent*)* @__ext_tree_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ext_tree_lookup(%struct.rb_root* %0, i64 %1, %struct.pnfs_block_extent* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rb_root*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pnfs_block_extent*, align 8
  %8 = alloca %struct.rb_node*, align 8
  %9 = alloca %struct.pnfs_block_extent*, align 8
  store %struct.rb_root* %0, %struct.rb_root** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.pnfs_block_extent* %2, %struct.pnfs_block_extent** %7, align 8
  %10 = load %struct.rb_root*, %struct.rb_root** %5, align 8
  %11 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %10, i32 0, i32 0
  %12 = load %struct.rb_node*, %struct.rb_node** %11, align 8
  store %struct.rb_node* %12, %struct.rb_node** %8, align 8
  br label %13

13:                                               ; preds = %43, %3
  %14 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %15 = icmp ne %struct.rb_node* %14, null
  br i1 %15, label %16, label %44

16:                                               ; preds = %13
  %17 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %18 = call %struct.pnfs_block_extent* @ext_node(%struct.rb_node* %17)
  store %struct.pnfs_block_extent* %18, %struct.pnfs_block_extent** %9, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %9, align 8
  %21 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %26 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %25, i32 0, i32 1
  %27 = load %struct.rb_node*, %struct.rb_node** %26, align 8
  store %struct.rb_node* %27, %struct.rb_node** %8, align 8
  br label %43

28:                                               ; preds = %16
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %9, align 8
  %31 = call i64 @ext_f_end(%struct.pnfs_block_extent* %30)
  %32 = icmp sge i64 %29, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %35 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %34, i32 0, i32 0
  %36 = load %struct.rb_node*, %struct.rb_node** %35, align 8
  store %struct.rb_node* %36, %struct.rb_node** %8, align 8
  br label %42

37:                                               ; preds = %28
  %38 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %7, align 8
  %39 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %9, align 8
  %40 = bitcast %struct.pnfs_block_extent* %38 to i8*
  %41 = bitcast %struct.pnfs_block_extent* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 8, i1 false)
  store i32 1, i32* %4, align 4
  br label %45

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %24
  br label %13

44:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %37
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.pnfs_block_extent* @ext_node(%struct.rb_node*) #1

declare dso_local i64 @ext_f_end(%struct.pnfs_block_extent*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
