; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-stream.c_init_stream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-stream.c_init_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_tscm = type { i32, %struct.TYPE_2__*, %struct.fw_iso_resources, %struct.fw_iso_resources, %struct.amdtp_stream }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }
%struct.fw_iso_resources = type { i32 }
%struct.amdtp_stream = type { i32 }

@AMDTP_IN_STREAM = common dso_local global i32 0, align 4
@AMDTP_OUT_STREAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_tscm*, %struct.amdtp_stream*)* @init_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_stream(%struct.snd_tscm* %0, %struct.amdtp_stream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_tscm*, align 8
  %5 = alloca %struct.amdtp_stream*, align 8
  %6 = alloca %struct.fw_iso_resources*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_tscm* %0, %struct.snd_tscm** %4, align 8
  store %struct.amdtp_stream* %1, %struct.amdtp_stream** %5, align 8
  %10 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %11 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %12 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %11, i32 0, i32 4
  %13 = icmp eq %struct.amdtp_stream* %10, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %16 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %15, i32 0, i32 3
  store %struct.fw_iso_resources* %16, %struct.fw_iso_resources** %6, align 8
  %17 = load i32, i32* @AMDTP_IN_STREAM, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %19 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  br label %32

23:                                               ; preds = %2
  %24 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %25 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %24, i32 0, i32 2
  store %struct.fw_iso_resources* %25, %struct.fw_iso_resources** %6, align 8
  %26 = load i32, i32* @AMDTP_OUT_STREAM, align 4
  store i32 %26, i32* %7, align 4
  %27 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %28 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %23, %14
  %33 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %34 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* %8, align 4
  %41 = add i32 %40, 8
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %39, %32
  %43 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %44 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* %8, align 4
  %51 = add i32 %50, 2
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %49, %42
  %53 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %6, align 8
  %54 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %55 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @fw_iso_resources_init(%struct.fw_iso_resources* %53, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %3, align 4
  br label %77

62:                                               ; preds = %52
  %63 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %64 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %65 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @amdtp_tscm_init(%struct.amdtp_stream* %63, i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %6, align 8
  %74 = call i32 @fw_iso_resources_free(%struct.fw_iso_resources* %73)
  br label %75

75:                                               ; preds = %72, %62
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %60
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @fw_iso_resources_init(%struct.fw_iso_resources*, i32) #1

declare dso_local i32 @amdtp_tscm_init(%struct.amdtp_stream*, i32, i32, i32) #1

declare dso_local i32 @fw_iso_resources_free(%struct.fw_iso_resources*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
