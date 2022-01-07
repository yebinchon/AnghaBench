; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-transaction.c_snd_motu_transaction_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-transaction.c_snd_motu_transaction_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_address_region = type { i32, i32 }
%struct.snd_motu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32*, %struct.snd_motu* }

@snd_motu_transaction_register.resp_register_region = internal constant %struct.fw_address_region { i32 -536870912, i32 -536805377 }, align 4
@handle_message = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_motu_transaction_register(%struct.snd_motu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_motu*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_motu* %0, %struct.snd_motu** %3, align 8
  %5 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %6 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32 4, i32* %7, align 8
  %8 = load i32*, i32** @handle_message, align 8
  %9 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %10 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store i32* %8, i32** %11, align 8
  %12 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %13 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %14 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  store %struct.snd_motu* %12, %struct.snd_motu** %15, align 8
  %16 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %17 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %16, i32 0, i32 0
  %18 = call i32 @fw_core_add_address_handler(%struct.TYPE_3__* %17, %struct.fw_address_region* @snd_motu_transaction_register.resp_register_region)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %37

23:                                               ; preds = %1
  %24 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %25 = call i32 @snd_motu_transaction_reregister(%struct.snd_motu* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %30 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %29, i32 0, i32 0
  %31 = call i32 @fw_core_remove_address_handler(%struct.TYPE_3__* %30)
  %32 = load %struct.snd_motu*, %struct.snd_motu** %3, align 8
  %33 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %28, %23
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %21
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @fw_core_add_address_handler(%struct.TYPE_3__*, %struct.fw_address_region*) #1

declare dso_local i32 @snd_motu_transaction_reregister(%struct.snd_motu*) #1

declare dso_local i32 @fw_core_remove_address_handler(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
