; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_btree.c___xfs_btree_check_lblock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_btree.c___xfs_btree_check_lblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_btree_cur = type { %struct.TYPE_5__*, i32, %struct.xfs_mount* }
%struct.TYPE_5__ = type { i32 (%struct.xfs_btree_cur*, i32)* }
%struct.xfs_mount = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.xfs_btree_block = type { %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i32 }
%struct.xfs_buf = type { i32 }

@__this_address = common dso_local global i32* null, align 8
@XFS_BUF_DADDR_NULL = common dso_local global i32 0, align 4
@NULLFSBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @__xfs_btree_check_lblock(%struct.xfs_btree_cur* %0, %struct.xfs_btree_block* %1, i32 %2, %struct.xfs_buf* %3) #0 {
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
  br i1 %23, label %24, label %67

24:                                               ; preds = %4
  %25 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %26 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 4
  %29 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %30 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = call i32 @uuid_equal(i32* %28, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %24
  %35 = load i32*, i32** @__this_address, align 8
  store i32* %35, i32** %5, align 8
  br label %150

36:                                               ; preds = %24
  %37 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %38 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %37, i32 0, i32 0
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
  br label %150

56:                                               ; preds = %50
  %57 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %58 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @cpu_to_be32(i32 0)
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32*, i32** @__this_address, align 8
  store i32* %65, i32** %5, align 8
  br label %150

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66, %4
  %68 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %69 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @be32_to_cpu(i32 %70)
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i64 @xfs_btree_magic(i32 %72, i32 %73)
  %75 = icmp ne i64 %71, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = load i32*, i32** @__this_address, align 8
  store i32* %77, i32** %5, align 8
  br label %150

78:                                               ; preds = %67
  %79 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %80 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @be16_to_cpu(i32 %81)
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32*, i32** @__this_address, align 8
  store i32* %86, i32** %5, align 8
  br label %150

87:                                               ; preds = %78
  %88 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %89 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @be16_to_cpu(i32 %90)
  %92 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %93 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %92, i32 0, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32 (%struct.xfs_btree_cur*, i32)*, i32 (%struct.xfs_btree_cur*, i32)** %95, align 8
  %97 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32 %96(%struct.xfs_btree_cur* %97, i32 %98)
  %100 = icmp sgt i32 %91, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %87
  %102 = load i32*, i32** @__this_address, align 8
  store i32* %102, i32** %5, align 8
  br label %150

103:                                              ; preds = %87
  %104 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %105 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* @NULLFSBLOCK, align 4
  %110 = call i64 @cpu_to_be64(i32 %109)
  %111 = icmp ne i64 %108, %110
  br i1 %111, label %112, label %126

112:                                              ; preds = %103
  %113 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %114 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %115 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @be64_to_cpu(i64 %118)
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  %122 = call i32 @xfs_btree_check_lptr(%struct.xfs_btree_cur* %113, i32 %119, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %112
  %125 = load i32*, i32** @__this_address, align 8
  store i32* %125, i32** %5, align 8
  br label %150

126:                                              ; preds = %112, %103
  %127 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %128 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* @NULLFSBLOCK, align 4
  %133 = call i64 @cpu_to_be64(i32 %132)
  %134 = icmp ne i64 %131, %133
  br i1 %134, label %135, label %149

135:                                              ; preds = %126
  %136 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %6, align 8
  %137 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %7, align 8
  %138 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @be64_to_cpu(i64 %141)
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, 1
  %145 = call i32 @xfs_btree_check_lptr(%struct.xfs_btree_cur* %136, i32 %142, i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %135
  %148 = load i32*, i32** @__this_address, align 8
  store i32* %148, i32** %5, align 8
  br label %150

149:                                              ; preds = %135, %126
  store i32* null, i32** %5, align 8
  br label %150

150:                                              ; preds = %149, %147, %124, %101, %85, %76, %64, %54, %34
  %151 = load i32*, i32** %5, align 8
  ret i32* %151
}

declare dso_local i32 @xfs_sb_version_hascrc(%struct.TYPE_8__*) #1

declare dso_local i32 @uuid_equal(i32*, i32*) #1

declare dso_local i64 @cpu_to_be64(i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @xfs_btree_magic(i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @xfs_btree_check_lptr(%struct.xfs_btree_cur*, i32, i32) #1

declare dso_local i32 @be64_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
