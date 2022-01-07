; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_info.c_alloc_info_private.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_info.c_alloc_info_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { i32, i32 }
%struct.snd_info_private_data = type { %struct.snd_info_entry* }

@ENODEV = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_info_entry*, %struct.snd_info_private_data**)* @alloc_info_private to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_info_private(%struct.snd_info_entry* %0, %struct.snd_info_private_data** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_info_entry*, align 8
  %5 = alloca %struct.snd_info_private_data**, align 8
  %6 = alloca %struct.snd_info_private_data*, align 8
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %4, align 8
  store %struct.snd_info_private_data** %1, %struct.snd_info_private_data*** %5, align 8
  %7 = load %struct.snd_info_entry*, %struct.snd_info_entry** %4, align 8
  %8 = icmp ne %struct.snd_info_entry* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.snd_info_entry*, %struct.snd_info_entry** %4, align 8
  %11 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9, %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %44

17:                                               ; preds = %9
  %18 = load %struct.snd_info_entry*, %struct.snd_info_entry** %4, align 8
  %19 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @try_module_get(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @EFAULT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %44

26:                                               ; preds = %17
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.snd_info_private_data* @kzalloc(i32 8, i32 %27)
  store %struct.snd_info_private_data* %28, %struct.snd_info_private_data** %6, align 8
  %29 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %6, align 8
  %30 = icmp ne %struct.snd_info_private_data* %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %26
  %32 = load %struct.snd_info_entry*, %struct.snd_info_entry** %4, align 8
  %33 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @module_put(i32 %34)
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %44

38:                                               ; preds = %26
  %39 = load %struct.snd_info_entry*, %struct.snd_info_entry** %4, align 8
  %40 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %6, align 8
  %41 = getelementptr inbounds %struct.snd_info_private_data, %struct.snd_info_private_data* %40, i32 0, i32 0
  store %struct.snd_info_entry* %39, %struct.snd_info_entry** %41, align 8
  %42 = load %struct.snd_info_private_data*, %struct.snd_info_private_data** %6, align 8
  %43 = load %struct.snd_info_private_data**, %struct.snd_info_private_data*** %5, align 8
  store %struct.snd_info_private_data* %42, %struct.snd_info_private_data** %43, align 8
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %38, %31, %23, %14
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @try_module_get(i32) #1

declare dso_local %struct.snd_info_private_data* @kzalloc(i32, i32) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
