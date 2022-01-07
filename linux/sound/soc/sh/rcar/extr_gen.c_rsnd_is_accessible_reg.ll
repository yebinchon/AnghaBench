; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_gen.c_rsnd_is_accessible_reg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_gen.c_rsnd_is_accessible_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_priv = type { i32 }
%struct.rsnd_gen = type { i32* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"unsupported register access %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsnd_priv*, %struct.rsnd_gen*, i32)* @rsnd_is_accessible_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_is_accessible_reg(%struct.rsnd_priv* %0, %struct.rsnd_gen* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rsnd_priv*, align 8
  %6 = alloca %struct.rsnd_gen*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  store %struct.rsnd_priv* %0, %struct.rsnd_priv** %5, align 8
  store %struct.rsnd_gen* %1, %struct.rsnd_gen** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.rsnd_gen*, %struct.rsnd_gen** %6, align 8
  %10 = getelementptr inbounds %struct.rsnd_gen, %struct.rsnd_gen* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %7, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load %struct.rsnd_priv*, %struct.rsnd_priv** %5, align 8
  %19 = call %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv* %18)
  store %struct.device* %19, %struct.device** %8, align 8
  %20 = load %struct.device*, %struct.device** %8, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @dev_err(%struct.device* %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 0, i32* %4, align 4
  br label %24

23:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %24

24:                                               ; preds = %23, %17
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
