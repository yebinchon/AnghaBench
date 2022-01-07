; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_uer.c_vx_write_one_cbit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_uer.c_vx_write_one_cbit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }

@CSUER = common dso_local global i32 0, align 4
@RUER = common dso_local global i32 0, align 4
@XX_UER_CBITS_OFFSET_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vx_core*, i32, i32)* @vx_write_one_cbit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vx_write_one_cbit(%struct.vx_core* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vx_core*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vx_core* %0, %struct.vx_core** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %13 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %16 = call i64 @vx_is_pcmcia(%struct.vx_core* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %3
  %19 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %20 = load i32, i32* @CSUER, align 4
  %21 = call i32 @vx_outb(%struct.vx_core* %19, i32 %20, i32 0)
  %22 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %23 = load i32, i32* @RUER, align 4
  %24 = load i32, i32* %6, align 4
  %25 = shl i32 %24, 7
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @XX_UER_CBITS_OFFSET_MASK, align 4
  %28 = and i32 %26, %27
  %29 = or i32 %25, %28
  %30 = call i32 @vx_outb(%struct.vx_core* %22, i32 %23, i32 %29)
  br label %44

31:                                               ; preds = %3
  %32 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %33 = load i32, i32* @CSUER, align 4
  %34 = call i32 @vx_outl(%struct.vx_core* %32, i32 %33, i32 0)
  %35 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %36 = load i32, i32* @RUER, align 4
  %37 = load i32, i32* %6, align 4
  %38 = shl i32 %37, 7
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @XX_UER_CBITS_OFFSET_MASK, align 4
  %41 = and i32 %39, %40
  %42 = or i32 %38, %41
  %43 = call i32 @vx_outl(%struct.vx_core* %35, i32 %36, i32 %42)
  br label %44

44:                                               ; preds = %31, %18
  %45 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %46 = getelementptr inbounds %struct.vx_core, %struct.vx_core* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @vx_is_pcmcia(%struct.vx_core*) #1

declare dso_local i32 @vx_outb(%struct.vx_core*, i32, i32) #1

declare dso_local i32 @vx_outl(%struct.vx_core*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
