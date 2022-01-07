; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_prop_get_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_prop_get_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.madera_priv = type { %struct.madera* }
%struct.madera = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.madera_codec_pdata }
%struct.madera_codec_pdata = type { i32*, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [16 x i8] c"cirrus,out-mono\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"cirrus,max-channels-clocked\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"cirrus,pdm-fmt\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"cirrus,pdm-mute\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"cirrus,dmic-ref\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.madera_priv*)* @madera_prop_get_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @madera_prop_get_pdata(%struct.madera_priv* %0) #0 {
  %2 = alloca %struct.madera_priv*, align 8
  %3 = alloca %struct.madera*, align 8
  %4 = alloca %struct.madera_codec_pdata*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.madera_priv* %0, %struct.madera_priv** %2, align 8
  %9 = load %struct.madera_priv*, %struct.madera_priv** %2, align 8
  %10 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %9, i32 0, i32 0
  %11 = load %struct.madera*, %struct.madera** %10, align 8
  store %struct.madera* %11, %struct.madera** %3, align 8
  %12 = load %struct.madera*, %struct.madera** %3, align 8
  %13 = getelementptr inbounds %struct.madera, %struct.madera* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.madera_codec_pdata* %14, %struct.madera_codec_pdata** %4, align 8
  %15 = load %struct.madera_codec_pdata*, %struct.madera_codec_pdata** %4, align 8
  %16 = getelementptr inbounds %struct.madera_codec_pdata, %struct.madera_codec_pdata* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @ARRAY_SIZE(i32* %17)
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %5, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %6, align 8
  %22 = load %struct.madera_priv*, %struct.madera_priv** %2, align 8
  %23 = call i32 @madera_prop_get_inmode(%struct.madera_priv* %22)
  %24 = load %struct.madera*, %struct.madera** %3, align 8
  %25 = getelementptr inbounds %struct.madera, %struct.madera* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ARRAY_SIZE(i32* %21)
  %28 = call i32 @madera_get_variable_u32_array(i32 %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %21, i32 %27, i32 1)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %51, %31
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %21, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = load %struct.madera_codec_pdata*, %struct.madera_codec_pdata** %4, align 8
  %46 = getelementptr inbounds %struct.madera_codec_pdata, %struct.madera_codec_pdata* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %44, i32* %50, align 4
  br label %51

51:                                               ; preds = %36
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %32

54:                                               ; preds = %32
  br label %55

55:                                               ; preds = %54, %1
  %56 = load %struct.madera*, %struct.madera** %3, align 8
  %57 = getelementptr inbounds %struct.madera, %struct.madera* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.madera_codec_pdata*, %struct.madera_codec_pdata** %4, align 8
  %60 = getelementptr inbounds %struct.madera_codec_pdata, %struct.madera_codec_pdata* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.madera_codec_pdata*, %struct.madera_codec_pdata** %4, align 8
  %63 = getelementptr inbounds %struct.madera_codec_pdata, %struct.madera_codec_pdata* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @ARRAY_SIZE(i32* %64)
  %66 = call i32 @madera_get_variable_u32_array(i32 %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32* %61, i32 %65, i32 1)
  %67 = load %struct.madera*, %struct.madera** %3, align 8
  %68 = getelementptr inbounds %struct.madera, %struct.madera* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.madera_codec_pdata*, %struct.madera_codec_pdata** %4, align 8
  %71 = getelementptr inbounds %struct.madera_codec_pdata, %struct.madera_codec_pdata* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.madera_codec_pdata*, %struct.madera_codec_pdata** %4, align 8
  %74 = getelementptr inbounds %struct.madera_codec_pdata, %struct.madera_codec_pdata* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @ARRAY_SIZE(i32* %75)
  %77 = call i32 @madera_get_variable_u32_array(i32 %69, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %72, i32 %76, i32 1)
  %78 = load %struct.madera*, %struct.madera** %3, align 8
  %79 = getelementptr inbounds %struct.madera, %struct.madera* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.madera_codec_pdata*, %struct.madera_codec_pdata** %4, align 8
  %82 = getelementptr inbounds %struct.madera_codec_pdata, %struct.madera_codec_pdata* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.madera_codec_pdata*, %struct.madera_codec_pdata** %4, align 8
  %85 = getelementptr inbounds %struct.madera_codec_pdata, %struct.madera_codec_pdata* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @ARRAY_SIZE(i32* %86)
  %88 = call i32 @madera_get_variable_u32_array(i32 %80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32* %83, i32 %87, i32 1)
  %89 = load %struct.madera*, %struct.madera** %3, align 8
  %90 = getelementptr inbounds %struct.madera, %struct.madera* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.madera_codec_pdata*, %struct.madera_codec_pdata** %4, align 8
  %93 = getelementptr inbounds %struct.madera_codec_pdata, %struct.madera_codec_pdata* %92, i32 0, i32 4
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.madera_codec_pdata*, %struct.madera_codec_pdata** %4, align 8
  %96 = getelementptr inbounds %struct.madera_codec_pdata, %struct.madera_codec_pdata* %95, i32 0, i32 4
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @ARRAY_SIZE(i32* %97)
  %99 = call i32 @madera_get_variable_u32_array(i32 %91, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* %94, i32 %98, i32 1)
  %100 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %100)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @madera_prop_get_inmode(%struct.madera_priv*) #1

declare dso_local i32 @madera_get_variable_u32_array(i32, i8*, i32*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
