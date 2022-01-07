; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_l3.c_l3_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_l3.c_l3_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_pins = type { i32 (%struct.l3_pins*, i32)*, i32 (%struct.l3_pins*, i32)*, i32 (%struct.l3_pins*, i32)*, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @l3_write(%struct.l3_pins* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.l3_pins*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.l3_pins* %0, %struct.l3_pins** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.l3_pins*, %struct.l3_pins** %5, align 8
  %10 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %9, i32 0, i32 2
  %11 = load i32 (%struct.l3_pins*, i32)*, i32 (%struct.l3_pins*, i32)** %10, align 8
  %12 = load %struct.l3_pins*, %struct.l3_pins** %5, align 8
  %13 = call i32 %11(%struct.l3_pins* %12, i32 1)
  %14 = load %struct.l3_pins*, %struct.l3_pins** %5, align 8
  %15 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %14, i32 0, i32 1
  %16 = load i32 (%struct.l3_pins*, i32)*, i32 (%struct.l3_pins*, i32)** %15, align 8
  %17 = load %struct.l3_pins*, %struct.l3_pins** %5, align 8
  %18 = call i32 %16(%struct.l3_pins* %17, i32 1)
  %19 = load %struct.l3_pins*, %struct.l3_pins** %5, align 8
  %20 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %19, i32 0, i32 0
  %21 = load i32 (%struct.l3_pins*, i32)*, i32 (%struct.l3_pins*, i32)** %20, align 8
  %22 = load %struct.l3_pins*, %struct.l3_pins** %5, align 8
  %23 = call i32 %21(%struct.l3_pins* %22, i32 1)
  %24 = load %struct.l3_pins*, %struct.l3_pins** %5, align 8
  %25 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @udelay(i32 %26)
  %28 = load %struct.l3_pins*, %struct.l3_pins** %5, align 8
  %29 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %28, i32 0, i32 0
  %30 = load i32 (%struct.l3_pins*, i32)*, i32 (%struct.l3_pins*, i32)** %29, align 8
  %31 = load %struct.l3_pins*, %struct.l3_pins** %5, align 8
  %32 = call i32 %30(%struct.l3_pins* %31, i32 0)
  %33 = load %struct.l3_pins*, %struct.l3_pins** %5, align 8
  %34 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @udelay(i32 %35)
  %37 = load %struct.l3_pins*, %struct.l3_pins** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @sendbyte(%struct.l3_pins* %37, i32 %38)
  %40 = load %struct.l3_pins*, %struct.l3_pins** %5, align 8
  %41 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @udelay(i32 %42)
  %44 = load %struct.l3_pins*, %struct.l3_pins** %5, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @sendbytes(%struct.l3_pins* %44, i32* %45, i32 %46)
  %48 = load %struct.l3_pins*, %struct.l3_pins** %5, align 8
  %49 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %48, i32 0, i32 2
  %50 = load i32 (%struct.l3_pins*, i32)*, i32 (%struct.l3_pins*, i32)** %49, align 8
  %51 = load %struct.l3_pins*, %struct.l3_pins** %5, align 8
  %52 = call i32 %50(%struct.l3_pins* %51, i32 1)
  %53 = load %struct.l3_pins*, %struct.l3_pins** %5, align 8
  %54 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %53, i32 0, i32 1
  %55 = load i32 (%struct.l3_pins*, i32)*, i32 (%struct.l3_pins*, i32)** %54, align 8
  %56 = load %struct.l3_pins*, %struct.l3_pins** %5, align 8
  %57 = call i32 %55(%struct.l3_pins* %56, i32 1)
  %58 = load %struct.l3_pins*, %struct.l3_pins** %5, align 8
  %59 = getelementptr inbounds %struct.l3_pins, %struct.l3_pins* %58, i32 0, i32 0
  %60 = load i32 (%struct.l3_pins*, i32)*, i32 (%struct.l3_pins*, i32)** %59, align 8
  %61 = load %struct.l3_pins*, %struct.l3_pins** %5, align 8
  %62 = call i32 %60(%struct.l3_pins* %61, i32 0)
  %63 = load i32, i32* %8, align 4
  ret i32 %63
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @sendbyte(%struct.l3_pins*, i32) #1

declare dso_local i32 @sendbytes(%struct.l3_pins*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
