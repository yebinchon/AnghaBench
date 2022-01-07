; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_btree.c_xfs_da_read_buf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_btree.c_xfs_da_read_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32 }
%struct.xfs_inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.xfs_buf = type { i32 }
%struct.xfs_buf_ops = type { i32 }
%struct.xfs_buf_map = type { i32 }

@XFS_ATTR_FORK = common dso_local global i32 0, align 4
@XFS_ATTR_BTREE_REF = common dso_local global i32 0, align 4
@XFS_DIR_BTREE_REF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_da_read_buf(%struct.xfs_trans* %0, %struct.xfs_inode* %1, i32 %2, i32 %3, %struct.xfs_buf** %4, i32 %5, %struct.xfs_buf_ops* %6) #0 {
  %8 = alloca %struct.xfs_trans*, align 8
  %9 = alloca %struct.xfs_inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.xfs_buf**, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.xfs_buf_ops*, align 8
  %15 = alloca %struct.xfs_buf*, align 8
  %16 = alloca %struct.xfs_buf_map, align 4
  %17 = alloca %struct.xfs_buf_map*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.xfs_trans* %0, %struct.xfs_trans** %8, align 8
  store %struct.xfs_inode* %1, %struct.xfs_inode** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.xfs_buf** %4, %struct.xfs_buf*** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.xfs_buf_ops* %6, %struct.xfs_buf_ops** %14, align 8
  %20 = load %struct.xfs_buf**, %struct.xfs_buf*** %12, align 8
  store %struct.xfs_buf* null, %struct.xfs_buf** %20, align 8
  store %struct.xfs_buf_map* %16, %struct.xfs_buf_map** %17, align 8
  store i32 1, i32* %18, align 4
  %21 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @xfs_dabuf_map(%struct.xfs_inode* %21, i32 %22, i32 %23, i32 %24, %struct.xfs_buf_map** %17, i32* %18)
  store i32 %25, i32* %19, align 4
  %26 = load i32, i32* %19, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %7
  %29 = load i32, i32* %19, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 0, i32* %19, align 4
  br label %32

32:                                               ; preds = %31, %28
  br label %65

33:                                               ; preds = %7
  %34 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %35 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %38 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %39 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.xfs_buf_map*, %struct.xfs_buf_map** %17, align 8
  %44 = load i32, i32* %18, align 4
  %45 = load %struct.xfs_buf_ops*, %struct.xfs_buf_ops** %14, align 8
  %46 = call i32 @xfs_trans_read_buf_map(%struct.TYPE_2__* %36, %struct.xfs_trans* %37, i32 %42, %struct.xfs_buf_map* %43, i32 %44, i32 0, %struct.xfs_buf** %15, %struct.xfs_buf_ops* %45)
  store i32 %46, i32* %19, align 4
  %47 = load i32, i32* %19, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %33
  br label %65

50:                                               ; preds = %33
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @XFS_ATTR_FORK, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load %struct.xfs_buf*, %struct.xfs_buf** %15, align 8
  %56 = load i32, i32* @XFS_ATTR_BTREE_REF, align 4
  %57 = call i32 @xfs_buf_set_ref(%struct.xfs_buf* %55, i32 %56)
  br label %62

58:                                               ; preds = %50
  %59 = load %struct.xfs_buf*, %struct.xfs_buf** %15, align 8
  %60 = load i32, i32* @XFS_DIR_BTREE_REF, align 4
  %61 = call i32 @xfs_buf_set_ref(%struct.xfs_buf* %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %54
  %63 = load %struct.xfs_buf*, %struct.xfs_buf** %15, align 8
  %64 = load %struct.xfs_buf**, %struct.xfs_buf*** %12, align 8
  store %struct.xfs_buf* %63, %struct.xfs_buf** %64, align 8
  br label %65

65:                                               ; preds = %62, %49, %32
  %66 = load %struct.xfs_buf_map*, %struct.xfs_buf_map** %17, align 8
  %67 = icmp ne %struct.xfs_buf_map* %66, %16
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct.xfs_buf_map*, %struct.xfs_buf_map** %17, align 8
  %70 = call i32 @kmem_free(%struct.xfs_buf_map* %69)
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32, i32* %19, align 4
  ret i32 %72
}

declare dso_local i32 @xfs_dabuf_map(%struct.xfs_inode*, i32, i32, i32, %struct.xfs_buf_map**, i32*) #1

declare dso_local i32 @xfs_trans_read_buf_map(%struct.TYPE_2__*, %struct.xfs_trans*, i32, %struct.xfs_buf_map*, i32, i32, %struct.xfs_buf**, %struct.xfs_buf_ops*) #1

declare dso_local i32 @xfs_buf_set_ref(%struct.xfs_buf*, i32) #1

declare dso_local i32 @kmem_free(%struct.xfs_buf_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
