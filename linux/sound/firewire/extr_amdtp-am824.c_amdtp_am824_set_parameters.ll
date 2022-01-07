; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-am824.c_amdtp_am824_set_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-am824.c_amdtp_am824_set_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtp_stream = type { i32, i32, %struct.TYPE_4__, %struct.amdtp_am824* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.amdtp_am824 = type { i32, i32, i32, i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AM824_MAX_CHANNELS_FOR_PCM = common dso_local global i32 0, align 4
@AM824_MAX_CHANNELS_FOR_MIDI = common dso_local global i32 0, align 4
@AMDTP_FDF_AM824 = common dso_local global i32 0, align 4
@MIDI_BYTES_PER_SECOND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdtp_am824_set_parameters(%struct.amdtp_stream* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdtp_stream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.amdtp_am824*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.amdtp_stream* %0, %struct.amdtp_stream** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.amdtp_stream*, %struct.amdtp_stream** %7, align 8
  %17 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %16, i32 0, i32 3
  %18 = load %struct.amdtp_am824*, %struct.amdtp_am824** %17, align 8
  store %struct.amdtp_am824* %18, %struct.amdtp_am824** %12, align 8
  %19 = load %struct.amdtp_stream*, %struct.amdtp_stream** %7, align 8
  %20 = call i32 @amdtp_stream_running(%struct.amdtp_stream* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %130

25:                                               ; preds = %5
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @AM824_MAX_CHANNELS_FOR_PCM, align 4
  %28 = icmp ugt i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %130

32:                                               ; preds = %25
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @DIV_ROUND_UP(i32 %33, i32 8)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @AM824_MAX_CHANNELS_FOR_MIDI, align 4
  %37 = icmp ugt i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %130

41:                                               ; preds = %32
  %42 = load %struct.amdtp_stream*, %struct.amdtp_stream** %7, align 8
  %43 = call i32 @amdtp_stream_running(%struct.amdtp_stream* %42)
  %44 = call i64 @WARN_ON(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @AM824_MAX_CHANNELS_FOR_PCM, align 4
  %49 = icmp ugt i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i64 @WARN_ON(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @AM824_MAX_CHANNELS_FOR_MIDI, align 4
  %56 = icmp ugt i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i64 @WARN_ON(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53, %46, %41
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %130

63:                                               ; preds = %53
  %64 = load %struct.amdtp_stream*, %struct.amdtp_stream** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %13, align 4
  %68 = add i32 %66, %67
  %69 = call i32 @amdtp_stream_set_parameters(%struct.amdtp_stream* %64, i32 %65, i32 %68)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %63
  %73 = load i32, i32* %15, align 4
  store i32 %73, i32* %6, align 4
  br label %130

74:                                               ; preds = %63
  %75 = load i32, i32* @AMDTP_FDF_AM824, align 4
  %76 = load %struct.amdtp_stream*, %struct.amdtp_stream** %7, align 8
  %77 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %75, %78
  %80 = load %struct.amdtp_stream*, %struct.amdtp_stream** %7, align 8
  %81 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i32 %79, i32* %83, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.amdtp_am824*, %struct.amdtp_am824** %12, align 8
  %86 = getelementptr inbounds %struct.amdtp_am824, %struct.amdtp_am824* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.amdtp_am824*, %struct.amdtp_am824** %12, align 8
  %89 = getelementptr inbounds %struct.amdtp_am824, %struct.amdtp_am824* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %74
  %93 = load %struct.amdtp_am824*, %struct.amdtp_am824** %12, align 8
  %94 = getelementptr inbounds %struct.amdtp_am824, %struct.amdtp_am824* %93, i32 0, i32 2
  store i32 2, i32* %94, align 8
  br label %98

95:                                               ; preds = %74
  %96 = load %struct.amdtp_am824*, %struct.amdtp_am824** %12, align 8
  %97 = getelementptr inbounds %struct.amdtp_am824, %struct.amdtp_am824* %96, i32 0, i32 2
  store i32 1, i32* %97, align 8
  br label %98

98:                                               ; preds = %95, %92
  store i32 0, i32* %14, align 4
  br label %99

99:                                               ; preds = %111, %98
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp ult i32 %100, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %99
  %104 = load i32, i32* %14, align 4
  %105 = load %struct.amdtp_am824*, %struct.amdtp_am824** %12, align 8
  %106 = getelementptr inbounds %struct.amdtp_am824, %struct.amdtp_am824* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %14, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 %104, i32* %110, align 4
  br label %111

111:                                              ; preds = %103
  %112 = load i32, i32* %14, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %14, align 4
  br label %99

114:                                              ; preds = %99
  %115 = load %struct.amdtp_am824*, %struct.amdtp_am824** %12, align 8
  %116 = getelementptr inbounds %struct.amdtp_am824, %struct.amdtp_am824* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.amdtp_am824*, %struct.amdtp_am824** %12, align 8
  %119 = getelementptr inbounds %struct.amdtp_am824, %struct.amdtp_am824* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @MIDI_BYTES_PER_SECOND, align 4
  %122 = load %struct.amdtp_stream*, %struct.amdtp_stream** %7, align 8
  %123 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = mul i32 %121, %124
  %126 = sub i32 %120, %125
  %127 = add i32 %126, 1
  %128 = load %struct.amdtp_am824*, %struct.amdtp_am824** %12, align 8
  %129 = getelementptr inbounds %struct.amdtp_am824, %struct.amdtp_am824* %128, i32 0, i32 5
  store i32 %127, i32* %129, align 4
  store i32 0, i32* %6, align 4
  br label %130

130:                                              ; preds = %114, %72, %60, %38, %29, %22
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local i32 @amdtp_stream_running(%struct.amdtp_stream*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @amdtp_stream_set_parameters(%struct.amdtp_stream*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
