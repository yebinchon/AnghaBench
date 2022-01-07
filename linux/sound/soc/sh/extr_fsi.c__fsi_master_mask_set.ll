; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c__fsi_master_mask_set.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c__fsi_master_mask_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsi_master*, i64, i64, i64)* @_fsi_master_mask_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_fsi_master_mask_set(%struct.fsi_master* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.fsi_master*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.fsi_master* %0, %struct.fsi_master** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.fsi_master*, %struct.fsi_master** %5, align 8
  %11 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %10, i32 0, i32 0
  %12 = load i64, i64* %9, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.fsi_master*, %struct.fsi_master** %5, align 8
  %15 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @__fsi_reg_mask_set(i64 %18, i64 %19, i64 %20)
  %22 = load %struct.fsi_master*, %struct.fsi_master** %5, align 8
  %23 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %22, i32 0, i32 0
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__fsi_reg_mask_set(i64, i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
