; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_dapm_create_or_share_kcontrol.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_dapm_create_or_share_kcontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i8*, %struct.snd_kcontrol**, %struct.TYPE_5__*, %struct.snd_soc_dapm_context* }
%struct.snd_kcontrol = type { i32 }
%struct.TYPE_5__ = type { i8* }
%struct.snd_soc_dapm_context = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.snd_card* }
%struct.snd_card = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@dapm_kcontrol_free = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"ASoC: failed to add widget %s dapm kcontrol %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, i32)* @dapm_create_or_share_kcontrol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dapm_create_or_share_kcontrol(%struct.snd_soc_dapm_widget* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dapm_context*, align 8
  %7 = alloca %struct.snd_card*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_kcontrol*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %18 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %17, i32 0, i32 4
  %19 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %18, align 8
  store %struct.snd_soc_dapm_context* %19, %struct.snd_soc_dapm_context** %6, align 8
  %20 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %21 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.snd_card*, %struct.snd_card** %23, align 8
  store %struct.snd_card* %24, %struct.snd_card** %7, align 8
  store i8* null, i8** %14, align 8
  store i32 0, i32* %16, align 4
  %25 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %26 = call i8* @soc_dapm_prefix(%struct.snd_soc_dapm_context* %25)
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %9, align 8
  br label %35

34:                                               ; preds = %2
  store i64 0, i64* %9, align 8
  br label %35

35:                                               ; preds = %34, %29
  %36 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %37 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %38 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %39 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %38, i32 0, i32 3
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = call i32 @dapm_is_shared_kcontrol(%struct.snd_soc_dapm_context* %36, %struct.snd_soc_dapm_widget* %37, %struct.TYPE_5__* %43, %struct.snd_kcontrol** %11)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %11, align 8
  %46 = icmp ne %struct.snd_kcontrol* %45, null
  br i1 %46, label %155, label %47

47:                                               ; preds = %35
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %62

51:                                               ; preds = %47
  %52 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %53 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %58 [
    i32 128, label %55
    i32 133, label %55
    i32 129, label %55
    i32 134, label %55
    i32 130, label %55
    i32 132, label %56
    i32 135, label %57
    i32 131, label %57
  ]

55:                                               ; preds = %51, %51, %51, %51, %51
  store i32 1, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %61

56:                                               ; preds = %51
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %61

57:                                               ; preds = %51, %51
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %61

58:                                               ; preds = %51
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %174

61:                                               ; preds = %57, %56, %55
  br label %62

62:                                               ; preds = %61, %50
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %91

65:                                               ; preds = %62
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %91

68:                                               ; preds = %65
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %71 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load i64, i64* %9, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %76 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %75, i32 0, i32 3
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i8* @kasprintf(i32 %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %74, i8* %82)
  store i8* %83, i8** %14, align 8
  %84 = load i8*, i8** %14, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %68
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %174

89:                                               ; preds = %68
  %90 = load i8*, i8** %14, align 8
  store i8* %90, i8** %15, align 8
  br label %110

91:                                               ; preds = %65, %62
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  store i8* null, i8** %14, align 8
  %95 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %96 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = load i64, i64* %9, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %15, align 8
  br label %109

100:                                              ; preds = %91
  store i8* null, i8** %14, align 8
  %101 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %102 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %101, i32 0, i32 3
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  store i8* %108, i8** %15, align 8
  br label %109

109:                                              ; preds = %100, %94
  br label %110

110:                                              ; preds = %109, %89
  %111 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %112 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %111, i32 0, i32 3
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i64 %115
  %117 = load i8*, i8** %15, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = call %struct.snd_kcontrol* @snd_soc_cnew(%struct.TYPE_5__* %116, i32* null, i8* %117, i8* %118)
  store %struct.snd_kcontrol* %119, %struct.snd_kcontrol** %11, align 8
  %120 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %11, align 8
  %121 = icmp ne %struct.snd_kcontrol* %120, null
  br i1 %121, label %125, label %122

122:                                              ; preds = %110
  %123 = load i32, i32* @ENOMEM, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %16, align 4
  br label %170

125:                                              ; preds = %110
  %126 = load i32, i32* @dapm_kcontrol_free, align 4
  %127 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %11, align 8
  %128 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 4
  %129 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %130 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %11, align 8
  %131 = load i8*, i8** %15, align 8
  %132 = call i32 @dapm_kcontrol_data_alloc(%struct.snd_soc_dapm_widget* %129, %struct.snd_kcontrol* %130, i8* %131)
  store i32 %132, i32* %16, align 4
  %133 = load i32, i32* %16, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %125
  %136 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %11, align 8
  %137 = call i32 @snd_ctl_free_one(%struct.snd_kcontrol* %136)
  br label %170

138:                                              ; preds = %125
  %139 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %140 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %11, align 8
  %141 = call i32 @snd_ctl_add(%struct.snd_card* %139, %struct.snd_kcontrol* %140)
  store i32 %141, i32* %16, align 4
  %142 = load i32, i32* %16, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %138
  %145 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %146 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %149 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = load i8*, i8** %15, align 8
  %152 = load i32, i32* %16, align 4
  %153 = call i32 @dev_err(i32 %147, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %150, i8* %151, i32 %152)
  br label %170

154:                                              ; preds = %138
  br label %155

155:                                              ; preds = %154, %35
  %156 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %11, align 8
  %157 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %158 = call i32 @dapm_kcontrol_add_widget(%struct.snd_kcontrol* %156, %struct.snd_soc_dapm_widget* %157)
  store i32 %158, i32* %16, align 4
  %159 = load i32, i32* %16, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %155
  %162 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %11, align 8
  %163 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %164 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %163, i32 0, i32 2
  %165 = load %struct.snd_kcontrol**, %struct.snd_kcontrol*** %164, align 8
  %166 = load i32, i32* %5, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.snd_kcontrol*, %struct.snd_kcontrol** %165, i64 %167
  store %struct.snd_kcontrol* %162, %struct.snd_kcontrol** %168, align 8
  br label %169

169:                                              ; preds = %161, %155
  br label %170

170:                                              ; preds = %169, %144, %135, %122
  %171 = load i8*, i8** %14, align 8
  %172 = call i32 @kfree(i8* %171)
  %173 = load i32, i32* %16, align 4
  store i32 %173, i32* %3, align 4
  br label %174

174:                                              ; preds = %170, %86, %58
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i8* @soc_dapm_prefix(%struct.snd_soc_dapm_context*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @dapm_is_shared_kcontrol(%struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_widget*, %struct.TYPE_5__*, %struct.snd_kcontrol**) #1

declare dso_local i8* @kasprintf(i32, i8*, i8*, i8*) #1

declare dso_local %struct.snd_kcontrol* @snd_soc_cnew(%struct.TYPE_5__*, i32*, i8*, i8*) #1

declare dso_local i32 @dapm_kcontrol_data_alloc(%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i8*) #1

declare dso_local i32 @snd_ctl_free_one(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, %struct.snd_kcontrol*) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @dapm_kcontrol_add_widget(%struct.snd_kcontrol*, %struct.snd_soc_dapm_widget*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
