; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_task_mmu.c_m_cache_vma.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_task_mmu.c_m_cache_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64, i64, i64, i32 }
%struct.vm_area_struct = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.vm_area_struct*)* @m_cache_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m_cache_vma(%struct.seq_file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %5 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %6 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %7, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %14 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %17 = call i64 @m_next_vma(i32 %15, %struct.vm_area_struct* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  br label %24

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i64 [ %22, %19 ], [ -1, %23 ]
  %26 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %27 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %24, %2
  ret void
}

declare dso_local i64 @m_next_vma(i32, %struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
