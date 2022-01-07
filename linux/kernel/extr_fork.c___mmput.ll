; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_fork.c___mmput.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_fork.c___mmput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@mmlist_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*)* @__mmput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mmput(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %3 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %4 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %3, i32 0, i32 2
  %5 = call i32 @atomic_read(i32* %4)
  %6 = call i32 @VM_BUG_ON(i32 %5)
  %7 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %8 = call i32 @uprobe_clear_state(%struct.mm_struct* %7)
  %9 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %10 = call i32 @exit_aio(%struct.mm_struct* %9)
  %11 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %12 = call i32 @ksm_exit(%struct.mm_struct* %11)
  %13 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %14 = call i32 @khugepaged_exit(%struct.mm_struct* %13)
  %15 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %16 = call i32 @exit_mmap(%struct.mm_struct* %15)
  %17 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %18 = call i32 @mm_put_huge_zero_page(%struct.mm_struct* %17)
  %19 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %20 = call i32 @set_mm_exe_file(%struct.mm_struct* %19, i32* null)
  %21 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %22 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %21, i32 0, i32 1
  %23 = call i32 @list_empty(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %1
  %26 = call i32 @spin_lock(i32* @mmlist_lock)
  %27 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %28 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %27, i32 0, i32 1
  %29 = call i32 @list_del(i32* %28)
  %30 = call i32 @spin_unlock(i32* @mmlist_lock)
  br label %31

31:                                               ; preds = %25, %1
  %32 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %33 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = icmp ne %struct.TYPE_2__* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %38 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @module_put(i32 %41)
  br label %43

43:                                               ; preds = %36, %31
  %44 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %45 = call i32 @mmdrop(%struct.mm_struct* %44)
  ret void
}

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @uprobe_clear_state(%struct.mm_struct*) #1

declare dso_local i32 @exit_aio(%struct.mm_struct*) #1

declare dso_local i32 @ksm_exit(%struct.mm_struct*) #1

declare dso_local i32 @khugepaged_exit(%struct.mm_struct*) #1

declare dso_local i32 @exit_mmap(%struct.mm_struct*) #1

declare dso_local i32 @mm_put_huge_zero_page(%struct.mm_struct*) #1

declare dso_local i32 @set_mm_exe_file(%struct.mm_struct*, i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @mmdrop(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
