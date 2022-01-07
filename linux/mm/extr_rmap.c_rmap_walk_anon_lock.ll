; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_rmap.c_rmap_walk_anon_lock.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_rmap.c_rmap_walk_anon_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon_vma = type { i32 }
%struct.page = type { i32 }
%struct.rmap_walk_control = type { %struct.anon_vma* (%struct.page.0*)* }
%struct.page.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.anon_vma* (%struct.page*, %struct.rmap_walk_control*)* @rmap_walk_anon_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.anon_vma* @rmap_walk_anon_lock(%struct.page* %0, %struct.rmap_walk_control* %1) #0 {
  %3 = alloca %struct.anon_vma*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.rmap_walk_control*, align 8
  %6 = alloca %struct.anon_vma*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.rmap_walk_control* %1, %struct.rmap_walk_control** %5, align 8
  %7 = load %struct.rmap_walk_control*, %struct.rmap_walk_control** %5, align 8
  %8 = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %7, i32 0, i32 0
  %9 = load %struct.anon_vma* (%struct.page.0*)*, %struct.anon_vma* (%struct.page.0*)** %8, align 8
  %10 = icmp ne %struct.anon_vma* (%struct.page.0*)* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.rmap_walk_control*, %struct.rmap_walk_control** %5, align 8
  %13 = getelementptr inbounds %struct.rmap_walk_control, %struct.rmap_walk_control* %12, i32 0, i32 0
  %14 = load %struct.anon_vma* (%struct.page.0*)*, %struct.anon_vma* (%struct.page.0*)** %13, align 8
  %15 = load %struct.page*, %struct.page** %4, align 8
  %16 = bitcast %struct.page* %15 to %struct.page.0*
  %17 = call %struct.anon_vma* %14(%struct.page.0* %16)
  store %struct.anon_vma* %17, %struct.anon_vma** %3, align 8
  br label %28

18:                                               ; preds = %2
  %19 = load %struct.page*, %struct.page** %4, align 8
  %20 = call %struct.anon_vma* @page_anon_vma(%struct.page* %19)
  store %struct.anon_vma* %20, %struct.anon_vma** %6, align 8
  %21 = load %struct.anon_vma*, %struct.anon_vma** %6, align 8
  %22 = icmp ne %struct.anon_vma* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store %struct.anon_vma* null, %struct.anon_vma** %3, align 8
  br label %28

24:                                               ; preds = %18
  %25 = load %struct.anon_vma*, %struct.anon_vma** %6, align 8
  %26 = call i32 @anon_vma_lock_read(%struct.anon_vma* %25)
  %27 = load %struct.anon_vma*, %struct.anon_vma** %6, align 8
  store %struct.anon_vma* %27, %struct.anon_vma** %3, align 8
  br label %28

28:                                               ; preds = %24, %23, %11
  %29 = load %struct.anon_vma*, %struct.anon_vma** %3, align 8
  ret %struct.anon_vma* %29
}

declare dso_local %struct.anon_vma* @page_anon_vma(%struct.page*) #1

declare dso_local i32 @anon_vma_lock_read(%struct.anon_vma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
