; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_bch.c_modulo.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_bch.c_modulo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bch_control = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bch_control*, i32)* @modulo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modulo(%struct.bch_control* %0, i32 %1) #0 {
  %3 = alloca %struct.bch_control*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bch_control* %0, %struct.bch_control** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bch_control*, %struct.bch_control** %3, align 8
  %7 = call i32 @GF_N(%struct.bch_control* %6)
  store i32 %7, i32* %5, align 4
  br label %8

8:                                                ; preds = %12, %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp uge i32 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = sub i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.bch_control*, %struct.bch_control** %3, align 8
  %21 = call i32 @GF_M(%struct.bch_control* %20)
  %22 = lshr i32 %19, %21
  %23 = add i32 %18, %22
  store i32 %23, i32* %4, align 4
  br label %8

24:                                               ; preds = %8
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @GF_N(%struct.bch_control*) #1

declare dso_local i32 @GF_M(%struct.bch_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
