; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_stream.c_seek_msu_sync_input_plug.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_stream.c_seek_msu_sync_input_plug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_bebob = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@AVC_PLUG_INFO_BUF_BYTES = common dso_local global i32 0, align 4
@AVC_BRIDGECO_ADDR_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"fail to get info for MSU in/out plugs: %d\0A\00", align 1
@AVC_BRIDGECO_PLUG_DIR_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"fail to get type for MSU in plug %d: %d\0A\00", align 1
@AVC_BRIDGECO_PLUG_TYPE_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_bebob*)* @seek_msu_sync_input_plug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seek_msu_sync_input_plug(%struct.snd_bebob* %0) #0 {
  %2 = alloca %struct.snd_bebob*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_bebob* %0, %struct.snd_bebob** %2, align 8
  %9 = load i32, i32* @AVC_PLUG_INFO_BUF_BYTES, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = load i32, i32* @AVC_BRIDGECO_ADDR_BYTES, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %16 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %17 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = call i32 @avc_general_get_plug_info(%struct.TYPE_3__* %18, i32 12, i32 0, i32 0, i32* %12)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %24 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %8, align 4
  %28 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %26, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %68

29:                                               ; preds = %1
  %30 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %31 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %30, i32 0, i32 0
  store i32 -1, i32* %31, align 8
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %64, %29
  %33 = load i32, i32* %6, align 4
  %34 = getelementptr inbounds i32, i32* %12, i64 0
  %35 = load i32, i32* %34, align 16
  %36 = icmp ult i32 %33, %35
  br i1 %36, label %37, label %67

37:                                               ; preds = %32
  %38 = load i32, i32* @AVC_BRIDGECO_PLUG_DIR_IN, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @avc_bridgeco_fill_msu_addr(i32* %15, i32 %38, i32 %39)
  %41 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %42 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = call i32 @avc_bridgeco_get_plug_type(%struct.TYPE_3__* %43, i32* %15, i32* %7)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %37
  %48 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %49 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %51, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53)
  br label %68

55:                                               ; preds = %37
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @AVC_BRIDGECO_PLUG_TYPE_SYNC, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %62 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %67

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %6, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %32

67:                                               ; preds = %59, %32
  br label %68

68:                                               ; preds = %67, %47, %22
  %69 = load i32, i32* %8, align 4
  %70 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %70)
  ret i32 %69
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @avc_general_get_plug_info(%struct.TYPE_3__*, i32, i32, i32, i32*) #2

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #2

declare dso_local i32 @avc_bridgeco_fill_msu_addr(i32*, i32, i32) #2

declare dso_local i32 @avc_bridgeco_get_plug_type(%struct.TYPE_3__*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
