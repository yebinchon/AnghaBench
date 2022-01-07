; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_digi00x-transaction.c_snd_dg00x_transaction_reregister.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_digi00x-transaction.c_snd_dg00x_transaction_reregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dg00x = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.fw_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@TCODE_WRITE_BLOCK_REQUEST = common dso_local global i32 0, align 4
@DG00X_ADDR_BASE = common dso_local global i64 0, align 8
@DG00X_OFFSET_MESSAGE_ADDR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_dg00x_transaction_reregister(%struct.snd_dg00x* %0) #0 {
  %2 = alloca %struct.snd_dg00x*, align 8
  %3 = alloca %struct.fw_device*, align 8
  %4 = alloca [2 x i32], align 4
  store %struct.snd_dg00x* %0, %struct.snd_dg00x** %2, align 8
  %5 = load %struct.snd_dg00x*, %struct.snd_dg00x** %2, align 8
  %6 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.fw_device* @fw_parent_device(i32 %7)
  store %struct.fw_device* %8, %struct.fw_device** %3, align 8
  %9 = load %struct.fw_device*, %struct.fw_device** %3, align 8
  %10 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %13, 16
  %15 = load %struct.snd_dg00x*, %struct.snd_dg00x** %2, align 8
  %16 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 32
  %20 = or i32 %14, %19
  %21 = call i32 @cpu_to_be32(i32 %20)
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 %21, i32* %22, align 4
  %23 = load %struct.snd_dg00x*, %struct.snd_dg00x** %2, align 8
  %24 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @cpu_to_be32(i32 %26)
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 %27, i32* %28, align 4
  %29 = load %struct.snd_dg00x*, %struct.snd_dg00x** %2, align 8
  %30 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @TCODE_WRITE_BLOCK_REQUEST, align 4
  %33 = load i64, i64* @DG00X_ADDR_BASE, align 8
  %34 = load i64, i64* @DG00X_OFFSET_MESSAGE_ADDR, align 8
  %35 = add nsw i64 %33, %34
  %36 = bitcast [2 x i32]* %4 to i32**
  %37 = call i32 @snd_fw_transaction(i32 %31, i32 %32, i64 %35, i32** %36, i32 8, i32 0)
  ret i32 %37
}

declare dso_local %struct.fw_device* @fw_parent_device(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @snd_fw_transaction(i32, i32, i64, i32**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
