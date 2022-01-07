; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_sysfs.c_nilfs_sysfs_create_snapshot_group.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_sysfs.c_nilfs_sysfs_create_snapshot_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_root = type { i32, %struct.TYPE_4__, i32, %struct.the_nilfs* }
%struct.TYPE_4__ = type { i32 }
%struct.the_nilfs = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.kobject }
%struct.kobject = type { i32 }

@nilfs_kset = common dso_local global i32 0, align 4
@NILFS_CPTREE_CURRENT_CNO = common dso_local global i32 0, align 4
@nilfs_snapshot_ktype = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"current_checkpoint\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_sysfs_create_snapshot_group(%struct.nilfs_root* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nilfs_root*, align 8
  %4 = alloca %struct.the_nilfs*, align 8
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca i32, align 4
  store %struct.nilfs_root* %0, %struct.nilfs_root** %3, align 8
  %7 = load %struct.nilfs_root*, %struct.nilfs_root** %3, align 8
  %8 = getelementptr inbounds %struct.nilfs_root, %struct.nilfs_root* %7, i32 0, i32 3
  %9 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  store %struct.the_nilfs* %9, %struct.the_nilfs** %4, align 8
  %10 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %11 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.kobject* %13, %struct.kobject** %5, align 8
  %14 = load i32, i32* @nilfs_kset, align 4
  %15 = load %struct.nilfs_root*, %struct.nilfs_root** %3, align 8
  %16 = getelementptr inbounds %struct.nilfs_root, %struct.nilfs_root* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 4
  %18 = load %struct.nilfs_root*, %struct.nilfs_root** %3, align 8
  %19 = getelementptr inbounds %struct.nilfs_root, %struct.nilfs_root* %18, i32 0, i32 2
  %20 = call i32 @init_completion(i32* %19)
  %21 = load %struct.nilfs_root*, %struct.nilfs_root** %3, align 8
  %22 = getelementptr inbounds %struct.nilfs_root, %struct.nilfs_root* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @NILFS_CPTREE_CURRENT_CNO, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %1
  %27 = load %struct.nilfs_root*, %struct.nilfs_root** %3, align 8
  %28 = getelementptr inbounds %struct.nilfs_root, %struct.nilfs_root* %27, i32 0, i32 1
  %29 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %30 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %29, i32 0, i32 0
  %31 = bitcast i32* %30 to %struct.kobject*
  %32 = call i32 (%struct.TYPE_4__*, i32*, %struct.kobject*, i8*, ...) @kobject_init_and_add(%struct.TYPE_4__* %28, i32* @nilfs_snapshot_ktype, %struct.kobject* %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %32, i32* %6, align 4
  br label %41

33:                                               ; preds = %1
  %34 = load %struct.nilfs_root*, %struct.nilfs_root** %3, align 8
  %35 = getelementptr inbounds %struct.nilfs_root, %struct.nilfs_root* %34, i32 0, i32 1
  %36 = load %struct.kobject*, %struct.kobject** %5, align 8
  %37 = load %struct.nilfs_root*, %struct.nilfs_root** %3, align 8
  %38 = getelementptr inbounds %struct.nilfs_root, %struct.nilfs_root* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (%struct.TYPE_4__*, i32*, %struct.kobject*, i8*, ...) @kobject_init_and_add(%struct.TYPE_4__* %35, i32* @nilfs_snapshot_ktype, %struct.kobject* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %33, %26
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %47

46:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %44
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @kobject_init_and_add(%struct.TYPE_4__*, i32*, %struct.kobject*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
