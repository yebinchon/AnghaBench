; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_maudio.c_snd_bebob_maudio_special_discover.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_maudio.c_snd_bebob_maudio_special_discover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_bebob = type { i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__, i8*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32 }
%struct.special_params = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"fail to initialize clock params: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_bebob_maudio_special_discover(%struct.snd_bebob* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_bebob*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.special_params*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_bebob* %0, %struct.snd_bebob** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %9 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %8, i32 0, i32 7
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.special_params* @devm_kzalloc(i32* %11, i32 4, i32 %12)
  store %struct.special_params* %13, %struct.special_params** %6, align 8
  %14 = load %struct.special_params*, %struct.special_params** %6, align 8
  %15 = icmp ne %struct.special_params* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %78

19:                                               ; preds = %2
  %20 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %21 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %20, i32 0, i32 2
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.special_params*, %struct.special_params** %6, align 8
  %24 = bitcast %struct.special_params* %23 to i8*
  %25 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %26 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %25, i32 0, i32 6
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.special_params*, %struct.special_params** %6, align 8
  %29 = getelementptr inbounds %struct.special_params, %struct.special_params* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = call i8* @ERR_PTR(i32 -1)
  %31 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %32 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i8* %30, i8** %33, align 8
  %34 = call i8* @ERR_PTR(i32 -1)
  %35 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %36 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i8* %34, i8** %37, align 8
  %38 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %39 = call i32 @avc_maudio_set_special_clk(%struct.snd_bebob* %38, i32 3, i32 0, i32 0, i32 0)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %19
  %43 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %44 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %43, i32 0, i32 3
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %73

49:                                               ; preds = %19
  %50 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %51 = call i32 @add_special_controls(%struct.snd_bebob* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %73

55:                                               ; preds = %49
  %56 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %57 = call i32 @special_stream_formation_set(%struct.snd_bebob* %56)
  %58 = load %struct.special_params*, %struct.special_params** %6, align 8
  %59 = getelementptr inbounds %struct.special_params, %struct.special_params* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %64 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %66 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  br label %72

67:                                               ; preds = %55
  %68 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %69 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %68, i32 0, i32 0
  store i32 2, i32* %69, align 8
  %70 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %71 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %70, i32 0, i32 1
  store i32 2, i32* %71, align 4
  br label %72

72:                                               ; preds = %67, %62
  br label %73

73:                                               ; preds = %72, %54, %42
  %74 = load %struct.snd_bebob*, %struct.snd_bebob** %4, align 8
  %75 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %74, i32 0, i32 2
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %73, %16
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.special_params* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @avc_maudio_set_special_clk(%struct.snd_bebob*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @add_special_controls(%struct.snd_bebob*) #1

declare dso_local i32 @special_stream_formation_set(%struct.snd_bebob*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
