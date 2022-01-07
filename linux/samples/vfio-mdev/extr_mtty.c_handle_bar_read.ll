; ModuleID = '/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mtty.c_handle_bar_read.c'
source_filename = "/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mtty.c_handle_bar_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdev_state = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32*, i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i64, i32*, i32 }

@UART_IER_THRI = common dso_local global i32 0, align 4
@UART_IER_RLSI = common dso_local global i32 0, align 4
@UART_IIR_RLSI = common dso_local global i32 0, align 4
@UART_IER_RDI = common dso_local global i32 0, align 4
@UART_IIR_RDI = common dso_local global i32 0, align 4
@UART_IIR_THRI = common dso_local global i32 0, align 4
@UART_IER_MSI = common dso_local global i32 0, align 4
@UART_MCR_RTS = common dso_local global i32 0, align 4
@UART_MCR_DTR = common dso_local global i32 0, align 4
@UART_IIR_MSI = common dso_local global i32 0, align 4
@UART_IIR_NO_INT = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@UART_LSR_OE = common dso_local global i32 0, align 4
@UART_LSR_TEMT = common dso_local global i32 0, align 4
@UART_LSR_THRE = common dso_local global i32 0, align 4
@UART_MSR_DSR = common dso_local global i32 0, align 4
@UART_MSR_DDSR = common dso_local global i32 0, align 4
@UART_MSR_DCD = common dso_local global i32 0, align 4
@UART_MCR_AFE = common dso_local global i32 0, align 4
@UART_MSR_CTS = common dso_local global i32 0, align 4
@UART_MSR_DCTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.mdev_state*, i32, i32*, i32)* @handle_bar_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_bar_read(i32 %0, %struct.mdev_state* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mdev_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.mdev_state* %1, %struct.mdev_state** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %472 [
    i32 129, label %14
    i32 135, label %141
    i32 134, label %177
    i32 133, label %310
    i32 131, label %310
    i32 132, label %324
    i32 130, label %397
    i32 128, label %458
  ]

14:                                               ; preds = %5
  %15 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %16 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %14
  %25 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %26 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32*, i32** %9, align 8
  store i32 %32, i32* %33, align 4
  br label %473

34:                                               ; preds = %14
  %35 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %36 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %35, i32 0, i32 1
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %39 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %48 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %46, %55
  br i1 %56, label %57, label %99

57:                                               ; preds = %34
  %58 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %59 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %68 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i32, i32* %66, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %9, align 8
  store i32 %77, i32* %78, align 4
  %79 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %80 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %86, align 8
  %89 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %90 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @CIRCULAR_BUF_INC_IDX(i64 %97)
  br label %99

99:                                               ; preds = %57, %34
  %100 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %101 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %110 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %108, %117
  br i1 %118, label %119, label %137

119:                                              ; preds = %99
  %120 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %121 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %120, i32 0, i32 0
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 135
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @UART_IER_THRI, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %119
  %134 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %135 = call i32 @mtty_trigger_interrupt(%struct.mdev_state* %134)
  br label %136

136:                                              ; preds = %133, %119
  br label %137

137:                                              ; preds = %136, %99
  %138 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %139 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %138, i32 0, i32 1
  %140 = call i32 @mutex_unlock(i32* %139)
  br label %473

141:                                              ; preds = %5
  %142 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %143 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %142, i32 0, i32 0
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = load i32, i32* %6, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %141
  %152 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %153 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %152, i32 0, i32 0
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = load i32, i32* %6, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = ashr i32 %159, 8
  %161 = load i32*, i32** %9, align 8
  store i32 %160, i32* %161, align 4
  br label %473

162:                                              ; preds = %141
  %163 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %164 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %163, i32 0, i32 0
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = load i32, i32* %6, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = and i32 %174, 15
  %176 = load i32*, i32** %9, align 8
  store i32 %175, i32* %176, align 4
  br label %473

177:                                              ; preds = %5
  %178 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %179 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %178, i32 0, i32 0
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = load i32, i32* %6, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 135
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %11, align 4
  %188 = load i32*, i32** %9, align 8
  store i32 0, i32* %188, align 4
  %189 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %190 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %189, i32 0, i32 1
  %191 = call i32 @mutex_lock(i32* %190)
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* @UART_IER_RLSI, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %211

196:                                              ; preds = %177
  %197 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %198 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %197, i32 0, i32 0
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %198, align 8
  %200 = load i32, i32* %6, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %196
  %207 = load i32, i32* @UART_IIR_RLSI, align 4
  %208 = load i32*, i32** %9, align 8
  %209 = load i32, i32* %208, align 4
  %210 = or i32 %209, %207
  store i32 %210, i32* %208, align 4
  br label %211

211:                                              ; preds = %206, %196, %177
  %212 = load i32, i32* %11, align 4
  %213 = load i32, i32* @UART_IER_RDI, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %240

216:                                              ; preds = %211
  %217 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %218 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %217, i32 0, i32 0
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %218, align 8
  %220 = load i32, i32* %6, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %227 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %226, i32 0, i32 0
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %227, align 8
  %229 = load i32, i32* %6, align 4
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 5
  %233 = load i32, i32* %232, align 4
  %234 = icmp sge i32 %225, %233
  br i1 %234, label %235, label %240

235:                                              ; preds = %216
  %236 = load i32, i32* @UART_IIR_RDI, align 4
  %237 = load i32*, i32** %9, align 8
  %238 = load i32, i32* %237, align 4
  %239 = or i32 %238, %236
  store i32 %239, i32* %237, align 4
  br label %240

240:                                              ; preds = %235, %216, %211
  %241 = load i32, i32* %11, align 4
  %242 = load i32, i32* @UART_IER_THRI, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %270

245:                                              ; preds = %240
  %246 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %247 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %246, i32 0, i32 0
  %248 = load %struct.TYPE_4__*, %struct.TYPE_4__** %247, align 8
  %249 = load i32, i32* %6, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 3
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %256 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %255, i32 0, i32 0
  %257 = load %struct.TYPE_4__*, %struct.TYPE_4__** %256, align 8
  %258 = load i32, i32* %6, align 4
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 3
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = icmp eq i64 %254, %263
  br i1 %264, label %265, label %270

265:                                              ; preds = %245
  %266 = load i32, i32* @UART_IIR_THRI, align 4
  %267 = load i32*, i32** %9, align 8
  %268 = load i32, i32* %267, align 4
  %269 = or i32 %268, %266
  store i32 %269, i32* %267, align 4
  br label %270

270:                                              ; preds = %265, %245, %240
  %271 = load i32, i32* %11, align 4
  %272 = load i32, i32* @UART_IER_MSI, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %296

275:                                              ; preds = %270
  %276 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %277 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %276, i32 0, i32 0
  %278 = load %struct.TYPE_4__*, %struct.TYPE_4__** %277, align 8
  %279 = load i32, i32* %6, align 4
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 1
  %283 = load i32*, i32** %282, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 131
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @UART_MCR_RTS, align 4
  %287 = load i32, i32* @UART_MCR_DTR, align 4
  %288 = or i32 %286, %287
  %289 = and i32 %285, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %296

291:                                              ; preds = %275
  %292 = load i32, i32* @UART_IIR_MSI, align 4
  %293 = load i32*, i32** %9, align 8
  %294 = load i32, i32* %293, align 4
  %295 = or i32 %294, %292
  store i32 %295, i32* %293, align 4
  br label %296

296:                                              ; preds = %291, %275, %270
  %297 = load i32*, i32** %9, align 8
  %298 = load i32, i32* %297, align 4
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %296
  %301 = load i32, i32* @UART_IIR_NO_INT, align 4
  %302 = load i32*, i32** %9, align 8
  store i32 %301, i32* %302, align 4
  br label %303

303:                                              ; preds = %300, %296
  %304 = load i32*, i32** %9, align 8
  %305 = load i32, i32* %304, align 4
  %306 = or i32 %305, 192
  store i32 %306, i32* %304, align 4
  %307 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %308 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %307, i32 0, i32 1
  %309 = call i32 @mutex_unlock(i32* %308)
  br label %473

310:                                              ; preds = %5, %5
  %311 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %312 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %311, i32 0, i32 0
  %313 = load %struct.TYPE_4__*, %struct.TYPE_4__** %312, align 8
  %314 = load i32, i32* %6, align 4
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 1
  %318 = load i32*, i32** %317, align 8
  %319 = load i32, i32* %8, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = load i32*, i32** %9, align 8
  store i32 %322, i32* %323, align 4
  br label %473

324:                                              ; preds = %5
  store i32 0, i32* %12, align 4
  %325 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %326 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %325, i32 0, i32 1
  %327 = call i32 @mutex_lock(i32* %326)
  %328 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %329 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %328, i32 0, i32 0
  %330 = load %struct.TYPE_4__*, %struct.TYPE_4__** %329, align 8
  %331 = load i32, i32* %6, align 4
  %332 = zext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %330, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %333, i32 0, i32 3
  %335 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %338 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %337, i32 0, i32 0
  %339 = load %struct.TYPE_4__*, %struct.TYPE_4__** %338, align 8
  %340 = load i32, i32* %6, align 4
  %341 = zext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %339, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %342, i32 0, i32 3
  %344 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %343, i32 0, i32 1
  %345 = load i64, i64* %344, align 8
  %346 = icmp ne i64 %336, %345
  br i1 %346, label %347, label %351

347:                                              ; preds = %324
  %348 = load i32, i32* @UART_LSR_DR, align 4
  %349 = load i32, i32* %12, align 4
  %350 = or i32 %349, %348
  store i32 %350, i32* %12, align 4
  br label %351

351:                                              ; preds = %347, %324
  %352 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %353 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %352, i32 0, i32 0
  %354 = load %struct.TYPE_4__*, %struct.TYPE_4__** %353, align 8
  %355 = load i32, i32* %6, align 4
  %356 = zext i32 %355 to i64
  %357 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %354, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i32 0, i32 4
  %359 = load i32, i32* %358, align 8
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %365

361:                                              ; preds = %351
  %362 = load i32, i32* @UART_LSR_OE, align 4
  %363 = load i32, i32* %12, align 4
  %364 = or i32 %363, %362
  store i32 %364, i32* %12, align 4
  br label %365

365:                                              ; preds = %361, %351
  %366 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %367 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %366, i32 0, i32 0
  %368 = load %struct.TYPE_4__*, %struct.TYPE_4__** %367, align 8
  %369 = load i32, i32* %6, align 4
  %370 = zext i32 %369 to i64
  %371 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %368, i64 %370
  %372 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %371, i32 0, i32 3
  %373 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %372, i32 0, i32 0
  %374 = load i64, i64* %373, align 8
  %375 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %376 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %375, i32 0, i32 0
  %377 = load %struct.TYPE_4__*, %struct.TYPE_4__** %376, align 8
  %378 = load i32, i32* %6, align 4
  %379 = zext i32 %378 to i64
  %380 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %377, i64 %379
  %381 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %380, i32 0, i32 3
  %382 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %381, i32 0, i32 1
  %383 = load i64, i64* %382, align 8
  %384 = icmp eq i64 %374, %383
  br i1 %384, label %385, label %391

385:                                              ; preds = %365
  %386 = load i32, i32* @UART_LSR_TEMT, align 4
  %387 = load i32, i32* @UART_LSR_THRE, align 4
  %388 = or i32 %386, %387
  %389 = load i32, i32* %12, align 4
  %390 = or i32 %389, %388
  store i32 %390, i32* %12, align 4
  br label %391

391:                                              ; preds = %385, %365
  %392 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %393 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %392, i32 0, i32 1
  %394 = call i32 @mutex_unlock(i32* %393)
  %395 = load i32, i32* %12, align 4
  %396 = load i32*, i32** %9, align 8
  store i32 %395, i32* %396, align 4
  br label %473

397:                                              ; preds = %5
  %398 = load i32, i32* @UART_MSR_DSR, align 4
  %399 = load i32, i32* @UART_MSR_DDSR, align 4
  %400 = or i32 %398, %399
  %401 = load i32, i32* @UART_MSR_DCD, align 4
  %402 = or i32 %400, %401
  %403 = load i32*, i32** %9, align 8
  store i32 %402, i32* %403, align 4
  %404 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %405 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %404, i32 0, i32 1
  %406 = call i32 @mutex_lock(i32* %405)
  %407 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %408 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %407, i32 0, i32 0
  %409 = load %struct.TYPE_4__*, %struct.TYPE_4__** %408, align 8
  %410 = load i32, i32* %6, align 4
  %411 = zext i32 %410 to i64
  %412 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %409, i64 %411
  %413 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %412, i32 0, i32 1
  %414 = load i32*, i32** %413, align 8
  %415 = getelementptr inbounds i32, i32* %414, i64 131
  %416 = load i32, i32* %415, align 4
  %417 = load i32, i32* @UART_MCR_AFE, align 4
  %418 = and i32 %416, %417
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %447

420:                                              ; preds = %397
  %421 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %422 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %421, i32 0, i32 0
  %423 = load %struct.TYPE_4__*, %struct.TYPE_4__** %422, align 8
  %424 = load i32, i32* %6, align 4
  %425 = zext i32 %424 to i64
  %426 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %423, i64 %425
  %427 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %426, i32 0, i32 3
  %428 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %427, i32 0, i32 3
  %429 = load i32, i32* %428, align 8
  %430 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %431 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %430, i32 0, i32 0
  %432 = load %struct.TYPE_4__*, %struct.TYPE_4__** %431, align 8
  %433 = load i32, i32* %6, align 4
  %434 = zext i32 %433 to i64
  %435 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %432, i64 %434
  %436 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %435, i32 0, i32 2
  %437 = load i32, i32* %436, align 8
  %438 = icmp slt i32 %429, %437
  br i1 %438, label %439, label %446

439:                                              ; preds = %420
  %440 = load i32, i32* @UART_MSR_CTS, align 4
  %441 = load i32, i32* @UART_MSR_DCTS, align 4
  %442 = or i32 %440, %441
  %443 = load i32*, i32** %9, align 8
  %444 = load i32, i32* %443, align 4
  %445 = or i32 %444, %442
  store i32 %445, i32* %443, align 4
  br label %446

446:                                              ; preds = %439, %420
  br label %454

447:                                              ; preds = %397
  %448 = load i32, i32* @UART_MSR_CTS, align 4
  %449 = load i32, i32* @UART_MSR_DCTS, align 4
  %450 = or i32 %448, %449
  %451 = load i32*, i32** %9, align 8
  %452 = load i32, i32* %451, align 4
  %453 = or i32 %452, %450
  store i32 %453, i32* %451, align 4
  br label %454

454:                                              ; preds = %447, %446
  %455 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %456 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %455, i32 0, i32 1
  %457 = call i32 @mutex_unlock(i32* %456)
  br label %473

458:                                              ; preds = %5
  %459 = load %struct.mdev_state*, %struct.mdev_state** %7, align 8
  %460 = getelementptr inbounds %struct.mdev_state, %struct.mdev_state* %459, i32 0, i32 0
  %461 = load %struct.TYPE_4__*, %struct.TYPE_4__** %460, align 8
  %462 = load i32, i32* %6, align 4
  %463 = zext i32 %462 to i64
  %464 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %461, i64 %463
  %465 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %464, i32 0, i32 1
  %466 = load i32*, i32** %465, align 8
  %467 = load i32, i32* %8, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i32, i32* %466, i64 %468
  %470 = load i32, i32* %469, align 4
  %471 = load i32*, i32** %9, align 8
  store i32 %470, i32* %471, align 4
  br label %473

472:                                              ; preds = %5
  br label %473

473:                                              ; preds = %472, %458, %454, %391, %310, %303, %162, %151, %137, %24
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @CIRCULAR_BUF_INC_IDX(i64) #1

declare dso_local i32 @mtty_trigger_interrupt(%struct.mdev_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
