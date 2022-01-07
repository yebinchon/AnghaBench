; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_iwalk.c_xfs_iwalk_threaded.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_iwalk.c_xfs_iwalk_threaded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.xfs_pwork_ctl = type { i32 }
%struct.xfs_iwalk_ag = type { i32, i32, i32, i8*, i32, %struct.xfs_mount* }

@XFS_IWALK_FLAGS_ALL = common dso_local global i32 0, align 4
@xfs_iwalk_ag_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"xfs_iwalk\00", align 1
@XFS_INOBT_WALK_SAME_AG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_iwalk_threaded(%struct.xfs_mount* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.xfs_mount*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.xfs_pwork_ctl, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.xfs_iwalk_ag*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %21 = load %struct.xfs_mount*, %struct.xfs_mount** %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i64 @XFS_INO_TO_AGNO(%struct.xfs_mount* %21, i32 %22)
  store i64 %23, i64* %17, align 8
  %24 = load i64, i64* %17, align 8
  %25 = load %struct.xfs_mount*, %struct.xfs_mount** %9, align 8
  %26 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %24, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @XFS_IWALK_FLAGS_ALL, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @ASSERT(i32 %38)
  %40 = load %struct.xfs_mount*, %struct.xfs_mount** %9, align 8
  %41 = call i32 @xfs_pwork_guess_datadev_parallelism(%struct.xfs_mount* %40)
  store i32 %41, i32* %18, align 4
  %42 = load %struct.xfs_mount*, %struct.xfs_mount** %9, align 8
  %43 = load i32, i32* @xfs_iwalk_ag_work, align 4
  %44 = load i32, i32* %18, align 4
  %45 = call i32 @xfs_pwork_init(%struct.xfs_mount* %42, %struct.xfs_pwork_ctl* %16, i32 %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %44)
  store i32 %45, i32* %19, align 4
  %46 = load i32, i32* %19, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %7
  %49 = load i32, i32* %19, align 4
  store i32 %49, i32* %8, align 4
  br label %103

50:                                               ; preds = %7
  br label %51

51:                                               ; preds = %93, %50
  %52 = load i64, i64* %17, align 8
  %53 = load %struct.xfs_mount*, %struct.xfs_mount** %9, align 8
  %54 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %52, %56
  br i1 %57, label %58, label %96

58:                                               ; preds = %51
  %59 = call i64 @xfs_pwork_ctl_want_abort(%struct.xfs_pwork_ctl* %16)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %96

62:                                               ; preds = %58
  %63 = call %struct.xfs_iwalk_ag* @kmem_zalloc(i32 40, i32 0)
  store %struct.xfs_iwalk_ag* %63, %struct.xfs_iwalk_ag** %20, align 8
  %64 = load %struct.xfs_mount*, %struct.xfs_mount** %9, align 8
  %65 = load %struct.xfs_iwalk_ag*, %struct.xfs_iwalk_ag** %20, align 8
  %66 = getelementptr inbounds %struct.xfs_iwalk_ag, %struct.xfs_iwalk_ag* %65, i32 0, i32 5
  store %struct.xfs_mount* %64, %struct.xfs_mount** %66, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.xfs_iwalk_ag*, %struct.xfs_iwalk_ag** %20, align 8
  %69 = getelementptr inbounds %struct.xfs_iwalk_ag, %struct.xfs_iwalk_ag* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load i8*, i8** %15, align 8
  %71 = load %struct.xfs_iwalk_ag*, %struct.xfs_iwalk_ag** %20, align 8
  %72 = getelementptr inbounds %struct.xfs_iwalk_ag, %struct.xfs_iwalk_ag* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.xfs_iwalk_ag*, %struct.xfs_iwalk_ag** %20, align 8
  %75 = getelementptr inbounds %struct.xfs_iwalk_ag, %struct.xfs_iwalk_ag* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @xfs_iwalk_prefetch(i32 %76)
  %78 = load %struct.xfs_iwalk_ag*, %struct.xfs_iwalk_ag** %20, align 8
  %79 = getelementptr inbounds %struct.xfs_iwalk_ag, %struct.xfs_iwalk_ag* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.xfs_iwalk_ag*, %struct.xfs_iwalk_ag** %20, align 8
  %81 = getelementptr inbounds %struct.xfs_iwalk_ag, %struct.xfs_iwalk_ag* %80, i32 0, i32 0
  %82 = call i32 @xfs_pwork_queue(%struct.xfs_pwork_ctl* %16, i32* %81)
  %83 = load %struct.xfs_mount*, %struct.xfs_mount** %9, align 8
  %84 = load i64, i64* %17, align 8
  %85 = add nsw i64 %84, 1
  %86 = call i32 @XFS_AGINO_TO_INO(%struct.xfs_mount* %83, i64 %85, i32 0)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @XFS_INOBT_WALK_SAME_AG, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %62
  br label %96

92:                                               ; preds = %62
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* %17, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %17, align 8
  br label %51

96:                                               ; preds = %91, %61, %51
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = call i32 @xfs_pwork_poll(%struct.xfs_pwork_ctl* %16)
  br label %101

101:                                              ; preds = %99, %96
  %102 = call i32 @xfs_pwork_destroy(%struct.xfs_pwork_ctl* %16)
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %101, %48
  %104 = load i32, i32* %8, align 4
  ret i32 %104
}

declare dso_local i64 @XFS_INO_TO_AGNO(%struct.xfs_mount*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_pwork_guess_datadev_parallelism(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_pwork_init(%struct.xfs_mount*, %struct.xfs_pwork_ctl*, i32, i8*, i32) #1

declare dso_local i64 @xfs_pwork_ctl_want_abort(%struct.xfs_pwork_ctl*) #1

declare dso_local %struct.xfs_iwalk_ag* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @xfs_iwalk_prefetch(i32) #1

declare dso_local i32 @xfs_pwork_queue(%struct.xfs_pwork_ctl*, i32*) #1

declare dso_local i32 @XFS_AGINO_TO_INO(%struct.xfs_mount*, i64, i32) #1

declare dso_local i32 @xfs_pwork_poll(%struct.xfs_pwork_ctl*) #1

declare dso_local i32 @xfs_pwork_destroy(%struct.xfs_pwork_ctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
