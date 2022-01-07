; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-stream.c_keep_dual_resources.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-stream.c_keep_dual_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dice = type { i32**, i32*, i32**, i32*, %struct.TYPE_2__*, %struct.fw_iso_resources*, %struct.amdtp_stream*, %struct.fw_iso_resources*, %struct.amdtp_stream* }
%struct.TYPE_2__ = type { i32 }
%struct.fw_iso_resources = type { i32 }
%struct.amdtp_stream = type { i32 }
%struct.reg_params = type { i32, i32 }

@AMDTP_IN_STREAM = common dso_local global i32 0, align 4
@TX_NUMBER_AUDIO = common dso_local global i64 0, align 8
@RX_NUMBER_AUDIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"cache mismatch: pcm: %u:%u, midi: %u:%u\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_dice*, i32, i32, %struct.reg_params*)* @keep_dual_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keep_dual_resources(%struct.snd_dice* %0, i32 %1, i32 %2, %struct.reg_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_dice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.reg_params*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca %struct.amdtp_stream*, align 8
  %15 = alloca %struct.fw_iso_resources*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.snd_dice* %0, %struct.snd_dice** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.reg_params* %3, %struct.reg_params** %9, align 8
  %20 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @snd_dice_stream_get_rate_mode(%struct.snd_dice* %20, i32 %21, i32* %10)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %5, align 4
  br label %170

27:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %166, %27
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.reg_params*, %struct.reg_params** %9, align 8
  %31 = getelementptr inbounds %struct.reg_params, %struct.reg_params* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %169

34:                                               ; preds = %28
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @AMDTP_IN_STREAM, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %80

38:                                               ; preds = %34
  %39 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %40 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %39, i32 0, i32 8
  %41 = load %struct.amdtp_stream*, %struct.amdtp_stream** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %41, i64 %43
  store %struct.amdtp_stream* %44, %struct.amdtp_stream** %14, align 8
  %45 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %46 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %45, i32 0, i32 7
  %47 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %47, i64 %49
  store %struct.fw_iso_resources* %50, %struct.fw_iso_resources** %15, align 8
  %51 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %52 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %51, i32 0, i32 0
  %53 = load i32**, i32*** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %16, align 4
  %62 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %63 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %17, align 4
  %69 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %70 = load %struct.reg_params*, %struct.reg_params** %9, align 8
  %71 = getelementptr inbounds %struct.reg_params, %struct.reg_params* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %11, align 4
  %74 = mul nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* @TX_NUMBER_AUDIO, align 8
  %77 = add nsw i64 %75, %76
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %79 = call i32 @snd_dice_transaction_read_tx(%struct.snd_dice* %69, i64 %77, i32* %78, i32 8)
  store i32 %79, i32* %12, align 4
  br label %122

80:                                               ; preds = %34
  %81 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %82 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %81, i32 0, i32 6
  %83 = load %struct.amdtp_stream*, %struct.amdtp_stream** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %83, i64 %85
  store %struct.amdtp_stream* %86, %struct.amdtp_stream** %14, align 8
  %87 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %88 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %87, i32 0, i32 5
  %89 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %89, i64 %91
  store %struct.fw_iso_resources* %92, %struct.fw_iso_resources** %15, align 8
  %93 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %94 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %93, i32 0, i32 2
  %95 = load i32**, i32*** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %95, i64 %97
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %16, align 4
  %104 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %105 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %17, align 4
  %111 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %112 = load %struct.reg_params*, %struct.reg_params** %9, align 8
  %113 = getelementptr inbounds %struct.reg_params, %struct.reg_params* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %11, align 4
  %116 = mul nsw i32 %114, %115
  %117 = sext i32 %116 to i64
  %118 = load i64, i64* @RX_NUMBER_AUDIO, align 8
  %119 = add nsw i64 %117, %118
  %120 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %121 = call i32 @snd_dice_transaction_read_rx(%struct.snd_dice* %111, i64 %119, i32* %120, i32 8)
  store i32 %121, i32* %12, align 4
  br label %122

122:                                              ; preds = %80, %38
  %123 = load i32, i32* %12, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = load i32, i32* %12, align 4
  store i32 %126, i32* %5, align 4
  br label %170

127:                                              ; preds = %122
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @be32_to_cpu(i32 %129)
  store i32 %130, i32* %18, align 4
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @be32_to_cpu(i32 %132)
  store i32 %133, i32* %19, align 4
  %134 = load i32, i32* %18, align 4
  %135 = load i32, i32* %16, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %141, label %137

137:                                              ; preds = %127
  %138 = load i32, i32* %19, align 4
  %139 = load i32, i32* %17, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %153

141:                                              ; preds = %137, %127
  %142 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %143 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %142, i32 0, i32 4
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32, i32* %18, align 4
  %147 = load i32, i32* %16, align 4
  %148 = load i32, i32* %19, align 4
  %149 = load i32, i32* %17, align 4
  %150 = call i32 @dev_info(i32* %145, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %146, i32 %147, i32 %148, i32 %149)
  %151 = load i32, i32* @EPROTO, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %5, align 4
  br label %170

153:                                              ; preds = %137
  %154 = load %struct.snd_dice*, %struct.snd_dice** %6, align 8
  %155 = load %struct.amdtp_stream*, %struct.amdtp_stream** %14, align 8
  %156 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %15, align 8
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* %18, align 4
  %159 = load i32, i32* %19, align 4
  %160 = call i32 @keep_resources(%struct.snd_dice* %154, %struct.amdtp_stream* %155, %struct.fw_iso_resources* %156, i32 %157, i32 %158, i32 %159)
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* %12, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %153
  %164 = load i32, i32* %12, align 4
  store i32 %164, i32* %5, align 4
  br label %170

165:                                              ; preds = %153
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %11, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %11, align 4
  br label %28

169:                                              ; preds = %28
  store i32 0, i32* %5, align 4
  br label %170

170:                                              ; preds = %169, %163, %141, %125, %25
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

declare dso_local i32 @snd_dice_stream_get_rate_mode(%struct.snd_dice*, i32, i32*) #1

declare dso_local i32 @snd_dice_transaction_read_tx(%struct.snd_dice*, i64, i32*, i32) #1

declare dso_local i32 @snd_dice_transaction_read_rx(%struct.snd_dice*, i64, i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @keep_resources(%struct.snd_dice*, %struct.amdtp_stream*, %struct.fw_iso_resources*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
