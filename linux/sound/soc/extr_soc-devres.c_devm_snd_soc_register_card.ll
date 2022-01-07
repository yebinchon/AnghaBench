; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-devres.c_devm_snd_soc_register_card.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-devres.c_devm_snd_soc_register_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snd_soc_card = type { i32 }

@devm_card_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devm_snd_soc_register_card(%struct.device* %0, %struct.snd_soc_card* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca %struct.snd_soc_card**, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.snd_soc_card* %1, %struct.snd_soc_card** %5, align 8
  %8 = load i32, i32* @devm_card_release, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.snd_soc_card** @devres_alloc(i32 %8, i32 8, i32 %9)
  store %struct.snd_soc_card** %10, %struct.snd_soc_card*** %6, align 8
  %11 = load %struct.snd_soc_card**, %struct.snd_soc_card*** %6, align 8
  %12 = icmp ne %struct.snd_soc_card** %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %32

16:                                               ; preds = %2
  %17 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %18 = call i32 @snd_soc_register_card(%struct.snd_soc_card* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %23 = load %struct.snd_soc_card**, %struct.snd_soc_card*** %6, align 8
  store %struct.snd_soc_card* %22, %struct.snd_soc_card** %23, align 8
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load %struct.snd_soc_card**, %struct.snd_soc_card*** %6, align 8
  %26 = call i32 @devres_add(%struct.device* %24, %struct.snd_soc_card** %25)
  br label %30

27:                                               ; preds = %16
  %28 = load %struct.snd_soc_card**, %struct.snd_soc_card*** %6, align 8
  %29 = call i32 @devres_free(%struct.snd_soc_card** %28)
  br label %30

30:                                               ; preds = %27, %21
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %13
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.snd_soc_card** @devres_alloc(i32, i32, i32) #1

declare dso_local i32 @snd_soc_register_card(%struct.snd_soc_card*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.snd_soc_card**) #1

declare dso_local i32 @devres_free(%struct.snd_soc_card**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
