; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_aio_complete.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_aio_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_io_priv = type { i32, i64, i32, i32, %struct.TYPE_2__*, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i64, i32)*, i32 }
%struct.inode = type { i32 }
%struct.fuse_conn = type { i32 }
%struct.fuse_inode = type { i32, i32 }

@fuse_io_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_io_priv*, i32, i64)* @fuse_aio_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_aio_complete(%struct.fuse_io_priv* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.fuse_io_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.fuse_conn*, align 8
  %11 = alloca %struct.fuse_inode*, align 8
  store %struct.fuse_io_priv* %0, %struct.fuse_io_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %4, align 8
  %13 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %12, i32 0, i32 6
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %3
  %18 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %4, align 8
  %19 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  br label %25

25:                                               ; preds = %23, %22
  %26 = phi i32 [ %20, %22 ], [ %24, %23 ]
  %27 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %4, align 8
  %28 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  br label %48

29:                                               ; preds = %3
  %30 = load i64, i64* %6, align 8
  %31 = icmp sge i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %29
  %33 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %4, align 8
  %34 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %32
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %4, align 8
  %40 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37, %32
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %4, align 8
  %46 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %43, %37, %29
  br label %48

48:                                               ; preds = %47, %25
  %49 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %4, align 8
  %50 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 8
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %48
  %56 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %4, align 8
  %57 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %4, align 8
  %62 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @complete(i32 %63)
  br label %65

65:                                               ; preds = %60, %55, %48
  %66 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %4, align 8
  %67 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %66, i32 0, i32 6
  %68 = call i32 @spin_unlock(i32* %67)
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %114, label %71

71:                                               ; preds = %65
  %72 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %4, align 8
  %73 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %114, label %76

76:                                               ; preds = %71
  %77 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %4, align 8
  %78 = call i64 @fuse_get_res_by_io(%struct.fuse_io_priv* %77)
  store i64 %78, i64* %8, align 8
  %79 = load i64, i64* %8, align 8
  %80 = icmp sge i64 %79, 0
  br i1 %80, label %81, label %103

81:                                               ; preds = %76
  %82 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %4, align 8
  %83 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %82, i32 0, i32 4
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call %struct.inode* @file_inode(i32 %86)
  store %struct.inode* %87, %struct.inode** %9, align 8
  %88 = load %struct.inode*, %struct.inode** %9, align 8
  %89 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %88)
  store %struct.fuse_conn* %89, %struct.fuse_conn** %10, align 8
  %90 = load %struct.inode*, %struct.inode** %9, align 8
  %91 = call %struct.fuse_inode* @get_fuse_inode(%struct.inode* %90)
  store %struct.fuse_inode* %91, %struct.fuse_inode** %11, align 8
  %92 = load %struct.fuse_inode*, %struct.fuse_inode** %11, align 8
  %93 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %92, i32 0, i32 0
  %94 = call i32 @spin_lock(i32* %93)
  %95 = load %struct.fuse_conn*, %struct.fuse_conn** %10, align 8
  %96 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %95, i32 0, i32 0
  %97 = call i32 @atomic64_inc_return(i32* %96)
  %98 = load %struct.fuse_inode*, %struct.fuse_inode** %11, align 8
  %99 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.fuse_inode*, %struct.fuse_inode** %11, align 8
  %101 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %100, i32 0, i32 0
  %102 = call i32 @spin_unlock(i32* %101)
  br label %103

103:                                              ; preds = %81, %76
  %104 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %4, align 8
  %105 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %104, i32 0, i32 4
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32 (%struct.TYPE_2__*, i64, i32)*, i32 (%struct.TYPE_2__*, i64, i32)** %107, align 8
  %109 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %4, align 8
  %110 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %109, i32 0, i32 4
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = load i64, i64* %8, align 8
  %113 = call i32 %108(%struct.TYPE_2__* %111, i64 %112, i32 0)
  br label %114

114:                                              ; preds = %103, %71, %65
  %115 = load %struct.fuse_io_priv*, %struct.fuse_io_priv** %4, align 8
  %116 = getelementptr inbounds %struct.fuse_io_priv, %struct.fuse_io_priv* %115, i32 0, i32 3
  %117 = load i32, i32* @fuse_io_release, align 4
  %118 = call i32 @kref_put(i32* %116, i32 %117)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @complete(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @fuse_get_res_by_io(%struct.fuse_io_priv*) #1

declare dso_local %struct.inode* @file_inode(i32) #1

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local %struct.fuse_inode* @get_fuse_inode(%struct.inode*) #1

declare dso_local i32 @atomic64_inc_return(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
