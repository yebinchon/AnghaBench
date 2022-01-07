; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_txnmgr.c_diLog.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_txnmgr.c_diLog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jfs_log = type { i32 }
%struct.tblock = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.lrd = type { i8*, %struct.TYPE_10__, i8* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i8*, i8* }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i32, i8*, i8* }
%struct.tlock = type { i32, i32, i32, %struct.metapage* }
%struct.metapage = type { i32, i32 }
%struct.commit = type { i64* }
%struct.pxd_lock = type { i64, i32, i32 }

@LOG_INODE = common dso_local global i32 0, align 4
@L2INODESLOTSIZE = common dso_local global i32 0, align 4
@tlckENTRY = common dso_local global i32 0, align 4
@LOG_REDOPAGE = common dso_local global i32 0, align 4
@tlckWRITEPAGE = common dso_local global i32 0, align 4
@tlckFREE = common dso_local global i32 0, align 4
@LOG_NOREDOINOEXT = common dso_local global i32 0, align 4
@tlckUPDATEMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"diLog: UFO type tlck:0x%p\00", align 1
@LOG_ALLOCPXD = common dso_local global i32 0, align 4
@LOG_FREEPXD = common dso_local global i32 0, align 4
@LOG_UPDATEMAP = common dso_local global i32 0, align 4
@i = common dso_local global i64 0, align 8
@mlckALLOCPXD = common dso_local global i32 0, align 4
@nlock = common dso_local global i64 0, align 8
@tlckEA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jfs_log*, %struct.tblock*, %struct.lrd*, %struct.tlock*, %struct.commit*)* @diLog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diLog(%struct.jfs_log* %0, %struct.tblock* %1, %struct.lrd* %2, %struct.tlock* %3, %struct.commit* %4) #0 {
  %6 = alloca %struct.jfs_log*, align 8
  %7 = alloca %struct.tblock*, align 8
  %8 = alloca %struct.lrd*, align 8
  %9 = alloca %struct.tlock*, align 8
  %10 = alloca %struct.commit*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.metapage*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.pxd_lock*, align 8
  store %struct.jfs_log* %0, %struct.jfs_log** %6, align 8
  store %struct.tblock* %1, %struct.tblock** %7, align 8
  store %struct.lrd* %2, %struct.lrd** %8, align 8
  store %struct.tlock* %3, %struct.tlock** %9, align 8
  store %struct.commit* %4, %struct.commit** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.tlock*, %struct.tlock** %9, align 8
  %16 = getelementptr inbounds %struct.tlock, %struct.tlock* %15, i32 0, i32 3
  %17 = load %struct.metapage*, %struct.metapage** %16, align 8
  store %struct.metapage* %17, %struct.metapage** %12, align 8
  %18 = load i32, i32* @LOG_INODE, align 4
  %19 = call i8* @cpu_to_le16(i32 %18)
  %20 = load %struct.lrd*, %struct.lrd** %8, align 8
  %21 = getelementptr inbounds %struct.lrd, %struct.lrd* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  store i8* %19, i8** %23, align 8
  %24 = load i32, i32* @L2INODESLOTSIZE, align 4
  %25 = call i8* @cpu_to_le16(i32 %24)
  %26 = load %struct.lrd*, %struct.lrd** %8, align 8
  %27 = getelementptr inbounds %struct.lrd, %struct.lrd* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store i8* %25, i8** %29, align 8
  %30 = load %struct.lrd*, %struct.lrd** %8, align 8
  %31 = getelementptr inbounds %struct.lrd, %struct.lrd* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32* %33, i32** %13, align 8
  %34 = load %struct.tlock*, %struct.tlock** %9, align 8
  %35 = getelementptr inbounds %struct.tlock, %struct.tlock* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @tlckENTRY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %74

40:                                               ; preds = %5
  %41 = load i32, i32* @LOG_REDOPAGE, align 4
  %42 = call i8* @cpu_to_le16(i32 %41)
  %43 = load %struct.lrd*, %struct.lrd** %8, align 8
  %44 = getelementptr inbounds %struct.lrd, %struct.lrd* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = load %struct.metapage*, %struct.metapage** %12, align 8
  %47 = getelementptr inbounds %struct.metapage, %struct.metapage* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @PXDaddress(i32* %45, i32 %48)
  %50 = load i32*, i32** %13, align 8
  %51 = load %struct.metapage*, %struct.metapage** %12, align 8
  %52 = getelementptr inbounds %struct.metapage, %struct.metapage* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.tblock*, %struct.tblock** %7, align 8
  %55 = getelementptr inbounds %struct.tblock, %struct.tblock* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %53, %58
  %60 = call i32 @PXDlength(i32* %50, i32 %59)
  %61 = load %struct.jfs_log*, %struct.jfs_log** %6, align 8
  %62 = load %struct.tblock*, %struct.tblock** %7, align 8
  %63 = load %struct.lrd*, %struct.lrd** %8, align 8
  %64 = load %struct.tlock*, %struct.tlock** %9, align 8
  %65 = call i32 @lmLog(%struct.jfs_log* %61, %struct.tblock* %62, %struct.lrd* %63, %struct.tlock* %64)
  %66 = call i8* @cpu_to_le32(i32 %65)
  %67 = load %struct.lrd*, %struct.lrd** %8, align 8
  %68 = getelementptr inbounds %struct.lrd, %struct.lrd* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* @tlckWRITEPAGE, align 4
  %70 = load %struct.tlock*, %struct.tlock** %9, align 8
  %71 = getelementptr inbounds %struct.tlock, %struct.tlock* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %136

74:                                               ; preds = %5
  %75 = load %struct.tlock*, %struct.tlock** %9, align 8
  %76 = getelementptr inbounds %struct.tlock, %struct.tlock* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @tlckFREE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %132

81:                                               ; preds = %74
  %82 = load i32, i32* @LOG_NOREDOINOEXT, align 4
  %83 = call i8* @cpu_to_le16(i32 %82)
  %84 = load %struct.lrd*, %struct.lrd** %8, align 8
  %85 = getelementptr inbounds %struct.lrd, %struct.lrd* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  %86 = load %struct.commit*, %struct.commit** %10, align 8
  %87 = getelementptr inbounds %struct.commit, %struct.commit* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 1
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i8* @cpu_to_le32(i32 %91)
  %93 = load %struct.lrd*, %struct.lrd** %8, align 8
  %94 = getelementptr inbounds %struct.lrd, %struct.lrd* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  store i8* %92, i8** %96, align 8
  %97 = load %struct.commit*, %struct.commit** %10, align 8
  %98 = getelementptr inbounds %struct.commit, %struct.commit* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 2
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  %103 = call i8* @cpu_to_le32(i32 %102)
  %104 = load %struct.lrd*, %struct.lrd** %8, align 8
  %105 = getelementptr inbounds %struct.lrd, %struct.lrd* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  store i8* %103, i8** %107, align 8
  %108 = load %struct.tlock*, %struct.tlock** %9, align 8
  %109 = getelementptr inbounds %struct.tlock, %struct.tlock* %108, i32 0, i32 2
  %110 = bitcast i32* %109 to %struct.pxd_lock*
  store %struct.pxd_lock* %110, %struct.pxd_lock** %14, align 8
  %111 = load %struct.pxd_lock*, %struct.pxd_lock** %14, align 8
  %112 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %13, align 8
  store i32 %113, i32* %114, align 4
  %115 = load %struct.jfs_log*, %struct.jfs_log** %6, align 8
  %116 = load %struct.tblock*, %struct.tblock** %7, align 8
  %117 = load %struct.lrd*, %struct.lrd** %8, align 8
  %118 = call i32 @lmLog(%struct.jfs_log* %115, %struct.tblock* %116, %struct.lrd* %117, %struct.tlock* null)
  %119 = call i8* @cpu_to_le32(i32 %118)
  %120 = load %struct.lrd*, %struct.lrd** %8, align 8
  %121 = getelementptr inbounds %struct.lrd, %struct.lrd* %120, i32 0, i32 0
  store i8* %119, i8** %121, align 8
  %122 = load i32, i32* @tlckUPDATEMAP, align 4
  %123 = load %struct.tlock*, %struct.tlock** %9, align 8
  %124 = getelementptr inbounds %struct.tlock, %struct.tlock* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  %127 = load i32, i32* @tlckWRITEPAGE, align 4
  %128 = load %struct.tlock*, %struct.tlock** %9, align 8
  %129 = getelementptr inbounds %struct.tlock, %struct.tlock* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  br label %135

132:                                              ; preds = %74
  %133 = load %struct.tlock*, %struct.tlock** %9, align 8
  %134 = call i32 @jfs_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.tlock* %133)
  br label %135

135:                                              ; preds = %132, %81
  br label %136

136:                                              ; preds = %135, %40
  %137 = load i32, i32* %11, align 4
  ret i32 %137
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @PXDaddress(i32*, i32) #1

declare dso_local i32 @PXDlength(i32*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @lmLog(%struct.jfs_log*, %struct.tblock*, %struct.lrd*, %struct.tlock*) #1

declare dso_local i32 @jfs_err(i8*, %struct.tlock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
