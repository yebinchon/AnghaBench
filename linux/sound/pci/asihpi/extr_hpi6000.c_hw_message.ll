; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6000.c_hw_message.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6000.c_hw_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_adapter_obj = type { %struct.hpi_hw_obj* }
%struct.hpi_hw_obj = type { i32 }
%struct.hpi_message = type { i32, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.hpi_response = type { i32, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }

@HPI_ISTREAM_GROUP_ADD = common dso_local global i32 0, align 4
@HPI_OSTREAM_GROUP_ADD = common dso_local global i32 0, align 4
@HPI_ERROR_NO_INTERDSP_GROUPS = common dso_local global i32 0, align 4
@HPI_ERROR_BACKEND_BASE = common dso_local global i32 0, align 4
@HPI_ERROR_DSP_COMMUNICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpi_adapter_obj*, %struct.hpi_message*, %struct.hpi_response*)* @hw_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_message(%struct.hpi_adapter_obj* %0, %struct.hpi_message* %1, %struct.hpi_response* %2) #0 {
  %4 = alloca %struct.hpi_adapter_obj*, align 8
  %5 = alloca %struct.hpi_message*, align 8
  %6 = alloca %struct.hpi_response*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hpi_hw_obj*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.hpi_message, align 4
  %12 = alloca i32, align 4
  store %struct.hpi_adapter_obj* %0, %struct.hpi_adapter_obj** %4, align 8
  store %struct.hpi_message* %1, %struct.hpi_message** %5, align 8
  store %struct.hpi_response* %2, %struct.hpi_response** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %14 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %13, i32 0, i32 0
  %15 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %14, align 8
  store %struct.hpi_hw_obj* %15, %struct.hpi_hw_obj** %9, align 8
  %16 = load %struct.hpi_hw_obj*, %struct.hpi_hw_obj** %9, align 8
  %17 = getelementptr inbounds %struct.hpi_hw_obj, %struct.hpi_hw_obj* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %65

22:                                               ; preds = %3
  %23 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %24 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %25 = call i32 @get_dsp_index(%struct.hpi_adapter_obj* %23, %struct.hpi_message* %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %27 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @HPI_ISTREAM_GROUP_ADD, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %22
  %32 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %33 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @HPI_OSTREAM_GROUP_ADD, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %64

37:                                               ; preds = %31, %22
  %38 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %39 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %11, i32 0, i32 3
  store i32 %44, i32* %45, align 4
  %46 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %47 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %11, i32 0, i32 2
  store i32 %52, i32* %53, align 4
  %54 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %55 = call i32 @get_dsp_index(%struct.hpi_adapter_obj* %54, %struct.hpi_message* %11)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %37
  %60 = load i32, i32* @HPI_ERROR_NO_INTERDSP_GROUPS, align 4
  %61 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %62 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %152

63:                                               ; preds = %37
  br label %64

64:                                               ; preds = %63, %31
  br label %65

65:                                               ; preds = %64, %21
  %66 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %67 = call i32 @hpios_dsplock_lock(%struct.hpi_adapter_obj* %66)
  %68 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %71 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %72 = call i32 @hpi6000_message_response_sequence(%struct.hpi_adapter_obj* %68, i32 %69, %struct.hpi_message* %70, %struct.hpi_response* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  br label %127

76:                                               ; preds = %65
  %77 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %78 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %149

82:                                               ; preds = %76
  %83 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %84 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  switch i32 %85, label %126 [
    i32 128, label %86
    i32 131, label %86
    i32 130, label %92
    i32 129, label %92
    i32 132, label %98
  ]

86:                                               ; preds = %82, %82
  %87 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %90 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %91 = call i32 @hpi6000_send_data(%struct.hpi_adapter_obj* %87, i32 %88, %struct.hpi_message* %89, %struct.hpi_response* %90)
  store i32 %91, i32* %7, align 4
  br label %126

92:                                               ; preds = %82, %82
  %93 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %96 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %97 = call i32 @hpi6000_get_data(%struct.hpi_adapter_obj* %93, i32 %94, %struct.hpi_message* %95, %struct.hpi_response* %96)
  store i32 %97, i32* %7, align 4
  br label %126

98:                                               ; preds = %82
  %99 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %100 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  store i32 0, i32* %103, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp eq i32 %104, 2
  br i1 %105, label %106, label %125

106:                                              ; preds = %98
  %107 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %108 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %124, label %114

114:                                              ; preds = %106
  %115 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %116 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %117 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %118 = call i32 @hpi6000_message_response_sequence(%struct.hpi_adapter_obj* %115, i32 1, %struct.hpi_message* %116, %struct.hpi_response* %117)
  store i32 %118, i32* %7, align 4
  %119 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %120 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  store i32 1, i32* %123, align 4
  br label %124

124:                                              ; preds = %114, %106
  br label %125

125:                                              ; preds = %124, %98
  br label %126

126:                                              ; preds = %125, %82, %92, %86
  br label %127

127:                                              ; preds = %126, %75
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %148

130:                                              ; preds = %127
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @HPI_ERROR_BACKEND_BASE, align 4
  %133 = icmp sge i32 %131, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %130
  %135 = load i32, i32* @HPI_ERROR_DSP_COMMUNICATION, align 4
  %136 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %137 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* %7, align 4
  %139 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %140 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  br label %145

141:                                              ; preds = %130
  %142 = load i32, i32* %7, align 4
  %143 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %144 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 4
  br label %145

145:                                              ; preds = %141, %134
  %146 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %147 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %146, i32 0, i32 2
  store i32 4, i32* %147, align 4
  br label %148

148:                                              ; preds = %145, %127
  br label %149

149:                                              ; preds = %148, %81
  %150 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %151 = call i32 @hpios_dsplock_unlock(%struct.hpi_adapter_obj* %150)
  br label %152

152:                                              ; preds = %149, %59
  ret void
}

declare dso_local i32 @get_dsp_index(%struct.hpi_adapter_obj*, %struct.hpi_message*) #1

declare dso_local i32 @hpios_dsplock_lock(%struct.hpi_adapter_obj*) #1

declare dso_local i32 @hpi6000_message_response_sequence(%struct.hpi_adapter_obj*, i32, %struct.hpi_message*, %struct.hpi_response*) #1

declare dso_local i32 @hpi6000_send_data(%struct.hpi_adapter_obj*, i32, %struct.hpi_message*, %struct.hpi_response*) #1

declare dso_local i32 @hpi6000_get_data(%struct.hpi_adapter_obj*, i32, %struct.hpi_message*, %struct.hpi_response*) #1

declare dso_local i32 @hpios_dsplock_unlock(%struct.hpi_adapter_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
