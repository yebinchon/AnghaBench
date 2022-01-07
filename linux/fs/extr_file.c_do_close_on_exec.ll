; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_file.c_do_close_on_exec.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_file.c_do_close_on_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.files_struct = type { i32 }
%struct.fdtable = type { i32, i64*, %struct.file** }
%struct.file = type { i32 }

@BITS_PER_LONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_close_on_exec(%struct.files_struct* %0) #0 {
  %2 = alloca %struct.files_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fdtable*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  store %struct.files_struct* %0, %struct.files_struct** %2, align 8
  %8 = load %struct.files_struct*, %struct.files_struct** %2, align 8
  %9 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %88, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @BITS_PER_LONG, align 4
  %14 = mul i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.files_struct*, %struct.files_struct** %2, align 8
  %16 = call %struct.fdtable* @files_fdtable(%struct.files_struct* %15)
  store %struct.fdtable* %16, %struct.fdtable** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %19 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp uge i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  br label %91

23:                                               ; preds = %11
  %24 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %25 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  br label %88

34:                                               ; preds = %23
  %35 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %36 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %82, %34
  %42 = load i64, i64* %5, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %87

44:                                               ; preds = %41
  %45 = load i64, i64* %5, align 8
  %46 = and i64 %45, 1
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  br label %82

49:                                               ; preds = %44
  %50 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %51 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %50, i32 0, i32 2
  %52 = load %struct.file**, %struct.file*** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.file*, %struct.file** %52, i64 %54
  %56 = load %struct.file*, %struct.file** %55, align 8
  store %struct.file* %56, %struct.file** %7, align 8
  %57 = load %struct.file*, %struct.file** %7, align 8
  %58 = icmp ne %struct.file* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %49
  br label %82

60:                                               ; preds = %49
  %61 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %62 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %61, i32 0, i32 2
  %63 = load %struct.file**, %struct.file*** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.file*, %struct.file** %63, i64 %65
  %67 = load %struct.file*, %struct.file** %66, align 8
  %68 = call i32 @rcu_assign_pointer(%struct.file* %67, i32* null)
  %69 = load %struct.files_struct*, %struct.files_struct** %2, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @__put_unused_fd(%struct.files_struct* %69, i32 %70)
  %72 = load %struct.files_struct*, %struct.files_struct** %2, align 8
  %73 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %72, i32 0, i32 0
  %74 = call i32 @spin_unlock(i32* %73)
  %75 = load %struct.file*, %struct.file** %7, align 8
  %76 = load %struct.files_struct*, %struct.files_struct** %2, align 8
  %77 = call i32 @filp_close(%struct.file* %75, %struct.files_struct* %76)
  %78 = call i32 (...) @cond_resched()
  %79 = load %struct.files_struct*, %struct.files_struct** %2, align 8
  %80 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %79, i32 0, i32 0
  %81 = call i32 @spin_lock(i32* %80)
  br label %82

82:                                               ; preds = %60, %59, %48
  %83 = load i32, i32* %6, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %6, align 4
  %85 = load i64, i64* %5, align 8
  %86 = lshr i64 %85, 1
  store i64 %86, i64* %5, align 8
  br label %41

87:                                               ; preds = %41
  br label %88

88:                                               ; preds = %87, %33
  %89 = load i32, i32* %3, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %11

91:                                               ; preds = %22
  %92 = load %struct.files_struct*, %struct.files_struct** %2, align 8
  %93 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %92, i32 0, i32 0
  %94 = call i32 @spin_unlock(i32* %93)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.fdtable* @files_fdtable(%struct.files_struct*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.file*, i32*) #1

declare dso_local i32 @__put_unused_fd(%struct.files_struct*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @filp_close(%struct.file*, %struct.files_struct*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
