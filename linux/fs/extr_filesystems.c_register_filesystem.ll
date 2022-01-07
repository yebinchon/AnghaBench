; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_filesystems.c_register_filesystem.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_filesystems.c_register_filesystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_system_type = type { i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@file_systems_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_filesystem(%struct.file_system_type* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file_system_type*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.file_system_type**, align 8
  store %struct.file_system_type* %0, %struct.file_system_type** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.file_system_type*, %struct.file_system_type** %3, align 8
  %7 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.file_system_type*, %struct.file_system_type** %3, align 8
  %12 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @fs_validate_description(i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %54

19:                                               ; preds = %10, %1
  %20 = load %struct.file_system_type*, %struct.file_system_type** %3, align 8
  %21 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @strchr(i32 %22, i8 signext 46)
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.file_system_type*, %struct.file_system_type** %3, align 8
  %26 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %54

32:                                               ; preds = %19
  %33 = call i32 @write_lock(i32* @file_systems_lock)
  %34 = load %struct.file_system_type*, %struct.file_system_type** %3, align 8
  %35 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.file_system_type*, %struct.file_system_type** %3, align 8
  %38 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @strlen(i32 %39)
  %41 = call %struct.file_system_type** @find_filesystem(i32 %36, i32 %40)
  store %struct.file_system_type** %41, %struct.file_system_type*** %5, align 8
  %42 = load %struct.file_system_type**, %struct.file_system_type*** %5, align 8
  %43 = load %struct.file_system_type*, %struct.file_system_type** %42, align 8
  %44 = icmp ne %struct.file_system_type* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %32
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %51

48:                                               ; preds = %32
  %49 = load %struct.file_system_type*, %struct.file_system_type** %3, align 8
  %50 = load %struct.file_system_type**, %struct.file_system_type*** %5, align 8
  store %struct.file_system_type* %49, %struct.file_system_type** %50, align 8
  br label %51

51:                                               ; preds = %48, %45
  %52 = call i32 @write_unlock(i32* @file_systems_lock)
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %51, %29, %16
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @fs_validate_description(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @strchr(i32, i8 signext) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local %struct.file_system_type** @find_filesystem(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
