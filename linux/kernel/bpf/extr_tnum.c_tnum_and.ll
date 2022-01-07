; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_tnum.c_tnum_and.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_tnum.c_tnum_and.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tnum = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tnum_and(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.tnum, align 4
  %4 = alloca %struct.tnum, align 4
  %5 = alloca %struct.tnum, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = bitcast %struct.tnum* %4 to i64*
  store i64 %0, i64* %9, align 4
  %10 = bitcast %struct.tnum* %5 to i64*
  store i64 %1, i64* %10, align 4
  %11 = getelementptr inbounds %struct.tnum, %struct.tnum* %4, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.tnum, %struct.tnum* %4, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %12, %14
  store i32 %15, i32* %6, align 4
  %16 = getelementptr inbounds %struct.tnum, %struct.tnum* %5, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.tnum, %struct.tnum* %5, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %17, %19
  store i32 %20, i32* %7, align 4
  %21 = getelementptr inbounds %struct.tnum, %struct.tnum* %4, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.tnum, %struct.tnum* %5, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %22, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* %8, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = call i64 @TNUM(i32 %26, i32 %32)
  %34 = bitcast %struct.tnum* %3 to i64*
  store i64 %33, i64* %34, align 4
  %35 = bitcast %struct.tnum* %3 to i64*
  %36 = load i64, i64* %35, align 4
  ret i64 %36
}

declare dso_local i64 @TNUM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
