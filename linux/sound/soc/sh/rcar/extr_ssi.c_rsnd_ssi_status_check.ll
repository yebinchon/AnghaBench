; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_ssi_status_check.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_ssi_status_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_priv = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"%s status check failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsnd_mod*, i32)* @rsnd_ssi_status_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsnd_ssi_status_check(%struct.rsnd_mod* %0, i32 %1) #0 {
  %3 = alloca %struct.rsnd_mod*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rsnd_priv*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.rsnd_mod*, %struct.rsnd_mod** %3, align 8
  %10 = call %struct.rsnd_priv* @rsnd_mod_to_priv(%struct.rsnd_mod* %9)
  store %struct.rsnd_priv* %10, %struct.rsnd_priv** %5, align 8
  %11 = load %struct.rsnd_priv*, %struct.rsnd_priv** %5, align 8
  %12 = call %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv* %11)
  store %struct.device* %12, %struct.device** %6, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %26, %2
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 1024
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load %struct.rsnd_mod*, %struct.rsnd_mod** %3, align 8
  %18 = call i32 @rsnd_ssi_status_get(%struct.rsnd_mod* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %34

24:                                               ; preds = %16
  %25 = call i32 @udelay(i32 5)
  br label %26

26:                                               ; preds = %24
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %8, align 4
  br label %13

29:                                               ; preds = %13
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = load %struct.rsnd_mod*, %struct.rsnd_mod** %3, align 8
  %32 = call i32 @rsnd_mod_name(%struct.rsnd_mod* %31)
  %33 = call i32 @dev_warn(%struct.device* %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %29, %23
  ret void
}

declare dso_local %struct.rsnd_priv* @rsnd_mod_to_priv(%struct.rsnd_mod*) #1

declare dso_local %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv*) #1

declare dso_local i32 @rsnd_ssi_status_get(%struct.rsnd_mod*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @rsnd_mod_name(%struct.rsnd_mod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
