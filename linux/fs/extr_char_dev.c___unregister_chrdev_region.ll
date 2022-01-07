; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_char_dev.c___unregister_chrdev_region.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_char_dev.c___unregister_chrdev_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.char_device_struct = type { i32, i32, i32, %struct.char_device_struct* }

@chrdevs_lock = common dso_local global i32 0, align 4
@chrdevs = common dso_local global %struct.char_device_struct** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.char_device_struct* (i32, i32, i32)* @__unregister_chrdev_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.char_device_struct* @__unregister_chrdev_region(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.char_device_struct*, align 8
  %8 = alloca %struct.char_device_struct**, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.char_device_struct* null, %struct.char_device_struct** %7, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @major_to_index(i32 %10)
  store i32 %11, i32* %9, align 4
  %12 = call i32 @mutex_lock(i32* @chrdevs_lock)
  %13 = load %struct.char_device_struct**, %struct.char_device_struct*** @chrdevs, align 8
  %14 = load i32, i32* %9, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.char_device_struct*, %struct.char_device_struct** %13, i64 %15
  store %struct.char_device_struct** %16, %struct.char_device_struct*** %8, align 8
  br label %17

17:                                               ; preds = %44, %3
  %18 = load %struct.char_device_struct**, %struct.char_device_struct*** %8, align 8
  %19 = load %struct.char_device_struct*, %struct.char_device_struct** %18, align 8
  %20 = icmp ne %struct.char_device_struct* %19, null
  br i1 %20, label %21, label %48

21:                                               ; preds = %17
  %22 = load %struct.char_device_struct**, %struct.char_device_struct*** %8, align 8
  %23 = load %struct.char_device_struct*, %struct.char_device_struct** %22, align 8
  %24 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %21
  %29 = load %struct.char_device_struct**, %struct.char_device_struct*** %8, align 8
  %30 = load %struct.char_device_struct*, %struct.char_device_struct** %29, align 8
  %31 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load %struct.char_device_struct**, %struct.char_device_struct*** %8, align 8
  %37 = load %struct.char_device_struct*, %struct.char_device_struct** %36, align 8
  %38 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %48

43:                                               ; preds = %35, %28, %21
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.char_device_struct**, %struct.char_device_struct*** %8, align 8
  %46 = load %struct.char_device_struct*, %struct.char_device_struct** %45, align 8
  %47 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %46, i32 0, i32 3
  store %struct.char_device_struct** %47, %struct.char_device_struct*** %8, align 8
  br label %17

48:                                               ; preds = %42, %17
  %49 = load %struct.char_device_struct**, %struct.char_device_struct*** %8, align 8
  %50 = load %struct.char_device_struct*, %struct.char_device_struct** %49, align 8
  %51 = icmp ne %struct.char_device_struct* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load %struct.char_device_struct**, %struct.char_device_struct*** %8, align 8
  %54 = load %struct.char_device_struct*, %struct.char_device_struct** %53, align 8
  store %struct.char_device_struct* %54, %struct.char_device_struct** %7, align 8
  %55 = load %struct.char_device_struct*, %struct.char_device_struct** %7, align 8
  %56 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %55, i32 0, i32 3
  %57 = load %struct.char_device_struct*, %struct.char_device_struct** %56, align 8
  %58 = load %struct.char_device_struct**, %struct.char_device_struct*** %8, align 8
  store %struct.char_device_struct* %57, %struct.char_device_struct** %58, align 8
  br label %59

59:                                               ; preds = %52, %48
  %60 = call i32 @mutex_unlock(i32* @chrdevs_lock)
  %61 = load %struct.char_device_struct*, %struct.char_device_struct** %7, align 8
  ret %struct.char_device_struct* %61
}

declare dso_local i32 @major_to_index(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
