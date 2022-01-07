; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_dvc.c_rsnd_dvc_volume_parameter.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_dvc.c_rsnd_dvc_volume_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_mod = type { i32 }
%struct.rsnd_dvc = type { i32, i32 }

@RSND_MAX_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsnd_dai_stream*, %struct.rsnd_mod*)* @rsnd_dvc_volume_parameter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsnd_dvc_volume_parameter(%struct.rsnd_dai_stream* %0, %struct.rsnd_mod* %1) #0 {
  %3 = alloca %struct.rsnd_dai_stream*, align 8
  %4 = alloca %struct.rsnd_mod*, align 8
  %5 = alloca %struct.rsnd_dvc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.rsnd_dai_stream* %0, %struct.rsnd_dai_stream** %3, align 8
  store %struct.rsnd_mod* %1, %struct.rsnd_mod** %4, align 8
  %9 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %10 = call %struct.rsnd_dvc* @rsnd_mod_to_dvc(%struct.rsnd_mod* %9)
  store %struct.rsnd_dvc* %10, %struct.rsnd_dvc** %5, align 8
  %11 = load i32, i32* @RSND_MAX_CHANNELS, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load %struct.rsnd_dvc*, %struct.rsnd_dvc** %5, align 8
  %16 = getelementptr inbounds %struct.rsnd_dvc, %struct.rsnd_dvc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @rsnd_kctrl_vals(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %33, %20
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @RSND_MAX_CHANNELS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load %struct.rsnd_dvc*, %struct.rsnd_dvc** %5, align 8
  %27 = getelementptr inbounds %struct.rsnd_dvc, %struct.rsnd_dvc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @rsnd_kctrl_max(i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %14, i64 %31
  store i32 %29, i32* %32, align 4
  br label %33

33:                                               ; preds = %25
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %21

36:                                               ; preds = %21
  br label %55

37:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %51, %37
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @RSND_MAX_CHANNELS, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load %struct.rsnd_dvc*, %struct.rsnd_dvc** %5, align 8
  %44 = getelementptr inbounds %struct.rsnd_dvc, %struct.rsnd_dvc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @rsnd_kctrl_valm(i32 %45, i32 %46)
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %14, i64 %49
  store i32 %47, i32* %50, align 4
  br label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %38

54:                                               ; preds = %38
  br label %55

55:                                               ; preds = %54, %36
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %69, %55
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @RSND_MAX_CHANNELS, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @DVC_VOLxR(i32 %62)
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %14, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %61, i32 %63, i32 %67)
  br label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %56

72:                                               ; preds = %56
  %73 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %73)
  ret void
}

declare dso_local %struct.rsnd_dvc* @rsnd_mod_to_dvc(%struct.rsnd_mod*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @rsnd_kctrl_vals(i32) #1

declare dso_local i32 @rsnd_kctrl_max(i32) #1

declare dso_local i32 @rsnd_kctrl_valm(i32, i32) #1

declare dso_local i32 @rsnd_mod_write(%struct.rsnd_mod*, i32, i32) #1

declare dso_local i32 @DVC_VOLxR(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
