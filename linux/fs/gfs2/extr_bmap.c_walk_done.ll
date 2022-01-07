; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_walk_done.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_walk_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i64, i64 }
%struct.metapath = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, %struct.metapath*, i32, i64*, i32)* @walk_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walk_done(%struct.gfs2_sbd* %0, %struct.metapath* %1, i32 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_sbd*, align 8
  %8 = alloca %struct.metapath*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %7, align 8
  store %struct.metapath* %1, %struct.metapath** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i64*, i64** %10, align 8
  %15 = icmp ne i64* %14, null
  br i1 %15, label %16, label %36

16:                                               ; preds = %5
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ult i32 %17, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %13, align 4
  %21 = load %struct.metapath*, %struct.metapath** %8, align 8
  %22 = load i64*, i64** %10, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @mp_eq_to_hgt(%struct.metapath* %21, i64* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %60

27:                                               ; preds = %16
  %28 = load i64*, i64** %10, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  store i64 %35, i64* %12, align 8
  br label %49

36:                                               ; preds = %5
  %37 = load i32, i32* %9, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %41 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  br label %47

43:                                               ; preds = %36
  %44 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %45 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i64 [ %42, %39 ], [ %46, %43 ]
  store i64 %48, i64* %12, align 8
  br label %49

49:                                               ; preds = %47, %27
  %50 = load %struct.metapath*, %struct.metapath** %8, align 8
  %51 = getelementptr inbounds %struct.metapath, %struct.metapath* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %12, align 8
  %58 = icmp sge i64 %56, %57
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %49, %26
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @mp_eq_to_hgt(%struct.metapath*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
