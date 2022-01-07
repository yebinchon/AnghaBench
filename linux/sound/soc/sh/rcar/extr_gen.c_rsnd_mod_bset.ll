; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_gen.c_rsnd_mod_bset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_gen.c_rsnd_mod_bset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_priv = type { i32 }
%struct.device = type { i32 }
%struct.rsnd_gen = type { i32* }

@.str = private unnamed_addr constant [32 x i8] c"b %s - %-18s (%4d) : %08x/%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rsnd_mod_bset(%struct.rsnd_mod* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rsnd_mod*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rsnd_priv*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.rsnd_gen*, align 8
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %13 = call %struct.rsnd_priv* @rsnd_mod_to_priv(%struct.rsnd_mod* %12)
  store %struct.rsnd_priv* %13, %struct.rsnd_priv** %9, align 8
  %14 = load %struct.rsnd_priv*, %struct.rsnd_priv** %9, align 8
  %15 = call %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv* %14)
  store %struct.device* %15, %struct.device** %10, align 8
  %16 = load %struct.rsnd_priv*, %struct.rsnd_priv** %9, align 8
  %17 = call %struct.rsnd_gen* @rsnd_priv_to_gen(%struct.rsnd_priv* %16)
  store %struct.rsnd_gen* %17, %struct.rsnd_gen** %11, align 8
  %18 = load %struct.rsnd_priv*, %struct.rsnd_priv** %9, align 8
  %19 = load %struct.rsnd_gen*, %struct.rsnd_gen** %11, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @rsnd_is_accessible_reg(%struct.rsnd_priv* %18, %struct.rsnd_gen* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  br label %47

24:                                               ; preds = %4
  %25 = load %struct.rsnd_gen*, %struct.rsnd_gen** %11, align 8
  %26 = getelementptr inbounds %struct.rsnd_gen, %struct.rsnd_gen* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %33 = call i32 @rsnd_mod_id_cmd(%struct.rsnd_mod* %32)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @regmap_fields_force_update_bits(i32 %31, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.device*, %struct.device** %10, align 8
  %38 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %39 = call i32 @rsnd_mod_name(%struct.rsnd_mod* %38)
  %40 = load %struct.rsnd_gen*, %struct.rsnd_gen** %11, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @rsnd_reg_name(%struct.rsnd_gen* %40, i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @dev_dbg(%struct.device* %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42, i32 %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %24, %23
  ret void
}

declare dso_local %struct.rsnd_priv* @rsnd_mod_to_priv(%struct.rsnd_mod*) #1

declare dso_local %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv*) #1

declare dso_local %struct.rsnd_gen* @rsnd_priv_to_gen(%struct.rsnd_priv*) #1

declare dso_local i32 @rsnd_is_accessible_reg(%struct.rsnd_priv*, %struct.rsnd_gen*, i32) #1

declare dso_local i32 @regmap_fields_force_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @rsnd_mod_id_cmd(%struct.rsnd_mod*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rsnd_mod_name(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_reg_name(%struct.rsnd_gen*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
