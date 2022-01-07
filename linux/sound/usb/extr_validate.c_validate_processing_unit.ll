; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_validate.c_validate_processing_unit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_validate.c_validate_processing_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_desc_validator = type { i32, i32 }
%struct.uac_processing_unit_descriptor = type { i32, i32, i32 }

@UAC2_PROCESSING_UNIT_V2 = common dso_local global i32 0, align 4
@UAC1_EXTENSION_UNIT = common dso_local global i32 0, align 4
@UAC2_EXTENSION_UNIT_V2 = common dso_local global i32 0, align 4
@UAC3_EXTENSION_UNIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.usb_desc_validator*)* @validate_processing_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_processing_unit(i8* %0, %struct.usb_desc_validator* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.usb_desc_validator*, align 8
  %6 = alloca %struct.uac_processing_unit_descriptor*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.usb_desc_validator* %1, %struct.usb_desc_validator** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.uac_processing_unit_descriptor*
  store %struct.uac_processing_unit_descriptor* %11, %struct.uac_processing_unit_descriptor** %6, align 8
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %7, align 8
  %13 = load %struct.uac_processing_unit_descriptor*, %struct.uac_processing_unit_descriptor** %6, align 8
  %14 = getelementptr inbounds %struct.uac_processing_unit_descriptor, %struct.uac_processing_unit_descriptor* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 12
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %204

19:                                               ; preds = %2
  %20 = load %struct.uac_processing_unit_descriptor*, %struct.uac_processing_unit_descriptor** %6, align 8
  %21 = getelementptr inbounds %struct.uac_processing_unit_descriptor, %struct.uac_processing_unit_descriptor* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = add i64 12, %23
  store i64 %24, i64* %8, align 8
  %25 = load %struct.uac_processing_unit_descriptor*, %struct.uac_processing_unit_descriptor** %6, align 8
  %26 = getelementptr inbounds %struct.uac_processing_unit_descriptor, %struct.uac_processing_unit_descriptor* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %8, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %204

32:                                               ; preds = %19
  %33 = load %struct.usb_desc_validator*, %struct.usb_desc_validator** %5, align 8
  %34 = getelementptr inbounds %struct.usb_desc_validator, %struct.usb_desc_validator* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %37 [
    i32 130, label %36
    i32 129, label %58
    i32 128, label %75
  ]

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %32, %36
  %38 = load i64, i64* %8, align 8
  %39 = add i64 %38, 5
  store i64 %39, i64* %8, align 8
  %40 = load %struct.uac_processing_unit_descriptor*, %struct.uac_processing_unit_descriptor** %6, align 8
  %41 = getelementptr inbounds %struct.uac_processing_unit_descriptor, %struct.uac_processing_unit_descriptor* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %8, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %204

47:                                               ; preds = %37
  %48 = load i8*, i8** %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i64
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %9, align 8
  %54 = add i64 1, %53
  %55 = add i64 %54, 1
  %56 = load i64, i64* %8, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %8, align 8
  br label %78

58:                                               ; preds = %32
  %59 = load i64, i64* %8, align 8
  %60 = add i64 %59, 6
  store i64 %60, i64* %8, align 8
  %61 = load %struct.usb_desc_validator*, %struct.usb_desc_validator** %5, align 8
  %62 = getelementptr inbounds %struct.usb_desc_validator, %struct.usb_desc_validator* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @UAC2_PROCESSING_UNIT_V2, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load i64, i64* %8, align 8
  %68 = add i64 %67, 2
  store i64 %68, i64* %8, align 8
  br label %72

69:                                               ; preds = %58
  %70 = load i64, i64* %8, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %8, align 8
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i64, i64* %8, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %8, align 8
  br label %78

75:                                               ; preds = %32
  %76 = load i64, i64* %8, align 8
  %77 = add i64 %76, 6
  store i64 %77, i64* %8, align 8
  br label %78

78:                                               ; preds = %75, %72, %47
  %79 = load %struct.uac_processing_unit_descriptor*, %struct.uac_processing_unit_descriptor** %6, align 8
  %80 = getelementptr inbounds %struct.uac_processing_unit_descriptor, %struct.uac_processing_unit_descriptor* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* %8, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %204

86:                                               ; preds = %78
  %87 = load %struct.usb_desc_validator*, %struct.usb_desc_validator** %5, align 8
  %88 = getelementptr inbounds %struct.usb_desc_validator, %struct.usb_desc_validator* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  switch i32 %89, label %91 [
    i32 130, label %90
    i32 129, label %124
    i32 128, label %157
  ]

90:                                               ; preds = %86
  br label %91

91:                                               ; preds = %86, %90
  %92 = load %struct.usb_desc_validator*, %struct.usb_desc_validator** %5, align 8
  %93 = getelementptr inbounds %struct.usb_desc_validator, %struct.usb_desc_validator* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @UAC1_EXTENSION_UNIT, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  store i32 1, i32* %3, align 4
  br label %204

98:                                               ; preds = %91
  %99 = load %struct.uac_processing_unit_descriptor*, %struct.uac_processing_unit_descriptor** %6, align 8
  %100 = getelementptr inbounds %struct.uac_processing_unit_descriptor, %struct.uac_processing_unit_descriptor* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  switch i32 %101, label %122 [
    i32 131, label %102
    i32 132, label %102
  ]

102:                                              ; preds = %98, %98
  %103 = load %struct.uac_processing_unit_descriptor*, %struct.uac_processing_unit_descriptor** %6, align 8
  %104 = getelementptr inbounds %struct.uac_processing_unit_descriptor, %struct.uac_processing_unit_descriptor* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* %8, align 8
  %108 = add i64 %107, 1
  %109 = icmp ult i64 %106, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  store i32 0, i32* %3, align 4
  br label %204

111:                                              ; preds = %102
  %112 = load i8*, i8** %7, align 8
  %113 = load i64, i64* %8, align 8
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i64
  store i64 %116, i64* %9, align 8
  %117 = load i64, i64* %9, align 8
  %118 = mul i64 %117, 2
  %119 = add i64 1, %118
  %120 = load i64, i64* %8, align 8
  %121 = add i64 %120, %119
  store i64 %121, i64* %8, align 8
  br label %123

122:                                              ; preds = %98
  br label %123

123:                                              ; preds = %122, %111
  br label %195

124:                                              ; preds = %86
  %125 = load %struct.usb_desc_validator*, %struct.usb_desc_validator** %5, align 8
  %126 = getelementptr inbounds %struct.usb_desc_validator, %struct.usb_desc_validator* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @UAC2_EXTENSION_UNIT_V2, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  store i32 1, i32* %3, align 4
  br label %204

131:                                              ; preds = %124
  %132 = load %struct.uac_processing_unit_descriptor*, %struct.uac_processing_unit_descriptor** %6, align 8
  %133 = getelementptr inbounds %struct.uac_processing_unit_descriptor, %struct.uac_processing_unit_descriptor* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  switch i32 %134, label %155 [
    i32 135, label %135
    i32 136, label %135
  ]

135:                                              ; preds = %131, %131
  %136 = load %struct.uac_processing_unit_descriptor*, %struct.uac_processing_unit_descriptor** %6, align 8
  %137 = getelementptr inbounds %struct.uac_processing_unit_descriptor, %struct.uac_processing_unit_descriptor* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = load i64, i64* %8, align 8
  %141 = add i64 %140, 1
  %142 = icmp ult i64 %139, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %135
  store i32 0, i32* %3, align 4
  br label %204

144:                                              ; preds = %135
  %145 = load i8*, i8** %7, align 8
  %146 = load i64, i64* %8, align 8
  %147 = getelementptr inbounds i8, i8* %145, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i64
  store i64 %149, i64* %9, align 8
  %150 = load i64, i64* %9, align 8
  %151 = mul i64 %150, 4
  %152 = add i64 1, %151
  %153 = load i64, i64* %8, align 8
  %154 = add i64 %153, %152
  store i64 %154, i64* %8, align 8
  br label %156

155:                                              ; preds = %131
  br label %156

156:                                              ; preds = %155, %144
  br label %195

157:                                              ; preds = %86
  %158 = load %struct.usb_desc_validator*, %struct.usb_desc_validator** %5, align 8
  %159 = getelementptr inbounds %struct.usb_desc_validator, %struct.usb_desc_validator* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @UAC3_EXTENSION_UNIT, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %157
  %164 = load i64, i64* %8, align 8
  %165 = add i64 %164, 2
  store i64 %165, i64* %8, align 8
  br label %195

166:                                              ; preds = %157
  %167 = load %struct.uac_processing_unit_descriptor*, %struct.uac_processing_unit_descriptor** %6, align 8
  %168 = getelementptr inbounds %struct.uac_processing_unit_descriptor, %struct.uac_processing_unit_descriptor* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  switch i32 %169, label %193 [
    i32 133, label %170
    i32 134, label %190
  ]

170:                                              ; preds = %166
  %171 = load %struct.uac_processing_unit_descriptor*, %struct.uac_processing_unit_descriptor** %6, align 8
  %172 = getelementptr inbounds %struct.uac_processing_unit_descriptor, %struct.uac_processing_unit_descriptor* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = load i64, i64* %8, align 8
  %176 = add i64 %175, 1
  %177 = icmp ult i64 %174, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %170
  store i32 0, i32* %3, align 4
  br label %204

179:                                              ; preds = %170
  %180 = load i8*, i8** %7, align 8
  %181 = load i64, i64* %8, align 8
  %182 = getelementptr inbounds i8, i8* %180, i64 %181
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i64
  store i64 %184, i64* %9, align 8
  %185 = load i64, i64* %9, align 8
  %186 = mul i64 %185, 2
  %187 = add i64 1, %186
  %188 = load i64, i64* %8, align 8
  %189 = add i64 %188, %187
  store i64 %189, i64* %8, align 8
  br label %194

190:                                              ; preds = %166
  %191 = load i64, i64* %8, align 8
  %192 = add i64 %191, 6
  store i64 %192, i64* %8, align 8
  br label %194

193:                                              ; preds = %166
  br label %194

194:                                              ; preds = %193, %190, %179
  br label %195

195:                                              ; preds = %194, %163, %156, %123
  %196 = load %struct.uac_processing_unit_descriptor*, %struct.uac_processing_unit_descriptor** %6, align 8
  %197 = getelementptr inbounds %struct.uac_processing_unit_descriptor, %struct.uac_processing_unit_descriptor* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = sext i32 %198 to i64
  %200 = load i64, i64* %8, align 8
  %201 = icmp ult i64 %199, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %195
  store i32 0, i32* %3, align 4
  br label %204

203:                                              ; preds = %195
  store i32 1, i32* %3, align 4
  br label %204

204:                                              ; preds = %203, %202, %178, %143, %130, %110, %97, %85, %46, %31, %18
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
