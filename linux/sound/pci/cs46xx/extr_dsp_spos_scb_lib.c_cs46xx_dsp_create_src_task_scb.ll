; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_create_src_task_scb.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_create_src_task_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { %struct.TYPE_4__*, %struct.dsp_spos_instance* }
%struct.TYPE_4__ = type { i32 }
%struct.dsp_spos_instance = type { i32*, i32, i32 }
%struct.dsp_scb_descriptor = type { i32 }
%struct.dsp_src_task_scb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__, i64, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"dsp_spos: setting %s rate to %u\0A\00", align 1
@GOF_PER_SEC = common dso_local global i32 0, align 4
@RSCONFIG_SAMPLE_16STEREO = common dso_local global i64 0, align 8
@RSCONFIG_MODULO_32 = common dso_local global i64 0, align 8
@RSCONFIG_MODULO_8 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"S16_UPSRC\00", align 1
@SYMBOL_CODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"dsp_spos: symbol S16_UPSRC not found\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"DMAREADER\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dsp_scb_descriptor* @cs46xx_dsp_create_src_task_scb(%struct.snd_cs46xx* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.dsp_scb_descriptor* %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.dsp_scb_descriptor*, align 8
  %11 = alloca %struct.snd_cs46xx*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.dsp_scb_descriptor*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.dsp_spos_instance*, align 8
  %21 = alloca %struct.dsp_scb_descriptor*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.dsp_src_task_scb, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store %struct.dsp_scb_descriptor* %6, %struct.dsp_scb_descriptor** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %28 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %11, align 8
  %29 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %28, i32 0, i32 1
  %30 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %29, align 8
  store %struct.dsp_spos_instance* %30, %struct.dsp_spos_instance** %20, align 8
  %31 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %11, align 8
  %32 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %12, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @dev_dbg(i32 %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %36, i32 %37)
  %39 = load i32, i32* %13, align 4
  %40 = shl i32 %39, 16
  store i32 %40, i32* %22, align 4
  %41 = load i32, i32* %22, align 4
  %42 = udiv i32 %41, 48000
  store i32 %42, i32* %24, align 4
  %43 = load i32, i32* %24, align 4
  %44 = mul i32 %43, 48000
  %45 = load i32, i32* %22, align 4
  %46 = sub i32 %45, %44
  store i32 %46, i32* %22, align 4
  %47 = load i32, i32* %22, align 4
  %48 = shl i32 %47, 10
  store i32 %48, i32* %22, align 4
  %49 = load i32, i32* %24, align 4
  %50 = shl i32 %49, 10
  store i32 %50, i32* %24, align 4
  %51 = load i32, i32* %22, align 4
  %52 = udiv i32 %51, 48000
  store i32 %52, i32* %23, align 4
  %53 = load i32, i32* %23, align 4
  %54 = load i32, i32* %24, align 4
  %55 = add i32 %54, %53
  store i32 %55, i32* %24, align 4
  %56 = load i32, i32* %23, align 4
  %57 = mul i32 %56, 48000
  %58 = load i32, i32* %22, align 4
  %59 = sub i32 %58, %57
  store i32 %59, i32* %22, align 4
  %60 = load i32, i32* %22, align 4
  %61 = load i32, i32* @GOF_PER_SEC, align 4
  %62 = udiv i32 %60, %61
  store i32 %62, i32* %25, align 4
  %63 = load i32, i32* %25, align 4
  %64 = load i32, i32* @GOF_PER_SEC, align 4
  %65 = mul i32 %63, %64
  %66 = load i32, i32* %22, align 4
  %67 = sub i32 %66, %65
  store i32 %67, i32* %22, align 4
  %68 = load i32, i32* %22, align 4
  store i32 %68, i32* %26, align 4
  %69 = getelementptr inbounds %struct.dsp_src_task_scb, %struct.dsp_src_task_scb* %27, i32 0, i32 0
  store i32 40, i32* %69, align 8
  %70 = getelementptr inbounds %struct.dsp_src_task_scb, %struct.dsp_src_task_scb* %27, i32 0, i32 1
  store i32 200, i32* %70, align 4
  %71 = getelementptr inbounds %struct.dsp_src_task_scb, %struct.dsp_src_task_scb* %27, i32 0, i32 2
  store i32 21845, i32* %71, align 8
  %72 = getelementptr inbounds %struct.dsp_src_task_scb, %struct.dsp_src_task_scb* %27, i32 0, i32 3
  store i32 0, i32* %72, align 4
  %73 = getelementptr inbounds %struct.dsp_src_task_scb, %struct.dsp_src_task_scb* %27, i32 0, i32 4
  store i32 0, i32* %73, align 8
  %74 = getelementptr inbounds %struct.dsp_src_task_scb, %struct.dsp_src_task_scb* %27, i32 0, i32 5
  store i32 0, i32* %74, align 4
  %75 = getelementptr inbounds %struct.dsp_src_task_scb, %struct.dsp_src_task_scb* %27, i32 0, i32 6
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %75, align 8
  %77 = getelementptr inbounds %struct.dsp_src_task_scb, %struct.dsp_src_task_scb* %27, i32 0, i32 7
  store i32 1, i32* %77, align 4
  %78 = getelementptr inbounds %struct.dsp_src_task_scb, %struct.dsp_src_task_scb* %27, i32 0, i32 8
  %79 = load i32, i32* %25, align 4
  store i32 %79, i32* %78, align 8
  %80 = getelementptr inbounds %struct.dsp_src_task_scb, %struct.dsp_src_task_scb* %27, i32 0, i32 9
  %81 = load i32, i32* %26, align 4
  store i32 %81, i32* %80, align 4
  %82 = getelementptr inbounds %struct.dsp_src_task_scb, %struct.dsp_src_task_scb* %27, i32 0, i32 10
  %83 = load i64, i64* @RSCONFIG_SAMPLE_16STEREO, align 8
  %84 = load i64, i64* @RSCONFIG_MODULO_32, align 8
  %85 = add nsw i64 %83, %84
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %82, align 8
  %87 = getelementptr inbounds %struct.dsp_src_task_scb, %struct.dsp_src_task_scb* %27, i32 0, i32 11
  store i32 0, i32* %87, align 4
  %88 = getelementptr inbounds %struct.dsp_src_task_scb, %struct.dsp_src_task_scb* %27, i32 0, i32 12
  %89 = load i32, i32* %15, align 4
  store i32 %89, i32* %88, align 8
  %90 = getelementptr inbounds %struct.dsp_src_task_scb, %struct.dsp_src_task_scb* %27, i32 0, i32 13
  store i32 0, i32* %90, align 4
  %91 = getelementptr inbounds %struct.dsp_src_task_scb, %struct.dsp_src_task_scb* %27, i32 0, i32 14
  store i32 128, i32* %91, align 8
  %92 = getelementptr inbounds %struct.dsp_src_task_scb, %struct.dsp_src_task_scb* %27, i32 0, i32 15
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %93, 96
  store i32 %94, i32* %92, align 4
  %95 = getelementptr inbounds %struct.dsp_src_task_scb, %struct.dsp_src_task_scb* %27, i32 0, i32 16
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  store i32 0, i32* %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  store i32 0, i32* %97, align 4
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  store i32 0, i32* %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 3
  store i32 0, i32* %99, align 4
  %100 = getelementptr inbounds %struct.dsp_src_task_scb, %struct.dsp_src_task_scb* %27, i32 0, i32 17
  %101 = load i64, i64* @RSCONFIG_SAMPLE_16STEREO, align 8
  %102 = load i64, i64* @RSCONFIG_MODULO_8, align 8
  %103 = add nsw i64 %101, %102
  store i64 %103, i64* %100, align 8
  %104 = getelementptr inbounds %struct.dsp_src_task_scb, %struct.dsp_src_task_scb* %27, i32 0, i32 18
  %105 = load i32, i32* %14, align 4
  %106 = shl i32 %105, 16
  store i32 %106, i32* %104, align 8
  %107 = getelementptr inbounds %struct.dsp_src_task_scb, %struct.dsp_src_task_scb* %27, i32 0, i32 19
  %108 = load i32, i32* %24, align 4
  store i32 %108, i32* %107, align 4
  %109 = getelementptr inbounds %struct.dsp_src_task_scb, %struct.dsp_src_task_scb* %27, i32 0, i32 20
  %110 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %20, align 8
  %111 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 65535, %112
  store i32 %113, i32* %109, align 8
  %114 = getelementptr inbounds %struct.dsp_src_task_scb, %struct.dsp_src_task_scb* %27, i32 0, i32 21
  store i32 0, i32* %114, align 4
  %115 = getelementptr inbounds %struct.dsp_src_task_scb, %struct.dsp_src_task_scb* %27, i32 0, i32 22
  store i32 0, i32* %115, align 8
  %116 = getelementptr inbounds %struct.dsp_src_task_scb, %struct.dsp_src_task_scb* %27, i32 0, i32 23
  store i64 0, i64* %116, align 8
  %117 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %20, align 8
  %118 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %139

121:                                              ; preds = %9
  %122 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %11, align 8
  %123 = load i32, i32* @SYMBOL_CODE, align 4
  %124 = call i32* @cs46xx_dsp_lookup_symbol(%struct.snd_cs46xx* %122, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %123)
  %125 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %20, align 8
  %126 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %125, i32 0, i32 0
  store i32* %124, i32** %126, align 8
  %127 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %20, align 8
  %128 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = icmp eq i32* %129, null
  br i1 %130, label %131, label %138

131:                                              ; preds = %121
  %132 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %11, align 8
  %133 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %132, i32 0, i32 0
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @dev_err(i32 %136, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store %struct.dsp_scb_descriptor* null, %struct.dsp_scb_descriptor** %10, align 8
  br label %173

138:                                              ; preds = %121
  br label %139

139:                                              ; preds = %138, %9
  %140 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %11, align 8
  %141 = load i32, i32* %14, align 4
  %142 = call i32 @_dsp_clear_sample_buffer(%struct.snd_cs46xx* %140, i32 %141, i32 8)
  %143 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %11, align 8
  %144 = load i32, i32* %15, align 4
  %145 = call i32 @_dsp_clear_sample_buffer(%struct.snd_cs46xx* %143, i32 %144, i32 32)
  %146 = load i32, i32* %19, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %160

148:                                              ; preds = %139
  %149 = load i32, i32* %13, align 4
  %150 = icmp ne i32 %149, 48000
  %151 = zext i1 %150 to i32
  %152 = call i32 @snd_BUG_ON(i32 %151)
  %153 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %11, align 8
  %154 = load i8*, i8** %12, align 8
  %155 = bitcast %struct.dsp_src_task_scb* %27 to i32*
  %156 = load i32, i32* %16, align 4
  %157 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %17, align 8
  %158 = load i32, i32* %18, align 4
  %159 = call %struct.dsp_scb_descriptor* @cs46xx_dsp_create_generic_scb(%struct.snd_cs46xx* %153, i8* %154, i32* %155, i32 %156, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %struct.dsp_scb_descriptor* %157, i32 %158)
  store %struct.dsp_scb_descriptor* %159, %struct.dsp_scb_descriptor** %21, align 8
  br label %171

160:                                              ; preds = %139
  %161 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %11, align 8
  %162 = load i8*, i8** %12, align 8
  %163 = bitcast %struct.dsp_src_task_scb* %27 to i32*
  %164 = load i32, i32* %16, align 4
  %165 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %20, align 8
  %166 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %17, align 8
  %169 = load i32, i32* %18, align 4
  %170 = call %struct.dsp_scb_descriptor* @_dsp_create_generic_scb(%struct.snd_cs46xx* %161, i8* %162, i32* %163, i32 %164, i32* %167, %struct.dsp_scb_descriptor* %168, i32 %169)
  store %struct.dsp_scb_descriptor* %170, %struct.dsp_scb_descriptor** %21, align 8
  br label %171

171:                                              ; preds = %160, %148
  %172 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %21, align 8
  store %struct.dsp_scb_descriptor* %172, %struct.dsp_scb_descriptor** %10, align 8
  br label %173

173:                                              ; preds = %171, %131
  %174 = load %struct.dsp_scb_descriptor*, %struct.dsp_scb_descriptor** %10, align 8
  ret %struct.dsp_scb_descriptor* %174
}

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i32) #1

declare dso_local i32* @cs46xx_dsp_lookup_symbol(%struct.snd_cs46xx*, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @_dsp_clear_sample_buffer(%struct.snd_cs46xx*, i32, i32) #1

declare dso_local i32 @snd_BUG_ON(i32) #1

declare dso_local %struct.dsp_scb_descriptor* @cs46xx_dsp_create_generic_scb(%struct.snd_cs46xx*, i8*, i32*, i32, i8*, %struct.dsp_scb_descriptor*, i32) #1

declare dso_local %struct.dsp_scb_descriptor* @_dsp_create_generic_scb(%struct.snd_cs46xx*, i8*, i32*, i32, i32*, %struct.dsp_scb_descriptor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
