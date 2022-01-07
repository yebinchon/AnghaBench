; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_btree.c___xfs_btree_check_sblock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_btree.c___xfs_btree_check_sblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_btree_cur = type { %struct.TYPE_5__*, i32, %struct.xfs_mount* }
%struct.TYPE_5__ = type { i32 (%struct.xfs_btree_cur*, i32)* }
%struct.xfs_mount = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.xfs_btree_block = type { i64, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, i32 }
%struct.xfs_buf = type { i32 }

@__this_address = common dso_local global i32* null, align 8
@XFS_BUF_DADDR_NULL = common dso_local global i32 0, align 4
@NULLAGBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @__xfs_btree_check_sblock(%struct.xfs_btree_cur* %0, %struct.xfs_btree_block* %1, i32 %2, %struct.xfs_buf* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.xfs_btree_cur*, align 8
  %7 = alloca %struct.xfs_btree_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.xfs_buf*, align 8
  %10 = alloca %struct.xfs_mount*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.xfs_btree_cur* %0, %struct.xfs_btree_cur** %6, align 8
  store %struct.xfs_btree_block* %1, %struct.xfs_btree_block** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.xfs_buf* %3, %struct.xfs_buf** %9, align 8
  %13 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %14 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %13, i32 0, i32 2
  %15 = load %struct.xfs_mount*, %struct.xfs_mount** %14, align 8
  store %struct.xfs_mount* %15, %struct.xfs_mount** %10, align 8
  %16 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %17 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %11, align 4
  %19 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %20 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %19, i32 0, i32 0
  %21 = call i32 @xfs_sb_version_hascrc(%struct.TYPE_8__* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %57

24:                                               ; preds = %4
  %25 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %26 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  %29 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %30 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = call i32 @uuid_equal(i32* %28, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %24
  %35 = load i32*, i32** @__this_address, align 8
  store i32* %35, i32** %5, align 8
  br label %140

36:                                               ; preds = %24
  %37 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %38 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %43 = icmp ne %struct.xfs_buf* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %46 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  br label %50

48:                                               ; preds = %36
  %49 = load i32, i32* @XFS_BUF_DADDR_NULL, align 4
  br label %50

50:                                               ; preds = %48, %44
  %51 = phi i32 [ %47, %44 ], [ %49, %48 ]
  %52 = call i64 @cpu_to_be64(i32 %51)
  %53 = icmp ne i64 %41, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32*, i32** @__this_address, align 8
  store i32* %55, i32** %5, align 8
  br label %140

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %4
  %58 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %59 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @be32_to_cpu(i64 %60)
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i64 @xfs_btree_magic(i32 %62, i32 %63)
  %65 = icmp ne i64 %61, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i32*, i32** @__this_address, align 8
  store i32* %67, i32** %5, align 8
  br label %140

68:                                               ; preds = %57
  %69 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %70 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @be16_to_cpu(i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32*, i32** @__this_address, align 8
  store i32* %76, i32** %5, align 8
  br label %140

77:                                               ; preds = %68
  %78 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %79 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @be16_to_cpu(i32 %80)
  %82 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %83 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32 (%struct.xfs_btree_cur*, i32)*, i32 (%struct.xfs_btree_cur*, i32)** %85, align 8
  %87 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 %86(%struct.xfs_btree_cur* %87, i32 %88)
  %90 = icmp sgt i32 %81, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %77
  %92 = load i32*, i32** @__this_address, align 8
  store i32* %92, i32** %5, align 8
  br label %140

93:                                               ; preds = %77
  %94 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %95 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* @NULLAGBLOCK, align 4
  %100 = call i64 @cpu_to_be32(i32 %99)
  %101 = icmp ne i64 %98, %100
  br i1 %101, label %102, label %116

102:                                              ; preds = %93
  %103 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %104 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %105 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = call i64 @be32_to_cpu(i64 %108)
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  %112 = call i32 @xfs_btree_check_sptr(%struct.xfs_btree_cur* %103, i64 %109, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %102
  %115 = load i32*, i32** @__this_address, align 8
  store i32* %115, i32** %5, align 8
  br label %140

116:                                              ; preds = %102, %93
  %117 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %118 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* @NULLAGBLOCK, align 4
  %123 = call i64 @cpu_to_be32(i32 %122)
  %124 = icmp ne i64 %121, %123
  br i1 %124, label %125, label %139

125:                                              ; preds = %116
  %126 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %127 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %128 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @be32_to_cpu(i64 %131)
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 1
  %135 = call i32 @xfs_btree_check_sptr(%struct.xfs_btree_cur* %126, i64 %132, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %125
  %138 = load i32*, i32** @__this_address, align 8
  store i32* %138, i32** %5, align 8
  br label %140

139:                                              ; preds = %125, %116
  store i32* null, i32** %5, align 8
  br label %140

140:                                              ; preds = %139, %137, %114, %91, %75, %66, %54, %34
  %141 = load i32*, i32** %5, align 8
  ret i32* %141
}

declare dso_local i32 @xfs_sb_version_hascrc(%struct.TYPE_8__*) #1

declare dso_local i32 @uuid_equal(i32*, i32*) #1

declare dso_local i64 @cpu_to_be64(i32) #1

declare dso_local i64 @be32_to_cpu(i64) #1

declare dso_local i64 @xfs_btree_magic(i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @xfs_btree_check_sptr(%struct.xfs_btree_cur*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
