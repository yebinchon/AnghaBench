; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl4030.c_twl4030_can_write_to_chip.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_twl4030.c_twl4030_can_write_to_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl4030_priv = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl4030_priv*, i32)* @twl4030_can_write_to_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_can_write_to_chip(%struct.twl4030_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.twl4030_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.twl4030_priv* %0, %struct.twl4030_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %54 [
    i32 133, label %7
    i32 129, label %14
    i32 128, label %21
    i32 131, label %28
    i32 130, label %35
    i32 132, label %42
  ]

7:                                                ; preds = %2
  %8 = load %struct.twl4030_priv*, %struct.twl4030_priv** %3, align 8
  %9 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i32 1, i32* %5, align 4
  br label %13

13:                                               ; preds = %12, %7
  br label %55

14:                                               ; preds = %2
  %15 = load %struct.twl4030_priv*, %struct.twl4030_priv** %3, align 8
  %16 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 1, i32* %5, align 4
  br label %20

20:                                               ; preds = %19, %14
  br label %55

21:                                               ; preds = %2
  %22 = load %struct.twl4030_priv*, %struct.twl4030_priv** %3, align 8
  %23 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %27

27:                                               ; preds = %26, %21
  br label %55

28:                                               ; preds = %2
  %29 = load %struct.twl4030_priv*, %struct.twl4030_priv** %3, align 8
  %30 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 1, i32* %5, align 4
  br label %34

34:                                               ; preds = %33, %28
  br label %55

35:                                               ; preds = %2
  %36 = load %struct.twl4030_priv*, %struct.twl4030_priv** %3, align 8
  %37 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 1, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %35
  br label %55

42:                                               ; preds = %2
  %43 = load %struct.twl4030_priv*, %struct.twl4030_priv** %3, align 8
  %44 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load %struct.twl4030_priv*, %struct.twl4030_priv** %3, align 8
  %49 = getelementptr inbounds %struct.twl4030_priv, %struct.twl4030_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47, %42
  store i32 1, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %47
  br label %55

54:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %53, %41, %34, %27, %20, %13
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
