; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf_item.c_xfs_buf_item_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf_item.c_xfs_buf_item_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { %struct.xfs_buf_log_item*, %struct.TYPE_4__*, i32, i32, %struct.xfs_mount* }
%struct.xfs_buf_log_item = type { i32, %struct.TYPE_5__*, %struct.xfs_buf*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, i32, i32, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.xfs_mount = type { i32 }

@XFS_LI_BUF = common dso_local global i64 0, align 8
@xfs_buf_item_zone = common dso_local global i32 0, align 4
@xfs_buf_item_ops = common dso_local global i32 0, align 4
@XFS_BLF_CHUNK = common dso_local global i32 0, align 4
@NBWORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_buf_item_init(%struct.xfs_buf* %0, %struct.xfs_mount* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_buf*, align 8
  %5 = alloca %struct.xfs_mount*, align 8
  %6 = alloca %struct.xfs_buf_log_item*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.xfs_buf* %0, %struct.xfs_buf** %4, align 8
  store %struct.xfs_mount* %1, %struct.xfs_mount** %5, align 8
  %11 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %12 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %11, i32 0, i32 0
  %13 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %12, align 8
  store %struct.xfs_buf_log_item* %13, %struct.xfs_buf_log_item** %6, align 8
  %14 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %15 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %14, i32 0, i32 4
  %16 = load %struct.xfs_mount*, %struct.xfs_mount** %15, align 8
  %17 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %18 = icmp eq %struct.xfs_mount* %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %6, align 8
  %22 = icmp ne %struct.xfs_buf_log_item* %21, null
  br i1 %22, label %23, label %46

23:                                               ; preds = %2
  %24 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %6, align 8
  %25 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @XFS_LI_BUF, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %33 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %6, align 8
  %40 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %39, i32 0, i32 2
  %41 = load %struct.xfs_buf*, %struct.xfs_buf** %40, align 8
  %42 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %43 = icmp eq %struct.xfs_buf* %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @ASSERT(i32 %44)
  store i32 0, i32* %3, align 4
  br label %150

46:                                               ; preds = %2
  %47 = load i32, i32* @xfs_buf_item_zone, align 4
  %48 = call %struct.xfs_buf_log_item* @kmem_zone_zalloc(i32 %47, i32 0)
  store %struct.xfs_buf_log_item* %48, %struct.xfs_buf_log_item** %6, align 8
  %49 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %50 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %6, align 8
  %51 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %50, i32 0, i32 3
  %52 = load i64, i64* @XFS_LI_BUF, align 8
  %53 = call i32 @xfs_log_item_init(%struct.xfs_mount* %49, %struct.TYPE_6__* %51, i64 %52, i32* @xfs_buf_item_ops)
  %54 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %55 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %6, align 8
  %56 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %55, i32 0, i32 2
  store %struct.xfs_buf* %54, %struct.xfs_buf** %56, align 8
  %57 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %6, align 8
  %58 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %59 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @xfs_buf_item_get_format(%struct.xfs_buf_log_item* %57, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp eq i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @ASSERT(i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %46
  %69 = load i32, i32* @xfs_buf_item_zone, align 4
  %70 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %6, align 8
  %71 = call i32 @kmem_zone_free(i32 %69, %struct.xfs_buf_log_item* %70)
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %3, align 4
  br label %150

73:                                               ; preds = %46
  store i32 0, i32* %10, align 4
  br label %74

74:                                               ; preds = %141, %73
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %6, align 8
  %77 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %144

80:                                               ; preds = %74
  %81 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %82 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @BBTOB(i32 %88)
  %90 = load i32, i32* @XFS_BLF_CHUNK, align 4
  %91 = call i32 @DIV_ROUND_UP(i32 %89, i32 %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @NBWORD, align 4
  %94 = call i32 @DIV_ROUND_UP(i32 %92, i32 %93)
  store i32 %94, i32* %8, align 4
  %95 = load i64, i64* @XFS_LI_BUF, align 8
  %96 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %6, align 8
  %97 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %96, i32 0, i32 1
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 3
  store i64 %95, i64* %102, align 8
  %103 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %104 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %103, i32 0, i32 1
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %6, align 8
  %112 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %111, i32 0, i32 1
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 2
  store i32 %110, i32* %117, align 8
  %118 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %119 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %118, i32 0, i32 1
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %6, align 8
  %127 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %126, i32 0, i32 1
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  store i32 %125, i32* %132, align 4
  %133 = load i32, i32* %8, align 4
  %134 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %6, align 8
  %135 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %134, i32 0, i32 1
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  store i32 %133, i32* %140, align 8
  br label %141

141:                                              ; preds = %80
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  br label %74

144:                                              ; preds = %74
  %145 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %6, align 8
  %146 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %147 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %146, i32 0, i32 0
  store %struct.xfs_buf_log_item* %145, %struct.xfs_buf_log_item** %147, align 8
  %148 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %149 = call i32 @xfs_buf_hold(%struct.xfs_buf* %148)
  store i32 0, i32* %3, align 4
  br label %150

150:                                              ; preds = %144, %68, %23
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.xfs_buf_log_item* @kmem_zone_zalloc(i32, i32) #1

declare dso_local i32 @xfs_log_item_init(%struct.xfs_mount*, %struct.TYPE_6__*, i64, i32*) #1

declare dso_local i32 @xfs_buf_item_get_format(%struct.xfs_buf_log_item*, i32) #1

declare dso_local i32 @kmem_zone_free(i32, %struct.xfs_buf_log_item*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @BBTOB(i32) #1

declare dso_local i32 @xfs_buf_hold(%struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
