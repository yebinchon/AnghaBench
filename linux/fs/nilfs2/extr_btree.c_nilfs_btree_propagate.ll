; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_propagate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_propagate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.nilfs_btree_path = type { i32 }
%struct.nilfs_btree_node = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@NILFS_BTREE_LEVEL_DATA = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@KERN_CRIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"writing node/leaf block does not appear in b-tree (ino=%lu) at key=%llu, level=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_bmap*, %struct.buffer_head*)* @nilfs_btree_propagate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_btree_propagate(%struct.nilfs_bmap* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nilfs_bmap*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.nilfs_btree_path*, align 8
  %7 = alloca %struct.nilfs_btree_node*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  %11 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %12 = call i32 @buffer_dirty(%struct.buffer_head* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = call %struct.nilfs_btree_path* (...) @nilfs_btree_alloc_path()
  store %struct.nilfs_btree_path* %17, %struct.nilfs_btree_path** %6, align 8
  %18 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %19 = icmp eq %struct.nilfs_btree_path* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %96

23:                                               ; preds = %2
  %24 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %25 = call i64 @buffer_nilfs_node(%struct.buffer_head* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %29 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.nilfs_btree_node*
  store %struct.nilfs_btree_node* %31, %struct.nilfs_btree_node** %7, align 8
  %32 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %7, align 8
  %33 = call i64 @nilfs_btree_node_get_key(%struct.nilfs_btree_node* %32, i32 0)
  store i64 %33, i64* %8, align 8
  %34 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %7, align 8
  %35 = call i32 @nilfs_btree_node_get_level(%struct.nilfs_btree_node* %34)
  store i32 %35, i32* %9, align 4
  br label %41

36:                                               ; preds = %23
  %37 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %38 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %39 = call i64 @nilfs_bmap_data_get_key(%struct.nilfs_bmap* %37, %struct.buffer_head* %38)
  store i64 %39, i64* %8, align 8
  %40 = load i32, i32* @NILFS_BTREE_LEVEL_DATA, align 4
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %36, %27
  %42 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %43 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i32 @nilfs_btree_do_lookup(%struct.nilfs_bmap* %42, %struct.nilfs_btree_path* %43, i64 %44, i32* null, i32 %46, i32 0)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %74

50:                                               ; preds = %41
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @ENOENT, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp eq i32 %51, %53
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %50
  %59 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %60 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @KERN_CRIT, align 4
  %65 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %66 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i64, i64* %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @nilfs_msg(i32 %63, i32 %64, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i32 %69, i64 %70, i32 %71)
  br label %73

73:                                               ; preds = %58, %50
  br label %92

74:                                               ; preds = %41
  %75 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %76 = call i64 @NILFS_BMAP_USE_VBN(%struct.nilfs_bmap* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %80 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %83 = call i32 @nilfs_btree_propagate_v(%struct.nilfs_bmap* %79, %struct.nilfs_btree_path* %80, i32 %81, %struct.buffer_head* %82)
  br label %90

84:                                               ; preds = %74
  %85 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %86 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %89 = call i32 @nilfs_btree_propagate_p(%struct.nilfs_bmap* %85, %struct.nilfs_btree_path* %86, i32 %87, %struct.buffer_head* %88)
  br label %90

90:                                               ; preds = %84, %78
  %91 = phi i32 [ %83, %78 ], [ %89, %84 ]
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %90, %73
  %93 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %6, align 8
  %94 = call i32 @nilfs_btree_free_path(%struct.nilfs_btree_path* %93)
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %92, %20
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local %struct.nilfs_btree_path* @nilfs_btree_alloc_path(...) #1

declare dso_local i64 @buffer_nilfs_node(%struct.buffer_head*) #1

declare dso_local i64 @nilfs_btree_node_get_key(%struct.nilfs_btree_node*, i32) #1

declare dso_local i32 @nilfs_btree_node_get_level(%struct.nilfs_btree_node*) #1

declare dso_local i64 @nilfs_bmap_data_get_key(%struct.nilfs_bmap*, %struct.buffer_head*) #1

declare dso_local i32 @nilfs_btree_do_lookup(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i64, i32*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nilfs_msg(i32, i32, i8*, i32, i64, i32) #1

declare dso_local i64 @NILFS_BMAP_USE_VBN(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_btree_propagate_v(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, %struct.buffer_head*) #1

declare dso_local i32 @nilfs_btree_propagate_p(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, %struct.buffer_head*) #1

declare dso_local i32 @nilfs_btree_free_path(%struct.nilfs_btree_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
