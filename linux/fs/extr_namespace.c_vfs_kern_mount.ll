; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_vfs_kern_mount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_vfs_kern_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.file_system_type = type { i32 }
%struct.fs_context = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"source\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vfsmount* @vfs_kern_mount(%struct.file_system_type* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.vfsmount*, align 8
  %6 = alloca %struct.file_system_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.fs_context*, align 8
  %11 = alloca %struct.vfsmount*, align 8
  %12 = alloca i32, align 4
  store %struct.file_system_type* %0, %struct.file_system_type** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.file_system_type*, %struct.file_system_type** %6, align 8
  %14 = icmp ne %struct.file_system_type* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.vfsmount* @ERR_PTR(i32 %17)
  store %struct.vfsmount* %18, %struct.vfsmount** %5, align 8
  br label %58

19:                                               ; preds = %4
  %20 = load %struct.file_system_type*, %struct.file_system_type** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.fs_context* @fs_context_for_mount(%struct.file_system_type* %20, i32 %21)
  store %struct.fs_context* %22, %struct.fs_context** %10, align 8
  %23 = load %struct.fs_context*, %struct.fs_context** %10, align 8
  %24 = call i64 @IS_ERR(%struct.fs_context* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.fs_context*, %struct.fs_context** %10, align 8
  %28 = call %struct.vfsmount* @ERR_CAST(%struct.fs_context* %27)
  store %struct.vfsmount* %28, %struct.vfsmount** %5, align 8
  br label %58

29:                                               ; preds = %19
  %30 = load i8*, i8** %8, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load %struct.fs_context*, %struct.fs_context** %10, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = call i32 @vfs_parse_fs_string(%struct.fs_context* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %34, i32 %36)
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %32, %29
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load %struct.fs_context*, %struct.fs_context** %10, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @parse_monolithic_mount_data(%struct.fs_context* %42, i8* %43)
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load %struct.fs_context*, %struct.fs_context** %10, align 8
  %50 = call %struct.vfsmount* @fc_mount(%struct.fs_context* %49)
  store %struct.vfsmount* %50, %struct.vfsmount** %11, align 8
  br label %54

51:                                               ; preds = %45
  %52 = load i32, i32* %12, align 4
  %53 = call %struct.vfsmount* @ERR_PTR(i32 %52)
  store %struct.vfsmount* %53, %struct.vfsmount** %11, align 8
  br label %54

54:                                               ; preds = %51, %48
  %55 = load %struct.fs_context*, %struct.fs_context** %10, align 8
  %56 = call i32 @put_fs_context(%struct.fs_context* %55)
  %57 = load %struct.vfsmount*, %struct.vfsmount** %11, align 8
  store %struct.vfsmount* %57, %struct.vfsmount** %5, align 8
  br label %58

58:                                               ; preds = %54, %26, %15
  %59 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  ret %struct.vfsmount* %59
}

declare dso_local %struct.vfsmount* @ERR_PTR(i32) #1

declare dso_local %struct.fs_context* @fs_context_for_mount(%struct.file_system_type*, i32) #1

declare dso_local i64 @IS_ERR(%struct.fs_context*) #1

declare dso_local %struct.vfsmount* @ERR_CAST(%struct.fs_context*) #1

declare dso_local i32 @vfs_parse_fs_string(%struct.fs_context*, i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @parse_monolithic_mount_data(%struct.fs_context*, i8*) #1

declare dso_local %struct.vfsmount* @fc_mount(%struct.fs_context*) #1

declare dso_local i32 @put_fs_context(%struct.fs_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
