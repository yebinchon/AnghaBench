; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_gen.c_rsnd_mod_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_gen.c_rsnd_mod_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_priv = type { i32 }
%struct.device = type { i32 }
%struct.rsnd_gen = type { i32* }

@.str = private unnamed_addr constant [27 x i8] c"r %s - %-18s (%4d) : %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsnd_mod_read(%struct.rsnd_mod* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rsnd_mod*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rsnd_priv*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.rsnd_gen*, align 8
  %9 = alloca i32, align 4
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %11 = call %struct.rsnd_priv* @rsnd_mod_to_priv(%struct.rsnd_mod* %10)
  store %struct.rsnd_priv* %11, %struct.rsnd_priv** %6, align 8
  %12 = load %struct.rsnd_priv*, %struct.rsnd_priv** %6, align 8
  %13 = call %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv* %12)
  store %struct.device* %13, %struct.device** %7, align 8
  %14 = load %struct.rsnd_priv*, %struct.rsnd_priv** %6, align 8
  %15 = call %struct.rsnd_gen* @rsnd_priv_to_gen(%struct.rsnd_priv* %14)
  store %struct.rsnd_gen* %15, %struct.rsnd_gen** %8, align 8
  %16 = load %struct.rsnd_priv*, %struct.rsnd_priv** %6, align 8
  %17 = load %struct.rsnd_gen*, %struct.rsnd_gen** %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @rsnd_is_accessible_reg(%struct.rsnd_priv* %16, %struct.rsnd_gen* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

22:                                               ; preds = %2
  %23 = load %struct.rsnd_gen*, %struct.rsnd_gen** %8, align 8
  %24 = getelementptr inbounds %struct.rsnd_gen, %struct.rsnd_gen* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %31 = call i32 @rsnd_mod_id_cmd(%struct.rsnd_mod* %30)
  %32 = call i32 @regmap_fields_read(i32 %29, i32 %31, i32* %9)
  %33 = load %struct.device*, %struct.device** %7, align 8
  %34 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %35 = call i32 @rsnd_mod_name(%struct.rsnd_mod* %34)
  %36 = load %struct.rsnd_gen*, %struct.rsnd_gen** %8, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @rsnd_reg_name(%struct.rsnd_gen* %36, i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @dev_dbg(%struct.device* %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %22, %21
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.rsnd_priv* @rsnd_mod_to_priv(%struct.rsnd_mod*) #1

declare dso_local %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv*) #1

declare dso_local %struct.rsnd_gen* @rsnd_priv_to_gen(%struct.rsnd_priv*) #1

declare dso_local i32 @rsnd_is_accessible_reg(%struct.rsnd_priv*, %struct.rsnd_gen*, i32) #1

declare dso_local i32 @regmap_fields_read(i32, i32, i32*) #1

declare dso_local i32 @rsnd_mod_id_cmd(%struct.rsnd_mod*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @rsnd_mod_name(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_reg_name(%struct.rsnd_gen*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
