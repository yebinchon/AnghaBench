; ModuleID = '/home/carl/AnghaBench/linux/sound/extr_ac97_bus.c_snd_ac97_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/extr_ac97_bus.c_snd_ac97_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_ac97_bus_ops* }
%struct.snd_ac97_bus_ops = type { i32 (%struct.snd_ac97.0*)*, i32 (%struct.snd_ac97.1*)* }
%struct.snd_ac97.0 = type opaque
%struct.snd_ac97.1 = type opaque

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_ac97_reset(%struct.snd_ac97* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_ac97*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_ac97_bus_ops*, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %12 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.snd_ac97_bus_ops*, %struct.snd_ac97_bus_ops** %14, align 8
  store %struct.snd_ac97_bus_ops* %15, %struct.snd_ac97_bus_ops** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %4
  %19 = load %struct.snd_ac97_bus_ops*, %struct.snd_ac97_bus_ops** %10, align 8
  %20 = getelementptr inbounds %struct.snd_ac97_bus_ops, %struct.snd_ac97_bus_ops* %19, i32 0, i32 0
  %21 = load i32 (%struct.snd_ac97.0*)*, i32 (%struct.snd_ac97.0*)** %20, align 8
  %22 = icmp ne i32 (%struct.snd_ac97.0*)* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = load %struct.snd_ac97_bus_ops*, %struct.snd_ac97_bus_ops** %10, align 8
  %25 = getelementptr inbounds %struct.snd_ac97_bus_ops, %struct.snd_ac97_bus_ops* %24, i32 0, i32 0
  %26 = load i32 (%struct.snd_ac97.0*)*, i32 (%struct.snd_ac97.0*)** %25, align 8
  %27 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %28 = bitcast %struct.snd_ac97* %27 to %struct.snd_ac97.0*
  %29 = call i32 %26(%struct.snd_ac97.0* %28)
  %30 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i64 @snd_ac97_check_id(%struct.snd_ac97* %30, i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  store i32 1, i32* %5, align 4
  br label %71

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36, %18, %4
  %38 = load %struct.snd_ac97_bus_ops*, %struct.snd_ac97_bus_ops** %10, align 8
  %39 = getelementptr inbounds %struct.snd_ac97_bus_ops, %struct.snd_ac97_bus_ops* %38, i32 0, i32 1
  %40 = load i32 (%struct.snd_ac97.1*)*, i32 (%struct.snd_ac97.1*)** %39, align 8
  %41 = icmp ne i32 (%struct.snd_ac97.1*)* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.snd_ac97_bus_ops*, %struct.snd_ac97_bus_ops** %10, align 8
  %44 = getelementptr inbounds %struct.snd_ac97_bus_ops, %struct.snd_ac97_bus_ops* %43, i32 0, i32 1
  %45 = load i32 (%struct.snd_ac97.1*)*, i32 (%struct.snd_ac97.1*)** %44, align 8
  %46 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %47 = bitcast %struct.snd_ac97* %46 to %struct.snd_ac97.1*
  %48 = call i32 %45(%struct.snd_ac97.1* %47)
  br label %49

49:                                               ; preds = %42, %37
  %50 = load %struct.snd_ac97_bus_ops*, %struct.snd_ac97_bus_ops** %10, align 8
  %51 = getelementptr inbounds %struct.snd_ac97_bus_ops, %struct.snd_ac97_bus_ops* %50, i32 0, i32 0
  %52 = load i32 (%struct.snd_ac97.0*)*, i32 (%struct.snd_ac97.0*)** %51, align 8
  %53 = icmp ne i32 (%struct.snd_ac97.0*)* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.snd_ac97_bus_ops*, %struct.snd_ac97_bus_ops** %10, align 8
  %56 = getelementptr inbounds %struct.snd_ac97_bus_ops, %struct.snd_ac97_bus_ops* %55, i32 0, i32 0
  %57 = load i32 (%struct.snd_ac97.0*)*, i32 (%struct.snd_ac97.0*)** %56, align 8
  %58 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %59 = bitcast %struct.snd_ac97* %58 to %struct.snd_ac97.0*
  %60 = call i32 %57(%struct.snd_ac97.0* %59)
  br label %61

61:                                               ; preds = %54, %49
  %62 = load %struct.snd_ac97*, %struct.snd_ac97** %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i64 @snd_ac97_check_id(%struct.snd_ac97* %62, i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  br label %71

68:                                               ; preds = %61
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %68, %67, %35
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i64 @snd_ac97_check_id(%struct.snd_ac97*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
