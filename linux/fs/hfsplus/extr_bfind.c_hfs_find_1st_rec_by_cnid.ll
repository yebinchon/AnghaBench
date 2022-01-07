; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_bfind.c_hfs_find_1st_rec_by_cnid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_bfind.c_hfs_find_1st_rec_by_cnid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_bnode = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.hfs_find_data = type { %struct.TYPE_18__*, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { i64 }

@HFSPLUS_EXT_CNID = common dso_local global i64 0, align 8
@HFSPLUS_CAT_CNID = common dso_local global i64 0, align 8
@HFSPLUS_ATTR_CNID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfs_find_1st_rec_by_cnid(%struct.hfs_bnode* %0, %struct.hfs_find_data* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hfs_bnode*, align 8
  %8 = alloca %struct.hfs_find_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.hfs_bnode* %0, %struct.hfs_bnode** %7, align 8
  store %struct.hfs_find_data* %1, %struct.hfs_find_data** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %15 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %14, i32 0, i32 0
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @HFSPLUS_EXT_CNID, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %5
  %22 = load %struct.hfs_find_data*, %struct.hfs_find_data** %8, align 8
  %23 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %22, i32 0, i32 1
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %12, align 8
  %28 = load %struct.hfs_find_data*, %struct.hfs_find_data** %8, align 8
  %29 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %13, align 8
  br label %80

34:                                               ; preds = %5
  %35 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %36 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %35, i32 0, i32 0
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @HFSPLUS_CAT_CNID, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %34
  %43 = load %struct.hfs_find_data*, %struct.hfs_find_data** %8, align 8
  %44 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %43, i32 0, i32 1
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %12, align 8
  %49 = load %struct.hfs_find_data*, %struct.hfs_find_data** %8, align 8
  %50 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %49, i32 0, i32 0
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %13, align 8
  br label %79

55:                                               ; preds = %34
  %56 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %57 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %56, i32 0, i32 0
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @HFSPLUS_ATTR_CNID, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %55
  %64 = load %struct.hfs_find_data*, %struct.hfs_find_data** %8, align 8
  %65 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %64, i32 0, i32 1
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %12, align 8
  %70 = load %struct.hfs_find_data*, %struct.hfs_find_data** %8, align 8
  %71 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %70, i32 0, i32 0
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %13, align 8
  br label %78

76:                                               ; preds = %55
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %77 = call i32 (...) @BUG()
  br label %78

78:                                               ; preds = %76, %63
  br label %79

79:                                               ; preds = %78, %42
  br label %80

80:                                               ; preds = %79, %21
  %81 = load i64, i64* %12, align 8
  %82 = load i64, i64* %13, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %80
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %10, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  store i32 1, i32* %6, align 4
  br label %113

94:                                               ; preds = %84
  br label %112

95:                                               ; preds = %80
  %96 = load i64, i64* %12, align 8
  %97 = call i64 @be32_to_cpu(i64 %96)
  %98 = load i64, i64* %13, align 8
  %99 = call i64 @be32_to_cpu(i64 %98)
  %100 = icmp slt i64 %97, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = load i32*, i32** %11, align 8
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  %105 = load i32*, i32** %9, align 8
  store i32 %104, i32* %105, align 4
  br label %111

106:                                              ; preds = %95
  %107 = load i32*, i32** %11, align 8
  %108 = load i32, i32* %107, align 4
  %109 = sub nsw i32 %108, 1
  %110 = load i32*, i32** %10, align 8
  store i32 %109, i32* %110, align 4
  br label %111

111:                                              ; preds = %106, %101
  br label %112

112:                                              ; preds = %111, %94
  store i32 0, i32* %6, align 4
  br label %113

113:                                              ; preds = %112, %93
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @be32_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
