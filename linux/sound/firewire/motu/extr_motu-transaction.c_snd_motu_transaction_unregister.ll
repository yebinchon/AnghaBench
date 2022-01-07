; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-transaction.c_snd_motu_transaction_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-transaction.c_snd_motu_transaction_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_motu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@ASYNC_ADDR_HI = common dso_local global i32 0, align 4
@ASYNC_ADDR_LO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_motu_transaction_unregister(%struct.snd_motu* %0) #0 {
  %2 = alloca %struct.snd_motu*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_motu* %0, %struct.snd_motu** %2, align 8
  %4 = load %struct.snd_motu*, %struct.snd_motu** %2, align 8
  %5 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.snd_motu*, %struct.snd_motu** %2, align 8
  %11 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %10, i32 0, i32 0
  %12 = call i32 @fw_core_remove_address_handler(%struct.TYPE_2__* %11)
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.snd_motu*, %struct.snd_motu** %2, align 8
  %15 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  %17 = call i32 @cpu_to_be32(i32 0)
  store i32 %17, i32* %3, align 4
  %18 = load %struct.snd_motu*, %struct.snd_motu** %2, align 8
  %19 = load i32, i32* @ASYNC_ADDR_HI, align 4
  %20 = call i32 @snd_motu_transaction_write(%struct.snd_motu* %18, i32 %19, i32* %3, i32 4)
  %21 = load %struct.snd_motu*, %struct.snd_motu** %2, align 8
  %22 = load i32, i32* @ASYNC_ADDR_LO, align 4
  %23 = call i32 @snd_motu_transaction_write(%struct.snd_motu* %21, i32 %22, i32* %3, i32 4)
  ret void
}

declare dso_local i32 @fw_core_remove_address_handler(%struct.TYPE_2__*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @snd_motu_transaction_write(%struct.snd_motu*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
