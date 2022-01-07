; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c___maestro_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c___maestro_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1968 = type { i64*, i64 }

@ESM_INDEX = common dso_local global i64 0, align 8
@ESM_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.es1968*, i64, i64)* @__maestro_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__maestro_write(%struct.es1968* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.es1968*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.es1968* %0, %struct.es1968** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.es1968*, %struct.es1968** %4, align 8
  %9 = getelementptr inbounds %struct.es1968, %struct.es1968* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ESM_INDEX, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @outw(i64 %7, i64 %12)
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.es1968*, %struct.es1968** %4, align 8
  %16 = getelementptr inbounds %struct.es1968, %struct.es1968* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ESM_DATA, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @outw(i64 %14, i64 %19)
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.es1968*, %struct.es1968** %4, align 8
  %23 = getelementptr inbounds %struct.es1968, %struct.es1968* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  store i64 %21, i64* %26, align 8
  ret void
}

declare dso_local i32 @outw(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
