; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c___alloc_nat_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c___alloc_nat_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nat_entry = type { i32 }

@nat_entry_slab = common dso_local global i32 0, align 4
@GFP_F2FS_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nat_entry* (i32, i32)* @__alloc_nat_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nat_entry* @__alloc_nat_entry(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.nat_entry*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* @nat_entry_slab, align 4
  %10 = load i32, i32* @GFP_F2FS_ZERO, align 4
  %11 = call %struct.nat_entry* @f2fs_kmem_cache_alloc(i32 %9, i32 %10)
  store %struct.nat_entry* %11, %struct.nat_entry** %5, align 8
  br label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @nat_entry_slab, align 4
  %14 = load i32, i32* @GFP_F2FS_ZERO, align 4
  %15 = call %struct.nat_entry* @kmem_cache_alloc(i32 %13, i32 %14)
  store %struct.nat_entry* %15, %struct.nat_entry** %5, align 8
  br label %16

16:                                               ; preds = %12, %8
  %17 = load %struct.nat_entry*, %struct.nat_entry** %5, align 8
  %18 = icmp ne %struct.nat_entry* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load %struct.nat_entry*, %struct.nat_entry** %5, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @nat_set_nid(%struct.nat_entry* %20, i32 %21)
  %23 = load %struct.nat_entry*, %struct.nat_entry** %5, align 8
  %24 = call i32 @nat_reset_flag(%struct.nat_entry* %23)
  br label %25

25:                                               ; preds = %19, %16
  %26 = load %struct.nat_entry*, %struct.nat_entry** %5, align 8
  ret %struct.nat_entry* %26
}

declare dso_local %struct.nat_entry* @f2fs_kmem_cache_alloc(i32, i32) #1

declare dso_local %struct.nat_entry* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @nat_set_nid(%struct.nat_entry*, i32) #1

declare dso_local i32 @nat_reset_flag(%struct.nat_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
