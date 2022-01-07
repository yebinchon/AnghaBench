; ModuleID = '/home/carl/AnghaBench/linux/net/rose/extr_rose_subr.c_rose_create_facilities.c'
source_filename = "/home/carl/AnghaBench/linux/net/rose/extr_rose_subr.c_rose_create_facilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rose_sock = type { i32, i32, i32, i8*, i8*, i8, i8, i32, i32 }

@FAC_NATIONAL = common dso_local global i32 0, align 4
@FAC_NATIONAL_RAND = common dso_local global i32 0, align 4
@FAC_NATIONAL_DIGIS = common dso_local global i32 0, align 4
@AX25_ADDR_LEN = common dso_local global i32 0, align 4
@ROSE_MAX_DIGIS = common dso_local global i32 0, align 4
@AX25_HBIT = common dso_local global i8 0, align 1
@FAC_NATIONAL_SRC_DIGI = common dso_local global i32 0, align 4
@FAC_NATIONAL_DEST_DIGI = common dso_local global i32 0, align 4
@FAC_CCITT = common dso_local global i32 0, align 4
@FAC_CCITT_DEST_NSAP = common dso_local global i32 0, align 4
@ROSE_ADDR_LEN = common dso_local global i32 0, align 4
@FAC_CCITT_SRC_NSAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.rose_sock*)* @rose_create_facilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rose_create_facilities(i8* %0, %struct.rose_sock* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rose_sock*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [11 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.rose_sock* %1, %struct.rose_sock** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 1
  store i8* %12, i8** %5, align 8
  %13 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %14 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %2
  %18 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %19 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %24 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %214

27:                                               ; preds = %22, %17, %2
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %5, align 8
  store i8 0, i8* %28, align 1
  %30 = load i32, i32* @FAC_NATIONAL, align 4
  %31 = trunc i32 %30 to i8
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %5, align 8
  store i8 %31, i8* %32, align 1
  %34 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %35 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %27
  %39 = load i32, i32* @FAC_NATIONAL_RAND, align 4
  %40 = trunc i32 %39 to i8
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %5, align 8
  store i8 %40, i8* %41, align 1
  %43 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %44 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = ashr i32 %45, 8
  %47 = and i32 %46, 255
  %48 = trunc i32 %47 to i8
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %5, align 8
  store i8 %48, i8* %49, align 1
  %51 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %52 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = ashr i32 %53, 0
  %55 = and i32 %54, 255
  %56 = trunc i32 %55 to i8
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %5, align 8
  store i8 %56, i8* %57, align 1
  br label %59

59:                                               ; preds = %38, %27
  %60 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %61 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %66 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %163

69:                                               ; preds = %64, %59
  store i32 0, i32* %10, align 4
  %70 = load i32, i32* @FAC_NATIONAL_DIGIS, align 4
  %71 = trunc i32 %70 to i8
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %5, align 8
  store i8 %71, i8* %72, align 1
  %74 = load i32, i32* @AX25_ADDR_LEN, align 4
  %75 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %76 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %79 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %77, %80
  %82 = mul nsw i32 %74, %81
  %83 = trunc i32 %82 to i8
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %5, align 8
  store i8 %83, i8* %84, align 1
  store i32 0, i32* %9, align 4
  br label %86

86:                                               ; preds = %120, %69
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %89 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %123

92:                                               ; preds = %86
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* @ROSE_MAX_DIGIS, align 4
  %96 = icmp sge i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %123

98:                                               ; preds = %92
  %99 = load i8*, i8** %5, align 8
  %100 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %101 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %100, i32 0, i32 3
  %102 = load i8*, i8** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i32, i32* @AX25_ADDR_LEN, align 4
  %107 = call i32 @memcpy(i8* %99, i8* %105, i32 %106)
  %108 = load i8, i8* @AX25_HBIT, align 1
  %109 = zext i8 %108 to i32
  %110 = load i8*, i8** %5, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 6
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = or i32 %113, %109
  %115 = trunc i32 %114 to i8
  store i8 %115, i8* %111, align 1
  %116 = load i32, i32* @AX25_ADDR_LEN, align 4
  %117 = load i8*, i8** %5, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  store i8* %119, i8** %5, align 8
  br label %120

120:                                              ; preds = %98
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %9, align 4
  br label %86

123:                                              ; preds = %97, %86
  store i32 0, i32* %9, align 4
  br label %124

124:                                              ; preds = %159, %123
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %127 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %162

130:                                              ; preds = %124
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* @ROSE_MAX_DIGIS, align 4
  %134 = icmp sge i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  br label %162

136:                                              ; preds = %130
  %137 = load i8*, i8** %5, align 8
  %138 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %139 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %138, i32 0, i32 4
  %140 = load i8*, i8** %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = load i32, i32* @AX25_ADDR_LEN, align 4
  %145 = call i32 @memcpy(i8* %137, i8* %143, i32 %144)
  %146 = load i8, i8* @AX25_HBIT, align 1
  %147 = zext i8 %146 to i32
  %148 = xor i32 %147, -1
  %149 = load i8*, i8** %5, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 6
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = and i32 %152, %148
  %154 = trunc i32 %153 to i8
  store i8 %154, i8* %150, align 1
  %155 = load i32, i32* @AX25_ADDR_LEN, align 4
  %156 = load i8*, i8** %5, align 8
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds i8, i8* %156, i64 %157
  store i8* %158, i8** %5, align 8
  br label %159

159:                                              ; preds = %136
  %160 = load i32, i32* %9, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %9, align 4
  br label %124

162:                                              ; preds = %135, %124
  br label %163

163:                                              ; preds = %162, %64
  %164 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %165 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %188

168:                                              ; preds = %163
  %169 = load i32, i32* @FAC_NATIONAL_SRC_DIGI, align 4
  %170 = trunc i32 %169 to i8
  %171 = load i8*, i8** %5, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %5, align 8
  store i8 %170, i8* %171, align 1
  %173 = load i32, i32* @AX25_ADDR_LEN, align 4
  %174 = trunc i32 %173 to i8
  %175 = load i8*, i8** %5, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %5, align 8
  store i8 %174, i8* %175, align 1
  %177 = load i8*, i8** %5, align 8
  %178 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %179 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %178, i32 0, i32 3
  %180 = load i8*, i8** %179, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 0
  %182 = load i32, i32* @AX25_ADDR_LEN, align 4
  %183 = call i32 @memcpy(i8* %177, i8* %181, i32 %182)
  %184 = load i32, i32* @AX25_ADDR_LEN, align 4
  %185 = load i8*, i8** %5, align 8
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds i8, i8* %185, i64 %186
  store i8* %187, i8** %5, align 8
  br label %188

188:                                              ; preds = %168, %163
  %189 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %190 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = icmp sgt i32 %191, 0
  br i1 %192, label %193, label %213

193:                                              ; preds = %188
  %194 = load i32, i32* @FAC_NATIONAL_DEST_DIGI, align 4
  %195 = trunc i32 %194 to i8
  %196 = load i8*, i8** %5, align 8
  %197 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %197, i8** %5, align 8
  store i8 %195, i8* %196, align 1
  %198 = load i32, i32* @AX25_ADDR_LEN, align 4
  %199 = trunc i32 %198 to i8
  %200 = load i8*, i8** %5, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %201, i8** %5, align 8
  store i8 %199, i8* %200, align 1
  %202 = load i8*, i8** %5, align 8
  %203 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %204 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %203, i32 0, i32 4
  %205 = load i8*, i8** %204, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 0
  %207 = load i32, i32* @AX25_ADDR_LEN, align 4
  %208 = call i32 @memcpy(i8* %202, i8* %206, i32 %207)
  %209 = load i32, i32* @AX25_ADDR_LEN, align 4
  %210 = load i8*, i8** %5, align 8
  %211 = sext i32 %209 to i64
  %212 = getelementptr inbounds i8, i8* %210, i64 %211
  store i8* %212, i8** %5, align 8
  br label %213

213:                                              ; preds = %193, %188
  br label %214

214:                                              ; preds = %213, %22
  %215 = load i8*, i8** %5, align 8
  %216 = getelementptr inbounds i8, i8* %215, i32 1
  store i8* %216, i8** %5, align 8
  store i8 0, i8* %215, align 1
  %217 = load i32, i32* @FAC_CCITT, align 4
  %218 = trunc i32 %217 to i8
  %219 = load i8*, i8** %5, align 8
  %220 = getelementptr inbounds i8, i8* %219, i32 1
  store i8* %220, i8** %5, align 8
  store i8 %218, i8* %219, align 1
  %221 = load i32, i32* @FAC_CCITT_DEST_NSAP, align 4
  %222 = trunc i32 %221 to i8
  %223 = load i8*, i8** %5, align 8
  %224 = getelementptr inbounds i8, i8* %223, i32 1
  store i8* %224, i8** %5, align 8
  store i8 %222, i8* %223, align 1
  %225 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %226 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %227 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %226, i32 0, i32 8
  %228 = call i8* @ax2asc(i8* %225, i32* %227)
  store i8* %228, i8** %6, align 8
  %229 = load i8*, i8** %6, align 8
  %230 = call i32 @strlen(i8* %229)
  %231 = add nsw i32 %230, 10
  %232 = trunc i32 %231 to i8
  %233 = load i8*, i8** %5, align 8
  %234 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %234, i8** %5, align 8
  store i8 %232, i8* %233, align 1
  %235 = load i8*, i8** %6, align 8
  %236 = call i32 @strlen(i8* %235)
  %237 = add nsw i32 %236, 9
  %238 = mul nsw i32 %237, 2
  %239 = trunc i32 %238 to i8
  %240 = load i8*, i8** %5, align 8
  %241 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %241, i8** %5, align 8
  store i8 %239, i8* %240, align 1
  %242 = load i8*, i8** %5, align 8
  %243 = getelementptr inbounds i8, i8* %242, i32 1
  store i8* %243, i8** %5, align 8
  store i8 71, i8* %242, align 1
  %244 = load i8*, i8** %5, align 8
  %245 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %245, i8** %5, align 8
  store i8 0, i8* %244, align 1
  %246 = load i8*, i8** %5, align 8
  %247 = getelementptr inbounds i8, i8* %246, i32 1
  store i8* %247, i8** %5, align 8
  store i8 17, i8* %246, align 1
  %248 = load i32, i32* @ROSE_ADDR_LEN, align 4
  %249 = mul nsw i32 %248, 2
  %250 = trunc i32 %249 to i8
  %251 = load i8*, i8** %5, align 8
  %252 = getelementptr inbounds i8, i8* %251, i32 1
  store i8* %252, i8** %5, align 8
  store i8 %250, i8* %251, align 1
  %253 = load i8*, i8** %5, align 8
  %254 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %255 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %254, i32 0, i32 5
  %256 = load i32, i32* @ROSE_ADDR_LEN, align 4
  %257 = call i32 @memcpy(i8* %253, i8* %255, i32 %256)
  %258 = load i32, i32* @ROSE_ADDR_LEN, align 4
  %259 = load i8*, i8** %5, align 8
  %260 = sext i32 %258 to i64
  %261 = getelementptr inbounds i8, i8* %259, i64 %260
  store i8* %261, i8** %5, align 8
  %262 = load i8*, i8** %5, align 8
  %263 = load i8*, i8** %6, align 8
  %264 = load i8*, i8** %6, align 8
  %265 = call i32 @strlen(i8* %264)
  %266 = call i32 @memcpy(i8* %262, i8* %263, i32 %265)
  %267 = load i8*, i8** %6, align 8
  %268 = call i32 @strlen(i8* %267)
  %269 = load i8*, i8** %5, align 8
  %270 = sext i32 %268 to i64
  %271 = getelementptr inbounds i8, i8* %269, i64 %270
  store i8* %271, i8** %5, align 8
  %272 = load i32, i32* @FAC_CCITT_SRC_NSAP, align 4
  %273 = trunc i32 %272 to i8
  %274 = load i8*, i8** %5, align 8
  %275 = getelementptr inbounds i8, i8* %274, i32 1
  store i8* %275, i8** %5, align 8
  store i8 %273, i8* %274, align 1
  %276 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %277 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %278 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %277, i32 0, i32 7
  %279 = call i8* @ax2asc(i8* %276, i32* %278)
  store i8* %279, i8** %6, align 8
  %280 = load i8*, i8** %6, align 8
  %281 = call i32 @strlen(i8* %280)
  %282 = add nsw i32 %281, 10
  %283 = trunc i32 %282 to i8
  %284 = load i8*, i8** %5, align 8
  %285 = getelementptr inbounds i8, i8* %284, i32 1
  store i8* %285, i8** %5, align 8
  store i8 %283, i8* %284, align 1
  %286 = load i8*, i8** %6, align 8
  %287 = call i32 @strlen(i8* %286)
  %288 = add nsw i32 %287, 9
  %289 = mul nsw i32 %288, 2
  %290 = trunc i32 %289 to i8
  %291 = load i8*, i8** %5, align 8
  %292 = getelementptr inbounds i8, i8* %291, i32 1
  store i8* %292, i8** %5, align 8
  store i8 %290, i8* %291, align 1
  %293 = load i8*, i8** %5, align 8
  %294 = getelementptr inbounds i8, i8* %293, i32 1
  store i8* %294, i8** %5, align 8
  store i8 71, i8* %293, align 1
  %295 = load i8*, i8** %5, align 8
  %296 = getelementptr inbounds i8, i8* %295, i32 1
  store i8* %296, i8** %5, align 8
  store i8 0, i8* %295, align 1
  %297 = load i8*, i8** %5, align 8
  %298 = getelementptr inbounds i8, i8* %297, i32 1
  store i8* %298, i8** %5, align 8
  store i8 17, i8* %297, align 1
  %299 = load i32, i32* @ROSE_ADDR_LEN, align 4
  %300 = mul nsw i32 %299, 2
  %301 = trunc i32 %300 to i8
  %302 = load i8*, i8** %5, align 8
  %303 = getelementptr inbounds i8, i8* %302, i32 1
  store i8* %303, i8** %5, align 8
  store i8 %301, i8* %302, align 1
  %304 = load i8*, i8** %5, align 8
  %305 = load %struct.rose_sock*, %struct.rose_sock** %4, align 8
  %306 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %305, i32 0, i32 6
  %307 = load i32, i32* @ROSE_ADDR_LEN, align 4
  %308 = call i32 @memcpy(i8* %304, i8* %306, i32 %307)
  %309 = load i32, i32* @ROSE_ADDR_LEN, align 4
  %310 = load i8*, i8** %5, align 8
  %311 = sext i32 %309 to i64
  %312 = getelementptr inbounds i8, i8* %310, i64 %311
  store i8* %312, i8** %5, align 8
  %313 = load i8*, i8** %5, align 8
  %314 = load i8*, i8** %6, align 8
  %315 = load i8*, i8** %6, align 8
  %316 = call i32 @strlen(i8* %315)
  %317 = call i32 @memcpy(i8* %313, i8* %314, i32 %316)
  %318 = load i8*, i8** %6, align 8
  %319 = call i32 @strlen(i8* %318)
  %320 = load i8*, i8** %5, align 8
  %321 = sext i32 %319 to i64
  %322 = getelementptr inbounds i8, i8* %320, i64 %321
  store i8* %322, i8** %5, align 8
  %323 = load i8*, i8** %5, align 8
  %324 = load i8*, i8** %3, align 8
  %325 = ptrtoint i8* %323 to i64
  %326 = ptrtoint i8* %324 to i64
  %327 = sub i64 %325, %326
  %328 = trunc i64 %327 to i32
  store i32 %328, i32* %8, align 4
  %329 = load i32, i32* %8, align 4
  %330 = sub nsw i32 %329, 1
  %331 = trunc i32 %330 to i8
  %332 = load i8*, i8** %3, align 8
  %333 = getelementptr inbounds i8, i8* %332, i64 0
  store i8 %331, i8* %333, align 1
  %334 = load i32, i32* %8, align 4
  ret i32 %334
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @ax2asc(i8*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
