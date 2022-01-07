; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_dev.c_bl_parse_concat.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_dev.c_bl_parse_concat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32 }
%struct.pnfs_block_dev = type { i32, i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.pnfs_block_volume = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bl_map_concat = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*, %struct.pnfs_block_dev*, %struct.pnfs_block_volume*, i32, i32)* @bl_parse_concat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bl_parse_concat(%struct.nfs_server* %0, %struct.pnfs_block_dev* %1, %struct.pnfs_block_volume* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfs_server*, align 8
  %8 = alloca %struct.pnfs_block_dev*, align 8
  %9 = alloca %struct.pnfs_block_volume*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pnfs_block_volume*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nfs_server* %0, %struct.nfs_server** %7, align 8
  store %struct.pnfs_block_dev* %1, %struct.pnfs_block_dev** %8, align 8
  store %struct.pnfs_block_volume* %2, %struct.pnfs_block_volume** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %16, i64 %18
  store %struct.pnfs_block_volume* %19, %struct.pnfs_block_volume** %12, align 8
  store i64 0, i64* %13, align 8
  %20 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %12, align 8
  %21 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.TYPE_5__* @kcalloc(i32 %23, i32 32, i32 %24)
  %26 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %8, align 8
  %27 = getelementptr inbounds %struct.pnfs_block_dev, %struct.pnfs_block_dev* %26, i32 0, i32 2
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %27, align 8
  %28 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %8, align 8
  %29 = getelementptr inbounds %struct.pnfs_block_dev, %struct.pnfs_block_dev* %28, i32 0, i32 2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %5
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %103

35:                                               ; preds = %5
  store i32 0, i32* %15, align 4
  br label %36

36:                                               ; preds = %93, %35
  %37 = load i32, i32* %15, align 4
  %38 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %12, align 8
  %39 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %37, %41
  br i1 %42, label %43, label %96

43:                                               ; preds = %36
  %44 = load %struct.nfs_server*, %struct.nfs_server** %7, align 8
  %45 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %8, align 8
  %46 = getelementptr inbounds %struct.pnfs_block_dev, %struct.pnfs_block_dev* %45, i32 0, i32 2
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %9, align 8
  %52 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %12, align 8
  %53 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @bl_parse_deviceid(%struct.nfs_server* %44, %struct.TYPE_5__* %50, %struct.pnfs_block_volume* %51, i32 %59, i32 %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %43
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %6, align 4
  br label %103

66:                                               ; preds = %43
  %67 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %8, align 8
  %68 = getelementptr inbounds %struct.pnfs_block_dev, %struct.pnfs_block_dev* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  %71 = load i64, i64* %13, align 8
  %72 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %8, align 8
  %73 = getelementptr inbounds %struct.pnfs_block_dev, %struct.pnfs_block_dev* %72, i32 0, i32 2
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %71
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %78, align 8
  %83 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %8, align 8
  %84 = getelementptr inbounds %struct.pnfs_block_dev, %struct.pnfs_block_dev* %83, i32 0, i32 2
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %13, align 8
  %92 = add nsw i64 %91, %90
  store i64 %92, i64* %13, align 8
  br label %93

93:                                               ; preds = %66
  %94 = load i32, i32* %15, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %15, align 4
  br label %36

96:                                               ; preds = %36
  %97 = load i64, i64* %13, align 8
  %98 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %8, align 8
  %99 = getelementptr inbounds %struct.pnfs_block_dev, %struct.pnfs_block_dev* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  %100 = load i32, i32* @bl_map_concat, align 4
  %101 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %8, align 8
  %102 = getelementptr inbounds %struct.pnfs_block_dev, %struct.pnfs_block_dev* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  store i32 0, i32* %6, align 4
  br label %103

103:                                              ; preds = %96, %64, %32
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local %struct.TYPE_5__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @bl_parse_deviceid(%struct.nfs_server*, %struct.TYPE_5__*, %struct.pnfs_block_volume*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
