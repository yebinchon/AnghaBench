; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dtree.c_dtGetKey.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dtree.c_dtGetKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.dtslot*, %struct.TYPE_5__ }
%struct.dtslot = type { i32, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.component_name = type { i32, i32* }
%struct.ldtentry = type { i32, i32, i32* }
%struct.idtentry = type { i32, i32, i32* }

@BT_LEAF = common dso_local global i32 0, align 4
@JFS_DIR_INDEX = common dso_local global i32 0, align 4
@DTLHDRDATALEN = common dso_local global i32 0, align 4
@DTLHDRDATALEN_LEGACY = common dso_local global i32 0, align 4
@DTIHDRDATALEN = common dso_local global i32 0, align 4
@DTSLOTDATALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, %struct.component_name*, i32)* @dtGetKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtGetKey(%struct.TYPE_6__* %0, i32 %1, %struct.component_name* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.component_name*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ldtentry*, align 8
  %12 = alloca %struct.idtentry*, align 8
  %13 = alloca %struct.dtslot*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.component_name* %2, %struct.component_name** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = call i32* @DT_GETSTBL(%struct.TYPE_6__* %18)
  store i32* %19, i32** %10, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @BT_LEAF, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %62

32:                                               ; preds = %4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.dtslot*, %struct.dtslot** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %35, i64 %37
  %39 = bitcast %struct.dtslot* %38 to %struct.ldtentry*
  store %struct.ldtentry* %39, %struct.ldtentry** %11, align 8
  %40 = load %struct.ldtentry*, %struct.ldtentry** %11, align 8
  %41 = getelementptr inbounds %struct.ldtentry, %struct.ldtentry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %9, align 4
  %43 = load %struct.ldtentry*, %struct.ldtentry** %11, align 8
  %44 = getelementptr inbounds %struct.ldtentry, %struct.ldtentry* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %14, align 4
  %46 = load %struct.ldtentry*, %struct.ldtentry** %11, align 8
  %47 = getelementptr inbounds %struct.ldtentry, %struct.ldtentry* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %17, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @JFS_DIR_INDEX, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %32
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* @DTLHDRDATALEN, align 4
  %56 = call i32 @min(i32 %54, i32 %55)
  store i32 %56, i32* %15, align 4
  br label %61

57:                                               ; preds = %32
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* @DTLHDRDATALEN_LEGACY, align 4
  %60 = call i32 @min(i32 %58, i32 %59)
  store i32 %60, i32* %15, align 4
  br label %61

61:                                               ; preds = %57, %53
  br label %82

62:                                               ; preds = %4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.dtslot*, %struct.dtslot** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %65, i64 %67
  %69 = bitcast %struct.dtslot* %68 to %struct.idtentry*
  store %struct.idtentry* %69, %struct.idtentry** %12, align 8
  %70 = load %struct.idtentry*, %struct.idtentry** %12, align 8
  %71 = getelementptr inbounds %struct.idtentry, %struct.idtentry* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %9, align 4
  %73 = load %struct.idtentry*, %struct.idtentry** %12, align 8
  %74 = getelementptr inbounds %struct.idtentry, %struct.idtentry* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %14, align 4
  %76 = load %struct.idtentry*, %struct.idtentry** %12, align 8
  %77 = getelementptr inbounds %struct.idtentry, %struct.idtentry* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  store i32* %78, i32** %17, align 8
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* @DTIHDRDATALEN, align 4
  %81 = call i32 @min(i32 %79, i32 %80)
  store i32 %81, i32* %15, align 4
  br label %82

82:                                               ; preds = %62, %61
  %83 = load i32, i32* %14, align 4
  %84 = load %struct.component_name*, %struct.component_name** %7, align 8
  %85 = getelementptr inbounds %struct.component_name, %struct.component_name* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.component_name*, %struct.component_name** %7, align 8
  %87 = getelementptr inbounds %struct.component_name, %struct.component_name* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  store i32* %88, i32** %16, align 8
  %89 = load i32*, i32** %16, align 8
  %90 = load i32*, i32** %17, align 8
  %91 = load i32, i32* %15, align 4
  %92 = call i32 @UniStrncpy_from_le(i32* %89, i32* %90, i32 %91)
  br label %93

93:                                               ; preds = %96, %82
  %94 = load i32, i32* %9, align 4
  %95 = icmp sge i32 %94, 0
  br i1 %95, label %96, label %122

96:                                               ; preds = %93
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load %struct.dtslot*, %struct.dtslot** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %99, i64 %101
  store %struct.dtslot* %102, %struct.dtslot** %13, align 8
  %103 = load i32, i32* %15, align 4
  %104 = load i32*, i32** %16, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32* %106, i32** %16, align 8
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* %14, align 4
  %109 = sub nsw i32 %108, %107
  store i32 %109, i32* %14, align 4
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* @DTSLOTDATALEN, align 4
  %112 = call i32 @min(i32 %110, i32 %111)
  store i32 %112, i32* %15, align 4
  %113 = load i32*, i32** %16, align 8
  %114 = load %struct.dtslot*, %struct.dtslot** %13, align 8
  %115 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %15, align 4
  %118 = call i32 @UniStrncpy_from_le(i32* %113, i32* %116, i32 %117)
  %119 = load %struct.dtslot*, %struct.dtslot** %13, align 8
  %120 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  store i32 %121, i32* %9, align 4
  br label %93

122:                                              ; preds = %93
  ret void
}

declare dso_local i32* @DT_GETSTBL(%struct.TYPE_6__*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @UniStrncpy_from_le(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
