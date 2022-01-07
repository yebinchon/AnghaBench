; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_add_imux_item.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_add_imux_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.hda_input_mux = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@HDA_MAX_NUM_INPUTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"hda_codec: Too many imux items!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_add_imux_item(%struct.hda_codec* %0, %struct.hda_input_mux* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hda_codec*, align 8
  %8 = alloca %struct.hda_input_mux*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %7, align 8
  store %struct.hda_input_mux* %1, %struct.hda_input_mux** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.hda_input_mux*, %struct.hda_input_mux** %8, align 8
  %15 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @HDA_MAX_NUM_INPUTS, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %5
  %20 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %21 = call i32 @codec_err(%struct.hda_codec* %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %103

24:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %49, %24
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.hda_input_mux*, %struct.hda_input_mux** %8, align 8
  %28 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %25
  %32 = load i8*, i8** %9, align 8
  %33 = load %struct.hda_input_mux*, %struct.hda_input_mux** %8, align 8
  %34 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = call i32 @strncmp(i8* %32, i32 %40, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %31
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %13, align 4
  br label %48

48:                                               ; preds = %45, %31
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %12, align 4
  br label %25

52:                                               ; preds = %25
  %53 = load i32*, i32** %11, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %13, align 4
  %57 = load i32*, i32** %11, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32, i32* %13, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %58
  %62 = load %struct.hda_input_mux*, %struct.hda_input_mux** %8, align 8
  %63 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load %struct.hda_input_mux*, %struct.hda_input_mux** %8, align 8
  %66 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %9, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @snprintf(i32 %71, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %72, i32 %73)
  br label %88

75:                                               ; preds = %58
  %76 = load %struct.hda_input_mux*, %struct.hda_input_mux** %8, align 8
  %77 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load %struct.hda_input_mux*, %struct.hda_input_mux** %8, align 8
  %80 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i8*, i8** %9, align 8
  %87 = call i32 @strlcpy(i32 %85, i8* %86, i32 4)
  br label %88

88:                                               ; preds = %75, %61
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.hda_input_mux*, %struct.hda_input_mux** %8, align 8
  %91 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load %struct.hda_input_mux*, %struct.hda_input_mux** %8, align 8
  %94 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  store i32 %89, i32* %98, align 4
  %99 = load %struct.hda_input_mux*, %struct.hda_input_mux** %8, align 8
  %100 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  store i32 0, i32* %6, align 4
  br label %103

103:                                              ; preds = %88, %19
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i32 @codec_err(%struct.hda_codec*, i8*) #1

declare dso_local i32 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
