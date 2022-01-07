; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_digi00x-stream.c_snd_dg00x_stream_start_duplex.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/digi00x/extr_digi00x-stream.c_snd_dg00x_stream_start_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dg00x = type { i64, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@CALLBACK_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_dg00x_stream_start_duplex(%struct.snd_dg00x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_dg00x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_dg00x* %0, %struct.snd_dg00x** %3, align 8
  %7 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %8 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %7, i32 0, i32 5
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %11 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %12 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %134

16:                                               ; preds = %1
  %17 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %18 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %17, i32 0, i32 2
  %19 = call i64 @amdtp_streaming_error(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %23 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %22, i32 0, i32 3
  %24 = call i64 @amdtp_streaming_error(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21, %16
  %27 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %28 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %27, i32 0, i32 1
  %29 = call i32 @amdtp_domain_stop(i32* %28)
  %30 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %31 = call i32 @finish_session(%struct.snd_dg00x* %30)
  br label %32

32:                                               ; preds = %26, %21
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %35 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.TYPE_5__* @fw_parent_device(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %33, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %32
  %44 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %45 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %44, i32 0, i32 4
  %46 = call i32 @fw_iso_resources_update(%struct.TYPE_6__* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %127

50:                                               ; preds = %43
  %51 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %52 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %51, i32 0, i32 5
  %53 = call i32 @fw_iso_resources_update(%struct.TYPE_6__* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %127

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %32
  %59 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %60 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %59, i32 0, i32 3
  %61 = call i32 @amdtp_stream_running(i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %126, label %63

63:                                               ; preds = %58
  %64 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %65 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.TYPE_5__* @fw_parent_device(i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %6, align 4
  %70 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %71 = call i32 @begin_session(%struct.snd_dg00x* %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  br label %127

75:                                               ; preds = %63
  %76 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %77 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %76, i32 0, i32 1
  %78 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %79 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %78, i32 0, i32 3
  %80 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %81 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @amdtp_domain_add_stream(i32* %77, i32* %79, i32 %83, i32 %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %75
  br label %127

89:                                               ; preds = %75
  %90 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %91 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %90, i32 0, i32 1
  %92 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %93 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %92, i32 0, i32 2
  %94 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %95 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @amdtp_domain_add_stream(i32* %91, i32* %93, i32 %97, i32 %98)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %89
  br label %127

103:                                              ; preds = %89
  %104 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %105 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %104, i32 0, i32 1
  %106 = call i32 @amdtp_domain_start(i32* %105)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %127

110:                                              ; preds = %103
  %111 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %112 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %111, i32 0, i32 3
  %113 = load i32, i32* @CALLBACK_TIMEOUT, align 4
  %114 = call i32 @amdtp_stream_wait_callback(i32* %112, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %110
  %117 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %118 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %117, i32 0, i32 2
  %119 = load i32, i32* @CALLBACK_TIMEOUT, align 4
  %120 = call i32 @amdtp_stream_wait_callback(i32* %118, i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %116, %110
  %123 = load i32, i32* @ETIMEDOUT, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %5, align 4
  br label %127

125:                                              ; preds = %116
  br label %126

126:                                              ; preds = %125, %58
  store i32 0, i32* %2, align 4
  br label %134

127:                                              ; preds = %122, %109, %102, %88, %74, %56, %49
  %128 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %129 = getelementptr inbounds %struct.snd_dg00x, %struct.snd_dg00x* %128, i32 0, i32 1
  %130 = call i32 @amdtp_domain_stop(i32* %129)
  %131 = load %struct.snd_dg00x*, %struct.snd_dg00x** %3, align 8
  %132 = call i32 @finish_session(%struct.snd_dg00x* %131)
  %133 = load i32, i32* %5, align 4
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %127, %126, %15
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i64 @amdtp_streaming_error(i32*) #1

declare dso_local i32 @amdtp_domain_stop(i32*) #1

declare dso_local i32 @finish_session(%struct.snd_dg00x*) #1

declare dso_local %struct.TYPE_5__* @fw_parent_device(i32) #1

declare dso_local i32 @fw_iso_resources_update(%struct.TYPE_6__*) #1

declare dso_local i32 @amdtp_stream_running(i32*) #1

declare dso_local i32 @begin_session(%struct.snd_dg00x*) #1

declare dso_local i32 @amdtp_domain_add_stream(i32*, i32*, i32, i32) #1

declare dso_local i32 @amdtp_domain_start(i32*) #1

declare dso_local i32 @amdtp_stream_wait_callback(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
