; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp2_show_fw_status.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp2_show_fw_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm_adsp = type { i32 }

@ADSP2_SCRATCH0 = common dso_local global i32 0, align 4
@ADSP2_SCRATCH1 = common dso_local global i32 0, align 4
@ADSP2_SCRATCH2 = common dso_local global i32 0, align 4
@ADSP2_SCRATCH3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"FW SCRATCH 0:0x%x 1:0x%x 2:0x%x 3:0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm_adsp*)* @wm_adsp2_show_fw_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm_adsp2_show_fw_status(%struct.wm_adsp* %0) #0 {
  %2 = alloca %struct.wm_adsp*, align 8
  %3 = alloca [4 x i32], align 16
  store %struct.wm_adsp* %0, %struct.wm_adsp** %2, align 8
  %4 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %5 = load i32, i32* @ADSP2_SCRATCH0, align 4
  store i32 %5, i32* %4, align 4
  %6 = getelementptr inbounds i32, i32* %4, i64 1
  %7 = load i32, i32* @ADSP2_SCRATCH1, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds i32, i32* %6, i64 1
  %9 = load i32, i32* @ADSP2_SCRATCH2, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds i32, i32* %8, i64 1
  %11 = load i32, i32* @ADSP2_SCRATCH3, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.wm_adsp*, %struct.wm_adsp** %2, align 8
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %14 = call i32 @ARRAY_SIZE(i32* %13)
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %16 = call i32 @wm_adsp_read_fw_status(%struct.wm_adsp* %12, i32 %14, i32* %15)
  %17 = load %struct.wm_adsp*, %struct.wm_adsp** %2, align 8
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %19 = load i32, i32* %18, align 16
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @adsp_dbg(%struct.wm_adsp* %17, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %21, i32 %23, i32 %25)
  ret void
}

declare dso_local i32 @wm_adsp_read_fw_status(%struct.wm_adsp*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @adsp_dbg(%struct.wm_adsp*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
