; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_main.c_restore_spdif_bits.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_main.c_restore_spdif_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ca0106 = type { i64*, i64* }

@SPCS0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ca0106*, i32)* @restore_spdif_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_spdif_bits(%struct.snd_ca0106* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_ca0106*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_ca0106* %0, %struct.snd_ca0106** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %6 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i64, i64* %7, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %13 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %12, i32 0, i32 1
  %14 = load i64*, i64** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %11, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %2
  %21 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %22 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %29 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  store i64 %27, i64* %33, align 8
  %34 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %35 = load i64, i64* @SPCS0, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = load %struct.snd_ca0106*, %struct.snd_ca0106** %3, align 8
  %40 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @snd_ca0106_ptr_write(%struct.snd_ca0106* %34, i64 %38, i32 0, i64 %45)
  br label %47

47:                                               ; preds = %20, %2
  ret void
}

declare dso_local i32 @snd_ca0106_ptr_write(%struct.snd_ca0106*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
