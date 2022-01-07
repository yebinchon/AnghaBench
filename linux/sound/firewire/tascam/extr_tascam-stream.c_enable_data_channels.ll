; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-stream.c_enable_data_channels.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-stream.c_enable_data_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_tscm = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@TCODE_WRITE_QUADLET_REQUEST = common dso_local global i32 0, align 4
@TSCM_ADDR_BASE = common dso_local global i64 0, align 8
@TSCM_OFFSET_TX_PCM_CHANNELS = common dso_local global i64 0, align 8
@TSCM_OFFSET_RX_PCM_CHANNELS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_tscm*)* @enable_data_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_data_channels(%struct.snd_tscm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_tscm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_tscm* %0, %struct.snd_tscm** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %21, %1
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %11 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %9, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @BIT(i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %6, align 4
  br label %8

24:                                               ; preds = %8
  %25 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %26 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, 65280
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %31, %24
  %35 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %36 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, 196608
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %41, %34
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @cpu_to_be32(i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %48 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %51 = load i64, i64* @TSCM_ADDR_BASE, align 8
  %52 = load i64, i64* @TSCM_OFFSET_TX_PCM_CHANNELS, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @snd_fw_transaction(i32 %49, i32 %50, i64 %53, i32* %4, i32 4, i32 0)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %44
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %2, align 4
  br label %107

59:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %73, %59
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %63 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ult i32 %61, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %60
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @BIT(i32 %69)
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %6, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %60

76:                                               ; preds = %60
  %77 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %78 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i32, i32* %5, align 4
  %85 = or i32 %84, 65280
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %83, %76
  %87 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %88 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load i32, i32* %5, align 4
  %95 = or i32 %94, 196608
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %93, %86
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @cpu_to_be32(i32 %97)
  store i32 %98, i32* %4, align 4
  %99 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %100 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %103 = load i64, i64* @TSCM_ADDR_BASE, align 8
  %104 = load i64, i64* @TSCM_OFFSET_RX_PCM_CHANNELS, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @snd_fw_transaction(i32 %101, i32 %102, i64 %105, i32* %4, i32 4, i32 0)
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %96, %57
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @snd_fw_transaction(i32, i32, i64, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
