; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-ac97.c_snd_soc_new_ac97_component.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-ac97.c_snd_soc_new_ac97_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32 }
%struct.snd_soc_component = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Failed to reset AC97 device: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snd_ac97* @snd_soc_new_ac97_component(%struct.snd_soc_component* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_ac97*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %11 = call %struct.snd_ac97* @snd_soc_alloc_ac97_component(%struct.snd_soc_component* %10)
  store %struct.snd_ac97* %11, %struct.snd_ac97** %8, align 8
  %12 = load %struct.snd_ac97*, %struct.snd_ac97** %8, align 8
  %13 = call i64 @IS_ERR(%struct.snd_ac97* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load %struct.snd_ac97*, %struct.snd_ac97** %8, align 8
  store %struct.snd_ac97* %16, %struct.snd_ac97** %4, align 8
  br label %56

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = load %struct.snd_ac97*, %struct.snd_ac97** %8, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @snd_ac97_reset(%struct.snd_ac97* %21, i32 0, i32 %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %29 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %50

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %33, %17
  %35 = load %struct.snd_ac97*, %struct.snd_ac97** %8, align 8
  %36 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %35, i32 0, i32 0
  %37 = call i32 @device_add(i32* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %50

41:                                               ; preds = %34
  %42 = load %struct.snd_ac97*, %struct.snd_ac97** %8, align 8
  %43 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %44 = call i32 @snd_soc_ac97_init_gpio(%struct.snd_ac97* %42, %struct.snd_soc_component* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %50

48:                                               ; preds = %41
  %49 = load %struct.snd_ac97*, %struct.snd_ac97** %8, align 8
  store %struct.snd_ac97* %49, %struct.snd_ac97** %4, align 8
  br label %56

50:                                               ; preds = %47, %40, %27
  %51 = load %struct.snd_ac97*, %struct.snd_ac97** %8, align 8
  %52 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %51, i32 0, i32 0
  %53 = call i32 @put_device(i32* %52)
  %54 = load i32, i32* %9, align 4
  %55 = call %struct.snd_ac97* @ERR_PTR(i32 %54)
  store %struct.snd_ac97* %55, %struct.snd_ac97** %4, align 8
  br label %56

56:                                               ; preds = %50, %48, %15
  %57 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  ret %struct.snd_ac97* %57
}

declare dso_local %struct.snd_ac97* @snd_soc_alloc_ac97_component(%struct.snd_soc_component*) #1

declare dso_local i64 @IS_ERR(%struct.snd_ac97*) #1

declare dso_local i32 @snd_ac97_reset(%struct.snd_ac97*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @device_add(i32*) #1

declare dso_local i32 @snd_soc_ac97_init_gpio(%struct.snd_ac97*, %struct.snd_soc_component*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local %struct.snd_ac97* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
