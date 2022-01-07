; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_card_asihpi_mixer_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_card_asihpi_mixer_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card_asihpi = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__*, %struct.snd_card* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.snd_card = type { i32 }
%struct.hpi_control = type { i32, i64, i64, i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Asihpi Mixer\00", align 1
@HPI_ERROR_CONTROL_DISABLED = common dso_local global i32 0, align 4
@mixer_dump = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Disabled HPI Control(%d)\0A\00", align 1
@HPI_SOURCENODE_NONE = common dso_local global i64 0, align 8
@HPI_DESTNODE_NONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"Untranslated HPI Control (%d) %d %d %d %d %d\0A\00", align 1
@HPI_ERROR_INVALID_OBJ_INDEX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"%d mixer controls found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card_asihpi*)* @snd_card_asihpi_mixer_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_card_asihpi_mixer_new(%struct.snd_card_asihpi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_card_asihpi*, align 8
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hpi_control, align 8
  %9 = alloca %struct.hpi_control, align 8
  store %struct.snd_card_asihpi* %0, %struct.snd_card_asihpi** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %3, align 8
  %11 = icmp ne %struct.snd_card_asihpi* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @snd_BUG_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %201

19:                                               ; preds = %1
  %20 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %3, align 8
  %21 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %20, i32 0, i32 3
  %22 = load %struct.snd_card*, %struct.snd_card** %21, align 8
  store %struct.snd_card* %22, %struct.snd_card** %4, align 8
  %23 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %24 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @strcpy(i32 %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %3, align 8
  %28 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %27, i32 0, i32 2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %3, align 8
  %35 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %34, i32 0, i32 1
  %36 = call i32 @hpi_mixer_open(i32 %33, i32* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @hpi_handle_error(i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %19
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %201

44:                                               ; preds = %19
  %45 = call i32 @memset(%struct.hpi_control* %9, i32 0, i32 48)
  %46 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %9, i32 0, i32 0
  store i32 -1, i32* %46, align 8
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %184, %44
  %48 = load i32, i32* %5, align 4
  %49 = icmp ult i32 %48, 2000
  br i1 %49, label %50, label %187

50:                                               ; preds = %47
  %51 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %3, align 8
  %52 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %8, i32 0, i32 1
  %56 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %8, i32 0, i32 2
  %57 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %8, i32 0, i32 3
  %58 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %8, i32 0, i32 4
  %59 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %8, i32 0, i32 0
  %60 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %8, i32 0, i32 5
  %61 = call i32 @hpi_mixer_get_control_by_index(i32 %53, i32 %54, i64* %55, i64* %56, i64* %57, i64* %58, i32* %59, i32* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %50
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @HPI_ERROR_CONTROL_DISABLED, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %64
  %69 = load i64, i64* @mixer_dump, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %3, align 8
  %73 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %5, align 4
  %77 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %71, %68
  br label %184

79:                                               ; preds = %64
  br label %187

80:                                               ; preds = %50
  %81 = load i64, i64* @HPI_SOURCENODE_NONE, align 8
  %82 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %8, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %83, %81
  store i64 %84, i64* %82, align 8
  %85 = load i64, i64* @HPI_DESTNODE_NONE, align 8
  %86 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %8, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %87, %85
  store i64 %88, i64* %86, align 8
  %89 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %8, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %9, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %121

94:                                               ; preds = %80
  %95 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %8, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %9, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %96, %98
  br i1 %99, label %100, label %121

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %8, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %9, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %102, %104
  br i1 %105, label %106, label %121

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %8, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %9, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %108, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %8, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %9, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %114, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = load i32, i32* %6, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %122

121:                                              ; preds = %112, %106, %100, %94, %80
  store i32 0, i32* %6, align 4
  br label %122

122:                                              ; preds = %121, %118
  %123 = bitcast %struct.hpi_control* %9 to i8*
  %124 = bitcast %struct.hpi_control* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %123, i8* align 8 %124, i64 48, i1 false)
  %125 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %8, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  switch i32 %126, label %157 [
    i32 129, label %127
    i32 136, label %130
    i32 133, label %133
    i32 139, label %136
    i32 135, label %139
    i32 131, label %143
    i32 137, label %146
    i32 130, label %147
    i32 141, label %150
    i32 142, label %153
    i32 128, label %156
    i32 140, label %156
    i32 134, label %156
    i32 132, label %156
    i32 138, label %156
  ]

127:                                              ; preds = %122
  %128 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %3, align 8
  %129 = call i32 @snd_asihpi_volume_add(%struct.snd_card_asihpi* %128, %struct.hpi_control* %8)
  store i32 %129, i32* %7, align 4
  br label %178

130:                                              ; preds = %122
  %131 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %3, align 8
  %132 = call i32 @snd_asihpi_level_add(%struct.snd_card_asihpi* %131, %struct.hpi_control* %8)
  store i32 %132, i32* %7, align 4
  br label %178

133:                                              ; preds = %122
  %134 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %3, align 8
  %135 = call i32 @snd_asihpi_mux_add(%struct.snd_card_asihpi* %134, %struct.hpi_control* %8)
  store i32 %135, i32* %7, align 4
  br label %178

136:                                              ; preds = %122
  %137 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %3, align 8
  %138 = call i32 @snd_asihpi_cmode_add(%struct.snd_card_asihpi* %137, %struct.hpi_control* %8)
  store i32 %138, i32* %7, align 4
  br label %178

139:                                              ; preds = %122
  %140 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %3, align 8
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @snd_asihpi_meter_add(%struct.snd_card_asihpi* %140, %struct.hpi_control* %8, i32 %141)
  store i32 %142, i32* %7, align 4
  br label %178

143:                                              ; preds = %122
  %144 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %3, align 8
  %145 = call i32 @snd_asihpi_sampleclock_add(%struct.snd_card_asihpi* %144, %struct.hpi_control* %8)
  store i32 %145, i32* %7, align 4
  br label %178

146:                                              ; preds = %122
  br label %184

147:                                              ; preds = %122
  %148 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %3, align 8
  %149 = call i32 @snd_asihpi_tuner_add(%struct.snd_card_asihpi* %148, %struct.hpi_control* %8)
  store i32 %149, i32* %7, align 4
  br label %178

150:                                              ; preds = %122
  %151 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %3, align 8
  %152 = call i32 @snd_asihpi_aesebu_tx_add(%struct.snd_card_asihpi* %151, %struct.hpi_control* %8)
  store i32 %152, i32* %7, align 4
  br label %178

153:                                              ; preds = %122
  %154 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %3, align 8
  %155 = call i32 @snd_asihpi_aesebu_rx_add(%struct.snd_card_asihpi* %154, %struct.hpi_control* %8)
  store i32 %155, i32* %7, align 4
  br label %178

156:                                              ; preds = %122, %122, %122, %122, %122
  br label %157

157:                                              ; preds = %122, %156
  %158 = load i64, i64* @mixer_dump, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %177

160:                                              ; preds = %157
  %161 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %3, align 8
  %162 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %161, i32 0, i32 0
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load i32, i32* %5, align 4
  %166 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %8, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %8, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %8, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %8, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds %struct.hpi_control, %struct.hpi_control* %8, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %164, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %165, i32 %167, i64 %169, i64 %171, i64 %173, i64 %175)
  br label %177

177:                                              ; preds = %160, %157
  br label %184

178:                                              ; preds = %153, %150, %147, %143, %139, %136, %133, %130, %127
  %179 = load i32, i32* %7, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %178
  %182 = load i32, i32* %7, align 4
  store i32 %182, i32* %2, align 4
  br label %201

183:                                              ; preds = %178
  br label %184

184:                                              ; preds = %183, %177, %146, %78
  %185 = load i32, i32* %5, align 4
  %186 = add i32 %185, 1
  store i32 %186, i32* %5, align 4
  br label %47

187:                                              ; preds = %79, %47
  %188 = load i32, i32* @HPI_ERROR_INVALID_OBJ_INDEX, align 4
  %189 = load i32, i32* %7, align 4
  %190 = icmp ne i32 %188, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %187
  %192 = load i32, i32* %7, align 4
  %193 = call i32 @hpi_handle_error(i32 %192)
  br label %194

194:                                              ; preds = %191, %187
  %195 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %3, align 8
  %196 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %195, i32 0, i32 0
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i32, i32* %5, align 4
  %200 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %198, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %199)
  store i32 0, i32* %2, align 4
  br label %201

201:                                              ; preds = %194, %181, %41, %16
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @hpi_mixer_open(i32, i32*) #1

declare dso_local i32 @hpi_handle_error(i32) #1

declare dso_local i32 @memset(%struct.hpi_control*, i32, i32) #1

declare dso_local i32 @hpi_mixer_get_control_by_index(i32, i32, i64*, i64*, i64*, i64*, i32*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_asihpi_volume_add(%struct.snd_card_asihpi*, %struct.hpi_control*) #1

declare dso_local i32 @snd_asihpi_level_add(%struct.snd_card_asihpi*, %struct.hpi_control*) #1

declare dso_local i32 @snd_asihpi_mux_add(%struct.snd_card_asihpi*, %struct.hpi_control*) #1

declare dso_local i32 @snd_asihpi_cmode_add(%struct.snd_card_asihpi*, %struct.hpi_control*) #1

declare dso_local i32 @snd_asihpi_meter_add(%struct.snd_card_asihpi*, %struct.hpi_control*, i32) #1

declare dso_local i32 @snd_asihpi_sampleclock_add(%struct.snd_card_asihpi*, %struct.hpi_control*) #1

declare dso_local i32 @snd_asihpi_tuner_add(%struct.snd_card_asihpi*, %struct.hpi_control*) #1

declare dso_local i32 @snd_asihpi_aesebu_tx_add(%struct.snd_card_asihpi*, %struct.hpi_control*) #1

declare dso_local i32 @snd_asihpi_aesebu_rx_add(%struct.snd_card_asihpi*, %struct.hpi_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
