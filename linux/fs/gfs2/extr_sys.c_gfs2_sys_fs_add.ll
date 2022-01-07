; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_sys.c_gfs2_sys_fs_add.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_sys.c_gfs2_sys_fs_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { %struct.TYPE_12__, i32, %struct.TYPE_10__, %struct.super_block* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.super_block = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"RDONLY=%d\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"SPECTATOR=%d\00", align 1
@gfs2_kset = common dso_local global i32 0, align 4
@gfs2_ktype = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tune_group = common dso_local global i32 0, align 4
@lock_module_group = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@KOBJ_ADD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"error %d adding sysfs files\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_sys_fs_add(%struct.gfs2_sbd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_sbd*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [20 x i8], align 16
  %7 = alloca [20 x i8], align 16
  %8 = alloca [3 x i8*], align 16
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %3, align 8
  %9 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %10 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %9, i32 0, i32 3
  %11 = load %struct.super_block*, %struct.super_block** %10, align 8
  store %struct.super_block* %11, %struct.super_block** %4, align 8
  %12 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 0
  %13 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  store i8* %13, i8** %12, align 8
  %14 = getelementptr inbounds i8*, i8** %12, i64 1
  %15 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  store i8* %15, i8** %14, align 8
  %16 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8* null, i8** %16, align 8
  %17 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %18 = load %struct.super_block*, %struct.super_block** %4, align 8
  %19 = call i32 @sb_rdonly(%struct.super_block* %18)
  %20 = call i32 @sprintf(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i64 0, i64 0
  %22 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %23 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 0
  %29 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @gfs2_kset, align 4
  %31 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %32 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %35 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %34, i32 0, i32 0
  %36 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %37 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @kobject_init_and_add(%struct.TYPE_12__* %35, i32* @gfs2_ktype, i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %1
  br label %85

43:                                               ; preds = %1
  %44 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %45 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %44, i32 0, i32 0
  %46 = call i32 @sysfs_create_group(%struct.TYPE_12__* %45, i32* @tune_group)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %85

50:                                               ; preds = %43
  %51 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %52 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %51, i32 0, i32 0
  %53 = call i32 @sysfs_create_group(%struct.TYPE_12__* %52, i32* @lock_module_group)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %81

57:                                               ; preds = %50
  %58 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %59 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %58, i32 0, i32 0
  %60 = load %struct.super_block*, %struct.super_block** %4, align 8
  %61 = getelementptr inbounds %struct.super_block, %struct.super_block* %60, i32 0, i32 1
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call %struct.TYPE_13__* @disk_to_dev(i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = call i32 @sysfs_create_link(%struct.TYPE_12__* %59, i32* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %57
  br label %77

71:                                               ; preds = %57
  %72 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %73 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %72, i32 0, i32 0
  %74 = load i32, i32* @KOBJ_ADD, align 4
  %75 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 0
  %76 = call i32 @kobject_uevent_env(%struct.TYPE_12__* %73, i32 %74, i8** %75)
  store i32 0, i32* %2, align 4
  br label %95

77:                                               ; preds = %70
  %78 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %79 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %78, i32 0, i32 0
  %80 = call i32 @sysfs_remove_group(%struct.TYPE_12__* %79, i32* @lock_module_group)
  br label %81

81:                                               ; preds = %77, %56
  %82 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %83 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %82, i32 0, i32 0
  %84 = call i32 @sysfs_remove_group(%struct.TYPE_12__* %83, i32* @tune_group)
  br label %85

85:                                               ; preds = %81, %49, %42
  %86 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @fs_err(%struct.gfs2_sbd* %86, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  %89 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %90 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %89, i32 0, i32 0
  %91 = call i32 @kobject_put(%struct.TYPE_12__* %90)
  %92 = load %struct.super_block*, %struct.super_block** %4, align 8
  %93 = getelementptr inbounds %struct.super_block, %struct.super_block* %92, i32 0, i32 0
  store i32* null, i32** %93, align 8
  %94 = load i32, i32* %5, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %85, %71
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @kobject_init_and_add(%struct.TYPE_12__*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @sysfs_create_group(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @sysfs_create_link(%struct.TYPE_12__*, i32*, i8*) #1

declare dso_local %struct.TYPE_13__* @disk_to_dev(i32) #1

declare dso_local i32 @kobject_uevent_env(%struct.TYPE_12__*, i32, i8**) #1

declare dso_local i32 @sysfs_remove_group(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @fs_err(%struct.gfs2_sbd*, i8*, i32) #1

declare dso_local i32 @kobject_put(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
