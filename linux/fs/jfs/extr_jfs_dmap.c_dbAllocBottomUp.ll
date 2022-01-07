; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dmap.c_dbAllocBottomUp.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dmap.c_dbAllocBottomUp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.metapage = type { i64 }
%struct.dmap = type { i32 }
%struct.bmap = type { i64, i32 }
%struct.TYPE_2__ = type { %struct.bmap*, %struct.inode* }

@RDWRLOCK_DMAP = common dso_local global i32 0, align 4
@PSIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@BPERDMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbAllocBottomUp(%struct.inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.metapage*, align 8
  %9 = alloca %struct.dmap*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.bmap*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_2__* @JFS_SBI(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %14, align 8
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.TYPE_2__* @JFS_SBI(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.bmap*, %struct.bmap** %26, align 8
  store %struct.bmap* %27, %struct.bmap** %15, align 8
  %28 = load %struct.inode*, %struct.inode** %14, align 8
  %29 = load i32, i32* @RDWRLOCK_DMAP, align 4
  %30 = call i32 @IREAD_LOCK(%struct.inode* %28, i32 %29)
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.bmap*, %struct.bmap** %15, align 8
  %33 = getelementptr inbounds %struct.bmap, %struct.bmap* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = sub nsw i64 %34, %35
  %37 = icmp sle i64 %31, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @ASSERT(i32 %38)
  store %struct.metapage* null, %struct.metapage** %8, align 8
  %40 = load i64, i64* %7, align 8
  store i64 %40, i64* %13, align 8
  br label %41

41:                                               ; preds = %96, %3
  %42 = load i64, i64* %13, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %105

44:                                               ; preds = %41
  %45 = load %struct.metapage*, %struct.metapage** %8, align 8
  %46 = icmp ne %struct.metapage* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.metapage*, %struct.metapage** %8, align 8
  %49 = call i32 @write_metapage(%struct.metapage* %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.bmap*, %struct.bmap** %15, align 8
  %53 = getelementptr inbounds %struct.bmap, %struct.bmap* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @BLKTODMAP(i64 %51, i32 %54)
  store i64 %55, i64* %12, align 8
  %56 = load %struct.inode*, %struct.inode** %14, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load i32, i32* @PSIZE, align 4
  %59 = call %struct.metapage* @read_metapage(%struct.inode* %56, i64 %57, i32 %58, i32 0)
  store %struct.metapage* %59, %struct.metapage** %8, align 8
  %60 = load %struct.metapage*, %struct.metapage** %8, align 8
  %61 = icmp eq %struct.metapage* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %50
  %63 = load %struct.inode*, %struct.inode** %14, align 8
  %64 = call i32 @IREAD_UNLOCK(%struct.inode* %63)
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %110

67:                                               ; preds = %50
  %68 = load %struct.metapage*, %struct.metapage** %8, align 8
  %69 = getelementptr inbounds %struct.metapage, %struct.metapage* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to %struct.dmap*
  store %struct.dmap* %71, %struct.dmap** %9, align 8
  %72 = load i64, i64* %13, align 8
  %73 = load i32, i32* @BPERDMAP, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %6, align 8
  %76 = load i32, i32* @BPERDMAP, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = and i64 %75, %78
  %80 = sub nsw i64 %74, %79
  %81 = trunc i64 %80 to i32
  %82 = call i32 @min(i64 %72, i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load %struct.bmap*, %struct.bmap** %15, align 8
  %84 = load %struct.dmap*, %struct.dmap** %9, align 8
  %85 = load i64, i64* %6, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @dbAllocDmapBU(%struct.bmap* %83, %struct.dmap* %84, i64 %85, i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %67
  %90 = load %struct.metapage*, %struct.metapage** %8, align 8
  %91 = call i32 @release_metapage(%struct.metapage* %90)
  %92 = load %struct.inode*, %struct.inode** %14, align 8
  %93 = call i32 @IREAD_UNLOCK(%struct.inode* %92)
  %94 = load i32, i32* %11, align 4
  store i32 %94, i32* %4, align 4
  br label %110

95:                                               ; preds = %67
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = load i64, i64* %13, align 8
  %100 = sub nsw i64 %99, %98
  store i64 %100, i64* %13, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* %6, align 8
  %104 = add nsw i64 %103, %102
  store i64 %104, i64* %6, align 8
  br label %41

105:                                              ; preds = %41
  %106 = load %struct.metapage*, %struct.metapage** %8, align 8
  %107 = call i32 @write_metapage(%struct.metapage* %106)
  %108 = load %struct.inode*, %struct.inode** %14, align 8
  %109 = call i32 @IREAD_UNLOCK(%struct.inode* %108)
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %105, %89, %62
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local %struct.TYPE_2__* @JFS_SBI(i32) #1

declare dso_local i32 @IREAD_LOCK(%struct.inode*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @write_metapage(%struct.metapage*) #1

declare dso_local i64 @BLKTODMAP(i64, i32) #1

declare dso_local %struct.metapage* @read_metapage(%struct.inode*, i64, i32, i32) #1

declare dso_local i32 @IREAD_UNLOCK(%struct.inode*) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @dbAllocDmapBU(%struct.bmap*, %struct.dmap*, i64, i32) #1

declare dso_local i32 @release_metapage(%struct.metapage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
