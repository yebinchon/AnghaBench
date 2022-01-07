; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/ext/extr_hdac_ext_stream.c_snd_hdac_ext_stream_get_spbmaxfifo.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/ext/extr_hdac_ext_stream.c_snd_hdac_ext_stream_get_spbmaxfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_bus = type { i32, i32 }
%struct.hdac_ext_stream = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Address of SPB capability is NULL\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hdac_ext_stream_get_spbmaxfifo(%struct.hdac_bus* %0, %struct.hdac_ext_stream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdac_bus*, align 8
  %5 = alloca %struct.hdac_ext_stream*, align 8
  store %struct.hdac_bus* %0, %struct.hdac_bus** %4, align 8
  store %struct.hdac_ext_stream* %1, %struct.hdac_ext_stream** %5, align 8
  %6 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %7 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %12 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dev_err(i32 %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %22

17:                                               ; preds = %2
  %18 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %5, align 8
  %19 = getelementptr inbounds %struct.hdac_ext_stream, %struct.hdac_ext_stream* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @readl(i32 %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %17, %10
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
