; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-stream.c_amdtp_stream_update.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-stream.c_amdtp_stream_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtp_stream = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@CIP_SID_SHIFT = common dso_local global i32 0, align 4
@CIP_SID_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdtp_stream_update(%struct.amdtp_stream* %0) #0 {
  %2 = alloca %struct.amdtp_stream*, align 8
  store %struct.amdtp_stream* %0, %struct.amdtp_stream** %2, align 8
  %3 = load %struct.amdtp_stream*, %struct.amdtp_stream** %2, align 8
  %4 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.amdtp_stream*, %struct.amdtp_stream** %2, align 8
  %7 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.TYPE_4__* @fw_parent_device(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CIP_SID_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = load i32, i32* @CIP_SID_MASK, align 4
  %17 = and i32 %15, %16
  %18 = call i32 @WRITE_ONCE(i32 %5, i32 %17)
  ret void
}

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local %struct.TYPE_4__* @fw_parent_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
