; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_dai_connect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_core.c_rsnd_dai_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_dai_stream = type { %struct.rsnd_mod** }
%struct.rsnd_priv = type { i32 }
%struct.device = type { i32 }

@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s is connected to io (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Playback\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Capture\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsnd_dai_connect(%struct.rsnd_mod* %0, %struct.rsnd_dai_stream* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rsnd_mod*, align 8
  %6 = alloca %struct.rsnd_dai_stream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rsnd_priv*, align 8
  %9 = alloca %struct.device*, align 8
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %5, align 8
  store %struct.rsnd_dai_stream* %1, %struct.rsnd_dai_stream** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %11 = icmp ne %struct.rsnd_mod* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %59

15:                                               ; preds = %3
  %16 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %17 = getelementptr inbounds %struct.rsnd_dai_stream, %struct.rsnd_dai_stream* %16, i32 0, i32 0
  %18 = load %struct.rsnd_mod**, %struct.rsnd_mod*** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.rsnd_mod*, %struct.rsnd_mod** %18, i64 %20
  %22 = load %struct.rsnd_mod*, %struct.rsnd_mod** %21, align 8
  %23 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %24 = icmp eq %struct.rsnd_mod* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %59

26:                                               ; preds = %15
  %27 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %28 = getelementptr inbounds %struct.rsnd_dai_stream, %struct.rsnd_dai_stream* %27, i32 0, i32 0
  %29 = load %struct.rsnd_mod**, %struct.rsnd_mod*** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.rsnd_mod*, %struct.rsnd_mod** %29, i64 %31
  %33 = load %struct.rsnd_mod*, %struct.rsnd_mod** %32, align 8
  %34 = icmp ne %struct.rsnd_mod* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %59

38:                                               ; preds = %26
  %39 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %40 = call %struct.rsnd_priv* @rsnd_mod_to_priv(%struct.rsnd_mod* %39)
  store %struct.rsnd_priv* %40, %struct.rsnd_priv** %8, align 8
  %41 = load %struct.rsnd_priv*, %struct.rsnd_priv** %8, align 8
  %42 = call %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv* %41)
  store %struct.device* %42, %struct.device** %9, align 8
  %43 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %44 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %45 = getelementptr inbounds %struct.rsnd_dai_stream, %struct.rsnd_dai_stream* %44, i32 0, i32 0
  %46 = load %struct.rsnd_mod**, %struct.rsnd_mod*** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.rsnd_mod*, %struct.rsnd_mod** %46, i64 %48
  store %struct.rsnd_mod* %43, %struct.rsnd_mod** %49, align 8
  %50 = load %struct.device*, %struct.device** %9, align 8
  %51 = load %struct.rsnd_mod*, %struct.rsnd_mod** %5, align 8
  %52 = call i32 @rsnd_mod_name(%struct.rsnd_mod* %51)
  %53 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %6, align 8
  %54 = call i64 @rsnd_io_is_play(%struct.rsnd_dai_stream* %53)
  %55 = icmp ne i64 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %58 = call i32 @dev_dbg(%struct.device* %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %52, i8* %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %38, %35, %25, %12
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.rsnd_priv* @rsnd_mod_to_priv(%struct.rsnd_mod*) #1

declare dso_local %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i8*) #1

declare dso_local i32 @rsnd_mod_name(%struct.rsnd_mod*) #1

declare dso_local i64 @rsnd_io_is_play(%struct.rsnd_dai_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
