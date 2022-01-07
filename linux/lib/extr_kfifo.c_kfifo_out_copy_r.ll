; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_kfifo.c_kfifo_out_copy_r.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_kfifo.c_kfifo_out_copy_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__kfifo = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.__kfifo*, i8*, i32, i64, i32*)* @kfifo_out_copy_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kfifo_out_copy_r(%struct.__kfifo* %0, i8* %1, i32 %2, i64 %3, i32* %4) #0 {
  %6 = alloca %struct.__kfifo*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.__kfifo* %0, %struct.__kfifo** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load %struct.__kfifo*, %struct.__kfifo** %6, align 8
  %12 = load i64, i64* %9, align 8
  %13 = call i32 @__kfifo_peek_n(%struct.__kfifo* %11, i64 %12)
  %14 = load i32*, i32** %10, align 8
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32*, i32** %10, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp ugt i32 %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %19, %5
  %23 = load %struct.__kfifo*, %struct.__kfifo** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.__kfifo*, %struct.__kfifo** %6, align 8
  %27 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %9, align 8
  %30 = add i64 %28, %29
  %31 = call i32 @kfifo_copy_out(%struct.__kfifo* %23, i8* %24, i32 %25, i64 %30)
  %32 = load i32, i32* %8, align 4
  ret i32 %32
}

declare dso_local i32 @__kfifo_peek_n(%struct.__kfifo*, i64) #1

declare dso_local i32 @kfifo_copy_out(%struct.__kfifo*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
