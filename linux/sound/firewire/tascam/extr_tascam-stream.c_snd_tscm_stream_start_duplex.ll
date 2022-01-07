; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-stream.c_snd_tscm_stream_start_duplex.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-stream.c_snd_tscm_stream_start_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_tscm = type { i64, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@CALLBACK_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_tscm_stream_start_duplex(%struct.snd_tscm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_tscm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_tscm* %0, %struct.snd_tscm** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %10 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %14 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %144

18:                                               ; preds = %2
  %19 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %20 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %19, i32 0, i32 3
  %21 = call i64 @amdtp_streaming_error(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %25 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %24, i32 0, i32 2
  %26 = call i64 @amdtp_streaming_error(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23, %18
  %29 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %30 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %29, i32 0, i32 1
  %31 = call i32 @amdtp_domain_stop(i32* %30)
  %32 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %33 = call i32 @finish_session(%struct.snd_tscm* %32)
  br label %34

34:                                               ; preds = %28, %23
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %37 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.TYPE_5__* @fw_parent_device(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %35, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %34
  %46 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %47 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %46, i32 0, i32 4
  %48 = call i32 @fw_iso_resources_update(%struct.TYPE_6__* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %137

52:                                               ; preds = %45
  %53 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %54 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %53, i32 0, i32 5
  %55 = call i32 @fw_iso_resources_update(%struct.TYPE_6__* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %137

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %34
  %61 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %62 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %61, i32 0, i32 3
  %63 = call i32 @amdtp_stream_running(i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %136, label %65

65:                                               ; preds = %60
  %66 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %67 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.TYPE_5__* @fw_parent_device(i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %8, align 4
  %72 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @set_stream_formats(%struct.snd_tscm* %72, i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %65
  br label %137

78:                                               ; preds = %65
  %79 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %80 = call i32 @begin_session(%struct.snd_tscm* %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %137

84:                                               ; preds = %78
  %85 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %86 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %85, i32 0, i32 1
  %87 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %88 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %87, i32 0, i32 3
  %89 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %90 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @amdtp_domain_add_stream(i32* %86, i32* %88, i32 %92, i32 %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %84
  br label %137

98:                                               ; preds = %84
  %99 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %100 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %99, i32 0, i32 1
  %101 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %102 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %101, i32 0, i32 2
  %103 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %104 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @amdtp_domain_add_stream(i32* %100, i32* %102, i32 %106, i32 %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %98
  br label %137

112:                                              ; preds = %98
  %113 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %114 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %113, i32 0, i32 1
  %115 = call i32 @amdtp_domain_start(i32* %114)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %3, align 4
  br label %144

120:                                              ; preds = %112
  %121 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %122 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %121, i32 0, i32 3
  %123 = load i32, i32* @CALLBACK_TIMEOUT, align 4
  %124 = call i32 @amdtp_stream_wait_callback(i32* %122, i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %120
  %127 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %128 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %127, i32 0, i32 2
  %129 = load i32, i32* @CALLBACK_TIMEOUT, align 4
  %130 = call i32 @amdtp_stream_wait_callback(i32* %128, i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %126, %120
  %133 = load i32, i32* @ETIMEDOUT, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %7, align 4
  br label %137

135:                                              ; preds = %126
  br label %136

136:                                              ; preds = %135, %60
  store i32 0, i32* %3, align 4
  br label %144

137:                                              ; preds = %132, %111, %97, %83, %77, %58, %51
  %138 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %139 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %138, i32 0, i32 1
  %140 = call i32 @amdtp_domain_stop(i32* %139)
  %141 = load %struct.snd_tscm*, %struct.snd_tscm** %4, align 8
  %142 = call i32 @finish_session(%struct.snd_tscm* %141)
  %143 = load i32, i32* %7, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %137, %136, %118, %17
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i64 @amdtp_streaming_error(i32*) #1

declare dso_local i32 @amdtp_domain_stop(i32*) #1

declare dso_local i32 @finish_session(%struct.snd_tscm*) #1

declare dso_local %struct.TYPE_5__* @fw_parent_device(i32) #1

declare dso_local i32 @fw_iso_resources_update(%struct.TYPE_6__*) #1

declare dso_local i32 @amdtp_stream_running(i32*) #1

declare dso_local i32 @set_stream_formats(%struct.snd_tscm*, i32) #1

declare dso_local i32 @begin_session(%struct.snd_tscm*) #1

declare dso_local i32 @amdtp_domain_add_stream(i32*, i32*, i32, i32) #1

declare dso_local i32 @amdtp_domain_start(i32*) #1

declare dso_local i32 @amdtp_stream_wait_callback(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
