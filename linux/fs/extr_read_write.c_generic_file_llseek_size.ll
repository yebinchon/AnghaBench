; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_read_write.c_generic_file_llseek_size.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_read_write.c_generic_file_llseek_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, i32 }

@ENXIO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @generic_file_llseek_size(%struct.file* %0, i64 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load i32, i32* %9, align 4
  switch i32 %12, label %57 [
    i32 129, label %13
    i32 131, label %17
    i32 130, label %40
    i32 128, label %48
  ]

13:                                               ; preds = %5
  %14 = load i64, i64* %11, align 8
  %15 = load i64, i64* %8, align 8
  %16 = add i64 %15, %14
  store i64 %16, i64* %8, align 8
  br label %57

17:                                               ; preds = %5
  %18 = load i64, i64* %8, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load %struct.file*, %struct.file** %7, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %6, align 8
  br label %62

24:                                               ; preds = %17
  %25 = load %struct.file*, %struct.file** %7, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 1
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.file*, %struct.file** %7, align 8
  %29 = load %struct.file*, %struct.file** %7, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = add i64 %31, %32
  %34 = load i64, i64* %10, align 8
  %35 = call i64 @vfs_setpos(%struct.file* %28, i64 %33, i64 %34)
  store i64 %35, i64* %8, align 8
  %36 = load %struct.file*, %struct.file** %7, align 8
  %37 = getelementptr inbounds %struct.file, %struct.file* %36, i32 0, i32 1
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load i64, i64* %8, align 8
  store i64 %39, i64* %6, align 8
  br label %62

40:                                               ; preds = %5
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %11, align 8
  %43 = icmp uge i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i64, i64* @ENXIO, align 8
  %46 = sub i64 0, %45
  store i64 %46, i64* %6, align 8
  br label %62

47:                                               ; preds = %40
  br label %57

48:                                               ; preds = %5
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %11, align 8
  %51 = icmp uge i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i64, i64* @ENXIO, align 8
  %54 = sub i64 0, %53
  store i64 %54, i64* %6, align 8
  br label %62

55:                                               ; preds = %48
  %56 = load i64, i64* %11, align 8
  store i64 %56, i64* %8, align 8
  br label %57

57:                                               ; preds = %5, %55, %47, %13
  %58 = load %struct.file*, %struct.file** %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i64 @vfs_setpos(%struct.file* %58, i64 %59, i64 %60)
  store i64 %61, i64* %6, align 8
  br label %62

62:                                               ; preds = %57, %52, %44, %24, %20
  %63 = load i64, i64* %6, align 8
  ret i64 %63
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @vfs_setpos(%struct.file*, i64, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
