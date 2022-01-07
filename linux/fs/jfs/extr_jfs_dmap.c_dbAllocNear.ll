; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dmap.c_dbAllocNear.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dmap.c_dbAllocNear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmap = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.dmap = type { i64*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32* }

@LEAFIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Corrupt dmap page\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@BPERDMAP = common dso_local global i32 0, align 4
@L2DBWORD = common dso_local global i32 0, align 4
@LPERDMAP = common dso_local global i32 0, align 4
@BUDMIN = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmap*, %struct.dmap*, i32, i32, i32, i32*)* @dbAllocNear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbAllocNear(%struct.bmap* %0, %struct.dmap* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.bmap*, align 8
  %9 = alloca %struct.dmap*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.bmap* %0, %struct.bmap** %8, align 8
  store %struct.dmap* %1, %struct.dmap** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %18 = load %struct.dmap*, %struct.dmap** %9, align 8
  %19 = getelementptr inbounds %struct.dmap, %struct.dmap* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @LEAFIND, align 4
  %23 = call i64 @cpu_to_le32(i32 %22)
  %24 = icmp ne i64 %21, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %6
  %26 = load %struct.bmap*, %struct.bmap** %8, align 8
  %27 = getelementptr inbounds %struct.bmap, %struct.bmap* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @jfs_error(i32 %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %118

34:                                               ; preds = %6
  %35 = load %struct.dmap*, %struct.dmap** %9, align 8
  %36 = getelementptr inbounds %struct.dmap, %struct.dmap* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.dmap*, %struct.dmap** %9, align 8
  %40 = getelementptr inbounds %struct.dmap, %struct.dmap* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @le32_to_cpu(i64 %42)
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %38, i64 %44
  store i32* %45, i32** %17, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @BPERDMAP, align 4
  %48 = sub nsw i32 %47, 1
  %49 = and i32 %46, %48
  %50 = load i32, i32* @L2DBWORD, align 4
  %51 = ashr i32 %49, %50
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = add nsw i32 %52, 4
  %54 = load i32, i32* @LPERDMAP, align 4
  %55 = call i32 @min(i32 %53, i32 %54)
  store i32 %55, i32* %15, align 4
  br label %56

56:                                               ; preds = %112, %34
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %115

60:                                               ; preds = %56
  %61 = load i32*, i32** %17, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %112

69:                                               ; preds = %60
  %70 = load %struct.dmap*, %struct.dmap** %9, align 8
  %71 = getelementptr inbounds %struct.dmap, %struct.dmap* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @le64_to_cpu(i32 %72)
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* @L2DBWORD, align 4
  %76 = shl i32 %74, %75
  %77 = add nsw i32 %73, %76
  store i32 %77, i32* %10, align 4
  %78 = load i32*, i32** %17, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @BUDMIN, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %69
  %86 = load %struct.dmap*, %struct.dmap** %9, align 8
  %87 = getelementptr inbounds %struct.dmap, %struct.dmap* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @le32_to_cpu(i64 %92)
  %94 = load i32, i32* %12, align 4
  %95 = call i64 @dbFindBits(i32 %93, i32 %94)
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %85, %69
  %101 = load %struct.bmap*, %struct.bmap** %8, align 8
  %102 = load %struct.dmap*, %struct.dmap** %9, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @dbAllocDmap(%struct.bmap* %101, %struct.dmap* %102, i32 %103, i32 %104)
  store i32 %105, i32* %16, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load i32, i32* %10, align 4
  %109 = load i32*, i32** %13, align 8
  store i32 %108, i32* %109, align 4
  br label %110

110:                                              ; preds = %107, %100
  %111 = load i32, i32* %16, align 4
  store i32 %111, i32* %7, align 4
  br label %118

112:                                              ; preds = %68
  %113 = load i32, i32* %14, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %14, align 4
  br label %56

115:                                              ; preds = %56
  %116 = load i32, i32* @ENOSPC, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %115, %110, %25
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @jfs_error(i32, i8*) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i64 @dbFindBits(i32, i32) #1

declare dso_local i32 @dbAllocDmap(%struct.bmap*, %struct.dmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
