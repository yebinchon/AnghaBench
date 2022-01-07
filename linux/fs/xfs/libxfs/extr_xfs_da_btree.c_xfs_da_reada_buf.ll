; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_btree.c_xfs_da_reada_buf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_btree.c_xfs_da_reada_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.xfs_buf_ops = type { i32 }
%struct.xfs_buf_map = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_da_reada_buf(%struct.xfs_inode* %0, i32 %1, i32 %2, i32 %3, %struct.xfs_buf_ops* %4) #0 {
  %6 = alloca %struct.xfs_inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.xfs_buf_ops*, align 8
  %11 = alloca %struct.xfs_buf_map, align 4
  %12 = alloca %struct.xfs_buf_map*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.xfs_buf_ops* %4, %struct.xfs_buf_ops** %10, align 8
  store %struct.xfs_buf_map* %11, %struct.xfs_buf_map** %12, align 8
  store i32 1, i32* %13, align 4
  %15 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @xfs_dabuf_map(%struct.xfs_inode* %15, i32 %16, i32 %17, i32 %18, %struct.xfs_buf_map** %12, i32* %13)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %5
  %23 = load i32, i32* %14, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 0, i32* %14, align 4
  br label %26

26:                                               ; preds = %25, %22
  br label %41

27:                                               ; preds = %5
  %28 = load %struct.xfs_buf_map*, %struct.xfs_buf_map** %12, align 8
  %29 = getelementptr inbounds %struct.xfs_buf_map, %struct.xfs_buf_map* %28, i64 0
  %30 = getelementptr inbounds %struct.xfs_buf_map, %struct.xfs_buf_map* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  %32 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %33 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.xfs_buf_map*, %struct.xfs_buf_map** %12, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.xfs_buf_ops*, %struct.xfs_buf_ops** %10, align 8
  %40 = call i32 @xfs_buf_readahead_map(i32 %36, %struct.xfs_buf_map* %37, i32 %38, %struct.xfs_buf_ops* %39)
  br label %41

41:                                               ; preds = %27, %26
  %42 = load %struct.xfs_buf_map*, %struct.xfs_buf_map** %12, align 8
  %43 = icmp ne %struct.xfs_buf_map* %42, %11
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct.xfs_buf_map*, %struct.xfs_buf_map** %12, align 8
  %46 = call i32 @kmem_free(%struct.xfs_buf_map* %45)
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32, i32* %14, align 4
  ret i32 %48
}

declare dso_local i32 @xfs_dabuf_map(%struct.xfs_inode*, i32, i32, i32, %struct.xfs_buf_map**, i32*) #1

declare dso_local i32 @xfs_buf_readahead_map(i32, %struct.xfs_buf_map*, i32, %struct.xfs_buf_ops*) #1

declare dso_local i32 @kmem_free(%struct.xfs_buf_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
