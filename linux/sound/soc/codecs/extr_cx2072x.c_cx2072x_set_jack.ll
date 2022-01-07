; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cx2072x.c_cx2072x_set_jack.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cx2072x.c_cx2072x_set_jack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32* }
%struct.snd_soc_jack = type { i32 }
%struct.cx2072x_priv = type { %struct.TYPE_3__ }

@cx2072x_jack_gpio = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, %struct.snd_soc_jack*, i8*)* @cx2072x_set_jack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx2072x_set_jack(%struct.snd_soc_component* %0, %struct.snd_soc_jack* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.snd_soc_jack*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cx2072x_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store %struct.snd_soc_jack* %1, %struct.snd_soc_jack** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %11 = call %struct.cx2072x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.cx2072x_priv* %11, %struct.cx2072x_priv** %8, align 8
  %12 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %6, align 8
  %13 = icmp ne %struct.snd_soc_jack* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %16 = call i32 @cx2072x_disable_jack_detect(%struct.snd_soc_component* %15)
  store i32 0, i32* %4, align 4
  br label %52

17:                                               ; preds = %3
  %18 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %8, align 8
  %19 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %49, label %23

23:                                               ; preds = %17
  %24 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %8, align 8
  %25 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %24, i32 0, i32 0
  %26 = bitcast %struct.TYPE_3__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 bitcast (%struct.TYPE_3__* @cx2072x_jack_gpio to i8*), i64 16, i1 false)
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %28 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %8, align 8
  %31 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32* %29, i32** %32, align 8
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %34 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %8, align 8
  %35 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store %struct.snd_soc_component* %33, %struct.snd_soc_component** %36, align 8
  %37 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %6, align 8
  %38 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %8, align 8
  %39 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %38, i32 0, i32 0
  %40 = call i32 @snd_soc_jack_add_gpios(%struct.snd_soc_jack* %37, i32 1, %struct.TYPE_3__* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %23
  %44 = load %struct.cx2072x_priv*, %struct.cx2072x_priv** %8, align 8
  %45 = getelementptr inbounds %struct.cx2072x_priv, %struct.cx2072x_priv* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %52

48:                                               ; preds = %23
  br label %49

49:                                               ; preds = %48, %17
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %51 = call i32 @cx2072x_enable_jack_detect(%struct.snd_soc_component* %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %49, %43, %14
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.cx2072x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @cx2072x_disable_jack_detect(%struct.snd_soc_component*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_soc_jack_add_gpios(%struct.snd_soc_jack*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @cx2072x_enable_jack_detect(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
