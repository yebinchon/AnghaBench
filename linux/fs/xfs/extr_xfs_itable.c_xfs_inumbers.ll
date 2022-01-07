; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_itable.c_xfs_inumbers.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_itable.c_xfs_inumbers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_ibulk = type { i64, i32, i32, i32, i32 }
%struct.xfs_inumbers_chunk = type { %struct.xfs_ibulk*, i32 }

@xfs_inumbers_walk = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_inumbers(%struct.xfs_ibulk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_ibulk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_inumbers_chunk, align 8
  %7 = alloca i32, align 4
  store %struct.xfs_ibulk* %0, %struct.xfs_ibulk** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = getelementptr inbounds %struct.xfs_inumbers_chunk, %struct.xfs_inumbers_chunk* %6, i32 0, i32 0
  %9 = load %struct.xfs_ibulk*, %struct.xfs_ibulk** %4, align 8
  store %struct.xfs_ibulk* %9, %struct.xfs_ibulk** %8, align 8
  %10 = getelementptr inbounds %struct.xfs_inumbers_chunk, %struct.xfs_inumbers_chunk* %6, i32 0, i32 1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %10, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.xfs_ibulk*, %struct.xfs_ibulk** %4, align 8
  %13 = getelementptr inbounds %struct.xfs_ibulk, %struct.xfs_ibulk* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.xfs_ibulk*, %struct.xfs_ibulk** %4, align 8
  %16 = getelementptr inbounds %struct.xfs_ibulk, %struct.xfs_ibulk* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @xfs_bulkstat_already_done(i32 %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

21:                                               ; preds = %2
  %22 = load %struct.xfs_ibulk*, %struct.xfs_ibulk** %4, align 8
  %23 = getelementptr inbounds %struct.xfs_ibulk, %struct.xfs_ibulk* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.xfs_ibulk*, %struct.xfs_ibulk** %4, align 8
  %26 = getelementptr inbounds %struct.xfs_ibulk, %struct.xfs_ibulk* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.xfs_ibulk*, %struct.xfs_ibulk** %4, align 8
  %29 = getelementptr inbounds %struct.xfs_ibulk, %struct.xfs_ibulk* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @xfs_inumbers_walk, align 4
  %32 = load %struct.xfs_ibulk*, %struct.xfs_ibulk** %4, align 8
  %33 = getelementptr inbounds %struct.xfs_ibulk, %struct.xfs_ibulk* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @xfs_inobt_walk(i32 %24, i32* null, i32 %27, i32 %30, i32 %31, i32 %34, %struct.xfs_inumbers_chunk* %6)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.xfs_ibulk*, %struct.xfs_ibulk** %4, align 8
  %37 = getelementptr inbounds %struct.xfs_ibulk, %struct.xfs_ibulk* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %40, %21
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %20
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @xfs_bulkstat_already_done(i32, i32) #1

declare dso_local i32 @xfs_inobt_walk(i32, i32*, i32, i32, i32, i32, %struct.xfs_inumbers_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
