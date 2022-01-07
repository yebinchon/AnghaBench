; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_stream.c_snd_bebob_stream_start_duplex.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_stream.c_snd_bebob_stream_start_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_bebob = type { i64, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.snd_bebob*, i32*)*, i32 (%struct.snd_bebob*, i32)* }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"fail to ensure sampling rate: %d\0A\00", align 1
@CALLBACK_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_bebob_stream_start_duplex(%struct.snd_bebob* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_bebob*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_bebob* %0, %struct.snd_bebob** %3, align 8
  %6 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %7 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %134

13:                                               ; preds = %1
  %14 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %15 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %14, i32 0, i32 3
  %16 = call i64 @amdtp_streaming_error(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %20 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %19, i32 0, i32 2
  %21 = call i64 @amdtp_streaming_error(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18, %13
  %24 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %25 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %24, i32 0, i32 1
  %26 = call i32 @amdtp_domain_stop(i32* %25)
  %27 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %28 = call i32 @break_both_connections(%struct.snd_bebob* %27)
  br label %29

29:                                               ; preds = %23, %18
  %30 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %31 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %30, i32 0, i32 3
  %32 = call i32 @amdtp_stream_running(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %126, label %34

34:                                               ; preds = %29
  %35 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %36 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %34
  %40 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %41 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %40, i32 0, i32 5
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32 (%struct.snd_bebob*, i32*)*, i32 (%struct.snd_bebob*, i32*)** %45, align 8
  %47 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %48 = call i32 %46(%struct.snd_bebob* %47, i32* %5)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %134

53:                                               ; preds = %39
  br label %54

54:                                               ; preds = %53, %34
  %55 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %56 = call i32 @make_both_connections(%struct.snd_bebob* %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %134

61:                                               ; preds = %54
  %62 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %63 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %64 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %63, i32 0, i32 3
  %65 = call i32 @start_stream(%struct.snd_bebob* %62, i32* %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %127

69:                                               ; preds = %61
  %70 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %71 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %72 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %71, i32 0, i32 2
  %73 = call i32 @start_stream(%struct.snd_bebob* %70, i32* %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %127

77:                                               ; preds = %69
  %78 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %79 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %78, i32 0, i32 1
  %80 = call i32 @amdtp_domain_start(i32* %79)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %127

84:                                               ; preds = %77
  %85 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %86 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %85, i32 0, i32 6
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %110

89:                                               ; preds = %84
  %90 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %91 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %90, i32 0, i32 5
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32 (%struct.snd_bebob*, i32)*, i32 (%struct.snd_bebob*, i32)** %95, align 8
  %97 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %98 = load i32, i32* %5, align 4
  %99 = call i32 %96(%struct.snd_bebob* %97, i32 %98)
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %89
  %103 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %104 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %103, i32 0, i32 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @dev_err(i32* %106, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %107)
  br label %127

109:                                              ; preds = %89
  br label %110

110:                                              ; preds = %109, %84
  %111 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %112 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %111, i32 0, i32 3
  %113 = load i32, i32* @CALLBACK_TIMEOUT, align 4
  %114 = call i32 @amdtp_stream_wait_callback(i32* %112, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %110
  %117 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %118 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %117, i32 0, i32 2
  %119 = load i32, i32* @CALLBACK_TIMEOUT, align 4
  %120 = call i32 @amdtp_stream_wait_callback(i32* %118, i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %116, %110
  %123 = load i32, i32* @ETIMEDOUT, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %4, align 4
  br label %127

125:                                              ; preds = %116
  br label %126

126:                                              ; preds = %125, %29
  store i32 0, i32* %2, align 4
  br label %134

127:                                              ; preds = %122, %102, %83, %76, %68
  %128 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %129 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %128, i32 0, i32 1
  %130 = call i32 @amdtp_domain_stop(i32* %129)
  %131 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %132 = call i32 @break_both_connections(%struct.snd_bebob* %131)
  %133 = load i32, i32* %4, align 4
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %127, %126, %59, %51, %10
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i64 @amdtp_streaming_error(i32*) #1

declare dso_local i32 @amdtp_domain_stop(i32*) #1

declare dso_local i32 @break_both_connections(%struct.snd_bebob*) #1

declare dso_local i32 @amdtp_stream_running(i32*) #1

declare dso_local i32 @make_both_connections(%struct.snd_bebob*) #1

declare dso_local i32 @start_stream(%struct.snd_bebob*, i32*) #1

declare dso_local i32 @amdtp_domain_start(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @amdtp_stream_wait_callback(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
