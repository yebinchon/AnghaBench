; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-transaction.c_allocate_own_address.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-transaction.c_allocate_own_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ff = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i64, %struct.snd_ff*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.fw_address_region = type { i32, i64 }

@handle_midi_msg = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ff*, i32)* @allocate_own_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_own_address(%struct.snd_ff* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_ff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fw_address_region, align 8
  %6 = alloca i32, align 4
  store %struct.snd_ff* %0, %struct.snd_ff** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %8 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %13 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  store i64 %11, i64* %14, align 8
  %15 = load i32, i32* @handle_midi_msg, align 4
  %16 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %17 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 3
  store i32 %15, i32* %18, align 8
  %19 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %20 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %21 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  store %struct.snd_ff* %19, %struct.snd_ff** %22, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 4294967296, %24
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds %struct.fw_address_region, %struct.fw_address_region* %5, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.fw_address_region, %struct.fw_address_region* %5, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %32 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %30, %34
  %36 = getelementptr inbounds %struct.fw_address_region, %struct.fw_address_region* %5, i32 0, i32 1
  store i64 %35, i64* %36, align 8
  %37 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %38 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %37, i32 0, i32 0
  %39 = call i32 @fw_core_add_address_handler(%struct.TYPE_5__* %38, %struct.fw_address_region* %5)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %2
  %43 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %44 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load %struct.snd_ff*, %struct.snd_ff** %3, align 8
  %50 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %49, i32 0, i32 0
  %51 = call i32 @fw_core_remove_address_handler(%struct.TYPE_5__* %50)
  %52 = load i32, i32* @EAGAIN, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %48, %42
  br label %55

55:                                               ; preds = %54, %2
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @fw_core_add_address_handler(%struct.TYPE_5__*, %struct.fw_address_region*) #1

declare dso_local i32 @fw_core_remove_address_handler(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
