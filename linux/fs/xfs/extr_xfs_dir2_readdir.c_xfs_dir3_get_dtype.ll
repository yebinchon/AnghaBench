; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_dir2_readdir.c_xfs_dir3_get_dtype.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_dir2_readdir.c_xfs_dir3_get_dtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }

@DT_UNKNOWN = common dso_local global i8 0, align 1
@XFS_DIR3_FT_MAX = common dso_local global i64 0, align 8
@xfs_dir3_filetype_table = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @xfs_dir3_get_dtype(%struct.xfs_mount* %0, i64 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca i64, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %7 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %6, i32 0, i32 0
  %8 = call i32 @xfs_sb_version_hasftype(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i8, i8* @DT_UNKNOWN, align 1
  store i8 %11, i8* %3, align 1
  br label %23

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @XFS_DIR3_FT_MAX, align 8
  %15 = icmp uge i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i8, i8* @DT_UNKNOWN, align 1
  store i8 %17, i8* %3, align 1
  br label %23

18:                                               ; preds = %12
  %19 = load i8*, i8** @xfs_dir3_filetype_table, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  store i8 %22, i8* %3, align 1
  br label %23

23:                                               ; preds = %18, %16, %10
  %24 = load i8, i8* %3, align 1
  ret i8 %24
}

declare dso_local i32 @xfs_sb_version_hasftype(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
