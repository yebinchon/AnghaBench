; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_itable.c_xfs_bulkstat.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_itable.c_xfs_bulkstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_ibulk = type { i64, i32, i32, i32, i32 }
%struct.xfs_bstat_chunk = type { i32, %struct.xfs_ibulk*, i32 }

@KM_MAYFAIL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@xfs_bulkstat_iwalk = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_bulkstat(%struct.xfs_ibulk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_ibulk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_bstat_chunk, align 8
  %7 = alloca i32, align 4
  store %struct.xfs_ibulk* %0, %struct.xfs_ibulk** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = getelementptr inbounds %struct.xfs_bstat_chunk, %struct.xfs_bstat_chunk* %6, i32 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = getelementptr inbounds %struct.xfs_bstat_chunk, %struct.xfs_bstat_chunk* %6, i32 0, i32 1
  %10 = load %struct.xfs_ibulk*, %struct.xfs_ibulk** %4, align 8
  store %struct.xfs_ibulk* %10, %struct.xfs_ibulk** %9, align 8
  %11 = getelementptr inbounds %struct.xfs_bstat_chunk, %struct.xfs_bstat_chunk* %6, i32 0, i32 2
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %11, align 8
  %13 = load %struct.xfs_ibulk*, %struct.xfs_ibulk** %4, align 8
  %14 = getelementptr inbounds %struct.xfs_ibulk, %struct.xfs_ibulk* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.xfs_ibulk*, %struct.xfs_ibulk** %4, align 8
  %17 = getelementptr inbounds %struct.xfs_ibulk, %struct.xfs_ibulk* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @xfs_bulkstat_already_done(i32 %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

22:                                               ; preds = %2
  %23 = load i32, i32* @KM_MAYFAIL, align 4
  %24 = call i32 @kmem_zalloc(i32 4, i32 %23)
  %25 = getelementptr inbounds %struct.xfs_bstat_chunk, %struct.xfs_bstat_chunk* %6, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.xfs_bstat_chunk, %struct.xfs_bstat_chunk* %6, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %57

32:                                               ; preds = %22
  %33 = load %struct.xfs_ibulk*, %struct.xfs_ibulk** %4, align 8
  %34 = getelementptr inbounds %struct.xfs_ibulk, %struct.xfs_ibulk* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.xfs_ibulk*, %struct.xfs_ibulk** %4, align 8
  %37 = getelementptr inbounds %struct.xfs_ibulk, %struct.xfs_ibulk* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.xfs_ibulk*, %struct.xfs_ibulk** %4, align 8
  %40 = getelementptr inbounds %struct.xfs_ibulk, %struct.xfs_ibulk* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @xfs_bulkstat_iwalk, align 4
  %43 = load %struct.xfs_ibulk*, %struct.xfs_ibulk** %4, align 8
  %44 = getelementptr inbounds %struct.xfs_ibulk, %struct.xfs_ibulk* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @xfs_iwalk(i32 %35, i32* null, i32 %38, i32 %41, i32 %42, i32 %45, %struct.xfs_bstat_chunk* %6)
  store i32 %46, i32* %7, align 4
  %47 = getelementptr inbounds %struct.xfs_bstat_chunk, %struct.xfs_bstat_chunk* %6, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @kmem_free(i32 %48)
  %50 = load %struct.xfs_ibulk*, %struct.xfs_ibulk** %4, align 8
  %51 = getelementptr inbounds %struct.xfs_ibulk, %struct.xfs_ibulk* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %54, %32
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %29, %21
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @xfs_bulkstat_already_done(i32, i32) #1

declare dso_local i32 @kmem_zalloc(i32, i32) #1

declare dso_local i32 @xfs_iwalk(i32, i32*, i32, i32, i32, i32, %struct.xfs_bstat_chunk*) #1

declare dso_local i32 @kmem_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
