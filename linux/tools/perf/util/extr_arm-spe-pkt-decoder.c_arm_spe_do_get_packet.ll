; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_arm-spe-pkt-decoder.c_arm_spe_do_get_packet.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_arm-spe-pkt-decoder.c_arm_spe_do_get_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_spe_pkt = type { i32 }

@ARM_SPE_NEED_MORE_BYTES = common dso_local global i32 0, align 4
@SPE_HEADER0_PAD = common dso_local global i32 0, align 4
@SPE_HEADER0_END = common dso_local global i32 0, align 4
@SPE_HEADER0_ADDRESS_MASK = common dso_local global i32 0, align 4
@SPE_HEADER0_ADDRESS = common dso_local global i32 0, align 4
@SPE_HEADER0_COUNTER_MASK = common dso_local global i32 0, align 4
@SPE_HEADER0_COUNTER = common dso_local global i32 0, align 4
@SPE_HEADER0_TIMESTAMP = common dso_local global i32 0, align 4
@SPE_HEADER0_EVENTS_MASK = common dso_local global i32 0, align 4
@SPE_HEADER0_EVENTS = common dso_local global i32 0, align 4
@SPE_HEADER0_SOURCE_MASK = common dso_local global i32 0, align 4
@SPE_HEADER0_SOURCE = common dso_local global i32 0, align 4
@SPE_HEADER0_CONTEXT_MASK = common dso_local global i32 0, align 4
@SPE_HEADER0_CONTEXT = common dso_local global i32 0, align 4
@SPE_HEADER0_OP_TYPE_MASK = common dso_local global i32 0, align 4
@SPE_HEADER0_OP_TYPE = common dso_local global i32 0, align 4
@SPE_HEADER1_ALIGNMENT = common dso_local global i32 0, align 4
@SPE_HEADER1_ADDRESS_MASK = common dso_local global i32 0, align 4
@SPE_HEADER1_ADDRESS = common dso_local global i32 0, align 4
@SPE_HEADER1_COUNTER_MASK = common dso_local global i32 0, align 4
@SPE_HEADER1_COUNTER = common dso_local global i32 0, align 4
@ARM_SPE_BAD_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.arm_spe_pkt*)* @arm_spe_do_get_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_spe_do_get_packet(i8* %0, i64 %1, %struct.arm_spe_pkt* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.arm_spe_pkt*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.arm_spe_pkt* %2, %struct.arm_spe_pkt** %7, align 8
  %9 = load %struct.arm_spe_pkt*, %struct.arm_spe_pkt** %7, align 8
  %10 = call i32 @memset(%struct.arm_spe_pkt* %9, i32 0, i32 4)
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ARM_SPE_NEED_MORE_BYTES, align 4
  store i32 %14, i32* %4, align 4
  br label %170

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @SPE_HEADER0_PAD, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load %struct.arm_spe_pkt*, %struct.arm_spe_pkt** %7, align 8
  %25 = call i32 @arm_spe_get_pad(%struct.arm_spe_pkt* %24)
  store i32 %25, i32* %4, align 4
  br label %170

26:                                               ; preds = %15
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @SPE_HEADER0_END, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.arm_spe_pkt*, %struct.arm_spe_pkt** %7, align 8
  %32 = call i32 @arm_spe_get_end(%struct.arm_spe_pkt* %31)
  store i32 %32, i32* %4, align 4
  br label %170

33:                                               ; preds = %26
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, 192
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %123

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, 128
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @SPE_HEADER0_ADDRESS_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @SPE_HEADER0_ADDRESS, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load i8*, i8** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.arm_spe_pkt*, %struct.arm_spe_pkt** %7, align 8
  %51 = call i32 @arm_spe_get_addr(i8* %48, i64 %49, i32 0, %struct.arm_spe_pkt* %50)
  store i32 %51, i32* %4, align 4
  br label %170

52:                                               ; preds = %41
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @SPE_HEADER0_COUNTER_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @SPE_HEADER0_COUNTER, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load i8*, i8** %5, align 8
  %60 = load i64, i64* %6, align 8
  %61 = load %struct.arm_spe_pkt*, %struct.arm_spe_pkt** %7, align 8
  %62 = call i32 @arm_spe_get_counter(i8* %59, i64 %60, i32 0, %struct.arm_spe_pkt* %61)
  store i32 %62, i32* %4, align 4
  br label %170

63:                                               ; preds = %52
  br label %122

64:                                               ; preds = %37
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @SPE_HEADER0_TIMESTAMP, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i8*, i8** %5, align 8
  %70 = load i64, i64* %6, align 8
  %71 = load %struct.arm_spe_pkt*, %struct.arm_spe_pkt** %7, align 8
  %72 = call i32 @arm_spe_get_timestamp(i8* %69, i64 %70, %struct.arm_spe_pkt* %71)
  store i32 %72, i32* %4, align 4
  br label %170

73:                                               ; preds = %64
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @SPE_HEADER0_EVENTS_MASK, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* @SPE_HEADER0_EVENTS, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load i8*, i8** %5, align 8
  %81 = load i64, i64* %6, align 8
  %82 = load %struct.arm_spe_pkt*, %struct.arm_spe_pkt** %7, align 8
  %83 = call i32 @arm_spe_get_events(i8* %80, i64 %81, %struct.arm_spe_pkt* %82)
  store i32 %83, i32* %4, align 4
  br label %170

84:                                               ; preds = %73
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @SPE_HEADER0_SOURCE_MASK, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @SPE_HEADER0_SOURCE, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load i8*, i8** %5, align 8
  %92 = load i64, i64* %6, align 8
  %93 = load %struct.arm_spe_pkt*, %struct.arm_spe_pkt** %7, align 8
  %94 = call i32 @arm_spe_get_data_source(i8* %91, i64 %92, %struct.arm_spe_pkt* %93)
  store i32 %94, i32* %4, align 4
  br label %170

95:                                               ; preds = %84
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @SPE_HEADER0_CONTEXT_MASK, align 4
  %98 = and i32 %96, %97
  %99 = load i32, i32* @SPE_HEADER0_CONTEXT, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = load i8*, i8** %5, align 8
  %103 = load i64, i64* %6, align 8
  %104 = load %struct.arm_spe_pkt*, %struct.arm_spe_pkt** %7, align 8
  %105 = call i32 @arm_spe_get_context(i8* %102, i64 %103, %struct.arm_spe_pkt* %104)
  store i32 %105, i32* %4, align 4
  br label %170

106:                                              ; preds = %95
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @SPE_HEADER0_OP_TYPE_MASK, align 4
  %109 = and i32 %107, %108
  %110 = load i32, i32* @SPE_HEADER0_OP_TYPE, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %106
  %113 = load i8*, i8** %5, align 8
  %114 = load i64, i64* %6, align 8
  %115 = load %struct.arm_spe_pkt*, %struct.arm_spe_pkt** %7, align 8
  %116 = call i32 @arm_spe_get_op_type(i8* %113, i64 %114, %struct.arm_spe_pkt* %115)
  store i32 %116, i32* %4, align 4
  br label %170

117:                                              ; preds = %106
  br label %118

118:                                              ; preds = %117
  br label %119

119:                                              ; preds = %118
  br label %120

120:                                              ; preds = %119
  br label %121

121:                                              ; preds = %120
  br label %122

122:                                              ; preds = %121, %63
  br label %166

123:                                              ; preds = %33
  %124 = load i32, i32* %8, align 4
  %125 = and i32 %124, 224
  %126 = icmp eq i32 %125, 32
  br i1 %126, label %127, label %165

127:                                              ; preds = %123
  %128 = load i8*, i8** %5, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 1
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @SPE_HEADER1_ALIGNMENT, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %127
  %136 = load i8*, i8** %5, align 8
  %137 = load i64, i64* %6, align 8
  %138 = load %struct.arm_spe_pkt*, %struct.arm_spe_pkt** %7, align 8
  %139 = call i32 @arm_spe_get_alignment(i8* %136, i64 %137, %struct.arm_spe_pkt* %138)
  store i32 %139, i32* %4, align 4
  br label %170

140:                                              ; preds = %127
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @SPE_HEADER1_ADDRESS_MASK, align 4
  %143 = and i32 %141, %142
  %144 = load i32, i32* @SPE_HEADER1_ADDRESS, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %140
  %147 = load i8*, i8** %5, align 8
  %148 = load i64, i64* %6, align 8
  %149 = load %struct.arm_spe_pkt*, %struct.arm_spe_pkt** %7, align 8
  %150 = call i32 @arm_spe_get_addr(i8* %147, i64 %148, i32 1, %struct.arm_spe_pkt* %149)
  store i32 %150, i32* %4, align 4
  br label %170

151:                                              ; preds = %140
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* @SPE_HEADER1_COUNTER_MASK, align 4
  %154 = and i32 %152, %153
  %155 = load i32, i32* @SPE_HEADER1_COUNTER, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %151
  %158 = load i8*, i8** %5, align 8
  %159 = load i64, i64* %6, align 8
  %160 = load %struct.arm_spe_pkt*, %struct.arm_spe_pkt** %7, align 8
  %161 = call i32 @arm_spe_get_counter(i8* %158, i64 %159, i32 1, %struct.arm_spe_pkt* %160)
  store i32 %161, i32* %4, align 4
  br label %170

162:                                              ; preds = %151
  br label %163

163:                                              ; preds = %162
  br label %164

164:                                              ; preds = %163
  br label %165

165:                                              ; preds = %164, %123
  br label %166

166:                                              ; preds = %165, %122
  br label %167

167:                                              ; preds = %166
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* @ARM_SPE_BAD_PACKET, align 4
  store i32 %169, i32* %4, align 4
  br label %170

170:                                              ; preds = %168, %157, %146, %135, %112, %101, %90, %79, %68, %58, %47, %30, %23, %13
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local i32 @memset(%struct.arm_spe_pkt*, i32, i32) #1

declare dso_local i32 @arm_spe_get_pad(%struct.arm_spe_pkt*) #1

declare dso_local i32 @arm_spe_get_end(%struct.arm_spe_pkt*) #1

declare dso_local i32 @arm_spe_get_addr(i8*, i64, i32, %struct.arm_spe_pkt*) #1

declare dso_local i32 @arm_spe_get_counter(i8*, i64, i32, %struct.arm_spe_pkt*) #1

declare dso_local i32 @arm_spe_get_timestamp(i8*, i64, %struct.arm_spe_pkt*) #1

declare dso_local i32 @arm_spe_get_events(i8*, i64, %struct.arm_spe_pkt*) #1

declare dso_local i32 @arm_spe_get_data_source(i8*, i64, %struct.arm_spe_pkt*) #1

declare dso_local i32 @arm_spe_get_context(i8*, i64, %struct.arm_spe_pkt*) #1

declare dso_local i32 @arm_spe_get_op_type(i8*, i64, %struct.arm_spe_pkt*) #1

declare dso_local i32 @arm_spe_get_alignment(i8*, i64, %struct.arm_spe_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
