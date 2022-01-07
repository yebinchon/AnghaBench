; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-stream.c_snd_motu_stream_reserve_duplex.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-stream.c_snd_motu_stream_reserve_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_motu = type { i64, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.snd_motu*, i32*)*, {}* }

@.str = private unnamed_addr constant [31 x i8] c"fail to set sampling rate: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_motu_stream_reserve_duplex(%struct.snd_motu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_motu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_motu* %0, %struct.snd_motu** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %9 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %8, i32 0, i32 5
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32 (%struct.snd_motu*, i32*)*, i32 (%struct.snd_motu*, i32*)** %13, align 8
  %15 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %16 = call i32 %14(%struct.snd_motu* %15, i32* %6)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %100

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %24, %21
  %27 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %28 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %99

35:                                               ; preds = %31, %26
  %36 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %37 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %36, i32 0, i32 7
  %38 = call i32 @amdtp_domain_stop(i32* %37)
  %39 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %40 = call i32 @finish_session(%struct.snd_motu* %39)
  %41 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %42 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %41, i32 0, i32 1
  %43 = call i32 @fw_iso_resources_free(i32* %42)
  %44 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %45 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %44, i32 0, i32 6
  %46 = call i32 @fw_iso_resources_free(i32* %45)
  %47 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %48 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %47, i32 0, i32 5
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = bitcast {}** %52 to i32 (%struct.snd_motu*, i32)**
  %54 = load i32 (%struct.snd_motu*, i32)*, i32 (%struct.snd_motu*, i32)** %53, align 8
  %55 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 %54(%struct.snd_motu* %55, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %35
  %61 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %62 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %61, i32 0, i32 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %3, align 4
  br label %100

68:                                               ; preds = %35
  %69 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %70 = call i32 @snd_motu_stream_cache_packet_formats(%struct.snd_motu* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %3, align 4
  br label %100

75:                                               ; preds = %68
  %76 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %79 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %78, i32 0, i32 3
  %80 = call i32 @keep_resources(%struct.snd_motu* %76, i32 %77, i32* %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %3, align 4
  br label %100

85:                                               ; preds = %75
  %86 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %89 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %88, i32 0, i32 2
  %90 = call i32 @keep_resources(%struct.snd_motu* %86, i32 %87, i32* %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %85
  %94 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %95 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %94, i32 0, i32 1
  %96 = call i32 @fw_iso_resources_free(i32* %95)
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %3, align 4
  br label %100

98:                                               ; preds = %85
  br label %99

99:                                               ; preds = %98, %31
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %99, %93, %83, %73, %60, %19
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @amdtp_domain_stop(i32*) #1

declare dso_local i32 @finish_session(%struct.snd_motu*) #1

declare dso_local i32 @fw_iso_resources_free(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @snd_motu_stream_cache_packet_formats(%struct.snd_motu*) #1

declare dso_local i32 @keep_resources(%struct.snd_motu*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
