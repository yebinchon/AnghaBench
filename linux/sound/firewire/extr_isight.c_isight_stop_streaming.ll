; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_isight.c_isight_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_isight.c_isight_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isight = type { i64, i32, i32, i32* }

@TCODE_WRITE_QUADLET_REQUEST = common dso_local global i32 0, align 4
@REG_AUDIO_ENABLE = common dso_local global i64 0, align 8
@FW_QUIET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isight*)* @isight_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isight_stop_streaming(%struct.isight* %0) #0 {
  %2 = alloca %struct.isight*, align 8
  %3 = alloca i64, align 8
  store %struct.isight* %0, %struct.isight** %2, align 8
  %4 = load %struct.isight*, %struct.isight** %2, align 8
  %5 = getelementptr inbounds %struct.isight, %struct.isight* %4, i32 0, i32 3
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %34

9:                                                ; preds = %1
  %10 = load %struct.isight*, %struct.isight** %2, align 8
  %11 = getelementptr inbounds %struct.isight, %struct.isight* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @fw_iso_context_stop(i32* %12)
  %14 = load %struct.isight*, %struct.isight** %2, align 8
  %15 = getelementptr inbounds %struct.isight, %struct.isight* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @fw_iso_context_destroy(i32* %16)
  %18 = load %struct.isight*, %struct.isight** %2, align 8
  %19 = getelementptr inbounds %struct.isight, %struct.isight* %18, i32 0, i32 3
  store i32* null, i32** %19, align 8
  %20 = load %struct.isight*, %struct.isight** %2, align 8
  %21 = getelementptr inbounds %struct.isight, %struct.isight* %20, i32 0, i32 2
  %22 = call i32 @fw_iso_resources_free(i32* %21)
  store i64 0, i64* %3, align 8
  %23 = load %struct.isight*, %struct.isight** %2, align 8
  %24 = getelementptr inbounds %struct.isight, %struct.isight* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %27 = load %struct.isight*, %struct.isight** %2, align 8
  %28 = getelementptr inbounds %struct.isight, %struct.isight* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @REG_AUDIO_ENABLE, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i32, i32* @FW_QUIET, align 4
  %33 = call i32 @snd_fw_transaction(i32 %25, i32 %26, i64 %31, i64* %3, i32 4, i32 %32)
  br label %34

34:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @fw_iso_context_stop(i32*) #1

declare dso_local i32 @fw_iso_context_destroy(i32*) #1

declare dso_local i32 @fw_iso_resources_free(i32*) #1

declare dso_local i32 @snd_fw_transaction(i32, i32, i64, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
