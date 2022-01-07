; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_prop_get_inmode.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_prop_get_inmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.madera_priv = type { %struct.madera* }
%struct.madera = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.madera_codec_pdata }
%struct.madera_codec_pdata = type { i32** }

@MADERA_MAX_INPUT = common dso_local global i32 0, align 4
@MADERA_MAX_MUXED_CHANNELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"cirrus,inmode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.madera_priv*)* @madera_prop_get_inmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @madera_prop_get_inmode(%struct.madera_priv* %0) #0 {
  %2 = alloca %struct.madera_priv*, align 8
  %3 = alloca %struct.madera*, align 8
  %4 = alloca %struct.madera_codec_pdata*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.madera_priv* %0, %struct.madera_priv** %2, align 8
  %12 = load %struct.madera_priv*, %struct.madera_priv** %2, align 8
  %13 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %12, i32 0, i32 0
  %14 = load %struct.madera*, %struct.madera** %13, align 8
  store %struct.madera* %14, %struct.madera** %3, align 8
  %15 = load %struct.madera*, %struct.madera** %3, align 8
  %16 = getelementptr inbounds %struct.madera, %struct.madera* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.madera_codec_pdata* %17, %struct.madera_codec_pdata** %4, align 8
  %18 = load i32, i32* @MADERA_MAX_INPUT, align 4
  %19 = load i32, i32* @MADERA_MAX_MUXED_CHANNELS, align 4
  %20 = mul nsw i32 %18, %19
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %5, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %6, align 8
  %24 = load %struct.madera_codec_pdata*, %struct.madera_codec_pdata** %4, align 8
  %25 = getelementptr inbounds %struct.madera_codec_pdata, %struct.madera_codec_pdata* %24, i32 0, i32 0
  %26 = load i32**, i32*** %25, align 8
  %27 = bitcast i32** %26 to i32*
  %28 = call i32 @ARRAY_SIZE(i32* %27)
  %29 = load i32, i32* @MADERA_MAX_INPUT, align 4
  %30 = icmp ne i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUILD_BUG_ON(i32 %31)
  %33 = load %struct.madera_codec_pdata*, %struct.madera_codec_pdata** %4, align 8
  %34 = getelementptr inbounds %struct.madera_codec_pdata, %struct.madera_codec_pdata* %33, i32 0, i32 0
  %35 = load i32**, i32*** %34, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @ARRAY_SIZE(i32* %37)
  %39 = load i32, i32* @MADERA_MAX_MUXED_CHANNELS, align 4
  %40 = icmp ne i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUILD_BUG_ON(i32 %41)
  %43 = load %struct.madera*, %struct.madera** %3, align 8
  %44 = getelementptr inbounds %struct.madera, %struct.madera* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @ARRAY_SIZE(i32* %23)
  %47 = load i32, i32* @MADERA_MAX_MUXED_CHANNELS, align 4
  %48 = call i32 @madera_get_variable_u32_array(i32 %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %23, i32 %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %1
  store i32 1, i32* %11, align 4
  br label %84

52:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %80, %52
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %83

57:                                               ; preds = %53
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %23, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.madera_codec_pdata*, %struct.madera_codec_pdata** %4, align 8
  %63 = getelementptr inbounds %struct.madera_codec_pdata, %struct.madera_codec_pdata* %62, i32 0, i32 0
  %64 = load i32**, i32*** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %61, i32* %71, align 4
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* @MADERA_MAX_MUXED_CHANNELS, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %57
  store i32 0, i32* %10, align 4
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %76, %57
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %53

83:                                               ; preds = %53
  store i32 0, i32* %11, align 4
  br label %84

84:                                               ; preds = %83, %51
  %85 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %85)
  %86 = load i32, i32* %11, align 4
  switch i32 %86, label %88 [
    i32 0, label %87
    i32 1, label %87
  ]

87:                                               ; preds = %84, %84
  ret void

88:                                               ; preds = %84
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BUILD_BUG_ON(i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @madera_get_variable_u32_array(i32, i8*, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
