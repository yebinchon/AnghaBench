; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_sysfs.c_xfs_error_sysfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_sysfs.c_xfs_error_sysfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@xfs_error_ktype = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"error\00", align 1
@fail_at_unmount = common dso_local global i32 0, align 4
@XFS_ERR_METADATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"metadata\00", align 1
@xfs_error_meta_init = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_error_sysfs_init(%struct.xfs_mount* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_mount*, align 8
  %4 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %3, align 8
  %5 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %6 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %5, i32 0, i32 0
  %7 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %8 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %7, i32 0, i32 2
  %9 = call i32 @xfs_sysfs_init(%struct.TYPE_3__* %6, i32* @xfs_error_ktype, i32* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %40

14:                                               ; preds = %1
  %15 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %16 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* @fail_at_unmount, align 4
  %19 = call i32 @ATTR_LIST(i32 %18)
  %20 = call i32 @sysfs_create_file(i32* %17, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %35

24:                                               ; preds = %14
  %25 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %26 = load i32, i32* @XFS_ERR_METADATA, align 4
  %27 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %28 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %27, i32 0, i32 1
  %29 = load i32, i32* @xfs_error_meta_init, align 4
  %30 = call i32 @xfs_error_sysfs_init_class(%struct.xfs_mount* %25, i32 %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %28, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %35

34:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %40

35:                                               ; preds = %33, %23
  %36 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %37 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %36, i32 0, i32 0
  %38 = call i32 @xfs_sysfs_del(%struct.TYPE_3__* %37)
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %35, %34, %12
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @xfs_sysfs_init(%struct.TYPE_3__*, i32*, i32*, i8*) #1

declare dso_local i32 @sysfs_create_file(i32*, i32) #1

declare dso_local i32 @ATTR_LIST(i32) #1

declare dso_local i32 @xfs_error_sysfs_init_class(%struct.xfs_mount*, i32, i8*, i32*, i32) #1

declare dso_local i32 @xfs_sysfs_del(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
