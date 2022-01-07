; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_find_nonnull_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_find_nonnull_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32 }
%struct.metapath = type { i32*, %struct.buffer_head** }
%struct.buffer_head = type { i64, i64 }

@GFS2_MAX_META_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, %struct.metapath*, i32, i32*, i32)* @find_nonnull_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_nonnull_ptr(%struct.gfs2_sbd* %0, %struct.metapath* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_sbd*, align 8
  %8 = alloca %struct.metapath*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %7, align 8
  store %struct.metapath* %1, %struct.metapath** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.metapath*, %struct.metapath** %8, align 8
  %18 = getelementptr inbounds %struct.metapath, %struct.metapath* %17, i32 0, i32 1
  %19 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %19, i64 %21
  %23 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  store %struct.buffer_head* %23, %struct.buffer_head** %12, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.metapath*, %struct.metapath** %8, align 8
  %26 = call i64* @metaptr1(i32 %24, %struct.metapath* %25)
  store i64* %26, i64** %13, align 8
  %27 = load i64*, i64** %13, align 8
  %28 = load %struct.metapath*, %struct.metapath** %8, align 8
  %29 = getelementptr inbounds %struct.metapath, %struct.metapath* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %27, i64 %35
  store i64* %36, i64** %14, align 8
  %37 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %38 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %41 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = inttoptr i64 %43 to i64*
  store i64* %44, i64** %15, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %69

47:                                               ; preds = %5
  %48 = load %struct.metapath*, %struct.metapath** %8, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @mp_eq_to_hgt(%struct.metapath* %48, i32* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %47
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ult i32 %54, %55
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %16, align 4
  %58 = load i64*, i64** %13, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %9, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %58, i64 %64
  %66 = load i32, i32* %16, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  store i64* %68, i64** %15, align 8
  br label %69

69:                                               ; preds = %53, %47, %5
  br label %70

70:                                               ; preds = %105, %69
  %71 = load i64*, i64** %14, align 8
  %72 = load i64*, i64** %15, align 8
  %73 = icmp ult i64* %71, %72
  br i1 %73, label %74, label %108

74:                                               ; preds = %70
  %75 = load i64*, i64** %14, align 8
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %105

78:                                               ; preds = %74
  %79 = load i64*, i64** %14, align 8
  %80 = load i64*, i64** %13, align 8
  %81 = ptrtoint i64* %79 to i64
  %82 = ptrtoint i64* %80 to i64
  %83 = sub i64 %81, %82
  %84 = sdiv exact i64 %83, 8
  %85 = trunc i64 %84 to i32
  %86 = load %struct.metapath*, %struct.metapath** %8, align 8
  %87 = getelementptr inbounds %struct.metapath, %struct.metapath* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %85, i32* %91, align 4
  %92 = load i32, i32* %9, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @GFS2_MAX_META_HEIGHT, align 4
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %78
  %98 = load %struct.metapath*, %struct.metapath** %8, align 8
  %99 = getelementptr inbounds %struct.metapath, %struct.metapath* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 0, i32* %103, align 4
  br label %104

104:                                              ; preds = %97, %78
  store i32 1, i32* %6, align 4
  br label %109

105:                                              ; preds = %74
  %106 = load i64*, i64** %14, align 8
  %107 = getelementptr inbounds i64, i64* %106, i32 1
  store i64* %107, i64** %14, align 8
  br label %70

108:                                              ; preds = %70
  store i32 0, i32* %6, align 4
  br label %109

109:                                              ; preds = %108, %104
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local i64* @metaptr1(i32, %struct.metapath*) #1

declare dso_local i64 @mp_eq_to_hgt(%struct.metapath*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
