; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_itable.c_xfs_bulkstat_one.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_itable.c_xfs_bulkstat_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_ibulk = type { i32, i32, i32 }
%struct.xfs_bstat_chunk = type { i32, %struct.xfs_ibulk*, i32 }

@KM_MAYFAIL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ECANCELED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_bulkstat_one(%struct.xfs_ibulk* %0, i32 %1) #0 {
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
  %14 = getelementptr inbounds %struct.xfs_ibulk, %struct.xfs_ibulk* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 1
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load i32, i32* @KM_MAYFAIL, align 4
  %20 = call i32 @kmem_zalloc(i32 4, i32 %19)
  %21 = getelementptr inbounds %struct.xfs_bstat_chunk, %struct.xfs_bstat_chunk* %6, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.xfs_bstat_chunk, %struct.xfs_bstat_chunk* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %46

28:                                               ; preds = %2
  %29 = load %struct.xfs_ibulk*, %struct.xfs_ibulk** %4, align 8
  %30 = getelementptr inbounds %struct.xfs_ibulk, %struct.xfs_ibulk* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.xfs_ibulk*, %struct.xfs_ibulk** %4, align 8
  %33 = getelementptr inbounds %struct.xfs_ibulk, %struct.xfs_ibulk* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @xfs_bulkstat_one_int(i32 %31, i32* null, i32 %34, %struct.xfs_bstat_chunk* %6)
  store i32 %35, i32* %7, align 4
  %36 = getelementptr inbounds %struct.xfs_bstat_chunk, %struct.xfs_bstat_chunk* %6, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @kmem_free(i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @ECANCELED, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %43, %28
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %25
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @kmem_zalloc(i32, i32) #1

declare dso_local i32 @xfs_bulkstat_one_int(i32, i32*, i32, %struct.xfs_bstat_chunk*) #1

declare dso_local i32 @kmem_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
