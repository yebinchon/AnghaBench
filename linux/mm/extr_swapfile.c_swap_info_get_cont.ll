; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c_swap_info_get_cont.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c_swap_info_get_cont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_info_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.swap_info_struct* (i32, %struct.swap_info_struct*)* @swap_info_get_cont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.swap_info_struct* @swap_info_get_cont(i32 %0, %struct.swap_info_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.swap_info_struct*, align 8
  %5 = alloca %struct.swap_info_struct*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.swap_info_struct* %1, %struct.swap_info_struct** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.swap_info_struct* @_swap_info_get(i32 %6)
  store %struct.swap_info_struct* %7, %struct.swap_info_struct** %5, align 8
  %8 = load %struct.swap_info_struct*, %struct.swap_info_struct** %5, align 8
  %9 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %10 = icmp ne %struct.swap_info_struct* %8, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %13 = icmp ne %struct.swap_info_struct* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %16 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %15, i32 0, i32 0
  %17 = call i32 @spin_unlock(i32* %16)
  br label %18

18:                                               ; preds = %14, %11
  %19 = load %struct.swap_info_struct*, %struct.swap_info_struct** %5, align 8
  %20 = icmp ne %struct.swap_info_struct* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load %struct.swap_info_struct*, %struct.swap_info_struct** %5, align 8
  %23 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  br label %25

25:                                               ; preds = %21, %18
  br label %26

26:                                               ; preds = %25, %2
  %27 = load %struct.swap_info_struct*, %struct.swap_info_struct** %5, align 8
  ret %struct.swap_info_struct* %27
}

declare dso_local %struct.swap_info_struct* @_swap_info_get(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
