; ModuleID = '/home/carl/AnghaBench/linux/net/x25/extr_x25_subr.c_x25_write_internal.c'
source_filename = "/home/carl/AnghaBench/linux/net/x25/extr_x25_subr.c_x25_write_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.x25_sock = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_8__, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i8*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.sk_buff = type { i32 }

@X25_MAX_FAC_LEN = common dso_local global i32 0, align 4
@X25_ADDR_LEN = common dso_local global i32 0, align 4
@X25_MAX_L2_LEN = common dso_local global i32 0, align 4
@X25_EXT_MIN_LEN = common dso_local global i32 0, align 4
@X25_MAX_CUD_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"invalid frame type %02X\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@X25_GFI_EXTSEQ = common dso_local global i8 0, align 1
@X25_GFI_STDSEQ = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x25_write_internal(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.x25_sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = call %struct.x25_sock* @x25_sk(%struct.sock* %15)
  store %struct.x25_sock* %16, %struct.x25_sock** %5, align 8
  %17 = load i32, i32* @X25_MAX_FAC_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load i32, i32* @X25_ADDR_LEN, align 4
  %22 = add nsw i32 1, %21
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  %25 = load i32, i32* @X25_MAX_L2_LEN, align 4
  %26 = load i32, i32* @X25_EXT_MIN_LEN, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %4, align 4
  switch i32 %28, label %62 [
    i32 136, label %29
    i32 137, label %38
    i32 134, label %58
    i32 130, label %58
    i32 128, label %61
    i32 129, label %61
    i32 132, label %61
    i32 135, label %61
    i32 133, label %61
    i32 131, label %61
  ]

29:                                               ; preds = %2
  %30 = load i32, i32* @X25_ADDR_LEN, align 4
  %31 = add nsw i32 1, %30
  %32 = load i32, i32* @X25_MAX_FAC_LEN, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* @X25_MAX_CUD_LEN, align 4
  %35 = add nsw i32 %33, %34
  %36 = load i32, i32* %13, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %13, align 4
  br label %65

38:                                               ; preds = %2
  %39 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %40 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, 128
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load i32, i32* @X25_MAX_FAC_LEN, align 4
  %47 = add nsw i32 1, %46
  %48 = load i32, i32* @X25_MAX_CUD_LEN, align 4
  %49 = add nsw i32 %47, %48
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %13, align 4
  br label %57

52:                                               ; preds = %38
  %53 = load i32, i32* @X25_MAX_FAC_LEN, align 4
  %54 = add nsw i32 1, %53
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %52, %45
  br label %65

58:                                               ; preds = %2, %2
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, 2
  store i32 %60, i32* %13, align 4
  br label %65

61:                                               ; preds = %2, %2, %2, %2, %2, %2
  br label %65

62:                                               ; preds = %2
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %63)
  store i32 1, i32* %14, align 4
  br label %283

65:                                               ; preds = %61, %58, %57, %29
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @GFP_ATOMIC, align 4
  %68 = call %struct.sk_buff* @alloc_skb(i32 %66, i32 %67)
  store %struct.sk_buff* %68, %struct.sk_buff** %6, align 8
  %69 = icmp eq %struct.sk_buff* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 1, i32* %14, align 4
  br label %283

71:                                               ; preds = %65
  %72 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %73 = load i32, i32* @X25_MAX_L2_LEN, align 4
  %74 = call i32 @skb_reserve(%struct.sk_buff* %72, i32 %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %76 = call i8* @skb_put(%struct.sk_buff* %75, i32 2)
  store i8* %76, i8** %7, align 8
  %77 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %78 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = ashr i32 %79, 8
  %81 = and i32 %80, 15
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %11, align 1
  %83 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %84 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = ashr i32 %85, 0
  %87 = and i32 %86, 255
  %88 = trunc i32 %87 to i8
  store i8 %88, i8* %12, align 1
  %89 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %90 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %89, i32 0, i32 2
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %71
  %96 = load i8, i8* %11, align 1
  %97 = zext i8 %96 to i32
  %98 = load i8, i8* @X25_GFI_EXTSEQ, align 1
  %99 = zext i8 %98 to i32
  %100 = or i32 %97, %99
  %101 = trunc i32 %100 to i8
  %102 = load i8*, i8** %7, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %7, align 8
  store i8 %101, i8* %102, align 1
  %104 = load i8, i8* %12, align 1
  %105 = load i8*, i8** %7, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %7, align 8
  store i8 %104, i8* %105, align 1
  br label %119

107:                                              ; preds = %71
  %108 = load i8, i8* %11, align 1
  %109 = zext i8 %108 to i32
  %110 = load i8, i8* @X25_GFI_STDSEQ, align 1
  %111 = zext i8 %110 to i32
  %112 = or i32 %109, %111
  %113 = trunc i32 %112 to i8
  %114 = load i8*, i8** %7, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %7, align 8
  store i8 %113, i8* %114, align 1
  %116 = load i8, i8* %12, align 1
  %117 = load i8*, i8** %7, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %7, align 8
  store i8 %116, i8* %117, align 1
  br label %119

119:                                              ; preds = %107, %95
  %120 = load i32, i32* %4, align 4
  switch i32 %120, label %277 [
    i32 136, label %121
    i32 137, label %160
    i32 134, label %199
    i32 130, label %220
    i32 128, label %231
    i32 129, label %231
    i32 132, label %231
    i32 135, label %271
    i32 133, label %271
    i32 131, label %271
  ]

121:                                              ; preds = %119
  %122 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %123 = call i8* @skb_put(%struct.sk_buff* %122, i32 1)
  store i8* %123, i8** %7, align 8
  %124 = load i8*, i8** %7, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %7, align 8
  store i8 -120, i8* %124, align 1
  %126 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %127 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %126, i32 0, i32 9
  %128 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %129 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %128, i32 0, i32 8
  %130 = call i32 @x25_addr_aton(i8* %24, i32* %127, i32* %129)
  store i32 %130, i32* %13, align 4
  %131 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %132 = load i32, i32* %13, align 4
  %133 = call i32 @skb_put_data(%struct.sk_buff* %131, i8* %24, i32 %132)
  %134 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %135 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %134, i32 0, i32 5
  %136 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %137 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %136, i32 0, i32 7
  %138 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %139 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %138, i32 0, i32 2
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @x25_create_facilities(i8* %20, %struct.TYPE_8__* %135, i32* %137, i32 %142)
  store i32 %143, i32* %13, align 4
  %144 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %145 = load i32, i32* %13, align 4
  %146 = call i32 @skb_put_data(%struct.sk_buff* %144, i8* %20, i32 %145)
  %147 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %148 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %149 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %153 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @skb_put_data(%struct.sk_buff* %147, i8* %151, i32 %155)
  %157 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %158 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 1
  store i32 0, i32* %159, align 8
  br label %277

160:                                              ; preds = %119
  %161 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %162 = call i8* @skb_put(%struct.sk_buff* %161, i32 2)
  store i8* %162, i8** %7, align 8
  %163 = load i8*, i8** %7, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %7, align 8
  store i8 -119, i8* %163, align 1
  %165 = load i8*, i8** %7, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %7, align 8
  store i8 0, i8* %165, align 1
  %167 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %168 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %167, i32 0, i32 5
  %169 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %170 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %169, i32 0, i32 7
  %171 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %172 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %171, i32 0, i32 6
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @x25_create_facilities(i8* %20, %struct.TYPE_8__* %168, i32* %170, i32 %173)
  store i32 %174, i32* %13, align 4
  %175 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %176 = load i32, i32* %13, align 4
  %177 = call i32 @skb_put_data(%struct.sk_buff* %175, i8* %20, i32 %176)
  %178 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %179 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %178, i32 0, i32 5
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = and i32 %181, 128
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %195

184:                                              ; preds = %160
  %185 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %186 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %187 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %186, i32 0, i32 4
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %191 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %190, i32 0, i32 4
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @skb_put_data(%struct.sk_buff* %185, i8* %189, i32 %193)
  br label %195

195:                                              ; preds = %184, %160
  %196 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %197 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %196, i32 0, i32 4
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 1
  store i32 0, i32* %198, align 8
  br label %277

199:                                              ; preds = %119
  %200 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %201 = call i8* @skb_put(%struct.sk_buff* %200, i32 3)
  store i8* %201, i8** %7, align 8
  %202 = load i32, i32* %4, align 4
  %203 = trunc i32 %202 to i8
  %204 = load i8*, i8** %7, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** %7, align 8
  store i8 %203, i8* %204, align 1
  %206 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %207 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = trunc i32 %209 to i8
  %211 = load i8*, i8** %7, align 8
  %212 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %212, i8** %7, align 8
  store i8 %210, i8* %211, align 1
  %213 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %214 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = trunc i32 %216 to i8
  %218 = load i8*, i8** %7, align 8
  %219 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %219, i8** %7, align 8
  store i8 %217, i8* %218, align 1
  br label %277

220:                                              ; preds = %119
  %221 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %222 = call i8* @skb_put(%struct.sk_buff* %221, i32 3)
  store i8* %222, i8** %7, align 8
  %223 = load i32, i32* %4, align 4
  %224 = trunc i32 %223 to i8
  %225 = load i8*, i8** %7, align 8
  %226 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %226, i8** %7, align 8
  store i8 %224, i8* %225, align 1
  %227 = load i8*, i8** %7, align 8
  %228 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %228, i8** %7, align 8
  store i8 0, i8* %227, align 1
  %229 = load i8*, i8** %7, align 8
  %230 = getelementptr inbounds i8, i8* %229, i32 1
  store i8* %230, i8** %7, align 8
  store i8 0, i8* %229, align 1
  br label %277

231:                                              ; preds = %119, %119, %119
  %232 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %233 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %232, i32 0, i32 2
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %253

238:                                              ; preds = %231
  %239 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %240 = call i8* @skb_put(%struct.sk_buff* %239, i32 2)
  store i8* %240, i8** %7, align 8
  %241 = load i32, i32* %4, align 4
  %242 = trunc i32 %241 to i8
  %243 = load i8*, i8** %7, align 8
  %244 = getelementptr inbounds i8, i8* %243, i32 1
  store i8* %244, i8** %7, align 8
  store i8 %242, i8* %243, align 1
  %245 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %246 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = shl i32 %247, 1
  %249 = and i32 %248, 254
  %250 = trunc i32 %249 to i8
  %251 = load i8*, i8** %7, align 8
  %252 = getelementptr inbounds i8, i8* %251, i32 1
  store i8* %252, i8** %7, align 8
  store i8 %250, i8* %251, align 1
  br label %270

253:                                              ; preds = %231
  %254 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %255 = call i8* @skb_put(%struct.sk_buff* %254, i32 1)
  store i8* %255, i8** %7, align 8
  %256 = load i32, i32* %4, align 4
  %257 = trunc i32 %256 to i8
  %258 = load i8*, i8** %7, align 8
  store i8 %257, i8* %258, align 1
  %259 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %260 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = shl i32 %261, 5
  %263 = and i32 %262, 224
  %264 = load i8*, i8** %7, align 8
  %265 = getelementptr inbounds i8, i8* %264, i32 1
  store i8* %265, i8** %7, align 8
  %266 = load i8, i8* %264, align 1
  %267 = zext i8 %266 to i32
  %268 = or i32 %267, %263
  %269 = trunc i32 %268 to i8
  store i8 %269, i8* %264, align 1
  br label %270

270:                                              ; preds = %253, %238
  br label %277

271:                                              ; preds = %119, %119, %119
  %272 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %273 = call i8* @skb_put(%struct.sk_buff* %272, i32 1)
  store i8* %273, i8** %7, align 8
  %274 = load i32, i32* %4, align 4
  %275 = trunc i32 %274 to i8
  %276 = load i8*, i8** %7, align 8
  store i8 %275, i8* %276, align 1
  br label %277

277:                                              ; preds = %119, %271, %270, %220, %199, %195, %121
  %278 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %279 = load %struct.x25_sock*, %struct.x25_sock** %5, align 8
  %280 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %279, i32 0, i32 2
  %281 = load %struct.TYPE_7__*, %struct.TYPE_7__** %280, align 8
  %282 = call i32 @x25_transmit_link(%struct.sk_buff* %278, %struct.TYPE_7__* %281)
  store i32 0, i32* %14, align 4
  br label %283

283:                                              ; preds = %277, %70, %62
  %284 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %284)
  %285 = load i32, i32* %14, align 4
  switch i32 %285, label %287 [
    i32 0, label %286
    i32 1, label %286
  ]

286:                                              ; preds = %283, %283
  ret void

287:                                              ; preds = %283
  unreachable
}

declare dso_local %struct.x25_sock* @x25_sk(%struct.sock*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @x25_addr_aton(i8*, i32*, i32*) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @x25_create_facilities(i8*, %struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @x25_transmit_link(%struct.sk_buff*, %struct.TYPE_7__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
