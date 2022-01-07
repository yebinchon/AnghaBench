; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_seek_key.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_seek_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.nilfs_btree_path = type { i32 }

@NILFS_BTREE_LEVEL_NODE_MIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_bmap*, i32, i32*)* @nilfs_btree_seek_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_btree_seek_key(%struct.nilfs_bmap* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nilfs_bmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.nilfs_btree_path*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @NILFS_BTREE_LEVEL_NODE_MIN, align 4
  store i32 %11, i32* %9, align 4
  %12 = call %struct.nilfs_btree_path* (...) @nilfs_btree_alloc_path()
  store %struct.nilfs_btree_path* %12, %struct.nilfs_btree_path** %8, align 8
  %13 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %14 = icmp ne %struct.nilfs_btree_path* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %45

18:                                               ; preds = %3
  %19 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %20 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @nilfs_btree_do_lookup(%struct.nilfs_bmap* %19, %struct.nilfs_btree_path* %20, i32 %21, i32* null, i32 %22, i32 0)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %6, align 4
  %28 = load i32*, i32** %7, align 8
  store i32 %27, i32* %28, align 4
  br label %41

29:                                               ; preds = %18
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %36 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @nilfs_btree_get_next_key(%struct.nilfs_bmap* %35, %struct.nilfs_btree_path* %36, i32 %37, i32* %38)
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %34, %29
  br label %41

41:                                               ; preds = %40, %26
  %42 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %43 = call i32 @nilfs_btree_free_path(%struct.nilfs_btree_path* %42)
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %41, %15
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.nilfs_btree_path* @nilfs_btree_alloc_path(...) #1

declare dso_local i32 @nilfs_btree_do_lookup(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32*, i32, i32) #1

declare dso_local i32 @nilfs_btree_get_next_key(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32*) #1

declare dso_local i32 @nilfs_btree_free_path(%struct.nilfs_btree_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
