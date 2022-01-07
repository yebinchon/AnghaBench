; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_iomap.c_xfs_bmbt_to_iomap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_iomap.c_xfs_bmbt_to_iomap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.TYPE_2__*, %struct.xfs_mount* }
%struct.TYPE_2__ = type { i32 }
%struct.xfs_mount = type { i32 }
%struct.iomap = type { i32, i32, i32, i8*, i8*, i32, i8* }
%struct.xfs_bmbt_irec = type { i64, i64, i32, i32 }

@HOLESTARTBLOCK = common dso_local global i64 0, align 8
@IOMAP_NULL_ADDR = common dso_local global i8* null, align 8
@IOMAP_HOLE = common dso_local global i32 0, align 4
@DELAYSTARTBLOCK = common dso_local global i64 0, align 8
@IOMAP_DELALLOC = common dso_local global i32 0, align 4
@XFS_EXT_UNWRITTEN = common dso_local global i64 0, align 8
@IOMAP_UNWRITTEN = common dso_local global i32 0, align 4
@IOMAP_MAPPED = common dso_local global i32 0, align 4
@XFS_ILOG_TIMESTAMP = common dso_local global i32 0, align 4
@IOMAP_F_DIRTY = common dso_local global i32 0, align 4
@IOMAP_F_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_bmbt_to_iomap(%struct.xfs_inode* %0, %struct.iomap* %1, %struct.xfs_bmbt_irec* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_inode*, align 8
  %7 = alloca %struct.iomap*, align 8
  %8 = alloca %struct.xfs_bmbt_irec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xfs_mount*, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %6, align 8
  store %struct.iomap* %1, %struct.iomap** %7, align 8
  store %struct.xfs_bmbt_irec* %2, %struct.xfs_bmbt_irec** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %12 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %11, i32 0, i32 1
  %13 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  store %struct.xfs_mount* %13, %struct.xfs_mount** %10, align 8
  %14 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %15 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %8, align 8
  %16 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @xfs_valid_startblock(%struct.xfs_inode* %14, i64 %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %26 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %8, align 8
  %27 = call i32 @xfs_alert_fsblock_zero(%struct.xfs_inode* %25, %struct.xfs_bmbt_irec* %26)
  store i32 %27, i32* %5, align 4
  br label %138

28:                                               ; preds = %4
  %29 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %8, align 8
  %30 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @HOLESTARTBLOCK, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load i8*, i8** @IOMAP_NULL_ADDR, align 8
  %36 = load %struct.iomap*, %struct.iomap** %7, align 8
  %37 = getelementptr inbounds %struct.iomap, %struct.iomap* %36, i32 0, i32 6
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* @IOMAP_HOLE, align 4
  %39 = load %struct.iomap*, %struct.iomap** %7, align 8
  %40 = getelementptr inbounds %struct.iomap, %struct.iomap* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  br label %84

41:                                               ; preds = %28
  %42 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %8, align 8
  %43 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DELAYSTARTBLOCK, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %8, align 8
  %49 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @isnullstartblock(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %47, %41
  %54 = load i8*, i8** @IOMAP_NULL_ADDR, align 8
  %55 = load %struct.iomap*, %struct.iomap** %7, align 8
  %56 = getelementptr inbounds %struct.iomap, %struct.iomap* %55, i32 0, i32 6
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* @IOMAP_DELALLOC, align 4
  %58 = load %struct.iomap*, %struct.iomap** %7, align 8
  %59 = getelementptr inbounds %struct.iomap, %struct.iomap* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 8
  br label %83

60:                                               ; preds = %47
  %61 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %62 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %8, align 8
  %63 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @xfs_fsb_to_db(%struct.xfs_inode* %61, i64 %64)
  %66 = call i8* @BBTOB(i32 %65)
  %67 = load %struct.iomap*, %struct.iomap** %7, align 8
  %68 = getelementptr inbounds %struct.iomap, %struct.iomap* %67, i32 0, i32 6
  store i8* %66, i8** %68, align 8
  %69 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %8, align 8
  %70 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @XFS_EXT_UNWRITTEN, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %60
  %75 = load i32, i32* @IOMAP_UNWRITTEN, align 4
  %76 = load %struct.iomap*, %struct.iomap** %7, align 8
  %77 = getelementptr inbounds %struct.iomap, %struct.iomap* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 8
  br label %82

78:                                               ; preds = %60
  %79 = load i32, i32* @IOMAP_MAPPED, align 4
  %80 = load %struct.iomap*, %struct.iomap** %7, align 8
  %81 = getelementptr inbounds %struct.iomap, %struct.iomap* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %78, %74
  br label %83

83:                                               ; preds = %82, %53
  br label %84

84:                                               ; preds = %83, %34
  %85 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %86 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %8, align 8
  %87 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @XFS_FSB_TO_B(%struct.xfs_mount* %85, i32 %88)
  %90 = load %struct.iomap*, %struct.iomap** %7, align 8
  %91 = getelementptr inbounds %struct.iomap, %struct.iomap* %90, i32 0, i32 4
  store i8* %89, i8** %91, align 8
  %92 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %93 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %8, align 8
  %94 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i8* @XFS_FSB_TO_B(%struct.xfs_mount* %92, i32 %95)
  %97 = load %struct.iomap*, %struct.iomap** %7, align 8
  %98 = getelementptr inbounds %struct.iomap, %struct.iomap* %97, i32 0, i32 3
  store i8* %96, i8** %98, align 8
  %99 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %100 = call i32 @VFS_I(%struct.xfs_inode* %99)
  %101 = call i32 @xfs_find_bdev_for_inode(i32 %100)
  %102 = load %struct.iomap*, %struct.iomap** %7, align 8
  %103 = getelementptr inbounds %struct.iomap, %struct.iomap* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %105 = call i32 @VFS_I(%struct.xfs_inode* %104)
  %106 = call i32 @xfs_find_daxdev_for_inode(i32 %105)
  %107 = load %struct.iomap*, %struct.iomap** %7, align 8
  %108 = getelementptr inbounds %struct.iomap, %struct.iomap* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %110 = call i64 @xfs_ipincount(%struct.xfs_inode* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %128

112:                                              ; preds = %84
  %113 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %114 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @XFS_ILOG_TIMESTAMP, align 4
  %119 = xor i32 %118, -1
  %120 = and i32 %117, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %112
  %123 = load i32, i32* @IOMAP_F_DIRTY, align 4
  %124 = load %struct.iomap*, %struct.iomap** %7, align 8
  %125 = getelementptr inbounds %struct.iomap, %struct.iomap* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %122, %112, %84
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %128
  %132 = load i32, i32* @IOMAP_F_SHARED, align 4
  %133 = load %struct.iomap*, %struct.iomap** %7, align 8
  %134 = getelementptr inbounds %struct.iomap, %struct.iomap* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  br label %137

137:                                              ; preds = %131, %128
  store i32 0, i32* %5, align 4
  br label %138

138:                                              ; preds = %137, %24
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xfs_valid_startblock(%struct.xfs_inode*, i64) #1

declare dso_local i32 @xfs_alert_fsblock_zero(%struct.xfs_inode*, %struct.xfs_bmbt_irec*) #1

declare dso_local i64 @isnullstartblock(i64) #1

declare dso_local i8* @BBTOB(i32) #1

declare dso_local i32 @xfs_fsb_to_db(%struct.xfs_inode*, i64) #1

declare dso_local i8* @XFS_FSB_TO_B(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_find_bdev_for_inode(i32) #1

declare dso_local i32 @VFS_I(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_find_daxdev_for_inode(i32) #1

declare dso_local i64 @xfs_ipincount(%struct.xfs_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
