; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/caiaq/extr_audio.c_read_completed.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/caiaq/extr_audio.c_read_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, %struct.TYPE_3__*, %struct.snd_usb_caiaq_cb_info*, i64 }
%struct.TYPE_3__ = type { i32, i32, i64, i64 }
%struct.snd_usb_caiaq_cb_info = type { i32, %struct.snd_usb_caiaqdev* }
%struct.snd_usb_caiaqdev = type { i32, i32, i32, i32, %struct.urb**, i32 }
%struct.device = type { i32 }

@N_URBS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unable to find an output urb to use\0A\00", align 1
@FRAMES_PER_URB = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@BYTES_PER_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @read_completed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_completed(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.snd_usb_caiaq_cb_info*, align 8
  %4 = alloca %struct.snd_usb_caiaqdev*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.snd_usb_caiaq_cb_info*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %15 = load %struct.urb*, %struct.urb** %2, align 8
  %16 = getelementptr inbounds %struct.urb, %struct.urb* %15, i32 0, i32 2
  %17 = load %struct.snd_usb_caiaq_cb_info*, %struct.snd_usb_caiaq_cb_info** %16, align 8
  store %struct.snd_usb_caiaq_cb_info* %17, %struct.snd_usb_caiaq_cb_info** %3, align 8
  store %struct.urb* null, %struct.urb** %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i64 0, i64* %13, align 8
  %18 = load %struct.urb*, %struct.urb** %2, align 8
  %19 = getelementptr inbounds %struct.urb, %struct.urb* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load %struct.snd_usb_caiaq_cb_info*, %struct.snd_usb_caiaq_cb_info** %3, align 8
  %24 = icmp ne %struct.snd_usb_caiaq_cb_info* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22, %1
  br label %226

26:                                               ; preds = %22
  %27 = load %struct.snd_usb_caiaq_cb_info*, %struct.snd_usb_caiaq_cb_info** %3, align 8
  %28 = getelementptr inbounds %struct.snd_usb_caiaq_cb_info, %struct.snd_usb_caiaq_cb_info* %27, i32 0, i32 1
  %29 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %28, align 8
  store %struct.snd_usb_caiaqdev* %29, %struct.snd_usb_caiaqdev** %4, align 8
  %30 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %31 = call %struct.device* @caiaqdev_to_dev(%struct.snd_usb_caiaqdev* %30)
  store %struct.device* %31, %struct.device** %5, align 8
  %32 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %33 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  br label %226

37:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %57, %37
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @N_URBS, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %45 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %44, i32 0, i32 0
  %46 = call i64 @test_and_set_bit(i32 %43, i32* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %50 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %49, i32 0, i32 4
  %51 = load %struct.urb**, %struct.urb*** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.urb*, %struct.urb** %51, i64 %53
  %55 = load %struct.urb*, %struct.urb** %54, align 8
  store %struct.urb* %55, %struct.urb** %6, align 8
  br label %60

56:                                               ; preds = %42
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %38

60:                                               ; preds = %48, %38
  %61 = load %struct.urb*, %struct.urb** %6, align 8
  %62 = icmp ne %struct.urb* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %184

66:                                               ; preds = %60
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %160, %66
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @FRAMES_PER_URB, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %163

71:                                               ; preds = %67
  %72 = load %struct.urb*, %struct.urb** %2, align 8
  %73 = getelementptr inbounds %struct.urb, %struct.urb* %72, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  br label %160

82:                                               ; preds = %71
  %83 = load %struct.urb*, %struct.urb** %2, align 8
  %84 = getelementptr inbounds %struct.urb, %struct.urb* %83, i32 0, i32 1
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.urb*, %struct.urb** %6, align 8
  %93 = getelementptr inbounds %struct.urb, %struct.urb* %92, i32 0, i32 1
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  store i32 %91, i32* %98, align 4
  %99 = load %struct.urb*, %struct.urb** %6, align 8
  %100 = getelementptr inbounds %struct.urb, %struct.urb* %99, i32 0, i32 1
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  store i32 0, i32* %105, align 8
  %106 = load i64, i64* %13, align 8
  %107 = load %struct.urb*, %struct.urb** %6, align 8
  %108 = getelementptr inbounds %struct.urb, %struct.urb* %107, i32 0, i32 1
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  store i64 %106, i64* %113, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = load i64, i64* %13, align 8
  %117 = add i64 %116, %115
  store i64 %117, i64* %13, align 8
  %118 = load i32, i32* %9, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %157

120:                                              ; preds = %82
  %121 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %122 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %121, i32 0, i32 3
  %123 = load i64, i64* %12, align 8
  %124 = call i32 @spin_lock_irqsave(i32* %122, i64 %123)
  %125 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %126 = load %struct.urb*, %struct.urb** %6, align 8
  %127 = load %struct.urb*, %struct.urb** %6, align 8
  %128 = getelementptr inbounds %struct.urb, %struct.urb* %127, i32 0, i32 1
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %128, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i64 %131
  %133 = call i32 @fill_out_urb(%struct.snd_usb_caiaqdev* %125, %struct.urb* %126, %struct.TYPE_3__* %132)
  %134 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %135 = load %struct.urb*, %struct.urb** %2, align 8
  %136 = load %struct.urb*, %struct.urb** %2, align 8
  %137 = getelementptr inbounds %struct.urb, %struct.urb* %136, i32 0, i32 1
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i64 %140
  %142 = call i32 @read_in_urb(%struct.snd_usb_caiaqdev* %134, %struct.urb* %135, %struct.TYPE_3__* %141)
  %143 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %144 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %143, i32 0, i32 3
  %145 = load i64, i64* %12, align 8
  %146 = call i32 @spin_unlock_irqrestore(i32* %144, i64 %145)
  %147 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %148 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %149 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @check_for_elapsed_periods(%struct.snd_usb_caiaqdev* %147, i32 %150)
  %152 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %153 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %154 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @check_for_elapsed_periods(%struct.snd_usb_caiaqdev* %152, i32 %155)
  store i32 1, i32* %10, align 4
  br label %157

157:                                              ; preds = %120, %82
  %158 = load i32, i32* %11, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %11, align 4
  br label %160

160:                                              ; preds = %157, %81
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %8, align 4
  br label %67

163:                                              ; preds = %67
  %164 = load i32, i32* %10, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %163
  %167 = load i32, i32* %11, align 4
  %168 = load %struct.urb*, %struct.urb** %6, align 8
  %169 = getelementptr inbounds %struct.urb, %struct.urb* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 8
  %170 = load %struct.urb*, %struct.urb** %6, align 8
  %171 = load i32, i32* @GFP_ATOMIC, align 4
  %172 = call i32 @usb_submit_urb(%struct.urb* %170, i32 %171)
  br label %183

173:                                              ; preds = %163
  %174 = load %struct.urb*, %struct.urb** %6, align 8
  %175 = getelementptr inbounds %struct.urb, %struct.urb* %174, i32 0, i32 2
  %176 = load %struct.snd_usb_caiaq_cb_info*, %struct.snd_usb_caiaq_cb_info** %175, align 8
  store %struct.snd_usb_caiaq_cb_info* %176, %struct.snd_usb_caiaq_cb_info** %14, align 8
  %177 = load %struct.snd_usb_caiaq_cb_info*, %struct.snd_usb_caiaq_cb_info** %14, align 8
  %178 = getelementptr inbounds %struct.snd_usb_caiaq_cb_info, %struct.snd_usb_caiaq_cb_info* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %181 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %180, i32 0, i32 0
  %182 = call i32 @clear_bit(i32 %179, i32* %181)
  br label %183

183:                                              ; preds = %173, %166
  br label %184

184:                                              ; preds = %183, %63
  store i32 0, i32* %8, align 4
  br label %185

185:                                              ; preds = %216, %184
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* @FRAMES_PER_URB, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %219

189:                                              ; preds = %185
  %190 = load i32, i32* @BYTES_PER_FRAME, align 4
  %191 = load i32, i32* %8, align 4
  %192 = mul nsw i32 %190, %191
  %193 = sext i32 %192 to i64
  %194 = load %struct.urb*, %struct.urb** %2, align 8
  %195 = getelementptr inbounds %struct.urb, %struct.urb* %194, i32 0, i32 1
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %195, align 8
  %197 = load i32, i32* %8, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 2
  store i64 %193, i64* %200, align 8
  %201 = load i32, i32* @BYTES_PER_FRAME, align 4
  %202 = load %struct.urb*, %struct.urb** %2, align 8
  %203 = getelementptr inbounds %struct.urb, %struct.urb* %202, i32 0, i32 1
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %203, align 8
  %205 = load i32, i32* %8, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 1
  store i32 %201, i32* %208, align 4
  %209 = load %struct.urb*, %struct.urb** %2, align 8
  %210 = getelementptr inbounds %struct.urb, %struct.urb* %209, i32 0, i32 1
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %210, align 8
  %212 = load i32, i32* %8, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 0
  store i32 0, i32* %215, align 8
  br label %216

216:                                              ; preds = %189
  %217 = load i32, i32* %8, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %8, align 4
  br label %185

219:                                              ; preds = %185
  %220 = load i32, i32* @FRAMES_PER_URB, align 4
  %221 = load %struct.urb*, %struct.urb** %2, align 8
  %222 = getelementptr inbounds %struct.urb, %struct.urb* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 8
  %223 = load %struct.urb*, %struct.urb** %2, align 8
  %224 = load i32, i32* @GFP_ATOMIC, align 4
  %225 = call i32 @usb_submit_urb(%struct.urb* %223, i32 %224)
  br label %226

226:                                              ; preds = %219, %36, %25
  ret void
}

declare dso_local %struct.device* @caiaqdev_to_dev(%struct.snd_usb_caiaqdev*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @fill_out_urb(%struct.snd_usb_caiaqdev*, %struct.urb*, %struct.TYPE_3__*) #1

declare dso_local i32 @read_in_urb(%struct.snd_usb_caiaqdev*, %struct.urb*, %struct.TYPE_3__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @check_for_elapsed_periods(%struct.snd_usb_caiaqdev*, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
