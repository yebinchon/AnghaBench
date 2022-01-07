; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/vx222/extr_vx222_ops.c_vx2_reg_addr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/vx222/extr_vx222_ops.c_vx2_reg_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }
%struct.snd_vx222 = type { i64* }

@vx2_reg_index = common dso_local global i64* null, align 8
@vx2_reg_offset = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vx_core*, i32)* @vx2_reg_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vx2_reg_addr(%struct.vx_core* %0, i32 %1) #0 {
  %3 = alloca %struct.vx_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_vx222*, align 8
  store %struct.vx_core* %0, %struct.vx_core** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vx_core*, %struct.vx_core** %3, align 8
  %7 = call %struct.snd_vx222* @to_vx222(%struct.vx_core* %6)
  store %struct.snd_vx222* %7, %struct.snd_vx222** %5, align 8
  %8 = load %struct.snd_vx222*, %struct.snd_vx222** %5, align 8
  %9 = getelementptr inbounds %struct.snd_vx222, %struct.snd_vx222* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = load i64*, i64** @vx2_reg_index, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i64, i64* %10, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = load i64*, i64** @vx2_reg_offset, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %17, %22
  ret i64 %23
}

declare dso_local %struct.snd_vx222* @to_vx222(%struct.vx_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
