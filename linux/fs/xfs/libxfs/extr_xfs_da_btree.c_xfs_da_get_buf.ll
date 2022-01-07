; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_btree.c_xfs_da_get_buf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_btree.c_xfs_da_get_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32 }
%struct.xfs_inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.xfs_buf = type { i32 }
%struct.xfs_buf_map = type { i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_da_get_buf(%struct.xfs_trans* %0, %struct.xfs_inode* %1, i32 %2, i32 %3, %struct.xfs_buf** %4, i32 %5) #0 {
  %7 = alloca %struct.xfs_trans*, align 8
  %8 = alloca %struct.xfs_inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfs_buf**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.xfs_buf*, align 8
  %14 = alloca %struct.xfs_buf_map, align 4
  %15 = alloca %struct.xfs_buf_map*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.xfs_trans* %0, %struct.xfs_trans** %7, align 8
  store %struct.xfs_inode* %1, %struct.xfs_inode** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.xfs_buf** %4, %struct.xfs_buf*** %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = load %struct.xfs_buf**, %struct.xfs_buf*** %11, align 8
  store %struct.xfs_buf* null, %struct.xfs_buf** %18, align 8
  store %struct.xfs_buf_map* %14, %struct.xfs_buf_map** %15, align 8
  store i32 1, i32* %16, align 4
  %19 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @xfs_dabuf_map(%struct.xfs_inode* %19, i32 %20, i32 %21, i32 %22, %struct.xfs_buf_map** %15, i32* %16)
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* %17, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %6
  %27 = load i32, i32* %17, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, i32* %17, align 4
  br label %30

30:                                               ; preds = %29, %26
  br label %65

31:                                               ; preds = %6
  %32 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %33 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %34 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.xfs_buf_map*, %struct.xfs_buf_map** %15, align 8
  %39 = load i32, i32* %16, align 4
  %40 = call %struct.xfs_buf* @xfs_trans_get_buf_map(%struct.xfs_trans* %32, i32 %37, %struct.xfs_buf_map* %38, i32 %39, i32 0)
  store %struct.xfs_buf* %40, %struct.xfs_buf** %13, align 8
  %41 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %42 = icmp ne %struct.xfs_buf* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %31
  %44 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %45 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  br label %50

47:                                               ; preds = %31
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  br label %50

50:                                               ; preds = %47, %43
  %51 = phi i32 [ %46, %43 ], [ %49, %47 ]
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %17, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %56 = icmp ne %struct.xfs_buf* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %59 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %60 = call i32 @xfs_trans_brelse(%struct.xfs_trans* %58, %struct.xfs_buf* %59)
  br label %61

61:                                               ; preds = %57, %54
  br label %65

62:                                               ; preds = %50
  %63 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %64 = load %struct.xfs_buf**, %struct.xfs_buf*** %11, align 8
  store %struct.xfs_buf* %63, %struct.xfs_buf** %64, align 8
  br label %65

65:                                               ; preds = %62, %61, %30
  %66 = load %struct.xfs_buf_map*, %struct.xfs_buf_map** %15, align 8
  %67 = icmp ne %struct.xfs_buf_map* %66, %14
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct.xfs_buf_map*, %struct.xfs_buf_map** %15, align 8
  %70 = call i32 @kmem_free(%struct.xfs_buf_map* %69)
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32, i32* %17, align 4
  ret i32 %72
}

declare dso_local i32 @xfs_dabuf_map(%struct.xfs_inode*, i32, i32, i32, %struct.xfs_buf_map**, i32*) #1

declare dso_local %struct.xfs_buf* @xfs_trans_get_buf_map(%struct.xfs_trans*, i32, %struct.xfs_buf_map*, i32, i32) #1

declare dso_local i32 @xfs_trans_brelse(%struct.xfs_trans*, %struct.xfs_buf*) #1

declare dso_local i32 @kmem_free(%struct.xfs_buf_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
