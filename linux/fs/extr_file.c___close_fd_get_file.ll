; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_file.c___close_fd_get_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_file.c___close_fd_get_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.files_struct* }
%struct.files_struct = type { i32 }
%struct.file = type { i32 }
%struct.fdtable = type { i32, %struct.file** }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__close_fd_get_file(i32 %0, %struct.file** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.file**, align 8
  %6 = alloca %struct.files_struct*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.fdtable*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.file** %1, %struct.file*** %5, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.files_struct*, %struct.files_struct** %10, align 8
  store %struct.files_struct* %11, %struct.files_struct** %6, align 8
  %12 = load %struct.files_struct*, %struct.files_struct** %6, align 8
  %13 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.files_struct*, %struct.files_struct** %6, align 8
  %16 = call %struct.fdtable* @files_fdtable(%struct.files_struct* %15)
  store %struct.fdtable* %16, %struct.fdtable** %8, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.fdtable*, %struct.fdtable** %8, align 8
  %19 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp uge i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %56

23:                                               ; preds = %2
  %24 = load %struct.fdtable*, %struct.fdtable** %8, align 8
  %25 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %24, i32 0, i32 1
  %26 = load %struct.file**, %struct.file*** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.file*, %struct.file** %26, i64 %28
  %30 = load %struct.file*, %struct.file** %29, align 8
  store %struct.file* %30, %struct.file** %7, align 8
  %31 = load %struct.file*, %struct.file** %7, align 8
  %32 = icmp ne %struct.file* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  br label %56

34:                                               ; preds = %23
  %35 = load %struct.fdtable*, %struct.fdtable** %8, align 8
  %36 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %35, i32 0, i32 1
  %37 = load %struct.file**, %struct.file*** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.file*, %struct.file** %37, i64 %39
  %41 = load %struct.file*, %struct.file** %40, align 8
  %42 = call i32 @rcu_assign_pointer(%struct.file* %41, i32* null)
  %43 = load %struct.files_struct*, %struct.files_struct** %6, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @__put_unused_fd(%struct.files_struct* %43, i32 %44)
  %46 = load %struct.files_struct*, %struct.files_struct** %6, align 8
  %47 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock(i32* %47)
  %49 = load %struct.file*, %struct.file** %7, align 8
  %50 = call i32 @get_file(%struct.file* %49)
  %51 = load %struct.file*, %struct.file** %7, align 8
  %52 = load %struct.file**, %struct.file*** %5, align 8
  store %struct.file* %51, %struct.file** %52, align 8
  %53 = load %struct.file*, %struct.file** %7, align 8
  %54 = load %struct.files_struct*, %struct.files_struct** %6, align 8
  %55 = call i32 @filp_close(%struct.file* %53, %struct.files_struct* %54)
  store i32 %55, i32* %3, align 4
  br label %63

56:                                               ; preds = %33, %22
  %57 = load %struct.files_struct*, %struct.files_struct** %6, align 8
  %58 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock(i32* %58)
  %60 = load %struct.file**, %struct.file*** %5, align 8
  store %struct.file* null, %struct.file** %60, align 8
  %61 = load i32, i32* @ENOENT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %56, %34
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.fdtable* @files_fdtable(%struct.files_struct*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.file*, i32*) #1

declare dso_local i32 @__put_unused_fd(%struct.files_struct*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @get_file(%struct.file*) #1

declare dso_local i32 @filp_close(%struct.file*, %struct.files_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
