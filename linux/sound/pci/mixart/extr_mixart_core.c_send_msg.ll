; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart_core.c_send_msg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart_core.c_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixart_mgr = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mixart_msg = type { i32, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@MSG_INBOUND_FREE_TAIL = common dso_local global i64 0, align 8
@MSG_INBOUND_FREE_HEAD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"error: no message frame available\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@MSG_INBOUND_FREE_STACK = common dso_local global i64 0, align 8
@MSG_BOUND_STACK_SIZE = common dso_local global i64 0, align 8
@MSG_DESCRIPTOR_SIZE = common dso_local global i32 0, align 4
@MSG_HEADER_SIZE = common dso_local global i64 0, align 8
@MSG_TYPE_REQUEST = common dso_local global i64 0, align 8
@MSG_INBOUND_POST_HEAD = common dso_local global i64 0, align 8
@MSG_INBOUND_POST_STACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mixart_mgr*, %struct.mixart_msg*, i32, i32, i64*)* @send_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_msg(%struct.mixart_mgr* %0, %struct.mixart_msg* %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mixart_mgr*, align 8
  %8 = alloca %struct.mixart_msg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.mixart_mgr* %0, %struct.mixart_mgr** %7, align 8
  store %struct.mixart_msg* %1, %struct.mixart_msg** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %16 = load %struct.mixart_msg*, %struct.mixart_msg** %8, align 8
  %17 = getelementptr inbounds %struct.mixart_msg, %struct.mixart_msg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = srem i32 %18, 4
  %20 = call i64 @snd_BUG_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %249

25:                                               ; preds = %5
  %26 = load %struct.mixart_mgr*, %struct.mixart_mgr** %7, align 8
  %27 = load i64, i64* @MSG_INBOUND_FREE_TAIL, align 8
  %28 = call i32 @MIXART_MEM(%struct.mixart_mgr* %26, i64 %27)
  %29 = call i64 @readl_be(i32 %28)
  store i64 %29, i64* %13, align 8
  %30 = load %struct.mixart_mgr*, %struct.mixart_mgr** %7, align 8
  %31 = load i64, i64* @MSG_INBOUND_FREE_HEAD, align 8
  %32 = call i32 @MIXART_MEM(%struct.mixart_mgr* %30, i64 %31)
  %33 = call i64 @readl_be(i32 %32)
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* %12, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %25
  %38 = load %struct.mixart_mgr*, %struct.mixart_mgr** %7, align 8
  %39 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %249

45:                                               ; preds = %25
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* @MSG_INBOUND_FREE_STACK, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* @MSG_INBOUND_FREE_STACK, align 8
  %52 = load i64, i64* @MSG_BOUND_STACK_SIZE, align 8
  %53 = add nsw i64 %51, %52
  %54 = icmp sge i64 %50, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49, %45
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %249

58:                                               ; preds = %49
  %59 = load %struct.mixart_mgr*, %struct.mixart_mgr** %7, align 8
  %60 = load i64, i64* %13, align 8
  %61 = call i32 @MIXART_MEM(%struct.mixart_mgr* %59, i64 %60)
  %62 = call i64 @readl_be(i32 %61)
  store i64 %62, i64* %14, align 8
  %63 = load %struct.mixart_mgr*, %struct.mixart_mgr** %7, align 8
  %64 = load i64, i64* %13, align 8
  %65 = call i32 @MIXART_MEM(%struct.mixart_mgr* %63, i64 %64)
  %66 = call i32 @writel(i32 0, i32 %65)
  %67 = load i64, i64* %13, align 8
  %68 = add nsw i64 %67, 4
  store i64 %68, i64* %13, align 8
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* @MSG_INBOUND_FREE_STACK, align 8
  %71 = load i64, i64* @MSG_BOUND_STACK_SIZE, align 8
  %72 = add nsw i64 %70, %71
  %73 = icmp sge i64 %69, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %58
  %75 = load i64, i64* @MSG_INBOUND_FREE_STACK, align 8
  store i64 %75, i64* %13, align 8
  br label %76

76:                                               ; preds = %74, %58
  %77 = load i64, i64* %13, align 8
  %78 = load %struct.mixart_mgr*, %struct.mixart_mgr** %7, align 8
  %79 = load i64, i64* @MSG_INBOUND_FREE_TAIL, align 8
  %80 = call i32 @MIXART_MEM(%struct.mixart_mgr* %78, i64 %79)
  %81 = call i32 @writel_be(i64 %77, i32 %80)
  %82 = load %struct.mixart_msg*, %struct.mixart_msg** %8, align 8
  %83 = getelementptr inbounds %struct.mixart_msg, %struct.mixart_msg* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @MSG_DESCRIPTOR_SIZE, align 4
  %86 = add nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = load %struct.mixart_mgr*, %struct.mixart_mgr** %7, align 8
  %89 = load i64, i64* %14, align 8
  %90 = call i32 @MIXART_MEM(%struct.mixart_mgr* %88, i64 %89)
  %91 = call i32 @writel_be(i64 %87, i32 %90)
  %92 = load %struct.mixart_msg*, %struct.mixart_msg** %8, align 8
  %93 = getelementptr inbounds %struct.mixart_msg, %struct.mixart_msg* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.mixart_mgr*, %struct.mixart_mgr** %7, align 8
  %96 = load i64, i64* %14, align 8
  %97 = add nsw i64 %96, 4
  %98 = call i32 @MIXART_MEM(%struct.mixart_mgr* %95, i64 %97)
  %99 = call i32 @writel_be(i64 %94, i32 %98)
  %100 = load %struct.mixart_msg*, %struct.mixart_msg** %8, align 8
  %101 = getelementptr inbounds %struct.mixart_msg, %struct.mixart_msg* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.mixart_mgr*, %struct.mixart_mgr** %7, align 8
  %105 = load i64, i64* %14, align 8
  %106 = add nsw i64 %105, 8
  %107 = call i32 @MIXART_MEM(%struct.mixart_mgr* %104, i64 %106)
  %108 = call i32 @writel_be(i64 %103, i32 %107)
  %109 = load %struct.mixart_msg*, %struct.mixart_msg** %8, align 8
  %110 = getelementptr inbounds %struct.mixart_msg, %struct.mixart_msg* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.mixart_mgr*, %struct.mixart_mgr** %7, align 8
  %114 = load i64, i64* %14, align 8
  %115 = add nsw i64 %114, 12
  %116 = call i32 @MIXART_MEM(%struct.mixart_mgr* %113, i64 %115)
  %117 = call i32 @writel_be(i64 %112, i32 %116)
  %118 = load i32, i32* @MSG_DESCRIPTOR_SIZE, align 4
  %119 = sext i32 %118 to i64
  %120 = load %struct.mixart_mgr*, %struct.mixart_mgr** %7, align 8
  %121 = load i64, i64* %14, align 8
  %122 = add nsw i64 %121, 16
  %123 = call i32 @MIXART_MEM(%struct.mixart_mgr* %120, i64 %122)
  %124 = call i32 @writel_be(i64 %119, i32 %123)
  %125 = load i32, i32* @MSG_DESCRIPTOR_SIZE, align 4
  %126 = sext i32 %125 to i64
  %127 = load %struct.mixart_mgr*, %struct.mixart_mgr** %7, align 8
  %128 = load i64, i64* %14, align 8
  %129 = add nsw i64 %128, 20
  %130 = call i32 @MIXART_MEM(%struct.mixart_mgr* %127, i64 %129)
  %131 = call i32 @writel_be(i64 %126, i32 %130)
  %132 = load %struct.mixart_msg*, %struct.mixart_msg** %8, align 8
  %133 = getelementptr inbounds %struct.mixart_msg, %struct.mixart_msg* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = load %struct.mixart_mgr*, %struct.mixart_mgr** %7, align 8
  %137 = load i64, i64* %14, align 8
  %138 = add nsw i64 %137, 24
  %139 = call i32 @MIXART_MEM(%struct.mixart_mgr* %136, i64 %138)
  %140 = call i32 @writel_be(i64 %135, i32 %139)
  %141 = load i32, i32* @MSG_DESCRIPTOR_SIZE, align 4
  %142 = sext i32 %141 to i64
  %143 = load %struct.mixart_mgr*, %struct.mixart_mgr** %7, align 8
  %144 = load i64, i64* %14, align 8
  %145 = add nsw i64 %144, 28
  %146 = call i32 @MIXART_MEM(%struct.mixart_mgr* %143, i64 %145)
  %147 = call i32 @writel_be(i64 %142, i32 %146)
  %148 = load %struct.mixart_mgr*, %struct.mixart_mgr** %7, align 8
  %149 = load i64, i64* %14, align 8
  %150 = add nsw i64 %149, 32
  %151 = call i32 @MIXART_MEM(%struct.mixart_mgr* %148, i64 %150)
  %152 = call i32 @writel_be(i64 0, i32 %151)
  %153 = load i32, i32* @MSG_DESCRIPTOR_SIZE, align 4
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %153, %154
  %156 = sext i32 %155 to i64
  %157 = load %struct.mixart_mgr*, %struct.mixart_mgr** %7, align 8
  %158 = load i64, i64* %14, align 8
  %159 = add nsw i64 %158, 36
  %160 = call i32 @MIXART_MEM(%struct.mixart_mgr* %157, i64 %159)
  %161 = call i32 @writel_be(i64 %156, i32 %160)
  store i32 0, i32* %15, align 4
  br label %162

162:                                              ; preds = %186, %76
  %163 = load i32, i32* %15, align 4
  %164 = load %struct.mixart_msg*, %struct.mixart_msg** %8, align 8
  %165 = getelementptr inbounds %struct.mixart_msg, %struct.mixart_msg* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp slt i32 %163, %166
  br i1 %167, label %168, label %189

168:                                              ; preds = %162
  %169 = load %struct.mixart_msg*, %struct.mixart_msg** %8, align 8
  %170 = getelementptr inbounds %struct.mixart_msg, %struct.mixart_msg* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = load i32, i32* %15, align 4
  %173 = sext i32 %172 to i64
  %174 = add nsw i64 %171, %173
  %175 = inttoptr i64 %174 to i64*
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.mixart_mgr*, %struct.mixart_mgr** %7, align 8
  %178 = load i64, i64* @MSG_HEADER_SIZE, align 8
  %179 = load i64, i64* %14, align 8
  %180 = add nsw i64 %178, %179
  %181 = load i32, i32* %15, align 4
  %182 = sext i32 %181 to i64
  %183 = add nsw i64 %180, %182
  %184 = call i32 @MIXART_MEM(%struct.mixart_mgr* %177, i64 %183)
  %185 = call i32 @writel_be(i64 %176, i32 %184)
  br label %186

186:                                              ; preds = %168
  %187 = load i32, i32* %15, align 4
  %188 = add nsw i32 %187, 4
  store i32 %188, i32* %15, align 4
  br label %162

189:                                              ; preds = %162
  %190 = load i32, i32* %10, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %208

192:                                              ; preds = %189
  %193 = load i64*, i64** %11, align 8
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %192
  %197 = load i64*, i64** %11, align 8
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.mixart_mgr*, %struct.mixart_mgr** %7, align 8
  %200 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %199, i32 0, i32 0
  store i64 %198, i64* %200, align 8
  br label %207

201:                                              ; preds = %192
  %202 = load i64, i64* %14, align 8
  %203 = load %struct.mixart_mgr*, %struct.mixart_mgr** %7, align 8
  %204 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %203, i32 0, i32 0
  store i64 %202, i64* %204, align 8
  %205 = load i64, i64* %14, align 8
  %206 = load i64*, i64** %11, align 8
  store i64 %205, i64* %206, align 8
  br label %207

207:                                              ; preds = %201, %196
  br label %208

208:                                              ; preds = %207, %189
  %209 = load i64, i64* @MSG_TYPE_REQUEST, align 8
  %210 = load i64, i64* %14, align 8
  %211 = or i64 %210, %209
  store i64 %211, i64* %14, align 8
  %212 = load %struct.mixart_mgr*, %struct.mixart_mgr** %7, align 8
  %213 = load i64, i64* @MSG_INBOUND_POST_HEAD, align 8
  %214 = call i32 @MIXART_MEM(%struct.mixart_mgr* %212, i64 %213)
  %215 = call i64 @readl_be(i32 %214)
  store i64 %215, i64* %12, align 8
  %216 = load i64, i64* %12, align 8
  %217 = load i64, i64* @MSG_INBOUND_POST_STACK, align 8
  %218 = icmp slt i64 %216, %217
  br i1 %218, label %225, label %219

219:                                              ; preds = %208
  %220 = load i64, i64* %12, align 8
  %221 = load i64, i64* @MSG_INBOUND_POST_STACK, align 8
  %222 = load i64, i64* @MSG_BOUND_STACK_SIZE, align 8
  %223 = add nsw i64 %221, %222
  %224 = icmp sge i64 %220, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %219, %208
  %226 = load i32, i32* @EINVAL, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %6, align 4
  br label %249

228:                                              ; preds = %219
  %229 = load i64, i64* %14, align 8
  %230 = load %struct.mixart_mgr*, %struct.mixart_mgr** %7, align 8
  %231 = load i64, i64* %12, align 8
  %232 = call i32 @MIXART_MEM(%struct.mixart_mgr* %230, i64 %231)
  %233 = call i32 @writel_be(i64 %229, i32 %232)
  %234 = load i64, i64* %12, align 8
  %235 = add nsw i64 %234, 4
  store i64 %235, i64* %12, align 8
  %236 = load i64, i64* %12, align 8
  %237 = load i64, i64* @MSG_INBOUND_POST_STACK, align 8
  %238 = load i64, i64* @MSG_BOUND_STACK_SIZE, align 8
  %239 = add nsw i64 %237, %238
  %240 = icmp sge i64 %236, %239
  br i1 %240, label %241, label %243

241:                                              ; preds = %228
  %242 = load i64, i64* @MSG_INBOUND_POST_STACK, align 8
  store i64 %242, i64* %12, align 8
  br label %243

243:                                              ; preds = %241, %228
  %244 = load i64, i64* %12, align 8
  %245 = load %struct.mixart_mgr*, %struct.mixart_mgr** %7, align 8
  %246 = load i64, i64* @MSG_INBOUND_POST_HEAD, align 8
  %247 = call i32 @MIXART_MEM(%struct.mixart_mgr* %245, i64 %246)
  %248 = call i32 @writel_be(i64 %244, i32 %247)
  store i32 0, i32* %6, align 4
  br label %249

249:                                              ; preds = %243, %225, %55, %37, %22
  %250 = load i32, i32* %6, align 4
  ret i32 %250
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i64 @readl_be(i32) #1

declare dso_local i32 @MIXART_MEM(%struct.mixart_mgr*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @writel_be(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
