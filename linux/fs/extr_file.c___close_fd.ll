; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_file.c___close_fd.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_file.c___close_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.files_struct = type { i32 }
%struct.file = type { i32 }
%struct.fdtable = type { i32, %struct.file** }

@EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__close_fd(%struct.files_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.files_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.fdtable*, align 8
  store %struct.files_struct* %0, %struct.files_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.files_struct*, %struct.files_struct** %4, align 8
  %9 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.files_struct*, %struct.files_struct** %4, align 8
  %12 = call %struct.fdtable* @files_fdtable(%struct.files_struct* %11)
  store %struct.fdtable* %12, %struct.fdtable** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.fdtable*, %struct.fdtable** %7, align 8
  %15 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp uge i32 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %48

19:                                               ; preds = %2
  %20 = load %struct.fdtable*, %struct.fdtable** %7, align 8
  %21 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %20, i32 0, i32 1
  %22 = load %struct.file**, %struct.file*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.file*, %struct.file** %22, i64 %24
  %26 = load %struct.file*, %struct.file** %25, align 8
  store %struct.file* %26, %struct.file** %6, align 8
  %27 = load %struct.file*, %struct.file** %6, align 8
  %28 = icmp ne %struct.file* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %19
  br label %48

30:                                               ; preds = %19
  %31 = load %struct.fdtable*, %struct.fdtable** %7, align 8
  %32 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %31, i32 0, i32 1
  %33 = load %struct.file**, %struct.file*** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.file*, %struct.file** %33, i64 %35
  %37 = load %struct.file*, %struct.file** %36, align 8
  %38 = call i32 @rcu_assign_pointer(%struct.file* %37, i32* null)
  %39 = load %struct.files_struct*, %struct.files_struct** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @__put_unused_fd(%struct.files_struct* %39, i32 %40)
  %42 = load %struct.files_struct*, %struct.files_struct** %4, align 8
  %43 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock(i32* %43)
  %45 = load %struct.file*, %struct.file** %6, align 8
  %46 = load %struct.files_struct*, %struct.files_struct** %4, align 8
  %47 = call i32 @filp_close(%struct.file* %45, %struct.files_struct* %46)
  store i32 %47, i32* %3, align 4
  br label %54

48:                                               ; preds = %29, %18
  %49 = load %struct.files_struct*, %struct.files_struct** %4, align 8
  %50 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load i32, i32* @EBADF, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %48, %30
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.fdtable* @files_fdtable(%struct.files_struct*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.file*, i32*) #1

declare dso_local i32 @__put_unused_fd(%struct.files_struct*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @filp_close(%struct.file*, %struct.files_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
