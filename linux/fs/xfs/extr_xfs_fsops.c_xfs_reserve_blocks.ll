; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_fsops.c_xfs_reserve_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_fsops.c_xfs_reserve_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i32, i32 }
%struct.TYPE_7__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_reserve_blocks(%struct.TYPE_6__* %0, i64* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %13, align 4
  %14 = load i64*, i64** %6, align 8
  %15 = icmp eq i64* %14, null
  br i1 %15, label %16, label %33

16:                                               ; preds = %3
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %158

22:                                               ; preds = %16
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  store i32 0, i32* %4, align 4
  br label %158

33:                                               ; preds = %3
  %34 = load i64*, i64** %6, align 8
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %11, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = call i32 @spin_lock(i32* %37)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %11, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %76

44:                                               ; preds = %33
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %11, align 8
  %49 = sub nsw i64 %47, %48
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %44
  %53 = load i64, i64* %8, align 8
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %57, %54
  store i64 %58, i64* %56, align 8
  br label %59

59:                                               ; preds = %52, %44
  %60 = load i64, i64* %11, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load i64, i64* %10, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %59
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  %68 = call i32 @spin_unlock(i32* %67)
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @xfs_mod_fdblocks(%struct.TYPE_6__* %69, i64 %70, i32 0)
  store i32 %71, i32* %13, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  %74 = call i32 @spin_lock(i32* %73)
  br label %75

75:                                               ; preds = %65, %59
  br label %139

76:                                               ; preds = %33
  %77 = load i32, i32* @ENOSPC, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %116, %76
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 4
  %82 = call i64 @percpu_counter_sum(i32* %81)
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %82, %85
  store i64 %86, i64* %12, align 8
  %87 = load i64, i64* %12, align 8
  %88 = icmp sle i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  br label %121

90:                                               ; preds = %79
  %91 = load i64, i64* %11, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %91, %94
  store i64 %95, i64* %9, align 8
  %96 = load i64, i64* %12, align 8
  %97 = load i64, i64* %9, align 8
  %98 = sub nsw i64 %96, %97
  store i64 %98, i64* %8, align 8
  %99 = load i64, i64* %8, align 8
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %90
  %102 = load i64, i64* %12, align 8
  store i64 %102, i64* %10, align 8
  br label %105

103:                                              ; preds = %90
  %104 = load i64, i64* %9, align 8
  store i64 %104, i64* %10, align 8
  br label %105

105:                                              ; preds = %103, %101
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 3
  %108 = call i32 @spin_unlock(i32* %107)
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %110 = load i64, i64* %10, align 8
  %111 = sub nsw i64 0, %110
  %112 = call i32 @xfs_mod_fdblocks(%struct.TYPE_6__* %109, i64 %111, i32 0)
  store i32 %112, i32* %13, align 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 3
  %115 = call i32 @spin_lock(i32* %114)
  br label %116

116:                                              ; preds = %105
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* @ENOSPC, align 4
  %119 = sub nsw i32 0, %118
  %120 = icmp eq i32 %117, %119
  br i1 %120, label %79, label %121

121:                                              ; preds = %116, %89
  %122 = load i32, i32* %13, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %138, label %124

124:                                              ; preds = %121
  %125 = load i64, i64* %10, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %124
  %128 = load i64, i64* %10, align 8
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, %128
  store i64 %132, i64* %130, align 8
  %133 = load i64, i64* %10, align 8
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, %133
  store i64 %137, i64* %135, align 8
  br label %138

138:                                              ; preds = %127, %124, %121
  br label %139

139:                                              ; preds = %138, %75
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %141 = icmp ne %struct.TYPE_7__* %140, null
  br i1 %141, label %142, label %153

142:                                              ; preds = %139
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  store i64 %145, i64* %147, align 8
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  store i64 %150, i64* %152, align 8
  br label %153

153:                                              ; preds = %142, %139
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 3
  %156 = call i32 @spin_unlock(i32* %155)
  %157 = load i32, i32* %13, align 4
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %153, %22, %19
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @xfs_mod_fdblocks(%struct.TYPE_6__*, i64, i32) #1

declare dso_local i64 @percpu_counter_sum(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
