; ModuleID = '/home/carl/AnghaBench/linux/lib/mpi/extr_mpiutil.c_mpi_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/lib/mpi/extr_mpiutil.c_mpi_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64, i64, i64, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @mpi_alloc(i32 %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.TYPE_5__* @kmalloc(i32 48, i32 %5)
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %4, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %2, align 8
  br label %43

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = call i32* @mpi_alloc_limb_space(i32 %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 5
  store i32* %16, i32** %18, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 5
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %14
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = call i32 @kfree(%struct.TYPE_5__* %24)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %43

26:                                               ; preds = %14
  br label %30

27:                                               ; preds = %11
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 5
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %27, %26
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %2, align 8
  br label %43

43:                                               ; preds = %30, %23, %9
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %44
}

declare dso_local %struct.TYPE_5__* @kmalloc(i32, i32) #1

declare dso_local i32* @mpi_alloc_limb_space(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
