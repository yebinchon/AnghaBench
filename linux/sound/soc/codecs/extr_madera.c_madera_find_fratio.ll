; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_find_fratio.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_find_fratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.madera_fll = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.madera_fll*, i32, i32, i32*)* @madera_find_fratio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_find_fratio(%struct.madera_fll* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.madera_fll*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.madera_fll* %0, %struct.madera_fll** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %11 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %43 [
    i32 130, label %15
    i32 129, label %39
    i32 128, label %39
  ]

15:                                               ; preds = %4
  %16 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %17 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %25 [
    i32 0, label %21
  ]

21:                                               ; preds = %15
  %22 = load i32, i32* %7, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @madera_find_sync_fratio(i32 %22, i32* %23)
  store i32 %24, i32* %5, align 4
  br label %57

25:                                               ; preds = %15
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @madera_find_sync_fratio(i32 %29, i32* %30)
  store i32 %31, i32* %5, align 4
  br label %57

32:                                               ; preds = %25
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %35 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @madera_find_main_fratio(i32 %33, i32 %36, i32* %37)
  store i32 %38, i32* %5, align 4
  br label %57

39:                                               ; preds = %4, %4
  %40 = load i32, i32* %7, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @madera_find_sync_fratio(i32 %40, i32* %41)
  store i32 %42, i32* %5, align 4
  br label %57

43:                                               ; preds = %4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @madera_find_sync_fratio(i32 %47, i32* %48)
  store i32 %49, i32* %5, align 4
  br label %57

50:                                               ; preds = %43
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %53 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @madera_find_main_fratio(i32 %51, i32 %54, i32* %55)
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %50, %46, %39, %32, %28, %21
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @madera_find_sync_fratio(i32, i32*) #1

declare dso_local i32 @madera_find_main_fratio(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
