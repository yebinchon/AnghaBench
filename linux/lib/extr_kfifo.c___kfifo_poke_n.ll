; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_kfifo.c___kfifo_poke_n.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_kfifo.c___kfifo_poke_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__kfifo = type { i32, i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.__kfifo*, i32, i64)* @__kfifo_poke_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__kfifo_poke_n(%struct.__kfifo* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.__kfifo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.__kfifo* %0, %struct.__kfifo** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.__kfifo*, %struct.__kfifo** %4, align 8
  %10 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load %struct.__kfifo*, %struct.__kfifo** %4, align 8
  %13 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load %struct.__kfifo*, %struct.__kfifo** %4, align 8
  %17 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @__KFIFO_POKE(i8* %15, i64 %18, i32 %19, i32 %20)
  %22 = load i64, i64* %6, align 8
  %23 = icmp ugt i64 %22, 1
  br i1 %23, label %24, label %34

24:                                               ; preds = %3
  %25 = load i8*, i8** %8, align 8
  %26 = load %struct.__kfifo*, %struct.__kfifo** %4, align 8
  %27 = getelementptr inbounds %struct.__kfifo, %struct.__kfifo* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %5, align 4
  %32 = lshr i32 %31, 8
  %33 = call i32 @__KFIFO_POKE(i8* %25, i64 %29, i32 %30, i32 %32)
  br label %34

34:                                               ; preds = %24, %3
  ret void
}

declare dso_local i32 @__KFIFO_POKE(i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
