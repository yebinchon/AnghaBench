; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_file.c___fd_install.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_file.c___fd_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.files_struct = type { i32, i32, i32 }
%struct.file = type { i32 }
%struct.fdtable = type { i32** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__fd_install(%struct.files_struct* %0, i32 %1, %struct.file* %2) #0 {
  %4 = alloca %struct.files_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.fdtable*, align 8
  store %struct.files_struct* %0, %struct.files_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.file* %2, %struct.file** %6, align 8
  %8 = call i32 (...) @rcu_read_lock_sched()
  %9 = load %struct.files_struct*, %struct.files_struct** %4, align 8
  %10 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %3
  %15 = call i32 (...) @rcu_read_unlock_sched()
  %16 = load %struct.files_struct*, %struct.files_struct** %4, align 8
  %17 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %16, i32 0, i32 1
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.files_struct*, %struct.files_struct** %4, align 8
  %20 = call %struct.fdtable* @files_fdtable(%struct.files_struct* %19)
  store %struct.fdtable* %20, %struct.fdtable** %7, align 8
  %21 = load %struct.fdtable*, %struct.fdtable** %7, align 8
  %22 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %21, i32 0, i32 0
  %23 = load i32**, i32*** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load %struct.fdtable*, %struct.fdtable** %7, align 8
  %32 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %31, i32 0, i32 0
  %33 = load i32**, i32*** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.file*, %struct.file** %6, align 8
  %39 = call i32 @rcu_assign_pointer(i32* %37, %struct.file* %38)
  %40 = load %struct.files_struct*, %struct.files_struct** %4, align 8
  %41 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %40, i32 0, i32 1
  %42 = call i32 @spin_unlock(i32* %41)
  br label %69

43:                                               ; preds = %3
  %44 = call i32 (...) @smp_rmb()
  %45 = load %struct.files_struct*, %struct.files_struct** %4, align 8
  %46 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.fdtable* @rcu_dereference_sched(i32 %47)
  store %struct.fdtable* %48, %struct.fdtable** %7, align 8
  %49 = load %struct.fdtable*, %struct.fdtable** %7, align 8
  %50 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %49, i32 0, i32 0
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 @BUG_ON(i32 %57)
  %59 = load %struct.fdtable*, %struct.fdtable** %7, align 8
  %60 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %59, i32 0, i32 0
  %61 = load i32**, i32*** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.file*, %struct.file** %6, align 8
  %67 = call i32 @rcu_assign_pointer(i32* %65, %struct.file* %66)
  %68 = call i32 (...) @rcu_read_unlock_sched()
  br label %69

69:                                               ; preds = %43, %14
  ret void
}

declare dso_local i32 @rcu_read_lock_sched(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rcu_read_unlock_sched(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.fdtable* @files_fdtable(%struct.files_struct*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32*, %struct.file*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local %struct.fdtable* @rcu_dereference_sched(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
