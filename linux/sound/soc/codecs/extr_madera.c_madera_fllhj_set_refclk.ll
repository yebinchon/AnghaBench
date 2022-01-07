; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_fllhj_set_refclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_fllhj_set_refclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.madera_fll = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @madera_fllhj_set_refclk(%struct.madera_fll* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.madera_fll*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.madera_fll* %0, %struct.madera_fll** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i32, i32* %9, align 4
  %15 = udiv i32 %14, 2
  store i32 %15, i32* %9, align 4
  br label %16

16:                                               ; preds = %13, %4
  %17 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %18 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %24 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %30 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %70

35:                                               ; preds = %28, %22, %16
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i64 @madera_fllhj_validate(%struct.madera_fll* %42, i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %70

50:                                               ; preds = %41, %38, %35
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %53 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %56 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %59 = getelementptr inbounds %struct.madera_fll, %struct.madera_fll* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %50
  %63 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %64 = call i32 @madera_fllhj_enable(%struct.madera_fll* %63)
  store i32 %64, i32* %10, align 4
  br label %68

65:                                               ; preds = %50
  %66 = load %struct.madera_fll*, %struct.madera_fll** %6, align 8
  %67 = call i32 @madera_fllhj_disable(%struct.madera_fll* %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %68, %47, %34
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i64 @madera_fllhj_validate(%struct.madera_fll*, i32, i32) #1

declare dso_local i32 @madera_fllhj_enable(%struct.madera_fll*) #1

declare dso_local i32 @madera_fllhj_disable(%struct.madera_fll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
