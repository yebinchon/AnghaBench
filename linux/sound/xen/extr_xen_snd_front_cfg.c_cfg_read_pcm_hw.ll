; ModuleID = '/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_cfg.c_cfg_read_pcm_hw.c'
source_filename = "/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_cfg.c_cfg_read_pcm_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hardware = type { i32, i32, i64, i64, i64, i64, i32, i32 }

@SND_DRV_PCM_HW_DEFAULT = common dso_local global %struct.snd_pcm_hardware zeroinitializer, align 8
@XENSND_FIELD_CHANNELS_MIN = common dso_local global i32 0, align 4
@XENSND_FIELD_CHANNELS_MAX = common dso_local global i32 0, align 4
@XBT_NIL = common dso_local global i32 0, align 4
@XENSND_FIELD_SAMPLE_RATES = common dso_local global i32 0, align 4
@XENSND_FIELD_SAMPLE_FORMATS = common dso_local global i32 0, align 4
@XENSND_FIELD_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware*)* @cfg_read_pcm_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfg_read_pcm_hw(i8* %0, %struct.snd_pcm_hardware* %1, %struct.snd_pcm_hardware* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_pcm_hardware*, align 8
  %6 = alloca %struct.snd_pcm_hardware*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.snd_pcm_hardware* %1, %struct.snd_pcm_hardware** %5, align 8
  store %struct.snd_pcm_hardware* %2, %struct.snd_pcm_hardware** %6, align 8
  %11 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %12 = icmp ne %struct.snd_pcm_hardware* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %6, align 8
  %15 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %5, align 8
  %16 = bitcast %struct.snd_pcm_hardware* %14 to i8*
  %17 = bitcast %struct.snd_pcm_hardware* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 48, i1 false)
  br label %21

18:                                               ; preds = %3
  %19 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %6, align 8
  %20 = bitcast %struct.snd_pcm_hardware* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 bitcast (%struct.snd_pcm_hardware* @SND_DRV_PCM_HW_DEFAULT to i8*), i64 48, i1 false)
  br label %21

21:                                               ; preds = %18, %13
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* @XENSND_FIELD_CHANNELS_MIN, align 4
  %24 = call i8* @xenbus_read_unsigned(i8* %22, i32 %23, i32 0)
  %25 = ptrtoint i8* %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %6, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  br label %32

32:                                               ; preds = %28, %21
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* @XENSND_FIELD_CHANNELS_MAX, align 4
  %35 = call i8* @xenbus_read_unsigned(i8* %33, i32 %34, i32 0)
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %6, align 8
  %42 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %39, %32
  %44 = load i32, i32* @XBT_NIL, align 4
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* @XENSND_FIELD_SAMPLE_RATES, align 4
  %47 = call i8* @xenbus_read(i32 %44, i8* %45, i32 %46, i32* %10)
  store i8* %47, i8** %7, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @IS_ERR(i8* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %43
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i8*, i8** %4, align 8
  %55 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %6, align 8
  %56 = call i32 @cfg_hw_rates(i8* %52, i32 %53, i8* %54, %struct.snd_pcm_hardware* %55)
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @kfree(i8* %57)
  br label %59

59:                                               ; preds = %51, %43
  %60 = load i32, i32* @XBT_NIL, align 4
  %61 = load i8*, i8** %4, align 8
  %62 = load i32, i32* @XENSND_FIELD_SAMPLE_FORMATS, align 4
  %63 = call i8* @xenbus_read(i32 %60, i8* %61, i32 %62, i32* %10)
  store i8* %63, i8** %7, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @IS_ERR(i8* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %59
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i8*, i8** %4, align 8
  %71 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %6, align 8
  %72 = call i32 @cfg_formats(i8* %68, i32 %69, i8* %70, %struct.snd_pcm_hardware* %71)
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @kfree(i8* %73)
  br label %75

75:                                               ; preds = %67, %59
  %76 = load i8*, i8** %4, align 8
  %77 = load i32, i32* @XENSND_FIELD_BUFFER_SIZE, align 4
  %78 = call i8* @xenbus_read_unsigned(i8* %76, i32 %77, i32 0)
  %79 = ptrtoint i8* %78 to i64
  store i64 %79, i64* %9, align 8
  %80 = load i64, i64* %9, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load i64, i64* %9, align 8
  %84 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %6, align 8
  %85 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %84, i32 0, i32 2
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %82, %75
  %87 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %6, align 8
  %88 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %6, align 8
  %91 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp sgt i32 %89, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %86
  %95 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %6, align 8
  %96 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %6, align 8
  %99 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %94, %86
  %101 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %6, align 8
  %102 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %6, align 8
  %105 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = icmp sgt i64 %103, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %100
  %109 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %6, align 8
  %110 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %6, align 8
  %113 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %112, i32 0, i32 3
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %108, %100
  %115 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %6, align 8
  %116 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %6, align 8
  %119 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %118, i32 0, i32 5
  store i64 %117, i64* %119, align 8
  %120 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %6, align 8
  %121 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %6, align 8
  %124 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = udiv i64 %122, %126
  %128 = trunc i64 %127 to i32
  %129 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %6, align 8
  %130 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %129, i32 0, i32 6
  store i32 %128, i32* %130, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @xenbus_read_unsigned(i8*, i32, i32) #2

declare dso_local i8* @xenbus_read(i32, i8*, i32, i32*) #2

declare dso_local i32 @IS_ERR(i8*) #2

declare dso_local i32 @cfg_hw_rates(i8*, i32, i8*, %struct.snd_pcm_hardware*) #2

declare dso_local i32 @kfree(i8*) #2

declare dso_local i32 @cfg_formats(i8*, i32, i8*, %struct.snd_pcm_hardware*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
