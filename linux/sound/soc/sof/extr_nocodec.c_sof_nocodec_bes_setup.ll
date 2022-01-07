; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_nocodec.c_sof_nocodec_bes_setup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_nocodec.c_sof_nocodec_bes_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snd_sof_dsp_ops = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.snd_soc_dai_link = type { i32, i32, i32, i32, i32, i32, i32, %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component*, i32 }
%struct.snd_soc_dai_link_component = type { i8*, i8* }
%struct.snd_soc_card = type { i32, %struct.snd_soc_dai_link* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"NoCodec-%d\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"snd-soc-dummy-dai\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"snd-soc-dummy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.snd_sof_dsp_ops*, %struct.snd_soc_dai_link*, i32, %struct.snd_soc_card*)* @sof_nocodec_bes_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sof_nocodec_bes_setup(%struct.device* %0, %struct.snd_sof_dsp_ops* %1, %struct.snd_soc_dai_link* %2, i32 %3, %struct.snd_soc_card* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.snd_sof_dsp_ops*, align 8
  %9 = alloca %struct.snd_soc_dai_link*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_soc_card*, align 8
  %12 = alloca %struct.snd_soc_dai_link_component*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.snd_sof_dsp_ops* %1, %struct.snd_sof_dsp_ops** %8, align 8
  store %struct.snd_soc_dai_link* %2, %struct.snd_soc_dai_link** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.snd_soc_card* %4, %struct.snd_soc_card** %11, align 8
  %14 = load %struct.snd_sof_dsp_ops*, %struct.snd_sof_dsp_ops** %8, align 8
  %15 = icmp ne %struct.snd_sof_dsp_ops* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %5
  %17 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %9, align 8
  %18 = icmp ne %struct.snd_soc_dai_link* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.snd_soc_card*, %struct.snd_soc_card** %11, align 8
  %21 = icmp ne %struct.snd_soc_card* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19, %16, %5
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %165

25:                                               ; preds = %19
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %155, %25
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %158

30:                                               ; preds = %26
  %31 = load %struct.device*, %struct.device** %7, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.snd_soc_dai_link_component* @devm_kzalloc(%struct.device* %31, i32 48, i32 %32)
  store %struct.snd_soc_dai_link_component* %33, %struct.snd_soc_dai_link_component** %12, align 8
  %34 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %12, align 8
  %35 = icmp ne %struct.snd_soc_dai_link_component* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %165

39:                                               ; preds = %30
  %40 = load %struct.device*, %struct.device** %7, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @devm_kasprintf(%struct.device* %40, i32 %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %9, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %44, i64 %46
  %48 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %47, i32 0, i32 10
  store i32 %43, i32* %48, align 8
  %49 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %9, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %49, i64 %51
  %53 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %52, i32 0, i32 10
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %39
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %165

59:                                               ; preds = %39
  %60 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %12, align 8
  %61 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %60, i64 0
  %62 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %9, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %62, i64 %64
  %66 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %65, i32 0, i32 9
  store %struct.snd_soc_dai_link_component* %61, %struct.snd_soc_dai_link_component** %66, align 8
  %67 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %12, align 8
  %68 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %67, i64 1
  %69 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %9, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %69, i64 %71
  %73 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %72, i32 0, i32 7
  store %struct.snd_soc_dai_link_component* %68, %struct.snd_soc_dai_link_component** %73, align 8
  %74 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %12, align 8
  %75 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %74, i64 2
  %76 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %9, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %76, i64 %78
  %80 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %79, i32 0, i32 8
  store %struct.snd_soc_dai_link_component* %75, %struct.snd_soc_dai_link_component** %80, align 8
  %81 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %9, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %81, i64 %83
  %85 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  %86 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %9, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %86, i64 %88
  %90 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %89, i32 0, i32 1
  store i32 1, i32* %90, align 4
  %91 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %9, align 8
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %91, i64 %93
  %95 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %94, i32 0, i32 2
  store i32 1, i32* %95, align 8
  %96 = load i32, i32* %13, align 4
  %97 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %9, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %97, i64 %99
  %101 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %100, i32 0, i32 3
  store i32 %96, i32* %101, align 4
  %102 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %9, align 8
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %102, i64 %104
  %106 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %105, i32 0, i32 4
  store i32 1, i32* %106, align 8
  %107 = load %struct.snd_sof_dsp_ops*, %struct.snd_sof_dsp_ops** %8, align 8
  %108 = getelementptr inbounds %struct.snd_sof_dsp_ops, %struct.snd_sof_dsp_ops* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %9, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %115, i64 %117
  %119 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %118, i32 0, i32 9
  %120 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %119, align 8
  %121 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %120, i32 0, i32 0
  store i8* %114, i8** %121, align 8
  %122 = load %struct.device*, %struct.device** %7, align 8
  %123 = call i8* @dev_name(%struct.device* %122)
  %124 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %9, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %124, i64 %126
  %128 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %127, i32 0, i32 8
  %129 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %128, align 8
  %130 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %129, i32 0, i32 1
  store i8* %123, i8** %130, align 8
  %131 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %9, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %131, i64 %133
  %135 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %134, i32 0, i32 7
  %136 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %135, align 8
  %137 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %136, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %137, align 8
  %138 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %9, align 8
  %139 = load i32, i32* %13, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %138, i64 %140
  %142 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %141, i32 0, i32 7
  %143 = load %struct.snd_soc_dai_link_component*, %struct.snd_soc_dai_link_component** %142, align 8
  %144 = getelementptr inbounds %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component* %143, i32 0, i32 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %144, align 8
  %145 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %9, align 8
  %146 = load i32, i32* %13, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %145, i64 %147
  %149 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %148, i32 0, i32 5
  store i32 1, i32* %149, align 4
  %150 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %9, align 8
  %151 = load i32, i32* %13, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %150, i64 %152
  %154 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %153, i32 0, i32 6
  store i32 1, i32* %154, align 8
  br label %155

155:                                              ; preds = %59
  %156 = load i32, i32* %13, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %13, align 4
  br label %26

158:                                              ; preds = %26
  %159 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %9, align 8
  %160 = load %struct.snd_soc_card*, %struct.snd_soc_card** %11, align 8
  %161 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %160, i32 0, i32 1
  store %struct.snd_soc_dai_link* %159, %struct.snd_soc_dai_link** %161, align 8
  %162 = load i32, i32* %10, align 4
  %163 = load %struct.snd_soc_card*, %struct.snd_soc_card** %11, align 8
  %164 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  store i32 0, i32* %6, align 4
  br label %165

165:                                              ; preds = %158, %56, %36, %22
  %166 = load i32, i32* %6, align 4
  ret i32 %166
}

declare dso_local %struct.snd_soc_dai_link_component* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_kasprintf(%struct.device*, i32, i8*, i32) #1

declare dso_local i8* @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
