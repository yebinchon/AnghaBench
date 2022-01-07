; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_tnum.c_tnum_or.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_tnum.c_tnum_or.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tnum = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tnum_or(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.tnum, align 4
  %4 = alloca %struct.tnum, align 4
  %5 = alloca %struct.tnum, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = bitcast %struct.tnum* %4 to i64*
  store i64 %0, i64* %8, align 4
  %9 = bitcast %struct.tnum* %5 to i64*
  store i64 %1, i64* %9, align 4
  %10 = getelementptr inbounds %struct.tnum, %struct.tnum* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.tnum, %struct.tnum* %5, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %11, %13
  store i32 %14, i32* %6, align 4
  %15 = getelementptr inbounds %struct.tnum, %struct.tnum* %4, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.tnum, %struct.tnum* %5, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %16, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = call i64 @TNUM(i32 %20, i32 %24)
  %26 = bitcast %struct.tnum* %3 to i64*
  store i64 %25, i64* %26, align 4
  %27 = bitcast %struct.tnum* %3 to i64*
  %28 = load i64, i64* %27, align 4
  ret i64 %28
}

declare dso_local i64 @TNUM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
