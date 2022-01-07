; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dmap.c_dbAllocDmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dmap.c_dbAllocDmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmap = type { i32 }
%struct.dmap = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@ROOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmap*, %struct.dmap*, i32, i32)* @dbAllocDmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbAllocDmap(%struct.bmap* %0, %struct.dmap* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bmap*, align 8
  %7 = alloca %struct.dmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.bmap* %0, %struct.bmap** %6, align 8
  store %struct.dmap* %1, %struct.dmap** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.dmap*, %struct.dmap** %7, align 8
  %13 = getelementptr inbounds %struct.dmap, %struct.dmap* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* @ROOT, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %10, align 8
  %19 = load %struct.bmap*, %struct.bmap** %6, align 8
  %20 = load %struct.dmap*, %struct.dmap** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @dbAllocBits(%struct.bmap* %19, %struct.dmap* %20, i32 %21, i32 %22)
  %24 = load %struct.dmap*, %struct.dmap** %7, align 8
  %25 = getelementptr inbounds %struct.dmap, %struct.dmap* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* @ROOT, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %54

34:                                               ; preds = %4
  %35 = load %struct.bmap*, %struct.bmap** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.dmap*, %struct.dmap** %7, align 8
  %38 = getelementptr inbounds %struct.dmap, %struct.dmap* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* @ROOT, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @dbAdjCtl(%struct.bmap* %35, i32 %36, i64 %43, i32 1, i32 0)
  store i32 %44, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %34
  %47 = load %struct.bmap*, %struct.bmap** %6, align 8
  %48 = load %struct.dmap*, %struct.dmap** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @dbFreeBits(%struct.bmap* %47, %struct.dmap* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %46, %34
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %52, %33
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @dbAllocBits(%struct.bmap*, %struct.dmap*, i32, i32) #1

declare dso_local i32 @dbAdjCtl(%struct.bmap*, i32, i64, i32, i32) #1

declare dso_local i32 @dbFreeBits(%struct.bmap*, %struct.dmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
