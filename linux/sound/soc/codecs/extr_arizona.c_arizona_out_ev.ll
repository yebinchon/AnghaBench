; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_out_ev.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_out_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.arizona_priv = type { i32, i32, i32, i32, %struct.arizona* }
%struct.arizona = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Power up delay: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Power down delay: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arizona_out_ev(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.arizona_priv*, align 8
  %9 = alloca %struct.arizona*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %7, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %15 = call %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.arizona_priv* %15, %struct.arizona_priv** %8, align 8
  %16 = load %struct.arizona_priv*, %struct.arizona_priv** %8, align 8
  %17 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %16, i32 0, i32 4
  %18 = load %struct.arizona*, %struct.arizona** %17, align 8
  store %struct.arizona* %18, %struct.arizona** %9, align 8
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %155 [
    i32 132, label %20
    i32 134, label %50
    i32 133, label %85
    i32 135, label %120
  ]

20:                                               ; preds = %3
  %21 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %22 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %48 [
    i32 143, label %24
    i32 142, label %24
    i32 141, label %24
    i32 140, label %24
    i32 139, label %24
    i32 138, label %24
    i32 137, label %33
    i32 136, label %33
  ]

24:                                               ; preds = %20, %20, %20, %20, %20, %20
  %25 = load %struct.arizona_priv*, %struct.arizona_priv** %8, align 8
  %26 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.arizona_priv*, %struct.arizona_priv** %8, align 8
  %30 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 17
  store i32 %32, i32* %30, align 8
  br label %49

33:                                               ; preds = %20, %20
  %34 = load %struct.arizona_priv*, %struct.arizona_priv** %8, align 8
  %35 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.arizona*, %struct.arizona** %9, align 8
  %39 = getelementptr inbounds %struct.arizona, %struct.arizona* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %42 [
    i32 130, label %41
    i32 129, label %41
  ]

41:                                               ; preds = %33, %33
  br label %47

42:                                               ; preds = %33
  %43 = load %struct.arizona_priv*, %struct.arizona_priv** %8, align 8
  %44 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 10
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %42, %41
  br label %49

48:                                               ; preds = %20
  br label %49

49:                                               ; preds = %48, %47, %24
  br label %156

50:                                               ; preds = %3
  %51 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %52 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %83 [
    i32 143, label %54
    i32 142, label %54
    i32 141, label %54
    i32 140, label %54
    i32 139, label %54
    i32 138, label %54
    i32 137, label %54
    i32 136, label %54
  ]

54:                                               ; preds = %50, %50, %50, %50, %50, %50, %50, %50
  %55 = load %struct.arizona_priv*, %struct.arizona_priv** %8, align 8
  %56 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %56, align 4
  %59 = load %struct.arizona_priv*, %struct.arizona_priv** %8, align 8
  %60 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %82, label %63

63:                                               ; preds = %54
  %64 = load %struct.arizona_priv*, %struct.arizona_priv** %8, align 8
  %65 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %63
  %69 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %70 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.arizona_priv*, %struct.arizona_priv** %8, align 8
  %73 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @dev_dbg(i32 %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load %struct.arizona_priv*, %struct.arizona_priv** %8, align 8
  %77 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @msleep(i32 %78)
  %80 = load %struct.arizona_priv*, %struct.arizona_priv** %8, align 8
  %81 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  br label %82

82:                                               ; preds = %68, %63, %54
  br label %84

83:                                               ; preds = %50
  br label %84

84:                                               ; preds = %83, %82
  br label %156

85:                                               ; preds = %3
  %86 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %87 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  switch i32 %88, label %118 [
    i32 143, label %89
    i32 142, label %89
    i32 141, label %89
    i32 140, label %89
    i32 139, label %89
    i32 138, label %89
    i32 137, label %98
    i32 136, label %98
  ]

89:                                               ; preds = %85, %85, %85, %85, %85, %85
  %90 = load %struct.arizona_priv*, %struct.arizona_priv** %8, align 8
  %91 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  %94 = load %struct.arizona_priv*, %struct.arizona_priv** %8, align 8
  %95 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  br label %119

98:                                               ; preds = %85, %85
  %99 = load %struct.arizona_priv*, %struct.arizona_priv** %8, align 8
  %100 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  %103 = load %struct.arizona*, %struct.arizona** %9, align 8
  %104 = getelementptr inbounds %struct.arizona, %struct.arizona* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  switch i32 %105, label %112 [
    i32 130, label %106
    i32 129, label %106
    i32 128, label %107
    i32 131, label %107
  ]

106:                                              ; preds = %98, %98
  br label %117

107:                                              ; preds = %98, %98
  %108 = load %struct.arizona_priv*, %struct.arizona_priv** %8, align 8
  %109 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 5
  store i32 %111, i32* %109, align 4
  br label %117

112:                                              ; preds = %98
  %113 = load %struct.arizona_priv*, %struct.arizona_priv** %8, align 8
  %114 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %112, %107, %106
  br label %118

118:                                              ; preds = %85, %117
  br label %119

119:                                              ; preds = %118, %89
  br label %156

120:                                              ; preds = %3
  %121 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %122 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  switch i32 %123, label %153 [
    i32 143, label %124
    i32 142, label %124
    i32 141, label %124
    i32 140, label %124
    i32 139, label %124
    i32 138, label %124
    i32 137, label %124
    i32 136, label %124
  ]

124:                                              ; preds = %120, %120, %120, %120, %120, %120, %120, %120
  %125 = load %struct.arizona_priv*, %struct.arizona_priv** %8, align 8
  %126 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %126, align 8
  %129 = load %struct.arizona_priv*, %struct.arizona_priv** %8, align 8
  %130 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %152, label %133

133:                                              ; preds = %124
  %134 = load %struct.arizona_priv*, %struct.arizona_priv** %8, align 8
  %135 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %152

138:                                              ; preds = %133
  %139 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %140 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.arizona_priv*, %struct.arizona_priv** %8, align 8
  %143 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @dev_dbg(i32 %141, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %144)
  %146 = load %struct.arizona_priv*, %struct.arizona_priv** %8, align 8
  %147 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @msleep(i32 %148)
  %150 = load %struct.arizona_priv*, %struct.arizona_priv** %8, align 8
  %151 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %150, i32 0, i32 1
  store i32 0, i32* %151, align 4
  br label %152

152:                                              ; preds = %138, %133, %124
  br label %154

153:                                              ; preds = %120
  br label %154

154:                                              ; preds = %153, %152
  br label %156

155:                                              ; preds = %3
  br label %156

156:                                              ; preds = %155, %154, %119, %84, %49
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
