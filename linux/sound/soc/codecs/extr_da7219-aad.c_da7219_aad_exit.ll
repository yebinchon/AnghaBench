; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219-aad.c_da7219_aad_exit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7219-aad.c_da7219_aad_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.da7219_priv = type { i32, %struct.da7219_aad_priv* }
%struct.da7219_aad_priv = type { i32, i32, i32 }

@DA7219_AAD_IRQ_REG_MAX = common dso_local global i32 0, align 4
@DA7219_BYTE_MASK = common dso_local global i32 0, align 4
@DA7219_ACCDET_IRQ_MASK_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @da7219_aad_exit(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.da7219_priv*, align 8
  %4 = alloca %struct.da7219_aad_priv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %8 = call %struct.da7219_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %7)
  store %struct.da7219_priv* %8, %struct.da7219_priv** %3, align 8
  %9 = load %struct.da7219_priv*, %struct.da7219_priv** %3, align 8
  %10 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %9, i32 0, i32 1
  %11 = load %struct.da7219_aad_priv*, %struct.da7219_aad_priv** %10, align 8
  store %struct.da7219_aad_priv* %11, %struct.da7219_aad_priv** %4, align 8
  %12 = load i32, i32* @DA7219_AAD_IRQ_REG_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load i32, i32* @DA7219_BYTE_MASK, align 4
  %17 = load i32, i32* @DA7219_AAD_IRQ_REG_MAX, align 4
  %18 = call i32 @memset(i32* %15, i32 %16, i32 %17)
  %19 = load %struct.da7219_priv*, %struct.da7219_priv** %3, align 8
  %20 = getelementptr inbounds %struct.da7219_priv, %struct.da7219_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @DA7219_ACCDET_IRQ_MASK_A, align 4
  %23 = load i32, i32* @DA7219_AAD_IRQ_REG_MAX, align 4
  %24 = call i32 @regmap_bulk_write(i32 %21, i32 %22, i32* %15, i32 %23)
  %25 = load %struct.da7219_aad_priv*, %struct.da7219_aad_priv** %4, align 8
  %26 = getelementptr inbounds %struct.da7219_aad_priv, %struct.da7219_aad_priv* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.da7219_aad_priv*, %struct.da7219_aad_priv** %4, align 8
  %29 = call i32 @free_irq(i32 %27, %struct.da7219_aad_priv* %28)
  %30 = load %struct.da7219_aad_priv*, %struct.da7219_aad_priv** %4, align 8
  %31 = getelementptr inbounds %struct.da7219_aad_priv, %struct.da7219_aad_priv* %30, i32 0, i32 1
  %32 = call i32 @cancel_work_sync(i32* %31)
  %33 = load %struct.da7219_aad_priv*, %struct.da7219_aad_priv** %4, align 8
  %34 = getelementptr inbounds %struct.da7219_aad_priv, %struct.da7219_aad_priv* %33, i32 0, i32 0
  %35 = call i32 @cancel_work_sync(i32* %34)
  %36 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %36)
  ret void
}

declare dso_local %struct.da7219_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.da7219_aad_priv*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
