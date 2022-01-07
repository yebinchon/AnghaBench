; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_azt3328.c_snd_azf3328_ctrl_codec_activity.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_azt3328.c_snd_azf3328_ctrl_codec_activity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32 }
%struct.snd_azf3328 = type { %struct.snd_azf3328_codec_data*, %struct.TYPE_2__* }
%struct.snd_azf3328_codec_data = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"codec_activity: %s codec, enable %d, need_change %d\0A\00", align 1
@snd_azf3328_ctrl_codec_activity.peer_codecs = internal constant [3 x %struct.anon] [%struct.anon { i32 130, i32 129 }, %struct.anon { i32 128, i32 129 }, %struct.anon { i32 128, i32 130 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_azf3328*, i32, i32)* @snd_azf3328_ctrl_codec_activity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_azf3328_ctrl_codec_activity(%struct.snd_azf3328* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_azf3328*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_azf3328_codec_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_azf3328* %0, %struct.snd_azf3328** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.snd_azf3328*, %struct.snd_azf3328** %4, align 8
  %11 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %10, i32 0, i32 0
  %12 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %12, i64 %14
  store %struct.snd_azf3328_codec_data* %15, %struct.snd_azf3328_codec_data** %7, align 8
  %16 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %7, align 8
  %17 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %18, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %8, align 4
  %22 = load %struct.snd_azf3328*, %struct.snd_azf3328** %4, align 8
  %23 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %7, align 8
  %28 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @dev_dbg(i32 %26, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %88

35:                                               ; preds = %3
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 1, i32* %9, align 4
  br label %71

39:                                               ; preds = %35
  %40 = load %struct.snd_azf3328*, %struct.snd_azf3328** %4, align 8
  %41 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %40, i32 0, i32 0
  %42 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @snd_azf3328_ctrl_codec_activity.peer_codecs, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.anon, %struct.anon* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %42, i64 %48
  %50 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %68, label %53

53:                                               ; preds = %39
  %54 = load %struct.snd_azf3328*, %struct.snd_azf3328** %4, align 8
  %55 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %54, i32 0, i32 0
  %56 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @snd_azf3328_ctrl_codec_activity.peer_codecs, i64 0, i64 %58
  %60 = getelementptr inbounds %struct.anon, %struct.anon* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %56, i64 %62
  %64 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  br label %68

68:                                               ; preds = %53, %39
  %69 = phi i1 [ false, %39 ], [ %67, %53 ]
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %68, %38
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load %struct.snd_azf3328*, %struct.snd_azf3328** %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @snd_azf3328_ctrl_enable_codecs(%struct.snd_azf3328* %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %71
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %7, align 8
  %83 = call i32 @snd_azf3328_codec_setfmt_lowpower(%struct.snd_azf3328_codec_data* %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.snd_azf3328_codec_data*, %struct.snd_azf3328_codec_data** %7, align 8
  %87 = getelementptr inbounds %struct.snd_azf3328_codec_data, %struct.snd_azf3328_codec_data* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %84, %3
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @snd_azf3328_ctrl_enable_codecs(%struct.snd_azf3328*, i32) #1

declare dso_local i32 @snd_azf3328_codec_setfmt_lowpower(%struct.snd_azf3328_codec_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
