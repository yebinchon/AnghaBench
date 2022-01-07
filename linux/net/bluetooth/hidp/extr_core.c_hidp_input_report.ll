; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_input_report.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_input_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidp_session = type { i8*, %struct.input_dev* }
%struct.input_dev = type { i32 }
%struct.sk_buff = type { i8*, i32 }

@hidp_keycode = common dso_local global i32* null, align 8
@hidp_mkeyspat = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unknown key (scancode %#x) released.\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Unknown key (scancode %#x) pressed.\00", align 1
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@BTN_SIDE = common dso_local global i32 0, align 4
@BTN_EXTRA = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hidp_session*, %struct.sk_buff*)* @hidp_input_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hidp_input_report(%struct.hidp_session* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hidp_session*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hidp_session* %0, %struct.hidp_session** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %11 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %12 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %11, i32 0, i32 1
  %13 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  store %struct.input_dev* %13, %struct.input_dev** %5, align 8
  %14 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %15 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  store i8* %20, i8** %7, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  store i8* %24, i8** %8, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %10, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  switch i32 %34, label %248 [
    i32 1, label %35
    i32 2, label %180
  ]

35:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %56, %35
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 8
  br i1 %38, label %39, label %59

39:                                               ; preds = %36
  %40 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %41 = load i32*, i32** @hidp_keycode, align 8
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 224
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = load i32, i32* %9, align 4
  %52 = ashr i32 %50, %51
  %53 = and i32 %52, 1
  %54 = trunc i32 %53 to i8
  %55 = call i32 @input_report_key(%struct.input_dev* %40, i32 %46, i8 signext %54)
  br label %56

56:                                               ; preds = %39
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %36

59:                                               ; preds = %36
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  %62 = load i32, i32* @hidp_mkeyspat, align 4
  %63 = call i32 @memcmp(i8* %61, i32 %62, i32 6)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  br label %248

66:                                               ; preds = %59
  store i32 2, i32* %9, align 4
  br label %67

67:                                               ; preds = %173, %66
  %68 = load i32, i32* %9, align 4
  %69 = icmp slt i32 %68, 8
  br i1 %69, label %70, label %176

70:                                               ; preds = %67
  %71 = load i8*, i8** %6, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp sgt i32 %76, 3
  br i1 %77, label %78, label %121

78:                                               ; preds = %70
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 2
  %81 = load i8*, i8** %6, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = call i8* @memscan(i8* %80, i8 zeroext %85, i32 6)
  %87 = load i8*, i8** %7, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 8
  %89 = icmp eq i8* %86, %88
  br i1 %89, label %90, label %121

90:                                               ; preds = %78
  %91 = load i32*, i32** @hidp_keycode, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i64
  %98 = getelementptr inbounds i32, i32* %91, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %90
  %102 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %103 = load i32*, i32** @hidp_keycode, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i64
  %110 = getelementptr inbounds i32, i32* %103, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @input_report_key(%struct.input_dev* %102, i32 %111, i8 signext 0)
  br label %120

113:                                              ; preds = %90
  %114 = load i8*, i8** %6, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = call i32 @BT_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8 zeroext %118)
  br label %120

120:                                              ; preds = %113, %101
  br label %121

121:                                              ; preds = %120, %78, %70
  %122 = load i8*, i8** %7, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = icmp sgt i32 %127, 3
  br i1 %128, label %129, label %172

129:                                              ; preds = %121
  %130 = load i8*, i8** %6, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 2
  %132 = load i8*, i8** %7, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = call i8* @memscan(i8* %131, i8 zeroext %136, i32 6)
  %138 = load i8*, i8** %6, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 8
  %140 = icmp eq i8* %137, %139
  br i1 %140, label %141, label %172

141:                                              ; preds = %129
  %142 = load i32*, i32** @hidp_keycode, align 8
  %143 = load i8*, i8** %7, align 8
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i64
  %149 = getelementptr inbounds i32, i32* %142, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %141
  %153 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %154 = load i32*, i32** @hidp_keycode, align 8
  %155 = load i8*, i8** %7, align 8
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i64
  %161 = getelementptr inbounds i32, i32* %154, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @input_report_key(%struct.input_dev* %153, i32 %162, i8 signext 1)
  br label %171

164:                                              ; preds = %141
  %165 = load i8*, i8** %7, align 8
  %166 = load i32, i32* %9, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %165, i64 %167
  %169 = load i8, i8* %168, align 1
  %170 = call i32 @BT_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %169)
  br label %171

171:                                              ; preds = %164, %152
  br label %172

172:                                              ; preds = %171, %129, %121
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %9, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %9, align 4
  br label %67

176:                                              ; preds = %67
  %177 = load i8*, i8** %6, align 8
  %178 = load i8*, i8** %7, align 8
  %179 = call i32 @memcpy(i8* %177, i8* %178, i32 8)
  br label %248

180:                                              ; preds = %2
  %181 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %182 = load i32, i32* @BTN_LEFT, align 4
  %183 = load i8*, i8** %8, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 0
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = and i32 %186, 1
  %188 = trunc i32 %187 to i8
  %189 = call i32 @input_report_key(%struct.input_dev* %181, i32 %182, i8 signext %188)
  %190 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %191 = load i32, i32* @BTN_RIGHT, align 4
  %192 = load i8*, i8** %8, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 0
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = and i32 %195, 2
  %197 = trunc i32 %196 to i8
  %198 = call i32 @input_report_key(%struct.input_dev* %190, i32 %191, i8 signext %197)
  %199 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %200 = load i32, i32* @BTN_MIDDLE, align 4
  %201 = load i8*, i8** %8, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 0
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = and i32 %204, 4
  %206 = trunc i32 %205 to i8
  %207 = call i32 @input_report_key(%struct.input_dev* %199, i32 %200, i8 signext %206)
  %208 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %209 = load i32, i32* @BTN_SIDE, align 4
  %210 = load i8*, i8** %8, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 0
  %212 = load i8, i8* %211, align 1
  %213 = sext i8 %212 to i32
  %214 = and i32 %213, 8
  %215 = trunc i32 %214 to i8
  %216 = call i32 @input_report_key(%struct.input_dev* %208, i32 %209, i8 signext %215)
  %217 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %218 = load i32, i32* @BTN_EXTRA, align 4
  %219 = load i8*, i8** %8, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 0
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = and i32 %222, 16
  %224 = trunc i32 %223 to i8
  %225 = call i32 @input_report_key(%struct.input_dev* %217, i32 %218, i8 signext %224)
  %226 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %227 = load i32, i32* @REL_X, align 4
  %228 = load i8*, i8** %8, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 1
  %230 = load i8, i8* %229, align 1
  %231 = call i32 @input_report_rel(%struct.input_dev* %226, i32 %227, i8 signext %230)
  %232 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %233 = load i32, i32* @REL_Y, align 4
  %234 = load i8*, i8** %8, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 2
  %236 = load i8, i8* %235, align 1
  %237 = call i32 @input_report_rel(%struct.input_dev* %232, i32 %233, i8 signext %236)
  %238 = load i32, i32* %10, align 4
  %239 = icmp sgt i32 %238, 3
  br i1 %239, label %240, label %247

240:                                              ; preds = %180
  %241 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %242 = load i32, i32* @REL_WHEEL, align 4
  %243 = load i8*, i8** %8, align 8
  %244 = getelementptr inbounds i8, i8* %243, i64 3
  %245 = load i8, i8* %244, align 1
  %246 = call i32 @input_report_rel(%struct.input_dev* %241, i32 %242, i8 signext %245)
  br label %247

247:                                              ; preds = %240, %180
  br label %248

248:                                              ; preds = %2, %247, %176, %65
  %249 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %250 = call i32 @input_sync(%struct.input_dev* %249)
  ret void
}

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i8 signext) #1

declare dso_local i32 @memcmp(i8*, i32, i32) #1

declare dso_local i8* @memscan(i8*, i8 zeroext, i32) #1

declare dso_local i32 @BT_ERR(i8*, i8 zeroext) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i8 signext) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
