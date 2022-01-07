; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_rtalloc.c_xfs_rtmount_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_rtalloc.c_xfs_rtmount_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32, i32, i32*, %struct.xfs_sb, i32*, i32 }
%struct.xfs_sb = type { i64, i32, i32, i32 }
%struct.xfs_buf = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"Filesystem has a realtime volume, use rtdev=device option\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"realtime mount -- %llu != %llu\00", align 1
@EFBIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"realtime device size check failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_rtmount_init(%struct.xfs_mount* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_mount*, align 8
  %4 = alloca %struct.xfs_buf*, align 8
  %5 = alloca %struct.xfs_sb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %3, align 8
  %8 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %9 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %8, i32 0, i32 3
  store %struct.xfs_sb* %9, %struct.xfs_sb** %5, align 8
  %10 = load %struct.xfs_sb*, %struct.xfs_sb** %5, align 8
  %11 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %102

15:                                               ; preds = %1
  %16 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %17 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %22 = call i32 (%struct.xfs_mount*, i8*, ...) @xfs_warn(%struct.xfs_mount* %21, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %102

25:                                               ; preds = %15
  %26 = load %struct.xfs_sb*, %struct.xfs_sb** %5, align 8
  %27 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  %30 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %31 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %33 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 4, %34
  %36 = load %struct.xfs_sb*, %struct.xfs_sb** %5, align 8
  %37 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %35, %38
  %40 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %41 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %43 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.xfs_sb*, %struct.xfs_sb** %5, align 8
  %46 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @roundup(i32 %44, i32 %47)
  %49 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %50 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %52 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %51, i32 0, i32 4
  store i32* null, i32** %52, align 8
  %53 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %54 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %53, i32 0, i32 5
  store i32 0, i32* %54, align 8
  %55 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %56 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %57 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i64 @XFS_FSB_TO_BB(%struct.xfs_mount* %55, i32 %60)
  store i64 %61, i64* %6, align 8
  %62 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %63 = load i64, i64* %6, align 8
  %64 = call i64 @XFS_BB_TO_FSB(%struct.xfs_mount* %62, i64 %63)
  %65 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %66 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %64, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %25
  %71 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %72 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %73 = load i64, i64* %6, align 8
  %74 = call i64 @XFS_BB_TO_FSB(%struct.xfs_mount* %72, i64 %73)
  %75 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %76 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 (%struct.xfs_mount*, i8*, ...) @xfs_warn(%struct.xfs_mount* %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %74, i64 %78)
  %80 = load i32, i32* @EFBIG, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %102

82:                                               ; preds = %25
  %83 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %84 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %6, align 8
  %87 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %88 = call i64 @XFS_FSB_TO_BB(%struct.xfs_mount* %87, i32 1)
  %89 = sub nsw i64 %86, %88
  %90 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %91 = call i64 @XFS_FSB_TO_BB(%struct.xfs_mount* %90, i32 1)
  %92 = call i32 @xfs_buf_read_uncached(i32* %85, i64 %89, i64 %91, i32 0, %struct.xfs_buf** %4, i32* null)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %82
  %96 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %97 = call i32 (%struct.xfs_mount*, i8*, ...) @xfs_warn(%struct.xfs_mount* %96, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %2, align 4
  br label %102

99:                                               ; preds = %82
  %100 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %101 = call i32 @xfs_buf_relse(%struct.xfs_buf* %100)
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %99, %95, %70, %20, %14
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @xfs_warn(%struct.xfs_mount*, i8*, ...) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i64 @XFS_FSB_TO_BB(%struct.xfs_mount*, i32) #1

declare dso_local i64 @XFS_BB_TO_FSB(%struct.xfs_mount*, i64) #1

declare dso_local i32 @xfs_buf_read_uncached(i32*, i64, i64, i32, %struct.xfs_buf**, i32*) #1

declare dso_local i32 @xfs_buf_relse(%struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
