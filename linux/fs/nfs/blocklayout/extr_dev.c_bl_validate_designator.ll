; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_dev.c_bl_validate_designator.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_dev.c_bl_validate_designator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_block_volume = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@PS_CODE_SET_BINARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"pNFS: unsupported designator (code set %d, type %d, len %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"pNFS: invalid designator (code set %d, type %d, len %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnfs_block_volume*)* @bl_validate_designator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bl_validate_designator(%struct.pnfs_block_volume* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pnfs_block_volume*, align 8
  store %struct.pnfs_block_volume* %0, %struct.pnfs_block_volume** %3, align 8
  %4 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %3, align 8
  %5 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %72 [
    i32 131, label %8
    i32 130, label %36
    i32 128, label %58
    i32 129, label %58
  ]

8:                                                ; preds = %1
  %9 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %3, align 8
  %10 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PS_CODE_SET_BINARY, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %86

16:                                               ; preds = %8
  %17 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %3, align 8
  %18 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 8
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %3, align 8
  %24 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 10
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %3, align 8
  %30 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 16
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %86

35:                                               ; preds = %28, %22, %16
  store i32 1, i32* %2, align 4
  br label %86

36:                                               ; preds = %1
  %37 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %3, align 8
  %38 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PS_CODE_SET_BINARY, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %86

44:                                               ; preds = %36
  %45 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %3, align 8
  %46 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 8
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %3, align 8
  %52 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 16
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %86

57:                                               ; preds = %50, %44
  store i32 1, i32* %2, align 4
  br label %86

58:                                               ; preds = %1, %1
  %59 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %3, align 8
  %60 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %3, align 8
  %64 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %3, align 8
  %68 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %66, i32 %70)
  store i32 0, i32* %2, align 4
  br label %86

72:                                               ; preds = %1
  %73 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %3, align 8
  %74 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %3, align 8
  %78 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %3, align 8
  %82 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %80, i32 %84)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %72, %58, %57, %56, %43, %35, %34, %15
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
