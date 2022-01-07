; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfserl.c_cfserl_receive.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfserl.c_cfserl_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cflayer = type { i32 }
%struct.cfpkt = type { i32 }
%struct.cfserl = type { i32, i64, %struct.TYPE_3__, %struct.cfpkt* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, %struct.cfpkt*)* }

@CFSERL_STX = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@SERIAL_MINIUM_PACKET_SIZE = common dso_local global i32 0, align 4
@SERIAL_MAX_FRAMESIZE = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cflayer*, %struct.cfpkt*)* @cfserl_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfserl_receive(%struct.cflayer* %0, %struct.cfpkt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cflayer*, align 8
  %5 = alloca %struct.cfpkt*, align 8
  %6 = alloca %struct.cfserl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cfpkt*, align 8
  %9 = alloca %struct.cfpkt*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cflayer* %0, %struct.cflayer** %4, align 8
  store %struct.cfpkt* %1, %struct.cfpkt** %5, align 8
  %15 = load %struct.cflayer*, %struct.cflayer** %4, align 8
  %16 = call %struct.cfserl* @container_obj(%struct.cflayer* %15)
  store %struct.cfserl* %16, %struct.cfserl** %6, align 8
  store %struct.cfpkt* null, %struct.cfpkt** %8, align 8
  store %struct.cfpkt* null, %struct.cfpkt** %9, align 8
  %17 = load i64, i64* @CFSERL_STX, align 8
  store i64 %17, i64* %12, align 8
  store i32 0, i32* %14, align 4
  %18 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %19 = icmp ne %struct.cfpkt* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @caif_assert(i32 %20)
  %22 = load %struct.cfserl*, %struct.cfserl** %6, align 8
  %23 = getelementptr inbounds %struct.cfserl, %struct.cfserl* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.cfserl*, %struct.cfserl** %6, align 8
  %26 = getelementptr inbounds %struct.cfserl, %struct.cfserl* %25, i32 0, i32 3
  %27 = load %struct.cfpkt*, %struct.cfpkt** %26, align 8
  %28 = icmp ne %struct.cfpkt* %27, null
  br i1 %28, label %29, label %51

29:                                               ; preds = %2
  %30 = load %struct.cfserl*, %struct.cfserl** %6, align 8
  %31 = getelementptr inbounds %struct.cfserl, %struct.cfserl* %30, i32 0, i32 3
  %32 = load %struct.cfpkt*, %struct.cfpkt** %31, align 8
  %33 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  %34 = load i32, i32* %14, align 4
  %35 = call i8* @cfpkt_append(%struct.cfpkt* %32, %struct.cfpkt* %33, i32 %34)
  %36 = bitcast i8* %35 to %struct.cfpkt*
  %37 = load %struct.cfserl*, %struct.cfserl** %6, align 8
  %38 = getelementptr inbounds %struct.cfserl, %struct.cfserl* %37, i32 0, i32 3
  store %struct.cfpkt* %36, %struct.cfpkt** %38, align 8
  %39 = load %struct.cfserl*, %struct.cfserl** %6, align 8
  %40 = getelementptr inbounds %struct.cfserl, %struct.cfserl* %39, i32 0, i32 3
  %41 = load %struct.cfpkt*, %struct.cfpkt** %40, align 8
  store %struct.cfpkt* %41, %struct.cfpkt** %8, align 8
  %42 = load %struct.cfpkt*, %struct.cfpkt** %8, align 8
  %43 = icmp eq %struct.cfpkt* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %29
  %45 = load %struct.cfserl*, %struct.cfserl** %6, align 8
  %46 = getelementptr inbounds %struct.cfserl, %struct.cfserl* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %228

50:                                               ; preds = %29
  br label %53

51:                                               ; preds = %2
  %52 = load %struct.cfpkt*, %struct.cfpkt** %5, align 8
  store %struct.cfpkt* %52, %struct.cfpkt** %8, align 8
  br label %53

53:                                               ; preds = %51, %50
  %54 = load %struct.cfserl*, %struct.cfserl** %6, align 8
  %55 = getelementptr inbounds %struct.cfserl, %struct.cfserl* %54, i32 0, i32 3
  store %struct.cfpkt* null, %struct.cfpkt** %55, align 8
  br label %56

56:                                               ; preds = %221, %53
  %57 = load %struct.cfserl*, %struct.cfserl** %6, align 8
  %58 = getelementptr inbounds %struct.cfserl, %struct.cfserl* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %97

61:                                               ; preds = %56
  %62 = load %struct.cfpkt*, %struct.cfpkt** %8, align 8
  %63 = call i32 @cfpkt_extr_head(%struct.cfpkt* %62, i64* %10, i32 1)
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* @CFSERL_STX, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %96

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %78, %67
  %69 = load %struct.cfpkt*, %struct.cfpkt** %8, align 8
  %70 = call i64 @cfpkt_more(%struct.cfpkt* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* @CFSERL_STX, align 8
  %75 = icmp ne i64 %73, %74
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi i1 [ false, %68 ], [ %75, %72 ]
  br i1 %77, label %78, label %81

78:                                               ; preds = %76
  %79 = load %struct.cfpkt*, %struct.cfpkt** %8, align 8
  %80 = call i32 @cfpkt_extr_head(%struct.cfpkt* %79, i64* %10, i32 1)
  br label %68

81:                                               ; preds = %76
  %82 = load %struct.cfpkt*, %struct.cfpkt** %8, align 8
  %83 = call i64 @cfpkt_more(%struct.cfpkt* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %81
  %86 = load %struct.cfpkt*, %struct.cfpkt** %8, align 8
  %87 = call i32 @cfpkt_destroy(%struct.cfpkt* %86)
  %88 = load %struct.cfserl*, %struct.cfserl** %6, align 8
  %89 = getelementptr inbounds %struct.cfserl, %struct.cfserl* %88, i32 0, i32 3
  store %struct.cfpkt* null, %struct.cfpkt** %89, align 8
  %90 = load %struct.cfserl*, %struct.cfserl** %6, align 8
  %91 = getelementptr inbounds %struct.cfserl, %struct.cfserl* %90, i32 0, i32 0
  %92 = call i32 @spin_unlock(i32* %91)
  %93 = load i32, i32* @EPROTO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %228

95:                                               ; preds = %81
  br label %96

96:                                               ; preds = %95, %61
  br label %97

97:                                               ; preds = %96, %56
  %98 = load %struct.cfpkt*, %struct.cfpkt** %8, align 8
  %99 = call i32 @cfpkt_getlen(%struct.cfpkt* %98)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp slt i32 %100, 2
  br i1 %101, label %102, label %117

102:                                              ; preds = %97
  %103 = load %struct.cfserl*, %struct.cfserl** %6, align 8
  %104 = getelementptr inbounds %struct.cfserl, %struct.cfserl* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load %struct.cfpkt*, %struct.cfpkt** %8, align 8
  %109 = call i32 @cfpkt_add_head(%struct.cfpkt* %108, i64* %12, i32 1)
  br label %110

110:                                              ; preds = %107, %102
  %111 = load %struct.cfpkt*, %struct.cfpkt** %8, align 8
  %112 = load %struct.cfserl*, %struct.cfserl** %6, align 8
  %113 = getelementptr inbounds %struct.cfserl, %struct.cfserl* %112, i32 0, i32 3
  store %struct.cfpkt* %111, %struct.cfpkt** %113, align 8
  %114 = load %struct.cfserl*, %struct.cfserl** %6, align 8
  %115 = getelementptr inbounds %struct.cfserl, %struct.cfserl* %114, i32 0, i32 0
  %116 = call i32 @spin_unlock(i32* %115)
  store i32 0, i32* %3, align 4
  br label %228

117:                                              ; preds = %97
  %118 = load %struct.cfpkt*, %struct.cfpkt** %8, align 8
  %119 = call i32 @cfpkt_peek_head(%struct.cfpkt* %118, i32* %11, i32 2)
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @le16_to_cpu(i32 %120)
  %122 = add nsw i32 %121, 2
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* @SERIAL_MINIUM_PACKET_SIZE, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %130, label %126

126:                                              ; preds = %117
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* @SERIAL_MAX_FRAMESIZE, align 4
  %129 = icmp sgt i32 %127, %128
  br i1 %129, label %130, label %150

130:                                              ; preds = %126, %117
  %131 = load %struct.cfserl*, %struct.cfserl** %6, align 8
  %132 = getelementptr inbounds %struct.cfserl, %struct.cfserl* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %149, label %135

135:                                              ; preds = %130
  %136 = load %struct.cfpkt*, %struct.cfpkt** %8, align 8
  %137 = icmp ne %struct.cfpkt* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load %struct.cfpkt*, %struct.cfpkt** %8, align 8
  %140 = call i32 @cfpkt_destroy(%struct.cfpkt* %139)
  br label %141

141:                                              ; preds = %138, %135
  %142 = load %struct.cfserl*, %struct.cfserl** %6, align 8
  %143 = getelementptr inbounds %struct.cfserl, %struct.cfserl* %142, i32 0, i32 3
  store %struct.cfpkt* null, %struct.cfpkt** %143, align 8
  store i32 0, i32* %14, align 4
  %144 = load %struct.cfserl*, %struct.cfserl** %6, align 8
  %145 = getelementptr inbounds %struct.cfserl, %struct.cfserl* %144, i32 0, i32 0
  %146 = call i32 @spin_unlock(i32* %145)
  %147 = load i32, i32* @EPROTO, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %3, align 4
  br label %228

149:                                              ; preds = %130
  br label %221

150:                                              ; preds = %126
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* %14, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %169

154:                                              ; preds = %150
  %155 = load %struct.cfserl*, %struct.cfserl** %6, align 8
  %156 = getelementptr inbounds %struct.cfserl, %struct.cfserl* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %154
  %160 = load %struct.cfpkt*, %struct.cfpkt** %8, align 8
  %161 = call i32 @cfpkt_add_head(%struct.cfpkt* %160, i64* %12, i32 1)
  br label %162

162:                                              ; preds = %159, %154
  %163 = load %struct.cfpkt*, %struct.cfpkt** %8, align 8
  %164 = load %struct.cfserl*, %struct.cfserl** %6, align 8
  %165 = getelementptr inbounds %struct.cfserl, %struct.cfserl* %164, i32 0, i32 3
  store %struct.cfpkt* %163, %struct.cfpkt** %165, align 8
  %166 = load %struct.cfserl*, %struct.cfserl** %6, align 8
  %167 = getelementptr inbounds %struct.cfserl, %struct.cfserl* %166, i32 0, i32 0
  %168 = call i32 @spin_unlock(i32* %167)
  store i32 0, i32* %3, align 4
  br label %228

169:                                              ; preds = %150
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* %14, align 4
  %172 = icmp sgt i32 %170, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %169
  %174 = load %struct.cfpkt*, %struct.cfpkt** %8, align 8
  %175 = load i32, i32* %14, align 4
  %176 = call %struct.cfpkt* @cfpkt_split(%struct.cfpkt* %174, i32 %175)
  store %struct.cfpkt* %176, %struct.cfpkt** %9, align 8
  br label %178

177:                                              ; preds = %169
  store %struct.cfpkt* null, %struct.cfpkt** %9, align 8
  br label %178

178:                                              ; preds = %177, %173
  %179 = load %struct.cfserl*, %struct.cfserl** %6, align 8
  %180 = getelementptr inbounds %struct.cfserl, %struct.cfserl* %179, i32 0, i32 0
  %181 = call i32 @spin_unlock(i32* %180)
  %182 = load %struct.cfserl*, %struct.cfserl** %6, align 8
  %183 = getelementptr inbounds %struct.cfserl, %struct.cfserl* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i32 (%struct.TYPE_4__*, %struct.cfpkt*)*, i32 (%struct.TYPE_4__*, %struct.cfpkt*)** %186, align 8
  %188 = load %struct.cfserl*, %struct.cfserl** %6, align 8
  %189 = getelementptr inbounds %struct.cfserl, %struct.cfserl* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %190, align 8
  %192 = load %struct.cfpkt*, %struct.cfpkt** %8, align 8
  %193 = call i32 %187(%struct.TYPE_4__* %191, %struct.cfpkt* %192)
  store i32 %193, i32* %13, align 4
  %194 = load %struct.cfserl*, %struct.cfserl** %6, align 8
  %195 = getelementptr inbounds %struct.cfserl, %struct.cfserl* %194, i32 0, i32 0
  %196 = call i32 @spin_lock(i32* %195)
  %197 = load i32, i32* %13, align 4
  %198 = load i32, i32* @EILSEQ, align 4
  %199 = sub nsw i32 0, %198
  %200 = icmp eq i32 %197, %199
  br i1 %200, label %201, label %219

201:                                              ; preds = %178
  %202 = load %struct.cfserl*, %struct.cfserl** %6, align 8
  %203 = getelementptr inbounds %struct.cfserl, %struct.cfserl* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %215

206:                                              ; preds = %201
  %207 = load %struct.cfpkt*, %struct.cfpkt** %9, align 8
  %208 = icmp ne %struct.cfpkt* %207, null
  br i1 %208, label %209, label %214

209:                                              ; preds = %206
  %210 = load %struct.cfpkt*, %struct.cfpkt** %8, align 8
  %211 = load %struct.cfpkt*, %struct.cfpkt** %9, align 8
  %212 = call i8* @cfpkt_append(%struct.cfpkt* %210, %struct.cfpkt* %211, i32 0)
  %213 = bitcast i8* %212 to %struct.cfpkt*
  store %struct.cfpkt* %213, %struct.cfpkt** %8, align 8
  br label %214

214:                                              ; preds = %209, %206
  br label %221

215:                                              ; preds = %201
  %216 = load %struct.cfpkt*, %struct.cfpkt** %8, align 8
  %217 = call i32 @cfpkt_destroy(%struct.cfpkt* %216)
  store %struct.cfpkt* null, %struct.cfpkt** %8, align 8
  br label %218

218:                                              ; preds = %215
  br label %219

219:                                              ; preds = %218, %178
  %220 = load %struct.cfpkt*, %struct.cfpkt** %9, align 8
  store %struct.cfpkt* %220, %struct.cfpkt** %8, align 8
  br label %221

221:                                              ; preds = %219, %214, %149
  %222 = load %struct.cfpkt*, %struct.cfpkt** %8, align 8
  %223 = icmp ne %struct.cfpkt* %222, null
  br i1 %223, label %56, label %224

224:                                              ; preds = %221
  %225 = load %struct.cfserl*, %struct.cfserl** %6, align 8
  %226 = getelementptr inbounds %struct.cfserl, %struct.cfserl* %225, i32 0, i32 0
  %227 = call i32 @spin_unlock(i32* %226)
  store i32 0, i32* %3, align 4
  br label %228

228:                                              ; preds = %224, %162, %141, %110, %85, %44
  %229 = load i32, i32* %3, align 4
  ret i32 %229
}

declare dso_local %struct.cfserl* @container_obj(%struct.cflayer*) #1

declare dso_local i32 @caif_assert(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i8* @cfpkt_append(%struct.cfpkt*, %struct.cfpkt*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cfpkt_extr_head(%struct.cfpkt*, i64*, i32) #1

declare dso_local i64 @cfpkt_more(%struct.cfpkt*) #1

declare dso_local i32 @cfpkt_destroy(%struct.cfpkt*) #1

declare dso_local i32 @cfpkt_getlen(%struct.cfpkt*) #1

declare dso_local i32 @cfpkt_add_head(%struct.cfpkt*, i64*, i32) #1

declare dso_local i32 @cfpkt_peek_head(%struct.cfpkt*, i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.cfpkt* @cfpkt_split(%struct.cfpkt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
