; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dtree.c_dtTruncateEntry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dtree.c_dtTruncateEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.dtslot* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.dtslot = type { i32, i32 }
%struct.dt_lock = type { i64, i64, %struct.lv* }
%struct.lv = type { i32, i32 }
%struct.idtentry = type { i32, i64 }

@BT_INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, %struct.dt_lock**)* @dtTruncateEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtTruncateEntry(%struct.TYPE_6__* %0, i32 %1, %struct.dt_lock** %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dt_lock**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.dtslot*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dt_lock*, align 8
  %13 = alloca %struct.lv*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dt_lock** %2, %struct.dt_lock*** %6, align 8
  %17 = load %struct.dt_lock**, %struct.dt_lock*** %6, align 8
  %18 = load %struct.dt_lock*, %struct.dt_lock** %17, align 8
  store %struct.dt_lock* %18, %struct.dt_lock** %12, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = call i32* @DT_GETSTBL(%struct.TYPE_6__* %19)
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load %struct.dt_lock*, %struct.dt_lock** %12, align 8
  %27 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.dt_lock*, %struct.dt_lock** %12, align 8
  %30 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp uge i64 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %3
  %34 = load %struct.dt_lock*, %struct.dt_lock** %12, align 8
  %35 = call i64 @txLinelock(%struct.dt_lock* %34)
  %36 = inttoptr i64 %35 to %struct.dt_lock*
  store %struct.dt_lock* %36, %struct.dt_lock** %12, align 8
  br label %37

37:                                               ; preds = %33, %3
  %38 = load %struct.dt_lock*, %struct.dt_lock** %12, align 8
  %39 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %38, i32 0, i32 2
  %40 = load %struct.lv*, %struct.lv** %39, align 8
  %41 = load %struct.dt_lock*, %struct.dt_lock** %12, align 8
  %42 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.lv, %struct.lv* %40, i64 %43
  store %struct.lv* %44, %struct.lv** %13, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.lv*, %struct.lv** %13, align 8
  %47 = getelementptr inbounds %struct.lv, %struct.lv* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load %struct.dtslot*, %struct.dtslot** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %50, i64 %52
  store %struct.dtslot* %53, %struct.dtslot** %9, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @BT_INTERNAL, align 4
  %59 = and i32 %57, %58
  %60 = call i32 @ASSERT(i32 %59)
  %61 = load %struct.dtslot*, %struct.dtslot** %9, align 8
  %62 = bitcast %struct.dtslot* %61 to %struct.idtentry*
  %63 = getelementptr inbounds %struct.idtentry, %struct.idtentry* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = load %struct.dtslot*, %struct.dtslot** %9, align 8
  %65 = bitcast %struct.dtslot* %64 to %struct.idtentry*
  %66 = getelementptr inbounds %struct.idtentry, %struct.idtentry* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %10, align 4
  %68 = load %struct.dtslot*, %struct.dtslot** %9, align 8
  %69 = bitcast %struct.dtslot* %68 to %struct.idtentry*
  %70 = getelementptr inbounds %struct.idtentry, %struct.idtentry* %69, i32 0, i32 0
  store i32 -1, i32* %70, align 8
  store i32 1, i32* %16, align 4
  store i32 0, i32* %11, align 4
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %15, align 4
  br label %73

73:                                               ; preds = %111, %37
  %74 = load i32, i32* %10, align 4
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %128

76:                                               ; preds = %73
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %78, 1
  %80 = icmp ne i32 %77, %79
  br i1 %80, label %81, label %111

81:                                               ; preds = %76
  %82 = load i32, i32* %16, align 4
  %83 = load %struct.lv*, %struct.lv** %13, align 8
  %84 = getelementptr inbounds %struct.lv, %struct.lv* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.dt_lock*, %struct.dt_lock** %12, align 8
  %86 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %86, align 8
  %89 = load %struct.dt_lock*, %struct.dt_lock** %12, align 8
  %90 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.dt_lock*, %struct.dt_lock** %12, align 8
  %93 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ult i64 %91, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %81
  %97 = load %struct.lv*, %struct.lv** %13, align 8
  %98 = getelementptr inbounds %struct.lv, %struct.lv* %97, i32 1
  store %struct.lv* %98, %struct.lv** %13, align 8
  br label %107

99:                                               ; preds = %81
  %100 = load %struct.dt_lock*, %struct.dt_lock** %12, align 8
  %101 = call i64 @txLinelock(%struct.dt_lock* %100)
  %102 = inttoptr i64 %101 to %struct.dt_lock*
  store %struct.dt_lock* %102, %struct.dt_lock** %12, align 8
  %103 = load %struct.dt_lock*, %struct.dt_lock** %12, align 8
  %104 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %103, i32 0, i32 2
  %105 = load %struct.lv*, %struct.lv** %104, align 8
  %106 = getelementptr inbounds %struct.lv, %struct.lv* %105, i64 0
  store %struct.lv* %106, %struct.lv** %13, align 8
  br label %107

107:                                              ; preds = %99, %96
  %108 = load i32, i32* %10, align 4
  %109 = load %struct.lv*, %struct.lv** %13, align 8
  %110 = getelementptr inbounds %struct.lv, %struct.lv* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  store i32 0, i32* %16, align 4
  br label %111

111:                                              ; preds = %107, %76
  %112 = load i32, i32* %16, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %16, align 4
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load %struct.dtslot*, %struct.dtslot** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %119, i64 %121
  store %struct.dtslot* %122, %struct.dtslot** %9, align 8
  %123 = load %struct.dtslot*, %struct.dtslot** %9, align 8
  %124 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %123, i32 0, i32 0
  store i32 1, i32* %124, align 4
  %125 = load %struct.dtslot*, %struct.dtslot** %9, align 8
  %126 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %10, align 4
  br label %73

128:                                              ; preds = %73
  %129 = load i32, i32* %16, align 4
  %130 = load %struct.lv*, %struct.lv** %13, align 8
  %131 = getelementptr inbounds %struct.lv, %struct.lv* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load %struct.dt_lock*, %struct.dt_lock** %12, align 8
  %133 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %133, align 8
  %136 = load %struct.dt_lock*, %struct.dt_lock** %12, align 8
  %137 = load %struct.dt_lock**, %struct.dt_lock*** %6, align 8
  store %struct.dt_lock* %136, %struct.dt_lock** %137, align 8
  %138 = load i32, i32* %11, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %128
  br label %158

141:                                              ; preds = %128
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.dtslot*, %struct.dtslot** %9, align 8
  %147 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* %14, align 4
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  store i32 %148, i32* %151, align 4
  %152 = load i32, i32* %11, align 4
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, %152
  store i32 %157, i32* %155, align 8
  br label %158

158:                                              ; preds = %141, %140
  ret void
}

declare dso_local i32* @DT_GETSTBL(%struct.TYPE_6__*) #1

declare dso_local i64 @txLinelock(%struct.dt_lock*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
