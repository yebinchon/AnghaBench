; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c_enable_swap_info.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c_enable_swap_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_info_struct = type { i32, i32 }
%struct.swap_cluster_info = type { i32 }

@swap_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.swap_info_struct*, i32, i8*, %struct.swap_cluster_info*, i64*)* @enable_swap_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_swap_info(%struct.swap_info_struct* %0, i32 %1, i8* %2, %struct.swap_cluster_info* %3, i64* %4) #0 {
  %6 = alloca %struct.swap_info_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.swap_cluster_info*, align 8
  %10 = alloca i64*, align 8
  store %struct.swap_info_struct* %0, %struct.swap_info_struct** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.swap_cluster_info* %3, %struct.swap_cluster_info** %9, align 8
  store i64* %4, i64** %10, align 8
  %11 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %12 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i64*, i64** %10, align 8
  %15 = call i32 @frontswap_init(i32 %13, i64* %14)
  %16 = call i32 @spin_lock(i32* @swap_lock)
  %17 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %18 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %9, align 8
  %24 = call i32 @setup_swap_info(%struct.swap_info_struct* %20, i32 %21, i8* %22, %struct.swap_cluster_info* %23)
  %25 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %26 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock(i32* %26)
  %28 = call i32 @spin_unlock(i32* @swap_lock)
  %29 = call i32 (...) @synchronize_rcu()
  %30 = call i32 @spin_lock(i32* @swap_lock)
  %31 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %32 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %31, i32 0, i32 0
  %33 = call i32 @spin_lock(i32* %32)
  %34 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %35 = call i32 @_enable_swap_info(%struct.swap_info_struct* %34)
  %36 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %37 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = call i32 @spin_unlock(i32* @swap_lock)
  ret void
}

declare dso_local i32 @frontswap_init(i32, i64*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @setup_swap_info(%struct.swap_info_struct*, i32, i8*, %struct.swap_cluster_info*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @_enable_swap_info(%struct.swap_info_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
