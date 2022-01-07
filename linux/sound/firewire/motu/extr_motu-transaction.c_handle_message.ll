; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-transaction.c_handle_message.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-transaction.c_handle_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }
%struct.fw_request = type { i32 }
%struct.snd_motu = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@TCODE_WRITE_QUADLET_REQUEST = common dso_local global i32 0, align 4
@RCODE_COMPLETE = common dso_local global i32 0, align 4
@RCODE_ADDRESS_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_card*, %struct.fw_request*, i32, i32, i32, i32, i64, i8*, i64, i8*)* @handle_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_message(%struct.fw_card* %0, %struct.fw_request* %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6, i8* %7, i64 %8, i8* %9) #0 {
  %11 = alloca %struct.fw_card*, align 8
  %12 = alloca %struct.fw_request*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.snd_motu*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  store %struct.fw_card* %0, %struct.fw_card** %11, align 8
  store %struct.fw_request* %1, %struct.fw_request** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i64 %6, i64* %17, align 8
  store i8* %7, i8** %18, align 8
  store i64 %8, i64* %19, align 8
  store i8* %9, i8** %20, align 8
  %24 = load i8*, i8** %20, align 8
  %25 = bitcast i8* %24 to %struct.snd_motu*
  store %struct.snd_motu* %25, %struct.snd_motu** %21, align 8
  %26 = load i8*, i8** %18, align 8
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %22, align 8
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %10
  %32 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %33 = load %struct.fw_request*, %struct.fw_request** %12, align 8
  %34 = load i32, i32* @RCODE_COMPLETE, align 4
  %35 = call i32 @fw_send_response(%struct.fw_card* %32, %struct.fw_request* %33, i32 %34)
  br label %72

36:                                               ; preds = %10
  %37 = load i64, i64* %17, align 8
  %38 = load %struct.snd_motu*, %struct.snd_motu** %21, align 8
  %39 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %37, %41
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i64, i64* %19, align 8
  %45 = icmp ne i64 %44, 4
  br i1 %45, label %46, label %51

46:                                               ; preds = %43, %36
  %47 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %48 = load %struct.fw_request*, %struct.fw_request** %12, align 8
  %49 = load i32, i32* @RCODE_ADDRESS_ERROR, align 4
  %50 = call i32 @fw_send_response(%struct.fw_card* %47, %struct.fw_request* %48, i32 %49)
  br label %72

51:                                               ; preds = %43
  %52 = load %struct.snd_motu*, %struct.snd_motu** %21, align 8
  %53 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %52, i32 0, i32 1
  %54 = load i64, i64* %23, align 8
  %55 = call i32 @spin_lock_irqsave(i32* %53, i64 %54)
  %56 = load i32*, i32** %22, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @be32_to_cpu(i32 %57)
  %59 = load %struct.snd_motu*, %struct.snd_motu** %21, align 8
  %60 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.snd_motu*, %struct.snd_motu** %21, align 8
  %62 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %61, i32 0, i32 1
  %63 = load i64, i64* %23, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  %65 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %66 = load %struct.fw_request*, %struct.fw_request** %12, align 8
  %67 = load i32, i32* @RCODE_COMPLETE, align 4
  %68 = call i32 @fw_send_response(%struct.fw_card* %65, %struct.fw_request* %66, i32 %67)
  %69 = load %struct.snd_motu*, %struct.snd_motu** %21, align 8
  %70 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %69, i32 0, i32 0
  %71 = call i32 @wake_up(i32* %70)
  br label %72

72:                                               ; preds = %51, %46, %31
  ret void
}

declare dso_local i32 @fw_send_response(%struct.fw_card*, %struct.fw_request*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
