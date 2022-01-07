; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kexec_core.c_kimage_alloc_control_pages.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kexec_core.c_kimage_alloc_control_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.kimage = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @kimage_alloc_control_pages(%struct.kimage* %0, i32 %1) #0 {
  %3 = alloca %struct.kimage*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  store %struct.kimage* %0, %struct.kimage** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.page* null, %struct.page** %5, align 8
  %6 = load %struct.kimage*, %struct.kimage** %3, align 8
  %7 = getelementptr inbounds %struct.kimage, %struct.kimage* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %17 [
    i32 128, label %9
    i32 129, label %13
  ]

9:                                                ; preds = %2
  %10 = load %struct.kimage*, %struct.kimage** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.page* @kimage_alloc_normal_control_pages(%struct.kimage* %10, i32 %11)
  store %struct.page* %12, %struct.page** %5, align 8
  br label %17

13:                                               ; preds = %2
  %14 = load %struct.kimage*, %struct.kimage** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.page* @kimage_alloc_crash_control_pages(%struct.kimage* %14, i32 %15)
  store %struct.page* %16, %struct.page** %5, align 8
  br label %17

17:                                               ; preds = %2, %13, %9
  %18 = load %struct.page*, %struct.page** %5, align 8
  ret %struct.page* %18
}

declare dso_local %struct.page* @kimage_alloc_normal_control_pages(%struct.kimage*, i32) #1

declare dso_local %struct.page* @kimage_alloc_crash_control_pages(%struct.kimage*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
