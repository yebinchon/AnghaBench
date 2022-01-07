; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_kfifo.c_kfifo_copy_out.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_kfifo.c_kfifo_copy_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__kfifo = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.__kfifo*, i8*, i32, i32)* @kfifo_copy_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kfifo_copy_out(%struct.__kfifo* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.__kfifo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.__kfifo* %0, %struct.__kfifo** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.__kfifo*, %struct.__kfifo** %5, align 8
  %13 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %9, align 4
  %16 = load %struct.__kfifo*, %struct.__kfifo** %5, align 8
  %17 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.__kfifo*, %struct.__kfifo** %5, align 8
  %20 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %36

26:                                               ; preds = %4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %8, align 4
  %29 = mul i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = mul i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %7, align 4
  %35 = mul i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %26, %4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %8, align 4
  %40 = sub i32 %38, %39
  %41 = call i32 @min(i32 %37, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = load %struct.__kfifo*, %struct.__kfifo** %5, align 8
  %44 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @memcpy(i8* %42, i64 %48, i32 %49)
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* %11, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr i8, i8* %51, i64 %53
  %55 = load %struct.__kfifo*, %struct.__kfifo** %5, align 8
  %56 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %11, align 4
  %60 = sub i32 %58, %59
  %61 = call i32 @memcpy(i8* %54, i64 %57, i32 %60)
  %62 = call i32 (...) @smp_wmb()
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
