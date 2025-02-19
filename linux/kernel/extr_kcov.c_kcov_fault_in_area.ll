; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kcov.c_kcov_fault_in_area.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kcov.c_kcov_fault_in_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcov = type { i64*, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kcov*)* @kcov_fault_in_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kcov_fault_in_area(%struct.kcov* %0) #0 {
  %2 = alloca %struct.kcov*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  store %struct.kcov* %0, %struct.kcov** %2, align 8
  %6 = load i32, i32* @PAGE_SIZE, align 4
  %7 = sext i32 %6 to i64
  %8 = udiv i64 %7, 8
  store i64 %8, i64* %3, align 8
  %9 = load %struct.kcov*, %struct.kcov** %2, align 8
  %10 = getelementptr inbounds %struct.kcov, %struct.kcov* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  store i64* %11, i64** %4, align 8
  store i64 0, i64* %5, align 8
  br label %12

12:                                               ; preds = %24, %1
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.kcov*, %struct.kcov** %2, align 8
  %15 = getelementptr inbounds %struct.kcov, %struct.kcov* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %12
  %19 = load i64*, i64** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @READ_ONCE(i64 %22)
  br label %24

24:                                               ; preds = %18
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* %5, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %5, align 8
  br label %12

28:                                               ; preds = %12
  ret void
}

declare dso_local i32 @READ_ONCE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
