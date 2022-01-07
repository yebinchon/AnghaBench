; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_pcm.c_lola_get_tstamp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_pcm.c_lola_get_tstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lola = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lola*, i32)* @lola_get_tstamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lola_get_tstamp(%struct.lola* %0, i32 %1) #0 {
  %3 = alloca %struct.lola*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lola* %0, %struct.lola** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.lola*, %struct.lola** %3, align 8
  %8 = call i32 @lola_get_lrc(%struct.lola* %7)
  %9 = ashr i32 %8, 8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.lola*, %struct.lola** %3, align 8
  %11 = getelementptr inbounds %struct.lola, %struct.lola* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 0, i32 8
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add i32 %19, 1
  %21 = load %struct.lola*, %struct.lola** %3, align 8
  %22 = getelementptr inbounds %struct.lola, %struct.lola* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul i32 %20, %23
  %25 = sub i32 %24, 1
  %26 = load i32, i32* %5, align 4
  %27 = add i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.lola*, %struct.lola** %3, align 8
  %30 = getelementptr inbounds %struct.lola, %struct.lola* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = urem i32 %28, %31
  %33 = load i32, i32* %5, align 4
  %34 = sub i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %14, %2
  %36 = load i32, i32* %5, align 4
  %37 = shl i32 %36, 8
  ret i32 %37
}

declare dso_local i32 @lola_get_lrc(%struct.lola*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
