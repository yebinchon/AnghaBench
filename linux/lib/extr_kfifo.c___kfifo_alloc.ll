; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_kfifo.c___kfifo_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_kfifo.c___kfifo_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__kfifo = type { i64, i32, i32*, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__kfifo_alloc(%struct.__kfifo* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.__kfifo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.__kfifo* %0, %struct.__kfifo** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @roundup_pow_of_two(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.__kfifo*, %struct.__kfifo** %6, align 8
  %13 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %12, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = load %struct.__kfifo*, %struct.__kfifo** %6, align 8
  %15 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %14, i32 0, i32 3
  store i64 0, i64* %15, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load %struct.__kfifo*, %struct.__kfifo** %6, align 8
  %18 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load i32, i32* %7, align 4
  %20 = icmp ult i32 %19, 2
  br i1 %20, label %21, label %28

21:                                               ; preds = %4
  %22 = load %struct.__kfifo*, %struct.__kfifo** %6, align 8
  %23 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %22, i32 0, i32 2
  store i32* null, i32** %23, align 8
  %24 = load %struct.__kfifo*, %struct.__kfifo** %6, align 8
  %25 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %24, i32 0, i32 1
  store i32 0, i32* %25, align 8
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %49

28:                                               ; preds = %4
  %29 = load i64, i64* %8, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32* @kmalloc_array(i64 %29, i32 %30, i32 %31)
  %33 = load %struct.__kfifo*, %struct.__kfifo** %6, align 8
  %34 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %33, i32 0, i32 2
  store i32* %32, i32** %34, align 8
  %35 = load %struct.__kfifo*, %struct.__kfifo** %6, align 8
  %36 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %28
  %40 = load %struct.__kfifo*, %struct.__kfifo** %6, align 8
  %41 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %40, i32 0, i32 1
  store i32 0, i32* %41, align 8
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %49

44:                                               ; preds = %28
  %45 = load i32, i32* %7, align 4
  %46 = sub i32 %45, 1
  %47 = load %struct.__kfifo*, %struct.__kfifo** %6, align 8
  %48 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %44, %39, %21
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32* @kmalloc_array(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
