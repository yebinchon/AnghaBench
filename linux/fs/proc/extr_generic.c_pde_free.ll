; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_generic.c_pde_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_generic.c_pde_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_dir_entry = type { i64, i64, i64, i32 }

@proc_dir_entry_cache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pde_free(%struct.proc_dir_entry* %0) #0 {
  %2 = alloca %struct.proc_dir_entry*, align 8
  store %struct.proc_dir_entry* %0, %struct.proc_dir_entry** %2, align 8
  %3 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %2, align 8
  %4 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = call i64 @S_ISLNK(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %2, align 8
  %10 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @kfree(i64 %11)
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %2, align 8
  %15 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %2, align 8
  %18 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %2, align 8
  %23 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @kfree(i64 %24)
  br label %26

26:                                               ; preds = %21, %13
  %27 = load i32, i32* @proc_dir_entry_cache, align 4
  %28 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %2, align 8
  %29 = call i32 @kmem_cache_free(i32 %27, %struct.proc_dir_entry* %28)
  ret void
}

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.proc_dir_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
