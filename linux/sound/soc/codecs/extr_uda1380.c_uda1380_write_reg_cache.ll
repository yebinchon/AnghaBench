; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_uda1380.c_uda1380_write_reg_cache.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_uda1380.c_uda1380_write_reg_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.uda1380_priv = type { i32* }

@UDA1380_CACHEREGNUM = common dso_local global i32 0, align 4
@uda1380_cache_dirty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i32, i32)* @uda1380_write_reg_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uda1380_write_reg_cache(%struct.snd_soc_component* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.uda1380_priv*, align 8
  %8 = alloca i32*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %10 = call %struct.uda1380_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.uda1380_priv* %10, %struct.uda1380_priv** %7, align 8
  %11 = load %struct.uda1380_priv*, %struct.uda1380_priv** %7, align 8
  %12 = getelementptr inbounds %struct.uda1380_priv, %struct.uda1380_priv* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @UDA1380_CACHEREGNUM, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %39

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = icmp sge i32 %19, 16
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  %31 = sub nsw i32 %30, 16
  %32 = call i32 @set_bit(i32 %31, i32* @uda1380_cache_dirty)
  br label %33

33:                                               ; preds = %29, %21, %18
  %34 = load i32, i32* %6, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %34, i32* %38, align 4
  br label %39

39:                                               ; preds = %33, %17
  ret void
}

declare dso_local %struct.uda1380_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
