; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_file.c___fget_light.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_file.c___fget_light.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.files_struct* }
%struct.files_struct = type { i32 }
%struct.file = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@FDPUT_FPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32)* @__fget_light to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__fget_light(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.files_struct*, align 8
  %7 = alloca %struct.file*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.files_struct*, %struct.files_struct** %9, align 8
  store %struct.files_struct* %10, %struct.files_struct** %6, align 8
  %11 = load %struct.files_struct*, %struct.files_struct** %6, align 8
  %12 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %11, i32 0, i32 0
  %13 = call i32 @atomic_read(i32* %12)
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %33

15:                                               ; preds = %2
  %16 = load %struct.files_struct*, %struct.files_struct** %6, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.file* @__fcheck_files(%struct.files_struct* %16, i32 %17)
  store %struct.file* %18, %struct.file** %7, align 8
  %19 = load %struct.file*, %struct.file** %7, align 8
  %20 = icmp ne %struct.file* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load %struct.file*, %struct.file** %7, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %24, %25
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21, %15
  store i64 0, i64* %3, align 8
  br label %45

30:                                               ; preds = %21
  %31 = load %struct.file*, %struct.file** %7, align 8
  %32 = ptrtoint %struct.file* %31 to i64
  store i64 %32, i64* %3, align 8
  br label %45

33:                                               ; preds = %2
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call %struct.file* @__fget(i32 %34, i32 %35, i32 1)
  store %struct.file* %36, %struct.file** %7, align 8
  %37 = load %struct.file*, %struct.file** %7, align 8
  %38 = icmp ne %struct.file* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  store i64 0, i64* %3, align 8
  br label %45

40:                                               ; preds = %33
  %41 = load i64, i64* @FDPUT_FPUT, align 8
  %42 = load %struct.file*, %struct.file** %7, align 8
  %43 = ptrtoint %struct.file* %42 to i64
  %44 = or i64 %41, %43
  store i64 %44, i64* %3, align 8
  br label %45

45:                                               ; preds = %40, %39, %30, %29
  %46 = load i64, i64* %3, align 8
  ret i64 %46
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.file* @__fcheck_files(%struct.files_struct*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.file* @__fget(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
