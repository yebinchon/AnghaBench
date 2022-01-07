; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_health.c_xchk_update_health.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_health.c_xchk_update_health.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.xfs_scrub = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64, i32 }
%struct.xfs_perag = type { i32 }

@XFS_SCRUB_OFLAG_CORRUPT = common dso_local global i32 0, align 4
@type_to_health_flag = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xchk_update_health(%struct.xfs_scrub* %0) #0 {
  %2 = alloca %struct.xfs_scrub*, align 8
  %3 = alloca %struct.xfs_perag*, align 8
  %4 = alloca i32, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %2, align 8
  %5 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %6 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %122

10:                                               ; preds = %1
  %11 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %12 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %11, i32 0, i32 3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @XFS_SCRUB_OFLAG_CORRUPT, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %4, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @type_to_health_flag, align 8
  %19 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %20 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %19, i32 0, i32 3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %120 [
    i32 131, label %27
    i32 129, label %54
    i32 130, label %80
    i32 128, label %100
  ]

27:                                               ; preds = %10
  %28 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %29 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %32 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %31, i32 0, i32 3
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.xfs_perag* @xfs_perag_get(i32 %30, i32 %35)
  store %struct.xfs_perag* %36, %struct.xfs_perag** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %27
  %40 = load %struct.xfs_perag*, %struct.xfs_perag** %3, align 8
  %41 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %42 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @xfs_ag_mark_sick(%struct.xfs_perag* %40, i32 %43)
  br label %51

45:                                               ; preds = %27
  %46 = load %struct.xfs_perag*, %struct.xfs_perag** %3, align 8
  %47 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %48 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @xfs_ag_mark_healthy(%struct.xfs_perag* %46, i32 %49)
  br label %51

51:                                               ; preds = %45, %39
  %52 = load %struct.xfs_perag*, %struct.xfs_perag** %3, align 8
  %53 = call i32 @xfs_perag_put(%struct.xfs_perag* %52)
  br label %122

54:                                               ; preds = %10
  %55 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %56 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  br label %122

60:                                               ; preds = %54
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %65 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %68 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @xfs_inode_mark_sick(i32 %66, i32 %69)
  br label %79

71:                                               ; preds = %60
  %72 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %73 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %76 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @xfs_inode_mark_healthy(i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %71, %63
  br label %122

80:                                               ; preds = %10
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %85 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %88 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @xfs_fs_mark_sick(i32 %86, i32 %89)
  br label %99

91:                                               ; preds = %80
  %92 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %93 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %96 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @xfs_fs_mark_healthy(i32 %94, i32 %97)
  br label %99

99:                                               ; preds = %91, %83
  br label %122

100:                                              ; preds = %10
  %101 = load i32, i32* %4, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %105 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %108 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @xfs_rt_mark_sick(i32 %106, i32 %109)
  br label %119

111:                                              ; preds = %100
  %112 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %113 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %116 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @xfs_rt_mark_healthy(i32 %114, i32 %117)
  br label %119

119:                                              ; preds = %111, %103
  br label %122

120:                                              ; preds = %10
  %121 = call i32 @ASSERT(i32 0)
  br label %122

122:                                              ; preds = %9, %59, %120, %119, %99, %79, %51
  ret void
}

declare dso_local %struct.xfs_perag* @xfs_perag_get(i32, i32) #1

declare dso_local i32 @xfs_ag_mark_sick(%struct.xfs_perag*, i32) #1

declare dso_local i32 @xfs_ag_mark_healthy(%struct.xfs_perag*, i32) #1

declare dso_local i32 @xfs_perag_put(%struct.xfs_perag*) #1

declare dso_local i32 @xfs_inode_mark_sick(i32, i32) #1

declare dso_local i32 @xfs_inode_mark_healthy(i32, i32) #1

declare dso_local i32 @xfs_fs_mark_sick(i32, i32) #1

declare dso_local i32 @xfs_fs_mark_healthy(i32, i32) #1

declare dso_local i32 @xfs_rt_mark_sick(i32, i32) #1

declare dso_local i32 @xfs_rt_mark_healthy(i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
