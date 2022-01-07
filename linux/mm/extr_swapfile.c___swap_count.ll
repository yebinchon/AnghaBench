; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c___swap_count.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c___swap_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_info_struct = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__swap_count(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.swap_info_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i64 @swp_offset(i32 %6)
  store i64 %7, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.swap_info_struct* @get_swap_device(i32 %8)
  store %struct.swap_info_struct* %9, %struct.swap_info_struct** %3, align 8
  %10 = load %struct.swap_info_struct*, %struct.swap_info_struct** %3, align 8
  %11 = icmp ne %struct.swap_info_struct* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.swap_info_struct*, %struct.swap_info_struct** %3, align 8
  %14 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @swap_count(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.swap_info_struct*, %struct.swap_info_struct** %3, align 8
  %21 = call i32 @put_swap_device(%struct.swap_info_struct* %20)
  br label %22

22:                                               ; preds = %12, %1
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local i64 @swp_offset(i32) #1

declare dso_local %struct.swap_info_struct* @get_swap_device(i32) #1

declare dso_local i32 @swap_count(i32) #1

declare dso_local i32 @put_swap_device(%struct.swap_info_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
