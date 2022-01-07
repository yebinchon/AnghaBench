; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_mixer.c_lola_set_src_config.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lola/extr_lola_mixer.c_lola_set_src_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lola = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CAPT = common dso_local global i64 0, align 8
@LOLA_VERB_SET_SRC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lola_set_src_config(%struct.lola* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lola*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.lola* %0, %struct.lola** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.lola*, %struct.lola** %5, align 8
  %16 = getelementptr inbounds %struct.lola, %struct.lola* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %110

25:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %92, %25
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.lola*, %struct.lola** %5, align 8
  %29 = getelementptr inbounds %struct.lola, %struct.lola* %28, i32 0, i32 3
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i64, i64* @CAPT, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %27, %34
  br i1 %35, label %36, label %95

36:                                               ; preds = %26
  %37 = load i32, i32* %10, align 4
  %38 = shl i32 3, %37
  store i32 %38, i32* %12, align 4
  %39 = load %struct.lola*, %struct.lola** %5, align 8
  %40 = getelementptr inbounds %struct.lola, %struct.lola* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  br label %92

46:                                               ; preds = %36
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %12, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %46
  %55 = load %struct.lola*, %struct.lola** %5, align 8
  %56 = getelementptr inbounds %struct.lola, %struct.lola* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %12, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  br label %92

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66, %46
  %68 = load %struct.lola*, %struct.lola** %5, align 8
  %69 = load %struct.lola*, %struct.lola** %5, align 8
  %70 = getelementptr inbounds %struct.lola, %struct.lola* %69, i32 0, i32 2
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = load i64, i64* @CAPT, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @LOLA_VERB_SET_SRC, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @lola_codec_write(%struct.lola* %68, i32 %80, i32 %81, i32 %82, i32 0)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %67
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %91

89:                                               ; preds = %67
  %90 = load i32, i32* %11, align 4
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %89, %86
  br label %92

92:                                               ; preds = %91, %65, %45
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 2
  store i32 %94, i32* %10, align 4
  br label %26

95:                                               ; preds = %26
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.lola*, %struct.lola** %5, align 8
  %100 = call i32 @lola_codec_flush(%struct.lola* %99)
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %6, align 4
  %106 = load %struct.lola*, %struct.lola** %5, align 8
  %107 = getelementptr inbounds %struct.lola, %struct.lola* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %104, %101
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %108, %22
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @lola_codec_write(%struct.lola*, i32, i32, i32, i32) #1

declare dso_local i32 @lola_codec_flush(%struct.lola*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
