; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/ext/extr_hdac_ext_stream.c_snd_hdac_ext_stream_spbcap_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/ext/extr_hdac_ext_stream.c_snd_hdac_ext_stream_spbcap_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_bus = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Address of SPB capability is NULL\0A\00", align 1
@AZX_REG_SPB_SPBFCCTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_hdac_ext_stream_spbcap_enable(%struct.hdac_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hdac_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hdac_bus* %0, %struct.hdac_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %9 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %14 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %39

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = shl i32 1, %18
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %26 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @AZX_REG_SPB_SPBFCCTL, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @snd_hdac_updatel(i32 %27, i32 %28, i32 %29, i32 %30)
  br label %39

32:                                               ; preds = %17
  %33 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %34 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @AZX_REG_SPB_SPBFCCTL, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @snd_hdac_updatel(i32 %35, i32 %36, i32 %37, i32 0)
  br label %39

39:                                               ; preds = %12, %32, %24
  ret void
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_hdac_updatel(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
