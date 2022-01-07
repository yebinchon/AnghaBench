; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_inode.c_close_pdeo.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_inode.c_close_pdeo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.completion = type { i32 }
%struct.proc_dir_entry = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.file*)* }
%struct.file = type { i32 }
%struct.pde_opener = type { i32, %struct.completion*, i32, %struct.file* }

@c = common dso_local global %struct.completion zeroinitializer, align 4
@pde_opener_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.proc_dir_entry*, %struct.pde_opener*)* @close_pdeo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_pdeo(%struct.proc_dir_entry* %0, %struct.pde_opener* %1) #0 {
  %3 = alloca %struct.proc_dir_entry*, align 8
  %4 = alloca %struct.pde_opener*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.completion*, align 8
  store %struct.proc_dir_entry* %0, %struct.proc_dir_entry** %3, align 8
  store %struct.pde_opener* %1, %struct.pde_opener** %4, align 8
  %7 = load %struct.pde_opener*, %struct.pde_opener** %4, align 8
  %8 = getelementptr inbounds %struct.pde_opener, %struct.pde_opener* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load i32, i32* getelementptr inbounds (%struct.completion, %struct.completion* @c, i32 0, i32 0), align 4
  %13 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %12)
  %14 = load %struct.pde_opener*, %struct.pde_opener** %4, align 8
  %15 = getelementptr inbounds %struct.pde_opener, %struct.pde_opener* %14, i32 0, i32 1
  store %struct.completion* @c, %struct.completion** %15, align 8
  %16 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %17 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %16, i32 0, i32 0
  %18 = call i32 @spin_unlock(i32* %17)
  %19 = call i32 @wait_for_completion(%struct.completion* @c)
  br label %60

20:                                               ; preds = %2
  %21 = load %struct.pde_opener*, %struct.pde_opener** %4, align 8
  %22 = getelementptr inbounds %struct.pde_opener, %struct.pde_opener* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %24 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock(i32* %24)
  %26 = load %struct.pde_opener*, %struct.pde_opener** %4, align 8
  %27 = getelementptr inbounds %struct.pde_opener, %struct.pde_opener* %26, i32 0, i32 3
  %28 = load %struct.file*, %struct.file** %27, align 8
  store %struct.file* %28, %struct.file** %5, align 8
  %29 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %30 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (i32, %struct.file*)*, i32 (i32, %struct.file*)** %32, align 8
  %34 = load %struct.file*, %struct.file** %5, align 8
  %35 = call i32 @file_inode(%struct.file* %34)
  %36 = load %struct.file*, %struct.file** %5, align 8
  %37 = call i32 %33(i32 %35, %struct.file* %36)
  %38 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %39 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %38, i32 0, i32 0
  %40 = call i32 @spin_lock(i32* %39)
  %41 = load %struct.pde_opener*, %struct.pde_opener** %4, align 8
  %42 = getelementptr inbounds %struct.pde_opener, %struct.pde_opener* %41, i32 0, i32 2
  %43 = call i32 @list_del(i32* %42)
  %44 = load %struct.pde_opener*, %struct.pde_opener** %4, align 8
  %45 = getelementptr inbounds %struct.pde_opener, %struct.pde_opener* %44, i32 0, i32 1
  %46 = load %struct.completion*, %struct.completion** %45, align 8
  store %struct.completion* %46, %struct.completion** %6, align 8
  %47 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %48 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock(i32* %48)
  %50 = load %struct.completion*, %struct.completion** %6, align 8
  %51 = call i64 @unlikely(%struct.completion* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %20
  %54 = load %struct.completion*, %struct.completion** %6, align 8
  %55 = call i32 @complete(%struct.completion* %54)
  br label %56

56:                                               ; preds = %53, %20
  %57 = load i32, i32* @pde_opener_cache, align 4
  %58 = load %struct.pde_opener*, %struct.pde_opener** %4, align 8
  %59 = call i32 @kmem_cache_free(i32 %57, %struct.pde_opener* %58)
  br label %60

60:                                               ; preds = %56, %11
  ret void
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wait_for_completion(%struct.completion*) #1

declare dso_local i32 @file_inode(%struct.file*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @unlikely(%struct.completion*) #1

declare dso_local i32 @complete(%struct.completion*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.pde_opener*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
