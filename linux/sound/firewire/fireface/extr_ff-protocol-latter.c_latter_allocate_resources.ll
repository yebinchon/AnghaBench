; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-protocol-latter.c_latter_allocate_resources.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireface/extr_ff-protocol-latter.c_latter_allocate_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ff = type { %struct.TYPE_5__, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TCODE_WRITE_QUADLET_REQUEST = common dso_local global i32 0, align 4
@LATTER_STF = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@amdtp_rate_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ff*, i32)* @latter_allocate_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @latter_allocate_resources(%struct.snd_ff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_ff* %0, %struct.snd_ff** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = urem i32 %14, 32000
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %33

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = urem i32 %19, 44100
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 2, i32* %7, align 4
  br label %32

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = urem i32 %24, 48000
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 4, i32* %7, align 4
  br label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %167

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31, %22
  br label %33

33:                                               ; preds = %32, %17
  %34 = load i32, i32* %5, align 4
  %35 = icmp uge i32 %34, 64000
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = icmp ult i32 %37, 128000
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, 8
  store i32 %41, i32* %7, align 4
  br label %52

42:                                               ; preds = %36, %33
  %43 = load i32, i32* %5, align 4
  %44 = icmp uge i32 %43, 128000
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = icmp ult i32 %46, 192000
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, 16
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %48, %45, %42
  br label %52

52:                                               ; preds = %51, %39
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @cpu_to_le32(i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %56 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %59 = load i32, i32* @LATTER_STF, align 4
  %60 = call i32 @snd_fw_transaction(i32 %57, i32 %58, i32 %59, i32* %8, i32 4, i32 0)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %52
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %3, align 4
  br label %167

65:                                               ; preds = %52
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %82, %65
  %67 = load i32, i32* %9, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %9, align 4
  %69 = icmp ult i32 %67, 10
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %72 = call i32 @latter_get_clock(%struct.snd_ff* %71, i32* %12, i32* %13)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %3, align 4
  br label %167

77:                                               ; preds = %70
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %83

82:                                               ; preds = %77
  br label %66

83:                                               ; preds = %81, %66
  %84 = load i32, i32* %9, align 4
  %85 = icmp eq i32 %84, 10
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* @ETIMEDOUT, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %167

89:                                               ; preds = %83
  store i32 0, i32* %10, align 4
  br label %90

90:                                               ; preds = %105, %89
  %91 = load i32, i32* %10, align 4
  %92 = load i32*, i32** @amdtp_rate_table, align 8
  %93 = call i32 @ARRAY_SIZE(i32* %92)
  %94 = icmp slt i32 %91, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %90
  %96 = load i32, i32* %5, align 4
  %97 = load i32*, i32** @amdtp_rate_table, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %96, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  br label %108

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %90

108:                                              ; preds = %103, %90
  %109 = load i32, i32* %10, align 4
  %110 = load i32*, i32** @amdtp_rate_table, align 8
  %111 = call i32 @ARRAY_SIZE(i32* %110)
  %112 = icmp eq i32 %109, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %167

116:                                              ; preds = %108
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @snd_ff_stream_get_multiplier_mode(i32 %117, i32* %6)
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %11, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = load i32, i32* %11, align 4
  store i32 %122, i32* %3, align 4
  br label %167

123:                                              ; preds = %116
  %124 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %125 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  store i32 255, i32* %126, align 4
  %127 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %128 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %127, i32 0, i32 0
  %129 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %130 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %129, i32 0, i32 4
  %131 = call i32 @amdtp_stream_get_max_payload(i32* %130)
  %132 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %133 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call %struct.TYPE_4__* @fw_parent_device(i32 %134)
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @fw_iso_resources_allocate(%struct.TYPE_5__* %128, i32 %131, i32 %137)
  store i32 %138, i32* %11, align 4
  %139 = load i32, i32* %11, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %123
  %142 = load i32, i32* %11, align 4
  store i32 %142, i32* %3, align 4
  br label %167

143:                                              ; preds = %123
  %144 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %145 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  store i32 255, i32* %146, align 4
  %147 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %148 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %147, i32 0, i32 3
  %149 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %150 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %149, i32 0, i32 2
  %151 = call i32 @amdtp_stream_get_max_payload(i32* %150)
  %152 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %153 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call %struct.TYPE_4__* @fw_parent_device(i32 %154)
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @fw_iso_resources_allocate(%struct.TYPE_5__* %148, i32 %151, i32 %157)
  store i32 %158, i32* %11, align 4
  %159 = load i32, i32* %11, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %143
  %162 = load %struct.snd_ff*, %struct.snd_ff** %4, align 8
  %163 = getelementptr inbounds %struct.snd_ff, %struct.snd_ff* %162, i32 0, i32 0
  %164 = call i32 @fw_iso_resources_free(%struct.TYPE_5__* %163)
  br label %165

165:                                              ; preds = %161, %143
  %166 = load i32, i32* %11, align 4
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %165, %141, %121, %113, %86, %75, %63, %28
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @snd_fw_transaction(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @latter_get_clock(%struct.snd_ff*, i32*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_ff_stream_get_multiplier_mode(i32, i32*) #1

declare dso_local i32 @fw_iso_resources_allocate(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @amdtp_stream_get_max_payload(i32*) #1

declare dso_local %struct.TYPE_4__* @fw_parent_device(i32) #1

declare dso_local i32 @fw_iso_resources_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
