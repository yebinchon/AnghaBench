; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/galaxy/extr_galaxy.c_galaxy_config.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/galaxy/extr_galaxy.c_galaxy_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_galaxy = type { i32, i64 }

@GALAXY_CONFIG_SIZE = common dso_local global i32 0, align 4
@GALAXY_CONFIG_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_galaxy*, i32)* @galaxy_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @galaxy_config(%struct.snd_galaxy* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_galaxy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_galaxy* %0, %struct.snd_galaxy** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @GALAXY_CONFIG_SIZE, align 4
  store i32 %7, i32* %5, align 4
  br label %8

8:                                                ; preds = %28, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %8
  %12 = load %struct.snd_galaxy*, %struct.snd_galaxy** %3, align 8
  %13 = getelementptr inbounds %struct.snd_galaxy, %struct.snd_galaxy* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %14, %16
  %18 = sub nsw i64 %17, 1
  %19 = call i32 @ioread8(i64 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.snd_galaxy*, %struct.snd_galaxy** %3, align 8
  %21 = getelementptr inbounds %struct.snd_galaxy, %struct.snd_galaxy* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = shl i32 %22, 8
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.snd_galaxy*, %struct.snd_galaxy** %3, align 8
  %27 = getelementptr inbounds %struct.snd_galaxy, %struct.snd_galaxy* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %11
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %5, align 4
  br label %8

31:                                               ; preds = %8
  %32 = load %struct.snd_galaxy*, %struct.snd_galaxy** %3, align 8
  %33 = getelementptr inbounds %struct.snd_galaxy, %struct.snd_galaxy* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @GALAXY_CONFIG_MASK, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load %struct.snd_galaxy*, %struct.snd_galaxy** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @galaxy_set_config(%struct.snd_galaxy* %39, i32 %40)
  ret void
}

declare dso_local i32 @ioread8(i64) #1

declare dso_local i32 @galaxy_set_config(%struct.snd_galaxy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
