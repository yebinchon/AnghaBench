; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-ipc.c_sst_byt_fw_ready.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-ipc.c_sst_byt_fw_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_byt = type { i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"ipc: DSP is ready 0x%llX\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sst_byt*, i32)* @sst_byt_fw_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sst_byt_fw_ready(%struct.sst_byt* %0, i32 %1) #0 {
  %3 = alloca %struct.sst_byt*, align 8
  %4 = alloca i32, align 4
  store %struct.sst_byt* %0, %struct.sst_byt** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sst_byt*, %struct.sst_byt** %3, align 8
  %6 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @dev_dbg(i32 %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.sst_byt*, %struct.sst_byt** %3, align 8
  %11 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load %struct.sst_byt*, %struct.sst_byt** %3, align 8
  %13 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %12, i32 0, i32 1
  %14 = call i32 @wake_up(i32* %13)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
