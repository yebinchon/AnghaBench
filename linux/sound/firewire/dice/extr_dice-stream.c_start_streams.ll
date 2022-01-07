; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-stream.c_start_streams.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-stream.c_start_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dice = type { i32, %struct.fw_iso_resources*, %struct.amdtp_stream*, %struct.fw_iso_resources*, %struct.amdtp_stream*, i32 }
%struct.fw_iso_resources = type { i32 }
%struct.amdtp_stream = type { i32 }
%struct.reg_params = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@AMDTP_IN_STREAM = common dso_local global i32 0, align 4
@TX_ISOCHRONOUS = common dso_local global i64 0, align 8
@RX_ISOCHRONOUS = common dso_local global i64 0, align 8
@TX_SPEED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_dice*, i32, i32, %struct.reg_params*)* @start_streams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_streams(%struct.snd_dice* %0, i32 %1, i32 %2, %struct.reg_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_dice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.reg_params*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.amdtp_stream*, align 8
  %14 = alloca %struct.fw_iso_resources*, align 8
  %15 = alloca i32, align 4
  store %struct.snd_dice* %0, %struct.snd_dice** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.reg_params* %3, %struct.reg_params** %9, align 8
  %16 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %17 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.TYPE_2__* @fw_parent_device(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %129, %4
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.reg_params*, %struct.reg_params** %9, align 8
  %25 = getelementptr inbounds %struct.reg_params, %struct.reg_params* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %132

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @AMDTP_IN_STREAM, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %34 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %33, i32 0, i32 4
  %35 = load %struct.amdtp_stream*, %struct.amdtp_stream** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %35, i64 %37
  store %struct.amdtp_stream* %38, %struct.amdtp_stream** %13, align 8
  %39 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %40 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %39, i32 0, i32 3
  %41 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %41, i64 %43
  store %struct.fw_iso_resources* %44, %struct.fw_iso_resources** %14, align 8
  br label %58

45:                                               ; preds = %28
  %46 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %47 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %46, i32 0, i32 2
  %48 = load %struct.amdtp_stream*, %struct.amdtp_stream** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %48, i64 %50
  store %struct.amdtp_stream* %51, %struct.amdtp_stream** %13, align 8
  %52 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %53 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %52, i32 0, i32 1
  %54 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %54, i64 %56
  store %struct.fw_iso_resources* %57, %struct.fw_iso_resources** %14, align 8
  br label %58

58:                                               ; preds = %45, %32
  %59 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %14, align 8
  %60 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @cpu_to_be32(i32 %61)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @AMDTP_IN_STREAM, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %58
  %67 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %68 = load %struct.reg_params*, %struct.reg_params** %9, align 8
  %69 = getelementptr inbounds %struct.reg_params, %struct.reg_params* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %11, align 4
  %72 = mul nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* @TX_ISOCHRONOUS, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @snd_dice_transaction_write_tx(%struct.snd_dice* %67, i64 %75, i32* %15, i32 4)
  store i32 %76, i32* %12, align 4
  br label %88

77:                                               ; preds = %58
  %78 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %79 = load %struct.reg_params*, %struct.reg_params** %9, align 8
  %80 = getelementptr inbounds %struct.reg_params, %struct.reg_params* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %11, align 4
  %83 = mul nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* @RX_ISOCHRONOUS, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @snd_dice_transaction_write_rx(%struct.snd_dice* %78, i64 %86, i32* %15, i32 4)
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %77, %66
  %89 = load i32, i32* %12, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %5, align 4
  br label %133

93:                                               ; preds = %88
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @AMDTP_IN_STREAM, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %115

97:                                               ; preds = %93
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @cpu_to_be32(i32 %98)
  store i32 %99, i32* %15, align 4
  %100 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %101 = load %struct.reg_params*, %struct.reg_params** %9, align 8
  %102 = getelementptr inbounds %struct.reg_params, %struct.reg_params* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %11, align 4
  %105 = mul nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* @TX_SPEED, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @snd_dice_transaction_write_tx(%struct.snd_dice* %100, i64 %108, i32* %15, i32 4)
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %97
  %113 = load i32, i32* %12, align 4
  store i32 %113, i32* %5, align 4
  br label %133

114:                                              ; preds = %97
  br label %115

115:                                              ; preds = %114, %93
  %116 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %117 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %116, i32 0, i32 0
  %118 = load %struct.amdtp_stream*, %struct.amdtp_stream** %13, align 8
  %119 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %14, align 8
  %120 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @amdtp_domain_add_stream(i32* %117, %struct.amdtp_stream* %118, i32 %121, i32 %122)
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %115
  %127 = load i32, i32* %12, align 4
  store i32 %127, i32* %5, align 4
  br label %133

128:                                              ; preds = %115
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %11, align 4
  br label %22

132:                                              ; preds = %22
  store i32 0, i32* %5, align 4
  br label %133

133:                                              ; preds = %132, %126, %112, %91
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local %struct.TYPE_2__* @fw_parent_device(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @snd_dice_transaction_write_tx(%struct.snd_dice*, i64, i32*, i32) #1

declare dso_local i32 @snd_dice_transaction_write_rx(%struct.snd_dice*, i64, i32*, i32) #1

declare dso_local i32 @amdtp_domain_add_stream(i32*, %struct.amdtp_stream*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
