; ModuleID = '/home/carl/AnghaBench/linux/fs/ntfs/extr_runlist.c_ntfs_rl_split.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ntfs/extr_runlist.c_ntfs_rl_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.TYPE_11__*, i32, %struct.TYPE_11__*, i32, i32)* @ntfs_rl_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @ntfs_rl_split(%struct.TYPE_11__* %0, i32 %1, %struct.TYPE_11__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %13 = icmp ne %struct.TYPE_11__* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %18 = icmp ne %struct.TYPE_11__* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %10, align 4
  %26 = add nsw i32 %24, %25
  %27 = add nsw i32 %26, 1
  %28 = call %struct.TYPE_11__* @ntfs_rl_realloc(%struct.TYPE_11__* %22, i32 %23, i32 %27)
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %7, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %30 = call i64 @IS_ERR(%struct.TYPE_11__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %5
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %6, align 8
  br label %123

34:                                               ; preds = %5
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, 1
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %37, %38
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %11, align 4
  %43 = sub nsw i32 %41, %42
  %44 = call i32 @ntfs_rl_mm(%struct.TYPE_11__* %35, i32 %39, i32 %40, i32 %43)
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @ntfs_rl_mc(%struct.TYPE_11__* %45, i32 %47, %struct.TYPE_11__* %48, i32 0, i32 %49)
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %57, %63
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  store i64 %64, i64* %69, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %77, %85
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %88, %89
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  store i64 %86, i64* %94, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %96, %97
  %99 = add nsw i32 %98, 2
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %105, %106
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = sub nsw i64 %103, %112
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %115, %116
  %118 = add nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  store i64 %113, i64* %121, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %122, %struct.TYPE_11__** %6, align 8
  br label %123

123:                                              ; preds = %34, %32
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  ret %struct.TYPE_11__* %124
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.TYPE_11__* @ntfs_rl_realloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_11__*) #1

declare dso_local i32 @ntfs_rl_mm(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @ntfs_rl_mc(%struct.TYPE_11__*, i32, %struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
