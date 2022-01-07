; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_generic.c_proc_register.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_generic.c_proc_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_dir_entry = type { i32, i32, %struct.proc_dir_entry* }

@proc_subdir_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"proc_dir_entry '%s/%s' already registered\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.proc_dir_entry* @proc_register(%struct.proc_dir_entry* %0, %struct.proc_dir_entry* %1) #0 {
  %3 = alloca %struct.proc_dir_entry*, align 8
  %4 = alloca %struct.proc_dir_entry*, align 8
  %5 = alloca %struct.proc_dir_entry*, align 8
  store %struct.proc_dir_entry* %0, %struct.proc_dir_entry** %4, align 8
  store %struct.proc_dir_entry* %1, %struct.proc_dir_entry** %5, align 8
  %6 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %7 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %6, i32 0, i32 0
  %8 = call i64 @proc_alloc_inum(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %37

11:                                               ; preds = %2
  %12 = call i32 @write_lock(i32* @proc_subdir_lock)
  %13 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %14 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %15 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %14, i32 0, i32 2
  store %struct.proc_dir_entry* %13, %struct.proc_dir_entry** %15, align 8
  %16 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %17 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %18 = call i32 @pde_subdir_insert(%struct.proc_dir_entry* %16, %struct.proc_dir_entry* %17)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %11
  %21 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %22 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %25 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  %28 = call i32 @write_unlock(i32* @proc_subdir_lock)
  br label %32

29:                                               ; preds = %11
  %30 = call i32 @write_unlock(i32* @proc_subdir_lock)
  %31 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  store %struct.proc_dir_entry* %31, %struct.proc_dir_entry** %3, align 8
  br label %40

32:                                               ; preds = %20
  %33 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %34 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @proc_free_inum(i32 %35)
  br label %37

37:                                               ; preds = %32, %10
  %38 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %39 = call i32 @pde_free(%struct.proc_dir_entry* %38)
  store %struct.proc_dir_entry* null, %struct.proc_dir_entry** %3, align 8
  br label %40

40:                                               ; preds = %37, %29
  %41 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  ret %struct.proc_dir_entry* %41
}

declare dso_local i64 @proc_alloc_inum(i32*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @pde_subdir_insert(%struct.proc_dir_entry*, %struct.proc_dir_entry*) #1

declare dso_local i32 @WARN(i32, i8*, i32, i32) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @proc_free_inum(i32) #1

declare dso_local i32 @pde_free(%struct.proc_dir_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
