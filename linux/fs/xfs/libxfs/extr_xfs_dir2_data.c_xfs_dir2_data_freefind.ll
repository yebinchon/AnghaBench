; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_data.c_xfs_dir2_data_freefind.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_data.c_xfs_dir2_data_freefind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_dir2_data_hdr = type { i32 }
%struct.xfs_dir2_data_free = type { i32, i32 }
%struct.xfs_dir2_data_unused = type { i32 }

@XFS_DIR2_DATA_FD_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xfs_dir2_data_free* @xfs_dir2_data_freefind(%struct.xfs_dir2_data_hdr* %0, %struct.xfs_dir2_data_free* %1, %struct.xfs_dir2_data_unused* %2) #0 {
  %4 = alloca %struct.xfs_dir2_data_free*, align 8
  %5 = alloca %struct.xfs_dir2_data_hdr*, align 8
  %6 = alloca %struct.xfs_dir2_data_free*, align 8
  %7 = alloca %struct.xfs_dir2_data_unused*, align 8
  %8 = alloca %struct.xfs_dir2_data_free*, align 8
  %9 = alloca i64, align 8
  store %struct.xfs_dir2_data_hdr* %0, %struct.xfs_dir2_data_hdr** %5, align 8
  store %struct.xfs_dir2_data_free* %1, %struct.xfs_dir2_data_free** %6, align 8
  store %struct.xfs_dir2_data_unused* %2, %struct.xfs_dir2_data_unused** %7, align 8
  %10 = load %struct.xfs_dir2_data_unused*, %struct.xfs_dir2_data_unused** %7, align 8
  %11 = bitcast %struct.xfs_dir2_data_unused* %10 to i8*
  %12 = load %struct.xfs_dir2_data_hdr*, %struct.xfs_dir2_data_hdr** %5, align 8
  %13 = bitcast %struct.xfs_dir2_data_hdr* %12 to i8*
  %14 = ptrtoint i8* %11 to i64
  %15 = ptrtoint i8* %13 to i64
  %16 = sub i64 %14, %15
  store i64 %16, i64* %9, align 8
  %17 = load %struct.xfs_dir2_data_unused*, %struct.xfs_dir2_data_unused** %7, align 8
  %18 = getelementptr inbounds %struct.xfs_dir2_data_unused, %struct.xfs_dir2_data_unused* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @be16_to_cpu(i32 %19)
  %21 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %6, align 8
  %22 = load i32, i32* @XFS_DIR2_DATA_FD_COUNT, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %21, i64 %24
  %26 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @be16_to_cpu(i32 %27)
  %29 = icmp slt i64 %20, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store %struct.xfs_dir2_data_free* null, %struct.xfs_dir2_data_free** %4, align 8
  br label %61

31:                                               ; preds = %3
  %32 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %6, align 8
  %33 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %32, i64 0
  store %struct.xfs_dir2_data_free* %33, %struct.xfs_dir2_data_free** %8, align 8
  br label %34

34:                                               ; preds = %57, %31
  %35 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %8, align 8
  %36 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %6, align 8
  %37 = load i32, i32* @XFS_DIR2_DATA_FD_COUNT, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %36, i64 %38
  %40 = icmp ult %struct.xfs_dir2_data_free* %35, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %34
  %42 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %8, align 8
  %43 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  store %struct.xfs_dir2_data_free* null, %struct.xfs_dir2_data_free** %4, align 8
  br label %61

47:                                               ; preds = %41
  %48 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %8, align 8
  %49 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @be16_to_cpu(i32 %50)
  %52 = load i64, i64* %9, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %8, align 8
  store %struct.xfs_dir2_data_free* %55, %struct.xfs_dir2_data_free** %4, align 8
  br label %61

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %8, align 8
  %59 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %58, i32 1
  store %struct.xfs_dir2_data_free* %59, %struct.xfs_dir2_data_free** %8, align 8
  br label %34

60:                                               ; preds = %34
  store %struct.xfs_dir2_data_free* null, %struct.xfs_dir2_data_free** %4, align 8
  br label %61

61:                                               ; preds = %60, %54, %46, %30
  %62 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %4, align 8
  ret %struct.xfs_dir2_data_free* %62
}

declare dso_local i64 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
