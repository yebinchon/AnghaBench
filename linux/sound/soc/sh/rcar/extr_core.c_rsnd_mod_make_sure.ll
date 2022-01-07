; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_mod_make_sure.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_mod_make_sure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_priv = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"%s is not your expected module\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rsnd_mod_make_sure(%struct.rsnd_mod* %0, i32 %1) #0 {
  %3 = alloca %struct.rsnd_mod*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rsnd_priv*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.rsnd_mod*, %struct.rsnd_mod** %3, align 8
  %8 = getelementptr inbounds %struct.rsnd_mod, %struct.rsnd_mod* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.rsnd_mod*, %struct.rsnd_mod** %3, align 8
  %14 = call %struct.rsnd_priv* @rsnd_mod_to_priv(%struct.rsnd_mod* %13)
  store %struct.rsnd_priv* %14, %struct.rsnd_priv** %5, align 8
  %15 = load %struct.rsnd_priv*, %struct.rsnd_priv** %5, align 8
  %16 = call %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv* %15)
  store %struct.device* %16, %struct.device** %6, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = load %struct.rsnd_mod*, %struct.rsnd_mod** %3, align 8
  %19 = call i32 @rsnd_mod_name(%struct.rsnd_mod* %18)
  %20 = call i32 @dev_warn(%struct.device* %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %12, %2
  ret void
}

declare dso_local %struct.rsnd_priv* @rsnd_mod_to_priv(%struct.rsnd_mod*) #1

declare dso_local %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @rsnd_mod_name(%struct.rsnd_mod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
