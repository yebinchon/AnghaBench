; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_sb.c_xfs_update_secondary_sbs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_sb.c_xfs_update_secondary_sbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.xfs_buf = type { i32, i32* }

@buffer_list = common dso_local global i32 0, align 4
@XFS_SB_DADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"error allocating secondary superblock for ag %d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@xfs_sb_buf_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"write error %d updating a secondary superblock near ag %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_update_secondary_sbs(%struct.xfs_mount* %0) #0 {
  %2 = alloca %struct.xfs_mount*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_buf*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @buffer_list, align 4
  %8 = call i32 @LIST_HEAD(i32 %7)
  store i32 1, i32* %3, align 4
  br label %9

9:                                                ; preds = %78, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %12 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %81

16:                                               ; preds = %9
  %17 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %18 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @XFS_SB_DADDR, align 4
  %23 = call i32 @XFS_AG_DADDR(%struct.xfs_mount* %20, i32 %21, i32 %22)
  %24 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %25 = call i32 @XFS_FSS_TO_BB(%struct.xfs_mount* %24, i32 1)
  %26 = call %struct.xfs_buf* @xfs_buf_get(i32 %19, i32 %23, i32 %25)
  store %struct.xfs_buf* %26, %struct.xfs_buf** %6, align 8
  %27 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %28 = icmp ne %struct.xfs_buf* %27, null
  br i1 %28, label %39, label %29

29:                                               ; preds = %16
  %30 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 (%struct.xfs_mount*, i8*, i32, ...) @xfs_warn(%struct.xfs_mount* %30, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %29
  br label %78

39:                                               ; preds = %16
  %40 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %41 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %40, i32 0, i32 1
  store i32* @xfs_sb_buf_ops, i32** %41, align 8
  %42 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %43 = call i32 @xfs_buf_oneshot(%struct.xfs_buf* %42)
  %44 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %45 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %46 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @BBTOB(i32 %47)
  %49 = call i32 @xfs_buf_zero(%struct.xfs_buf* %44, i32 0, i32 %48)
  %50 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %51 = call i32 @XFS_BUF_TO_SBP(%struct.xfs_buf* %50)
  %52 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %53 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %52, i32 0, i32 0
  %54 = call i32 @xfs_sb_to_disk(i32 %51, %struct.TYPE_2__* %53)
  %55 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %56 = call i32 @xfs_buf_delwri_queue(%struct.xfs_buf* %55, i32* @buffer_list)
  %57 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %58 = call i32 @xfs_buf_relse(%struct.xfs_buf* %57)
  %59 = load i32, i32* %3, align 4
  %60 = srem i32 %59, 16
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %39
  br label %78

63:                                               ; preds = %39
  %64 = call i32 @xfs_buf_delwri_submit(i32* @buffer_list)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %63
  %68 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %3, align 4
  %71 = call i32 (%struct.xfs_mount*, i8*, i32, ...) @xfs_warn(%struct.xfs_mount* %68, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %70)
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %67
  %75 = load i32, i32* %5, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %67
  br label %78

77:                                               ; preds = %63
  br label %78

78:                                               ; preds = %77, %76, %62, %38
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %9

81:                                               ; preds = %9
  %82 = call i32 @xfs_buf_delwri_submit(i32* @buffer_list)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %3, align 4
  %89 = call i32 (%struct.xfs_mount*, i8*, i32, ...) @xfs_warn(%struct.xfs_mount* %86, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %85, %81
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i32, i32* %4, align 4
  br label %97

95:                                               ; preds = %90
  %96 = load i32, i32* %5, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  ret i32 %98
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local %struct.xfs_buf* @xfs_buf_get(i32, i32, i32) #1

declare dso_local i32 @XFS_AG_DADDR(%struct.xfs_mount*, i32, i32) #1

declare dso_local i32 @XFS_FSS_TO_BB(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_warn(%struct.xfs_mount*, i8*, i32, ...) #1

declare dso_local i32 @xfs_buf_oneshot(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_buf_zero(%struct.xfs_buf*, i32, i32) #1

declare dso_local i32 @BBTOB(i32) #1

declare dso_local i32 @xfs_sb_to_disk(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @XFS_BUF_TO_SBP(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_buf_delwri_queue(%struct.xfs_buf*, i32*) #1

declare dso_local i32 @xfs_buf_relse(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_buf_delwri_submit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
