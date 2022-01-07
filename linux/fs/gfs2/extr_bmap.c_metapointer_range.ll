; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_metapointer_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_metapointer_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.metapath = type { %struct.buffer_head** }
%struct.buffer_head = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.metapath*, i32, i32*, i32, i32*, i32, i32**, i32**)* @metapointer_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @metapointer_range(%struct.metapath* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32** %6, i32** %7) #0 {
  %9 = alloca %struct.metapath*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32**, align 8
  %16 = alloca i32**, align 8
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.metapath* %0, %struct.metapath** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32** %6, i32*** %15, align 8
  store i32** %7, i32*** %16, align 8
  %21 = load %struct.metapath*, %struct.metapath** %9, align 8
  %22 = getelementptr inbounds %struct.metapath, %struct.metapath* %21, i32 0, i32 0
  %23 = load %struct.buffer_head**, %struct.buffer_head*** %22, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %23, i64 %25
  %27 = load %struct.buffer_head*, %struct.buffer_head** %26, align 8
  store %struct.buffer_head* %27, %struct.buffer_head** %17, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.metapath*, %struct.metapath** %9, align 8
  %30 = call i32* @metaptr1(i32 %28, %struct.metapath* %29)
  store i32* %30, i32** %18, align 8
  %31 = load i32*, i32** %18, align 8
  %32 = load i32**, i32*** %15, align 8
  store i32* %31, i32** %32, align 8
  %33 = load %struct.metapath*, %struct.metapath** %9, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i64 @mp_eq_to_hgt(%struct.metapath* %33, i32* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ult i32 %39, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %19, align 4
  %43 = load i32*, i32** %18, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %43, i64 %49
  %51 = load i32, i32* %19, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32**, i32*** %15, align 8
  store i32* %53, i32** %54, align 8
  br label %55

55:                                               ; preds = %38, %8
  %56 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %57 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %60 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = inttoptr i64 %62 to i32*
  %64 = load i32**, i32*** %16, align 8
  store i32* %63, i32** %64, align 8
  %65 = load i32*, i32** %13, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %90

67:                                               ; preds = %55
  %68 = load %struct.metapath*, %struct.metapath** %9, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i64 @mp_eq_to_hgt(%struct.metapath* %68, i32* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %67
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp ult i32 %74, %75
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %20, align 4
  %78 = load i32*, i32** %18, align 8
  %79 = load i32*, i32** %13, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %78, i64 %84
  %86 = load i32, i32* %20, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32**, i32*** %16, align 8
  store i32* %88, i32** %89, align 8
  br label %90

90:                                               ; preds = %73, %67, %55
  ret void
}

declare dso_local i32* @metaptr1(i32, %struct.metapath*) #1

declare dso_local i64 @mp_eq_to_hgt(%struct.metapath*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
