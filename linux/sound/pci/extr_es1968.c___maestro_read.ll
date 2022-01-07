; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c___maestro_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c___maestro_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1968 = type { i32*, i64 }

@READABLE_MAP = common dso_local global i32 0, align 4
@ESM_INDEX = common dso_local global i64 0, align 8
@ESM_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.es1968*, i32)* @__maestro_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__maestro_read(%struct.es1968* %0, i32 %1) #0 {
  %3 = alloca %struct.es1968*, align 8
  %4 = alloca i32, align 4
  store %struct.es1968* %0, %struct.es1968** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @READABLE_MAP, align 4
  %6 = load i32, i32* %4, align 4
  %7 = shl i32 1, %6
  %8 = and i32 %5, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.es1968*, %struct.es1968** %3, align 8
  %13 = getelementptr inbounds %struct.es1968, %struct.es1968* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ESM_INDEX, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @outw(i32 %11, i64 %16)
  %18 = load %struct.es1968*, %struct.es1968** %3, align 8
  %19 = getelementptr inbounds %struct.es1968, %struct.es1968* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ESM_DATA, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @inw(i64 %22)
  %24 = load %struct.es1968*, %struct.es1968** %3, align 8
  %25 = getelementptr inbounds %struct.es1968, %struct.es1968* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %23, i32* %29, align 4
  br label %30

30:                                               ; preds = %10, %2
  %31 = load %struct.es1968*, %struct.es1968** %3, align 8
  %32 = getelementptr inbounds %struct.es1968, %struct.es1968* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  ret i32 %37
}

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
