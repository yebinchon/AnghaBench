; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_sysfs.c_xfs_error_sysfs_init_class.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_sysfs.c_xfs_error_sysfs_init_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.xfs_error_cfg**, %struct.xfs_kobj }
%struct.xfs_error_cfg = type { i32, %struct.xfs_kobj, i32 }
%struct.xfs_kobj = type { i32 }
%struct.xfs_error_init = type { i8*, i32, i32 }

@XFS_ERR_CLASS_MAX = common dso_local global i32 0, align 4
@xfs_error_ktype = common dso_local global i32 0, align 4
@XFS_ERR_ERRNO_MAX = common dso_local global i32 0, align 4
@xfs_error_cfg_ktype = common dso_local global i32 0, align 4
@XFS_ERR_RETRY_FOREVER = common dso_local global i32 0, align 4
@MSEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_mount*, i32, i8*, %struct.xfs_kobj*, %struct.xfs_error_init*)* @xfs_error_sysfs_init_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_error_sysfs_init_class(%struct.xfs_mount* %0, i32 %1, i8* %2, %struct.xfs_kobj* %3, %struct.xfs_error_init* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_mount*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.xfs_kobj*, align 8
  %11 = alloca %struct.xfs_error_init*, align 8
  %12 = alloca %struct.xfs_error_cfg*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.xfs_kobj* %3, %struct.xfs_kobj** %10, align 8
  store %struct.xfs_error_init* %4, %struct.xfs_error_init** %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @XFS_ERR_CLASS_MAX, align 4
  %17 = icmp slt i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load %struct.xfs_kobj*, %struct.xfs_kobj** %10, align 8
  %21 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %22 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %21, i32 0, i32 1
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @xfs_sysfs_init(%struct.xfs_kobj* %20, i32* @xfs_error_ktype, %struct.xfs_kobj* %22, i8* %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %6, align 4
  br label %123

29:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  br label %30

30:                                               ; preds = %92, %29
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* @XFS_ERR_ERRNO_MAX, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %95

34:                                               ; preds = %30
  %35 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %36 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %35, i32 0, i32 0
  %37 = load %struct.xfs_error_cfg**, %struct.xfs_error_cfg*** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.xfs_error_cfg*, %struct.xfs_error_cfg** %37, i64 %39
  %41 = load %struct.xfs_error_cfg*, %struct.xfs_error_cfg** %40, align 8
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.xfs_error_cfg, %struct.xfs_error_cfg* %41, i64 %43
  store %struct.xfs_error_cfg* %44, %struct.xfs_error_cfg** %12, align 8
  %45 = load %struct.xfs_error_cfg*, %struct.xfs_error_cfg** %12, align 8
  %46 = getelementptr inbounds %struct.xfs_error_cfg, %struct.xfs_error_cfg* %45, i32 0, i32 1
  %47 = load %struct.xfs_kobj*, %struct.xfs_kobj** %10, align 8
  %48 = load %struct.xfs_error_init*, %struct.xfs_error_init** %11, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.xfs_error_init, %struct.xfs_error_init* %48, i64 %50
  %52 = getelementptr inbounds %struct.xfs_error_init, %struct.xfs_error_init* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @xfs_sysfs_init(%struct.xfs_kobj* %46, i32* @xfs_error_cfg_ktype, %struct.xfs_kobj* %47, i8* %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %34
  br label %96

58:                                               ; preds = %34
  %59 = load %struct.xfs_error_init*, %struct.xfs_error_init** %11, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.xfs_error_init, %struct.xfs_error_init* %59, i64 %61
  %63 = getelementptr inbounds %struct.xfs_error_init, %struct.xfs_error_init* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.xfs_error_cfg*, %struct.xfs_error_cfg** %12, align 8
  %66 = getelementptr inbounds %struct.xfs_error_cfg, %struct.xfs_error_cfg* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.xfs_error_init*, %struct.xfs_error_init** %11, align 8
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.xfs_error_init, %struct.xfs_error_init* %67, i64 %69
  %71 = getelementptr inbounds %struct.xfs_error_init, %struct.xfs_error_init* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @XFS_ERR_RETRY_FOREVER, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %58
  %76 = load i32, i32* @XFS_ERR_RETRY_FOREVER, align 4
  %77 = load %struct.xfs_error_cfg*, %struct.xfs_error_cfg** %12, align 8
  %78 = getelementptr inbounds %struct.xfs_error_cfg, %struct.xfs_error_cfg* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  br label %91

79:                                               ; preds = %58
  %80 = load %struct.xfs_error_init*, %struct.xfs_error_init** %11, align 8
  %81 = load i32, i32* %14, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.xfs_error_init, %struct.xfs_error_init* %80, i64 %82
  %84 = getelementptr inbounds %struct.xfs_error_init, %struct.xfs_error_init* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @MSEC_PER_SEC, align 4
  %87 = mul nsw i32 %85, %86
  %88 = call i32 @msecs_to_jiffies(i32 %87)
  %89 = load %struct.xfs_error_cfg*, %struct.xfs_error_cfg** %12, align 8
  %90 = getelementptr inbounds %struct.xfs_error_cfg, %struct.xfs_error_cfg* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %79, %75
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %14, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %14, align 4
  br label %30

95:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %123

96:                                               ; preds = %57
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %14, align 4
  br label %99

99:                                               ; preds = %116, %96
  %100 = load i32, i32* %14, align 4
  %101 = icmp sge i32 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %99
  %103 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %104 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %103, i32 0, i32 0
  %105 = load %struct.xfs_error_cfg**, %struct.xfs_error_cfg*** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.xfs_error_cfg*, %struct.xfs_error_cfg** %105, i64 %107
  %109 = load %struct.xfs_error_cfg*, %struct.xfs_error_cfg** %108, align 8
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.xfs_error_cfg, %struct.xfs_error_cfg* %109, i64 %111
  store %struct.xfs_error_cfg* %112, %struct.xfs_error_cfg** %12, align 8
  %113 = load %struct.xfs_error_cfg*, %struct.xfs_error_cfg** %12, align 8
  %114 = getelementptr inbounds %struct.xfs_error_cfg, %struct.xfs_error_cfg* %113, i32 0, i32 1
  %115 = call i32 @xfs_sysfs_del(%struct.xfs_kobj* %114)
  br label %116

116:                                              ; preds = %102
  %117 = load i32, i32* %14, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %14, align 4
  br label %99

119:                                              ; preds = %99
  %120 = load %struct.xfs_kobj*, %struct.xfs_kobj** %10, align 8
  %121 = call i32 @xfs_sysfs_del(%struct.xfs_kobj* %120)
  %122 = load i32, i32* %13, align 4
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %119, %95, %27
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_sysfs_init(%struct.xfs_kobj*, i32*, %struct.xfs_kobj*, i8*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @xfs_sysfs_del(%struct.xfs_kobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
