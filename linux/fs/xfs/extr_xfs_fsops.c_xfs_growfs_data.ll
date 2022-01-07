; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_fsops.c_xfs_growfs_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_fsops.c_xfs_growfs_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.xfs_growfs_data = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_growfs_data(%struct.xfs_mount* %0, %struct.xfs_growfs_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca %struct.xfs_growfs_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %4, align 8
  store %struct.xfs_growfs_data* %1, %struct.xfs_growfs_data** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %9 = call i32 @capable(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EPERM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %98

14:                                               ; preds = %2
  %15 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %16 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %15, i32 0, i32 0
  %17 = call i32 @mutex_trylock(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @EWOULDBLOCK, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %98

22:                                               ; preds = %14
  %23 = load %struct.xfs_growfs_data*, %struct.xfs_growfs_data** %5, align 8
  %24 = getelementptr inbounds %struct.xfs_growfs_data, %struct.xfs_growfs_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %27 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %25, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %22
  %32 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %33 = load %struct.xfs_growfs_data*, %struct.xfs_growfs_data** %5, align 8
  %34 = getelementptr inbounds %struct.xfs_growfs_data, %struct.xfs_growfs_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @xfs_growfs_imaxpct(%struct.xfs_mount* %32, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %89

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %22
  %42 = load %struct.xfs_growfs_data*, %struct.xfs_growfs_data** %5, align 8
  %43 = getelementptr inbounds %struct.xfs_growfs_data, %struct.xfs_growfs_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %46 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %44, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %41
  %51 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %52 = load %struct.xfs_growfs_data*, %struct.xfs_growfs_data** %5, align 8
  %53 = call i32 @xfs_growfs_data_private(%struct.xfs_mount* %51, %struct.xfs_growfs_data* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %89

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %41
  %59 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %60 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %58
  %65 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %66 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %70 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %68, %72
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @do_div(i32 %74, i32 100)
  %76 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i64 @XFS_FSB_TO_INO(%struct.xfs_mount* %76, i32 %77)
  %79 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %80 = call %struct.TYPE_4__* @M_IGEO(%struct.xfs_mount* %79)
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i64 %78, i64* %81, align 8
  br label %86

82:                                               ; preds = %58
  %83 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %84 = call %struct.TYPE_4__* @M_IGEO(%struct.xfs_mount* %83)
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %82, %64
  %87 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %88 = call i32 @xfs_update_secondary_sbs(%struct.xfs_mount* %87)
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %86, %56, %39
  %90 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %91 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %95 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %94, i32 0, i32 0
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %89, %19, %11
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @xfs_growfs_imaxpct(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_growfs_data_private(%struct.xfs_mount*, %struct.xfs_growfs_data*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i64 @XFS_FSB_TO_INO(%struct.xfs_mount*, i32) #1

declare dso_local %struct.TYPE_4__* @M_IGEO(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_update_secondary_sbs(%struct.xfs_mount*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
