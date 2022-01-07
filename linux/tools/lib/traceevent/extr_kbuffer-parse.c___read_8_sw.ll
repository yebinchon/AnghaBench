; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_kbuffer-parse.c___read_8_sw.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_kbuffer-parse.c___read_8_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @__read_8_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__read_8_sw(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to i64*
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = and i64 %8, 255
  %10 = shl i64 %9, 56
  %11 = load i64, i64* %3, align 8
  %12 = and i64 %11, 65280
  %13 = shl i64 %12, 40
  %14 = or i64 %10, %13
  %15 = load i64, i64* %3, align 8
  %16 = and i64 %15, 16711680
  %17 = shl i64 %16, 24
  %18 = or i64 %14, %17
  %19 = load i64, i64* %3, align 8
  %20 = and i64 %19, 4278190080
  %21 = shl i64 %20, 8
  %22 = or i64 %18, %21
  %23 = load i64, i64* %3, align 8
  %24 = and i64 %23, 1095216660480
  %25 = lshr i64 %24, 8
  %26 = or i64 %22, %25
  %27 = load i64, i64* %3, align 8
  %28 = and i64 %27, 280375465082880
  %29 = lshr i64 %28, 24
  %30 = or i64 %26, %29
  %31 = load i64, i64* %3, align 8
  %32 = and i64 %31, 71776119061217280
  %33 = lshr i64 %32, 40
  %34 = or i64 %30, %33
  %35 = load i64, i64* %3, align 8
  %36 = and i64 %35, -72057594037927936
  %37 = lshr i64 %36, 56
  %38 = or i64 %34, %37
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  ret i64 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
