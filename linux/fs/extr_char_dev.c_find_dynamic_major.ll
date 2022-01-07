; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_char_dev.c_find_dynamic_major.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_char_dev.c_find_dynamic_major.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.char_device_struct = type { i32, %struct.char_device_struct* }

@chrdevs = common dso_local global %struct.char_device_struct** null, align 8
@CHRDEV_MAJOR_DYN_END = common dso_local global i32 0, align 4
@CHRDEV_MAJOR_DYN_EXT_START = common dso_local global i32 0, align 4
@CHRDEV_MAJOR_DYN_EXT_END = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @find_dynamic_major to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_dynamic_major() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.char_device_struct*, align 8
  %4 = load %struct.char_device_struct**, %struct.char_device_struct*** @chrdevs, align 8
  %5 = call i32 @ARRAY_SIZE(%struct.char_device_struct** %4)
  %6 = sub nsw i32 %5, 1
  store i32 %6, i32* %2, align 4
  br label %7

7:                                                ; preds = %21, %0
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @CHRDEV_MAJOR_DYN_END, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %7
  %12 = load %struct.char_device_struct**, %struct.char_device_struct*** @chrdevs, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.char_device_struct*, %struct.char_device_struct** %12, i64 %14
  %16 = load %struct.char_device_struct*, %struct.char_device_struct** %15, align 8
  %17 = icmp eq %struct.char_device_struct* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* %2, align 4
  store i32 %19, i32* %1, align 4
  br label %63

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %2, align 4
  br label %7

24:                                               ; preds = %7
  %25 = load i32, i32* @CHRDEV_MAJOR_DYN_EXT_START, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %57, %24
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @CHRDEV_MAJOR_DYN_EXT_END, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %60

30:                                               ; preds = %26
  %31 = load %struct.char_device_struct**, %struct.char_device_struct*** @chrdevs, align 8
  %32 = load i32, i32* %2, align 4
  %33 = call i64 @major_to_index(i32 %32)
  %34 = getelementptr inbounds %struct.char_device_struct*, %struct.char_device_struct** %31, i64 %33
  %35 = load %struct.char_device_struct*, %struct.char_device_struct** %34, align 8
  store %struct.char_device_struct* %35, %struct.char_device_struct** %3, align 8
  br label %36

36:                                               ; preds = %47, %30
  %37 = load %struct.char_device_struct*, %struct.char_device_struct** %3, align 8
  %38 = icmp ne %struct.char_device_struct* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = load %struct.char_device_struct*, %struct.char_device_struct** %3, align 8
  %41 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %2, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %51

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.char_device_struct*, %struct.char_device_struct** %3, align 8
  %49 = getelementptr inbounds %struct.char_device_struct, %struct.char_device_struct* %48, i32 0, i32 1
  %50 = load %struct.char_device_struct*, %struct.char_device_struct** %49, align 8
  store %struct.char_device_struct* %50, %struct.char_device_struct** %3, align 8
  br label %36

51:                                               ; preds = %45, %36
  %52 = load %struct.char_device_struct*, %struct.char_device_struct** %3, align 8
  %53 = icmp eq %struct.char_device_struct* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* %2, align 4
  store i32 %55, i32* %1, align 4
  br label %63

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %2, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %2, align 4
  br label %26

60:                                               ; preds = %26
  %61 = load i32, i32* @EBUSY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %1, align 4
  br label %63

63:                                               ; preds = %60, %54, %18
  %64 = load i32, i32* %1, align 4
  ret i32 %64
}

declare dso_local i32 @ARRAY_SIZE(%struct.char_device_struct**) #1

declare dso_local i64 @major_to_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
