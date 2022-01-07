; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_digi00x-transaction.c_handle_message.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_digi00x-transaction.c_handle_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }
%struct.fw_request = type { i32 }
%struct.snd_dg00x = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@RCODE_COMPLETE = common dso_local global i32 0, align 4
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
  %21 = alloca %struct.snd_dg00x*, align 8
  %22 = alloca i32*, align 8
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
  %23 = load i8*, i8** %20, align 8
  %24 = bitcast i8* %23 to %struct.snd_dg00x*
  store %struct.snd_dg00x* %24, %struct.snd_dg00x** %21, align 8
  %25 = load i8*, i8** %18, align 8
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %22, align 8
  %27 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %28 = load %struct.fw_request*, %struct.fw_request** %12, align 8
  %29 = load i32, i32* @RCODE_COMPLETE, align 4
  %30 = call i32 @fw_send_response(%struct.fw_card* %27, %struct.fw_request* %28, i32 %29)
  %31 = load i64, i64* %17, align 8
  %32 = load %struct.snd_dg00x*, %struct.snd_dg00x** %21, align 8
  %33 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %31, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %10
  %38 = load %struct.snd_dg00x*, %struct.snd_dg00x** %21, align 8
  %39 = load i64, i64* %17, align 8
  %40 = load i32*, i32** %22, align 8
  %41 = call i32 @handle_unknown_message(%struct.snd_dg00x* %38, i64 %39, i32* %40)
  br label %42

42:                                               ; preds = %37, %10
  ret void
}

declare dso_local i32 @fw_send_response(%struct.fw_card*, %struct.fw_request*, i32) #1

declare dso_local i32 @handle_unknown_message(%struct.snd_dg00x*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
