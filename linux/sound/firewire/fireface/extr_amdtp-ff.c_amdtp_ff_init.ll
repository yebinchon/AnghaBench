; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_amdtp-ff.c_amdtp_ff_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_amdtp-ff.c_amdtp_ff_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtp_stream = type { i32 }
%struct.fw_unit = type { i32 }

@AMDTP_IN_STREAM = common dso_local global i32 0, align 4
@process_ir_ctx_payloads = common dso_local global i32 0, align 4
@process_it_ctx_payloads = common dso_local global i32 0, align 4
@CIP_NO_HEADER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdtp_ff_init(%struct.amdtp_stream* %0, %struct.fw_unit* %1, i32 %2) #0 {
  %4 = alloca %struct.amdtp_stream*, align 8
  %5 = alloca %struct.fw_unit*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdtp_stream* %0, %struct.amdtp_stream** %4, align 8
  store %struct.fw_unit* %1, %struct.fw_unit** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @AMDTP_IN_STREAM, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @process_ir_ctx_payloads, align 4
  store i32 %12, i32* %7, align 4
  br label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @process_it_ctx_payloads, align 4
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = load %struct.amdtp_stream*, %struct.amdtp_stream** %4, align 8
  %17 = load %struct.fw_unit*, %struct.fw_unit** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @CIP_NO_HEADER, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @amdtp_stream_init(%struct.amdtp_stream* %16, %struct.fw_unit* %17, i32 %18, i32 %19, i32 0, i32 %20, i32 4)
  ret i32 %21
}

declare dso_local i32 @amdtp_stream_init(%struct.amdtp_stream*, %struct.fw_unit*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
