; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_fiemap.c_iomap_to_fiemap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_fiemap.c_iomap_to_fiemap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fiemap_extent_info = type { i32 }
%struct.iomap = type { i32, i32, i64, i32, i32 }

@FIEMAP_EXTENT_DELALLOC = common dso_local global i32 0, align 4
@FIEMAP_EXTENT_UNKNOWN = common dso_local global i32 0, align 4
@FIEMAP_EXTENT_UNWRITTEN = common dso_local global i32 0, align 4
@FIEMAP_EXTENT_DATA_INLINE = common dso_local global i32 0, align 4
@IOMAP_F_MERGED = common dso_local global i32 0, align 4
@FIEMAP_EXTENT_MERGED = common dso_local global i32 0, align 4
@IOMAP_F_SHARED = common dso_local global i32 0, align 4
@FIEMAP_EXTENT_SHARED = common dso_local global i32 0, align 4
@IOMAP_NULL_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fiemap_extent_info*, %struct.iomap*, i32)* @iomap_to_fiemap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iomap_to_fiemap(%struct.fiemap_extent_info* %0, %struct.iomap* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fiemap_extent_info*, align 8
  %6 = alloca %struct.iomap*, align 8
  %7 = alloca i32, align 4
  store %struct.fiemap_extent_info* %0, %struct.fiemap_extent_info** %5, align 8
  store %struct.iomap* %1, %struct.iomap** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.iomap*, %struct.iomap** %6, align 8
  %9 = getelementptr inbounds %struct.iomap, %struct.iomap* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %27 [
    i32 131, label %11
    i32 132, label %12
    i32 129, label %18
    i32 128, label %19
    i32 130, label %23
  ]

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %71

12:                                               ; preds = %3
  %13 = load i32, i32* @FIEMAP_EXTENT_DELALLOC, align 4
  %14 = load i32, i32* @FIEMAP_EXTENT_UNKNOWN, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %7, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %7, align 4
  br label %27

18:                                               ; preds = %3
  br label %27

19:                                               ; preds = %3
  %20 = load i32, i32* @FIEMAP_EXTENT_UNWRITTEN, align 4
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %7, align 4
  br label %27

23:                                               ; preds = %3
  %24 = load i32, i32* @FIEMAP_EXTENT_DATA_INLINE, align 4
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %3, %23, %19, %18, %12
  %28 = load %struct.iomap*, %struct.iomap** %6, align 8
  %29 = getelementptr inbounds %struct.iomap, %struct.iomap* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IOMAP_F_MERGED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32, i32* @FIEMAP_EXTENT_MERGED, align 4
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %34, %27
  %39 = load %struct.iomap*, %struct.iomap** %6, align 8
  %40 = getelementptr inbounds %struct.iomap, %struct.iomap* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IOMAP_F_SHARED, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i32, i32* @FIEMAP_EXTENT_SHARED, align 4
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %45, %38
  %50 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %5, align 8
  %51 = load %struct.iomap*, %struct.iomap** %6, align 8
  %52 = getelementptr inbounds %struct.iomap, %struct.iomap* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.iomap*, %struct.iomap** %6, align 8
  %55 = getelementptr inbounds %struct.iomap, %struct.iomap* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @IOMAP_NULL_ADDR, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %49
  %60 = load %struct.iomap*, %struct.iomap** %6, align 8
  %61 = getelementptr inbounds %struct.iomap, %struct.iomap* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  br label %64

63:                                               ; preds = %49
  br label %64

64:                                               ; preds = %63, %59
  %65 = phi i64 [ %62, %59 ], [ 0, %63 ]
  %66 = load %struct.iomap*, %struct.iomap** %6, align 8
  %67 = getelementptr inbounds %struct.iomap, %struct.iomap* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @fiemap_fill_next_extent(%struct.fiemap_extent_info* %50, i32 %53, i64 %65, i32 %68, i32 %69)
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %64, %11
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @fiemap_fill_next_extent(%struct.fiemap_extent_info*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
