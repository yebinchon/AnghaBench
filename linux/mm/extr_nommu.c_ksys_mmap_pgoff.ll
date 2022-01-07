; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_nommu.c_ksys_mmap_pgoff.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_nommu.c_ksys_mmap_pgoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@EBADF = common dso_local global i64 0, align 8
@MAP_ANONYMOUS = common dso_local global i64 0, align 8
@MAP_EXECUTABLE = common dso_local global i64 0, align 8
@MAP_DENYWRITE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ksys_mmap_pgoff(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.file*, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  store %struct.file* null, %struct.file** %13, align 8
  %15 = load i64, i64* @EBADF, align 8
  %16 = sub i64 0, %15
  store i64 %16, i64* %14, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* %10, align 8
  %19 = call i32 @audit_mmap_fd(i64 %17, i64 %18)
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* @MAP_ANONYMOUS, align 8
  %22 = and i64 %20, %21
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %6
  %25 = load i64, i64* %11, align 8
  %26 = call %struct.file* @fget(i64 %25)
  store %struct.file* %26, %struct.file** %13, align 8
  %27 = load %struct.file*, %struct.file** %13, align 8
  %28 = icmp ne %struct.file* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %51

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %6
  %32 = load i64, i64* @MAP_EXECUTABLE, align 8
  %33 = load i64, i64* @MAP_DENYWRITE, align 8
  %34 = or i64 %32, %33
  %35 = xor i64 %34, -1
  %36 = load i64, i64* %10, align 8
  %37 = and i64 %36, %35
  store i64 %37, i64* %10, align 8
  %38 = load %struct.file*, %struct.file** %13, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %12, align 8
  %44 = call i64 @vm_mmap_pgoff(%struct.file* %38, i64 %39, i64 %40, i64 %41, i64 %42, i64 %43)
  store i64 %44, i64* %14, align 8
  %45 = load %struct.file*, %struct.file** %13, align 8
  %46 = icmp ne %struct.file* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %31
  %48 = load %struct.file*, %struct.file** %13, align 8
  %49 = call i32 @fput(%struct.file* %48)
  br label %50

50:                                               ; preds = %47, %31
  br label %51

51:                                               ; preds = %50, %29
  %52 = load i64, i64* %14, align 8
  ret i64 %52
}

declare dso_local i32 @audit_mmap_fd(i64, i64) #1

declare dso_local %struct.file* @fget(i64) #1

declare dso_local i64 @vm_mmap_pgoff(%struct.file*, i64, i64, i64, i64, i64) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
