; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_mark.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_btree_path = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_bmap*, i32, i32)* @nilfs_btree_mark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_btree_mark(%struct.nilfs_bmap* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nilfs_bmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.nilfs_btree_path*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = call %struct.nilfs_btree_path* (...) @nilfs_btree_alloc_path()
  store %struct.nilfs_btree_path* %12, %struct.nilfs_btree_path** %9, align 8
  %13 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %14 = icmp eq %struct.nilfs_btree_path* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %68

18:                                               ; preds = %3
  %19 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %20 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  %24 = call i32 @nilfs_btree_do_lookup(%struct.nilfs_bmap* %19, %struct.nilfs_btree_path* %20, i32 %21, i32* %10, i32 %23, i32 0)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %18
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp eq i32 %28, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @WARN_ON(i32 %32)
  br label %64

34:                                               ; preds = %18
  %35 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @nilfs_btree_get_block(%struct.nilfs_bmap* %35, i32 %36, %struct.buffer_head** %8)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @ENOENT, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp eq i32 %41, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @WARN_ON(i32 %45)
  br label %64

47:                                               ; preds = %34
  %48 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %49 = call i32 @buffer_dirty(%struct.buffer_head* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %53 = call i32 @mark_buffer_dirty(%struct.buffer_head* %52)
  br label %54

54:                                               ; preds = %51, %47
  %55 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %56 = call i32 @brelse(%struct.buffer_head* %55)
  %57 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %58 = call i32 @nilfs_bmap_dirty(%struct.nilfs_bmap* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %62 = call i32 @nilfs_bmap_set_dirty(%struct.nilfs_bmap* %61)
  br label %63

63:                                               ; preds = %60, %54
  br label %64

64:                                               ; preds = %63, %40, %27
  %65 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %9, align 8
  %66 = call i32 @nilfs_btree_free_path(%struct.nilfs_btree_path* %65)
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %64, %15
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.nilfs_btree_path* @nilfs_btree_alloc_path(...) #1

declare dso_local i32 @nilfs_btree_do_lookup(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @nilfs_btree_get_block(%struct.nilfs_bmap*, i32, %struct.buffer_head**) #1

declare dso_local i32 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_bmap_dirty(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_bmap_set_dirty(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_btree_free_path(%struct.nilfs_btree_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
