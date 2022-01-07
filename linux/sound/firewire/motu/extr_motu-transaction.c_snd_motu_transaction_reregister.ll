; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-transaction.c_snd_motu_transaction_reregister.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-transaction.c_snd_motu_transaction_reregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_motu = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32* }
%struct.fw_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ASYNC_ADDR_HI = common dso_local global i32 0, align 4
@ASYNC_ADDR_LO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_motu_transaction_reregister(%struct.snd_motu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_motu*, align 8
  %4 = alloca %struct.fw_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_motu* %0, %struct.snd_motu** %3, align 8
  %7 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %8 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.fw_device* @fw_parent_device(i32 %9)
  store %struct.fw_device* %10, %struct.fw_device** %4, align 8
  %11 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %12 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %49

19:                                               ; preds = %1
  %20 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %21 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 16
  %26 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %27 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = ashr i32 %29, 32
  %31 = or i32 %25, %30
  %32 = call i32 @cpu_to_be32(i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %34 = load i32, i32* @ASYNC_ADDR_HI, align 4
  %35 = call i32 @snd_motu_transaction_write(%struct.snd_motu* %33, i32 %34, i32* %5, i32 4)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %19
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %49

40:                                               ; preds = %19
  %41 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %42 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @cpu_to_be32(i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %47 = load i32, i32* @ASYNC_ADDR_LO, align 4
  %48 = call i32 @snd_motu_transaction_write(%struct.snd_motu* %46, i32 %47, i32* %5, i32 4)
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %40, %38, %16
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.fw_device* @fw_parent_device(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @snd_motu_transaction_write(%struct.snd_motu*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
