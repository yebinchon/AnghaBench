; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_l3.c_sendbyte.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_l3.c_sendbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_pins = type { i32, i32 (%struct.l3_pins*, i32)*, i32, i32 (%struct.l3_pins*, i32)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_pins*, i32)* @sendbyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sendbyte(%struct.l3_pins* %0, i32 %1) #0 {
  %3 = alloca %struct.l3_pins*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.l3_pins* %0, %struct.l3_pins** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %41, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 8
  br i1 %8, label %9, label %44

9:                                                ; preds = %6
  %10 = load %struct.l3_pins*, %struct.l3_pins** %3, align 8
  %11 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %10, i32 0, i32 1
  %12 = load i32 (%struct.l3_pins*, i32)*, i32 (%struct.l3_pins*, i32)** %11, align 8
  %13 = load %struct.l3_pins*, %struct.l3_pins** %3, align 8
  %14 = call i32 %12(%struct.l3_pins* %13, i32 0)
  %15 = load %struct.l3_pins*, %struct.l3_pins** %3, align 8
  %16 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @udelay(i32 %17)
  %19 = load %struct.l3_pins*, %struct.l3_pins** %3, align 8
  %20 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %19, i32 0, i32 3
  %21 = load i32 (%struct.l3_pins*, i32)*, i32 (%struct.l3_pins*, i32)** %20, align 8
  %22 = load %struct.l3_pins*, %struct.l3_pins** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 1
  %25 = call i32 %21(%struct.l3_pins* %22, i32 %24)
  %26 = load %struct.l3_pins*, %struct.l3_pins** %3, align 8
  %27 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @udelay(i32 %28)
  %30 = load %struct.l3_pins*, %struct.l3_pins** %3, align 8
  %31 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %30, i32 0, i32 1
  %32 = load i32 (%struct.l3_pins*, i32)*, i32 (%struct.l3_pins*, i32)** %31, align 8
  %33 = load %struct.l3_pins*, %struct.l3_pins** %3, align 8
  %34 = call i32 %32(%struct.l3_pins* %33, i32 1)
  %35 = load %struct.l3_pins*, %struct.l3_pins** %3, align 8
  %36 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @udelay(i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = lshr i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %9
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %6

44:                                               ; preds = %6
  ret void
}

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
