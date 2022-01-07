; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_decode_MOSDOpReply.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_decode_MOSDOpReply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_msg = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i8* }
%struct.MOSDOpReply = type { i32, i32, i32, i32, i32*, %struct.TYPE_6__, %struct.ceph_eversion, i32, i32*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ceph_eversion = type { i32 }
%struct.ceph_osd_op = type { i32 }

@e_inval = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_msg*, %struct.MOSDOpReply*)* @decode_MOSDOpReply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_MOSDOpReply(%struct.ceph_msg* %0, %struct.MOSDOpReply* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_msg*, align 8
  %5 = alloca %struct.MOSDOpReply*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ceph_eversion, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ceph_osd_op*, align 8
  store %struct.ceph_msg* %0, %struct.ceph_msg** %4, align 8
  store %struct.MOSDOpReply* %1, %struct.MOSDOpReply** %5, align 8
  %15 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %16 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %21 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr i8, i8* %19, i64 %24
  store i8* %25, i8** %7, align 8
  %26 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %27 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @le16_to_cpu(i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @e_inval, align 4
  %34 = call i32 @ceph_decode_32_safe(i8** %6, i8* %31, i32 %32, i32 %33)
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @e_inval, align 4
  %38 = call i32 @ceph_decode_need(i8** %6, i8* %35, i32 %36, i32 %37)
  %39 = load i32, i32* %11, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr i8, i8* %40, i64 %41
  store i8* %42, i8** %6, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load %struct.MOSDOpReply*, %struct.MOSDOpReply** %5, align 8
  %45 = getelementptr inbounds %struct.MOSDOpReply, %struct.MOSDOpReply* %44, i32 0, i32 10
  %46 = call i32 @ceph_decode_pgid(i8** %6, i8* %43, i32* %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %2
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %3, align 4
  br label %220

51:                                               ; preds = %2
  %52 = load i8*, i8** %7, align 8
  %53 = load %struct.MOSDOpReply*, %struct.MOSDOpReply** %5, align 8
  %54 = getelementptr inbounds %struct.MOSDOpReply, %struct.MOSDOpReply* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @e_inval, align 4
  %57 = call i32 @ceph_decode_64_safe(i8** %6, i8* %52, i32 %55, i32 %56)
  %58 = load i8*, i8** %7, align 8
  %59 = load %struct.MOSDOpReply*, %struct.MOSDOpReply** %5, align 8
  %60 = getelementptr inbounds %struct.MOSDOpReply, %struct.MOSDOpReply* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @e_inval, align 4
  %63 = call i32 @ceph_decode_32_safe(i8** %6, i8* %58, i32 %61, i32 %62)
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* @e_inval, align 4
  %66 = call i32 @ceph_decode_need(i8** %6, i8* %64, i32 4, i32 %65)
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @memcpy(%struct.ceph_eversion* %9, i8* %67, i32 4)
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr i8, i8* %69, i64 4
  store i8* %70, i8** %6, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = load %struct.MOSDOpReply*, %struct.MOSDOpReply** %5, align 8
  %73 = getelementptr inbounds %struct.MOSDOpReply, %struct.MOSDOpReply* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @e_inval, align 4
  %76 = call i32 @ceph_decode_32_safe(i8** %6, i8* %71, i32 %74, i32 %75)
  %77 = load i8*, i8** %7, align 8
  %78 = load %struct.MOSDOpReply*, %struct.MOSDOpReply** %5, align 8
  %79 = getelementptr inbounds %struct.MOSDOpReply, %struct.MOSDOpReply* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @e_inval, align 4
  %82 = call i32 @ceph_decode_32_safe(i8** %6, i8* %77, i32 %80, i32 %81)
  %83 = load %struct.MOSDOpReply*, %struct.MOSDOpReply** %5, align 8
  %84 = getelementptr inbounds %struct.MOSDOpReply, %struct.MOSDOpReply* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.MOSDOpReply*, %struct.MOSDOpReply** %5, align 8
  %87 = getelementptr inbounds %struct.MOSDOpReply, %struct.MOSDOpReply* %86, i32 0, i32 8
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @ARRAY_SIZE(i32* %88)
  %90 = icmp sgt i32 %85, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %51
  br label %217

92:                                               ; preds = %51
  %93 = load i8*, i8** %7, align 8
  %94 = load %struct.MOSDOpReply*, %struct.MOSDOpReply** %5, align 8
  %95 = getelementptr inbounds %struct.MOSDOpReply, %struct.MOSDOpReply* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 4
  %99 = trunc i64 %98 to i32
  %100 = load i32, i32* @e_inval, align 4
  %101 = call i32 @ceph_decode_need(i8** %6, i8* %93, i32 %99, i32 %100)
  store i32 0, i32* %13, align 4
  br label %102

102:                                              ; preds = %123, %92
  %103 = load i32, i32* %13, align 4
  %104 = load %struct.MOSDOpReply*, %struct.MOSDOpReply** %5, align 8
  %105 = getelementptr inbounds %struct.MOSDOpReply, %struct.MOSDOpReply* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %126

108:                                              ; preds = %102
  %109 = load i8*, i8** %6, align 8
  %110 = bitcast i8* %109 to %struct.ceph_osd_op*
  store %struct.ceph_osd_op* %110, %struct.ceph_osd_op** %14, align 8
  %111 = load %struct.ceph_osd_op*, %struct.ceph_osd_op** %14, align 8
  %112 = getelementptr inbounds %struct.ceph_osd_op, %struct.ceph_osd_op* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @le32_to_cpu(i32 %113)
  %115 = load %struct.MOSDOpReply*, %struct.MOSDOpReply** %5, align 8
  %116 = getelementptr inbounds %struct.MOSDOpReply, %struct.MOSDOpReply* %115, i32 0, i32 8
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32 %114, i32* %120, align 4
  %121 = load i8*, i8** %6, align 8
  %122 = getelementptr i8, i8* %121, i64 4
  store i8* %122, i8** %6, align 8
  br label %123

123:                                              ; preds = %108
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %13, align 4
  br label %102

126:                                              ; preds = %102
  %127 = load i8*, i8** %7, align 8
  %128 = load %struct.MOSDOpReply*, %struct.MOSDOpReply** %5, align 8
  %129 = getelementptr inbounds %struct.MOSDOpReply, %struct.MOSDOpReply* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @e_inval, align 4
  %132 = call i32 @ceph_decode_32_safe(i8** %6, i8* %127, i32 %130, i32 %131)
  store i32 0, i32* %13, align 4
  br label %133

133:                                              ; preds = %150, %126
  %134 = load i32, i32* %13, align 4
  %135 = load %struct.MOSDOpReply*, %struct.MOSDOpReply** %5, align 8
  %136 = getelementptr inbounds %struct.MOSDOpReply, %struct.MOSDOpReply* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = icmp slt i32 %134, %137
  br i1 %138, label %139, label %153

139:                                              ; preds = %133
  %140 = load i8*, i8** %7, align 8
  %141 = load %struct.MOSDOpReply*, %struct.MOSDOpReply** %5, align 8
  %142 = getelementptr inbounds %struct.MOSDOpReply, %struct.MOSDOpReply* %141, i32 0, i32 4
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @e_inval, align 4
  %149 = call i32 @ceph_decode_32_safe(i8** %6, i8* %140, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %139
  %151 = load i32, i32* %13, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %13, align 4
  br label %133

153:                                              ; preds = %133
  %154 = load i32, i32* %8, align 4
  %155 = icmp sge i32 %154, 5
  br i1 %155, label %156, label %172

156:                                              ; preds = %153
  %157 = load i8*, i8** %7, align 8
  %158 = load i32, i32* @e_inval, align 4
  %159 = call i32 @ceph_decode_need(i8** %6, i8* %157, i32 4, i32 %158)
  %160 = load %struct.MOSDOpReply*, %struct.MOSDOpReply** %5, align 8
  %161 = getelementptr inbounds %struct.MOSDOpReply, %struct.MOSDOpReply* %160, i32 0, i32 6
  %162 = load i8*, i8** %6, align 8
  %163 = call i32 @memcpy(%struct.ceph_eversion* %161, i8* %162, i32 4)
  %164 = load i8*, i8** %6, align 8
  %165 = getelementptr i8, i8* %164, i64 4
  store i8* %165, i8** %6, align 8
  %166 = load i8*, i8** %7, align 8
  %167 = load %struct.MOSDOpReply*, %struct.MOSDOpReply** %5, align 8
  %168 = getelementptr inbounds %struct.MOSDOpReply, %struct.MOSDOpReply* %167, i32 0, i32 7
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @e_inval, align 4
  %171 = call i32 @ceph_decode_64_safe(i8** %6, i8* %166, i32 %169, i32 %170)
  br label %184

172:                                              ; preds = %153
  %173 = load %struct.MOSDOpReply*, %struct.MOSDOpReply** %5, align 8
  %174 = getelementptr inbounds %struct.MOSDOpReply, %struct.MOSDOpReply* %173, i32 0, i32 6
  %175 = bitcast %struct.ceph_eversion* %174 to i8*
  %176 = bitcast %struct.ceph_eversion* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %175, i8* align 4 %176, i64 4, i1 false)
  %177 = load %struct.MOSDOpReply*, %struct.MOSDOpReply** %5, align 8
  %178 = getelementptr inbounds %struct.MOSDOpReply, %struct.MOSDOpReply* %177, i32 0, i32 6
  %179 = getelementptr inbounds %struct.ceph_eversion, %struct.ceph_eversion* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @le64_to_cpu(i32 %180)
  %182 = load %struct.MOSDOpReply*, %struct.MOSDOpReply** %5, align 8
  %183 = getelementptr inbounds %struct.MOSDOpReply, %struct.MOSDOpReply* %182, i32 0, i32 7
  store i32 %181, i32* %183, align 8
  br label %184

184:                                              ; preds = %172, %156
  %185 = load i32, i32* %8, align 4
  %186 = icmp sge i32 %185, 6
  br i1 %186, label %187, label %197

187:                                              ; preds = %184
  %188 = load i32, i32* %8, align 4
  %189 = icmp sge i32 %188, 7
  br i1 %189, label %190, label %195

190:                                              ; preds = %187
  %191 = load i8*, i8** %7, align 8
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* @e_inval, align 4
  %194 = call i32 @ceph_decode_8_safe(i8** %6, i8* %191, i32 %192, i32 %193)
  br label %196

195:                                              ; preds = %187
  store i32 1, i32* %10, align 4
  br label %196

196:                                              ; preds = %195, %190
  br label %198

197:                                              ; preds = %184
  store i32 0, i32* %10, align 4
  br label %198

198:                                              ; preds = %197, %196
  %199 = load i32, i32* %10, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %211

201:                                              ; preds = %198
  %202 = load i8*, i8** %7, align 8
  %203 = load %struct.MOSDOpReply*, %struct.MOSDOpReply** %5, align 8
  %204 = getelementptr inbounds %struct.MOSDOpReply, %struct.MOSDOpReply* %203, i32 0, i32 5
  %205 = call i32 @ceph_redirect_decode(i8** %6, i8* %202, %struct.TYPE_6__* %204)
  store i32 %205, i32* %12, align 4
  %206 = load i32, i32* %12, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %201
  %209 = load i32, i32* %12, align 4
  store i32 %209, i32* %3, align 4
  br label %220

210:                                              ; preds = %201
  br label %216

211:                                              ; preds = %198
  %212 = load %struct.MOSDOpReply*, %struct.MOSDOpReply** %5, align 8
  %213 = getelementptr inbounds %struct.MOSDOpReply, %struct.MOSDOpReply* %212, i32 0, i32 5
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = call i32 @ceph_oloc_init(i32* %214)
  br label %216

216:                                              ; preds = %211, %210
  store i32 0, i32* %3, align 4
  br label %220

217:                                              ; preds = %91
  %218 = load i32, i32* @EINVAL, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %3, align 4
  br label %220

220:                                              ; preds = %217, %216, %208, %49
  %221 = load i32, i32* %3, align 4
  ret i32 %221
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ceph_decode_32_safe(i8**, i8*, i32, i32) #1

declare dso_local i32 @ceph_decode_need(i8**, i8*, i32, i32) #1

declare dso_local i32 @ceph_decode_pgid(i8**, i8*, i32*) #1

declare dso_local i32 @ceph_decode_64_safe(i8**, i8*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.ceph_eversion*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @ceph_decode_8_safe(i8**, i8*, i32, i32) #1

declare dso_local i32 @ceph_redirect_decode(i8**, i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @ceph_oloc_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
