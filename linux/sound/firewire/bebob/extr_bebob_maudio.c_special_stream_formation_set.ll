; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_maudio.c_special_stream_formation_set.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_maudio.c_special_stream_formation_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_bebob = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.special_params* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.special_params = type { i64, i64, i32 }

@special_stream_formation_set.ch_table = internal constant [2 x [2 x [3 x i32]]] [[2 x [3 x i32]] [[3 x i32] [i32 6, i32 6, i32 4], [3 x i32] [i32 12, i32 8, i32 4]], [2 x [3 x i32]] [[3 x i32] [i32 10, i32 10, i32 2], [3 x i32] [i32 16, i32 12, i32 2]]], align 16
@SND_BEBOB_STRM_FMT_ENTRIES = common dso_local global i32 0, align 4
@AMDTP_IN_STREAM = common dso_local global i64 0, align 8
@AMDTP_OUT_STREAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_bebob*)* @special_stream_formation_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @special_stream_formation_set(%struct.snd_bebob* %0) #0 {
  %2 = alloca %struct.snd_bebob*, align 8
  %3 = alloca %struct.special_params*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_bebob* %0, %struct.snd_bebob** %2, align 8
  %6 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %7 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %6, i32 0, i32 2
  %8 = load %struct.special_params*, %struct.special_params** %7, align 8
  store %struct.special_params* %8, %struct.special_params** %3, align 8
  %9 = load i32, i32* @SND_BEBOB_STRM_FMT_ENTRIES, align 4
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %5, align 4
  %11 = load %struct.special_params*, %struct.special_params** %3, align 8
  %12 = getelementptr inbounds %struct.special_params, %struct.special_params* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = sub i32 %16, 2
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %15, %1
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %78, %18
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %81

23:                                               ; preds = %19
  %24 = load i64, i64* @AMDTP_IN_STREAM, align 8
  %25 = getelementptr inbounds [2 x [2 x [3 x i32]]], [2 x [2 x [3 x i32]]]* @special_stream_formation_set.ch_table, i64 0, i64 %24
  %26 = load %struct.special_params*, %struct.special_params** %3, align 8
  %27 = getelementptr inbounds %struct.special_params, %struct.special_params* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %25, i64 0, i64 %28
  %30 = load i32, i32* %4, align 4
  %31 = udiv i32 %30, 2
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %29, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %36 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = add i32 %38, 1
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i32 %34, i32* %42, align 4
  %43 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %44 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = add i32 %46, 1
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  %51 = load i64, i64* @AMDTP_OUT_STREAM, align 8
  %52 = getelementptr inbounds [2 x [2 x [3 x i32]]], [2 x [2 x [3 x i32]]]* @special_stream_formation_set.ch_table, i64 0, i64 %51
  %53 = load %struct.special_params*, %struct.special_params** %3, align 8
  %54 = getelementptr inbounds %struct.special_params, %struct.special_params* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %52, i64 0, i64 %55
  %57 = load i32, i32* %4, align 4
  %58 = udiv i32 %57, 2
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds [3 x i32], [3 x i32]* %56, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %63 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = add i32 %65, 1
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  store i32 %61, i32* %69, align 4
  %70 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %71 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = add i32 %73, 1
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  store i32 1, i32* %77, align 4
  br label %78

78:                                               ; preds = %23
  %79 = load i32, i32* %4, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %19

81:                                               ; preds = %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
