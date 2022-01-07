; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_hole_walker.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_hole_walker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.metapath = type { i32, i32*, i32 }

@WALK_STOP = common dso_local global i32 0, align 4
@WALK_FOLLOW = common dso_local global i32 0, align 4
@WALK_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.metapath*, i32)* @gfs2_hole_walker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_hole_walker(%struct.metapath* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.metapath*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store %struct.metapath* %0, %struct.metapath** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.metapath*, %struct.metapath** %4, align 8
  %11 = getelementptr inbounds %struct.metapath, %struct.metapath* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.metapath*, %struct.metapath** %4, align 8
  %16 = call i64* @metapointer(i32 %14, %struct.metapath* %15)
  store i64* %16, i64** %6, align 8
  %17 = load i64*, i64** %6, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  store i64* %20, i64** %8, align 8
  %21 = load i64*, i64** %6, align 8
  store i64* %21, i64** %7, align 8
  br label %22

22:                                               ; preds = %59, %2
  %23 = load i64*, i64** %7, align 8
  %24 = load i64*, i64** %8, align 8
  %25 = icmp ult i64* %23, %24
  br i1 %25, label %26, label %62

26:                                               ; preds = %22
  %27 = load i64*, i64** %7, align 8
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %26
  %31 = load i64*, i64** %7, align 8
  %32 = load i64*, i64** %6, align 8
  %33 = ptrtoint i64* %31 to i64
  %34 = ptrtoint i64* %32 to i64
  %35 = sub i64 %33, %34
  %36 = sdiv exact i64 %35, 8
  %37 = load %struct.metapath*, %struct.metapath** %4, align 8
  %38 = getelementptr inbounds %struct.metapath, %struct.metapath* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %36
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 4
  %47 = load %struct.metapath*, %struct.metapath** %4, align 8
  %48 = getelementptr inbounds %struct.metapath, %struct.metapath* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.metapath*, %struct.metapath** %4, align 8
  %51 = getelementptr inbounds %struct.metapath, %struct.metapath* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %30
  %55 = load i32, i32* @WALK_STOP, align 4
  store i32 %55, i32* %3, align 4
  br label %64

56:                                               ; preds = %30
  %57 = load i32, i32* @WALK_FOLLOW, align 4
  store i32 %57, i32* %3, align 4
  br label %64

58:                                               ; preds = %26
  br label %59

59:                                               ; preds = %58
  %60 = load i64*, i64** %7, align 8
  %61 = getelementptr inbounds i64, i64* %60, i32 1
  store i64* %61, i64** %7, align 8
  br label %22

62:                                               ; preds = %22
  %63 = load i32, i32* @WALK_CONTINUE, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %56, %54
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64* @metapointer(i32, %struct.metapath*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
