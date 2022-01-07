; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_mod_id_sub.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_mod_id_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsnd_mod_id_sub(%struct.rsnd_mod* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rsnd_mod*, align 8
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %3, align 8
  %4 = load %struct.rsnd_mod*, %struct.rsnd_mod** %3, align 8
  %5 = getelementptr inbounds %struct.rsnd_mod, %struct.rsnd_mod* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = bitcast {}** %7 to i32 (%struct.rsnd_mod*)**
  %9 = load i32 (%struct.rsnd_mod*)*, i32 (%struct.rsnd_mod*)** %8, align 8
  %10 = icmp ne i32 (%struct.rsnd_mod*)* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.rsnd_mod*, %struct.rsnd_mod** %3, align 8
  %13 = getelementptr inbounds %struct.rsnd_mod, %struct.rsnd_mod* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = bitcast {}** %15 to i32 (%struct.rsnd_mod*)**
  %17 = load i32 (%struct.rsnd_mod*)*, i32 (%struct.rsnd_mod*)** %16, align 8
  %18 = load %struct.rsnd_mod*, %struct.rsnd_mod** %3, align 8
  %19 = call i32 %17(%struct.rsnd_mod* %18)
  store i32 %19, i32* %2, align 4
  br label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %11
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
