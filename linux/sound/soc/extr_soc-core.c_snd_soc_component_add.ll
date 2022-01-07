; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-core.c_snd_soc_component_add.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-core.c_snd_soc_component_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@client_mutex = common dso_local global i32 0, align 4
@component_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @snd_soc_component_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_soc_component_add(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %3 = call i32 @mutex_lock(i32* @client_mutex)
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %4, i32 0, i32 3
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %38, label %10

10:                                               ; preds = %1
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %12 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %38, label %17

17:                                               ; preds = %10
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %19 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %24 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @dev_get_regmap(i32 %25, i32* null)
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %28 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %22, %17
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %31 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %36 = call i32 @snd_soc_component_setup_regmap(%struct.snd_soc_component* %35)
  br label %37

37:                                               ; preds = %34, %29
  br label %38

38:                                               ; preds = %37, %10, %1
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %40 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %39, i32 0, i32 0
  %41 = call i32 @list_add(i32* %40, i32* @component_list)
  %42 = call i32 @mutex_unlock(i32* @client_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @dev_get_regmap(i32, i32*) #1

declare dso_local i32 @snd_soc_component_setup_regmap(%struct.snd_soc_component*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
