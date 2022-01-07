; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_fsmap.c_xfs_fsmap_from_internal.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_fsmap.c_xfs_fsmap_from_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsmap = type { i64*, i8*, i8*, i32, i8*, i32, i32 }
%struct.xfs_fsmap = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_fsmap_from_internal(%struct.fsmap* %0, %struct.xfs_fsmap* %1) #0 {
  %3 = alloca %struct.fsmap*, align 8
  %4 = alloca %struct.xfs_fsmap*, align 8
  store %struct.fsmap* %0, %struct.fsmap** %3, align 8
  store %struct.xfs_fsmap* %1, %struct.xfs_fsmap** %4, align 8
  %5 = load %struct.xfs_fsmap*, %struct.xfs_fsmap** %4, align 8
  %6 = getelementptr inbounds %struct.xfs_fsmap, %struct.xfs_fsmap* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.fsmap*, %struct.fsmap** %3, align 8
  %9 = getelementptr inbounds %struct.fsmap, %struct.fsmap* %8, i32 0, i32 6
  store i32 %7, i32* %9, align 4
  %10 = load %struct.xfs_fsmap*, %struct.xfs_fsmap** %4, align 8
  %11 = getelementptr inbounds %struct.xfs_fsmap, %struct.xfs_fsmap* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.fsmap*, %struct.fsmap** %3, align 8
  %14 = getelementptr inbounds %struct.fsmap, %struct.fsmap* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 8
  %15 = load %struct.xfs_fsmap*, %struct.xfs_fsmap** %4, align 8
  %16 = getelementptr inbounds %struct.xfs_fsmap, %struct.xfs_fsmap* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @BBTOB(i32 %17)
  %19 = load %struct.fsmap*, %struct.fsmap** %3, align 8
  %20 = getelementptr inbounds %struct.fsmap, %struct.fsmap* %19, i32 0, i32 4
  store i8* %18, i8** %20, align 8
  %21 = load %struct.xfs_fsmap*, %struct.xfs_fsmap** %4, align 8
  %22 = getelementptr inbounds %struct.xfs_fsmap, %struct.xfs_fsmap* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.fsmap*, %struct.fsmap** %3, align 8
  %25 = getelementptr inbounds %struct.fsmap, %struct.fsmap* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load %struct.xfs_fsmap*, %struct.xfs_fsmap** %4, align 8
  %27 = getelementptr inbounds %struct.xfs_fsmap, %struct.xfs_fsmap* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @BBTOB(i32 %28)
  %30 = load %struct.fsmap*, %struct.fsmap** %3, align 8
  %31 = getelementptr inbounds %struct.fsmap, %struct.fsmap* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load %struct.xfs_fsmap*, %struct.xfs_fsmap** %4, align 8
  %33 = getelementptr inbounds %struct.xfs_fsmap, %struct.xfs_fsmap* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @BBTOB(i32 %34)
  %36 = load %struct.fsmap*, %struct.fsmap** %3, align 8
  %37 = getelementptr inbounds %struct.fsmap, %struct.fsmap* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.fsmap*, %struct.fsmap** %3, align 8
  %39 = getelementptr inbounds %struct.fsmap, %struct.fsmap* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.fsmap*, %struct.fsmap** %3, align 8
  %43 = getelementptr inbounds %struct.fsmap, %struct.fsmap* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.fsmap*, %struct.fsmap** %3, align 8
  %47 = getelementptr inbounds %struct.fsmap, %struct.fsmap* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 2
  store i64 0, i64* %49, align 8
  ret void
}

declare dso_local i8* @BBTOB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
