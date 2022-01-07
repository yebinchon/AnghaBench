; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_filecheck.c_ocfs2_filecheck_create_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_filecheck.c_ocfs2_filecheck_create_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, %struct.ocfs2_filecheck_sysfs_entry }
%struct.ocfs2_filecheck_sysfs_entry = type { %struct.ocfs2_filecheck*, %struct.TYPE_3__, i32 }
%struct.ocfs2_filecheck = type { i64, i64, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_FILECHECK_MINSIZE = common dso_local global i32 0, align 4
@ocfs2_ktype_filecheck = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"filecheck\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_filecheck_create_sysfs(%struct.ocfs2_super* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocfs2_filecheck*, align 8
  %6 = alloca %struct.ocfs2_filecheck_sysfs_entry*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  %7 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %8 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %7, i32 0, i32 1
  store %struct.ocfs2_filecheck_sysfs_entry* %8, %struct.ocfs2_filecheck_sysfs_entry** %6, align 8
  %9 = load i32, i32* @GFP_NOFS, align 4
  %10 = call %struct.ocfs2_filecheck* @kmalloc(i32 32, i32 %9)
  store %struct.ocfs2_filecheck* %10, %struct.ocfs2_filecheck** %5, align 8
  %11 = load %struct.ocfs2_filecheck*, %struct.ocfs2_filecheck** %5, align 8
  %12 = icmp ne %struct.ocfs2_filecheck* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %55

16:                                               ; preds = %1
  %17 = load %struct.ocfs2_filecheck*, %struct.ocfs2_filecheck** %5, align 8
  %18 = getelementptr inbounds %struct.ocfs2_filecheck, %struct.ocfs2_filecheck* %17, i32 0, i32 4
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.ocfs2_filecheck*, %struct.ocfs2_filecheck** %5, align 8
  %21 = getelementptr inbounds %struct.ocfs2_filecheck, %struct.ocfs2_filecheck* %20, i32 0, i32 3
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = load i32, i32* @OCFS2_FILECHECK_MINSIZE, align 4
  %24 = load %struct.ocfs2_filecheck*, %struct.ocfs2_filecheck** %5, align 8
  %25 = getelementptr inbounds %struct.ocfs2_filecheck, %struct.ocfs2_filecheck* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.ocfs2_filecheck*, %struct.ocfs2_filecheck** %5, align 8
  %27 = getelementptr inbounds %struct.ocfs2_filecheck, %struct.ocfs2_filecheck* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.ocfs2_filecheck*, %struct.ocfs2_filecheck** %5, align 8
  %29 = getelementptr inbounds %struct.ocfs2_filecheck, %struct.ocfs2_filecheck* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %31 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ocfs2_filecheck_sysfs_entry*, %struct.ocfs2_filecheck_sysfs_entry** %6, align 8
  %34 = getelementptr inbounds %struct.ocfs2_filecheck_sysfs_entry, %struct.ocfs2_filecheck_sysfs_entry* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.ocfs2_filecheck_sysfs_entry*, %struct.ocfs2_filecheck_sysfs_entry** %6, align 8
  %37 = getelementptr inbounds %struct.ocfs2_filecheck_sysfs_entry, %struct.ocfs2_filecheck_sysfs_entry* %36, i32 0, i32 2
  %38 = call i32 @init_completion(i32* %37)
  %39 = load %struct.ocfs2_filecheck_sysfs_entry*, %struct.ocfs2_filecheck_sysfs_entry** %6, align 8
  %40 = getelementptr inbounds %struct.ocfs2_filecheck_sysfs_entry, %struct.ocfs2_filecheck_sysfs_entry* %39, i32 0, i32 1
  %41 = call i32 @kobject_init_and_add(%struct.TYPE_3__* %40, i32* @ocfs2_ktype_filecheck, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %16
  %45 = load %struct.ocfs2_filecheck_sysfs_entry*, %struct.ocfs2_filecheck_sysfs_entry** %6, align 8
  %46 = getelementptr inbounds %struct.ocfs2_filecheck_sysfs_entry, %struct.ocfs2_filecheck_sysfs_entry* %45, i32 0, i32 1
  %47 = call i32 @kobject_put(%struct.TYPE_3__* %46)
  %48 = load %struct.ocfs2_filecheck*, %struct.ocfs2_filecheck** %5, align 8
  %49 = call i32 @kfree(%struct.ocfs2_filecheck* %48)
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %55

51:                                               ; preds = %16
  %52 = load %struct.ocfs2_filecheck*, %struct.ocfs2_filecheck** %5, align 8
  %53 = load %struct.ocfs2_filecheck_sysfs_entry*, %struct.ocfs2_filecheck_sysfs_entry** %6, align 8
  %54 = getelementptr inbounds %struct.ocfs2_filecheck_sysfs_entry, %struct.ocfs2_filecheck_sysfs_entry* %53, i32 0, i32 0
  store %struct.ocfs2_filecheck* %52, %struct.ocfs2_filecheck** %54, align 8
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %51, %44, %13
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.ocfs2_filecheck* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @kobject_init_and_add(%struct.TYPE_3__*, i32*, i32*, i8*) #1

declare dso_local i32 @kobject_put(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(%struct.ocfs2_filecheck*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
