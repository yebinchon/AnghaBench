; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_util.c_ieee80211_chandef_to_operating_class.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_util.c_ieee80211_chandef_to_operating_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_chan_def = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NL80211_CHAN_WIDTH_40 = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_20_NOHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_chandef_to_operating_class(%struct.cfg80211_chan_def* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfg80211_chan_def*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cfg80211_chan_def* %0, %struct.cfg80211_chan_def** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %9 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp sge i32 %11, 2412
  br i1 %12, label %13, label %45

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  %15 = icmp sle i32 %14, 2472
  br i1 %15, label %16, label %45

16:                                               ; preds = %13
  %17 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %18 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NL80211_CHAN_WIDTH_40, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %228

23:                                               ; preds = %16
  %24 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %25 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @NL80211_CHAN_WIDTH_40, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %32 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %30, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32*, i32** %5, align 8
  store i32 83, i32* %38, align 4
  br label %41

39:                                               ; preds = %29
  %40 = load i32*, i32** %5, align 8
  store i32 84, i32* %40, align 4
  br label %41

41:                                               ; preds = %39, %37
  br label %44

42:                                               ; preds = %23
  %43 = load i32*, i32** %5, align 8
  store i32 81, i32* %43, align 4
  br label %44

44:                                               ; preds = %42, %41
  store i32 1, i32* %3, align 4
  br label %228

45:                                               ; preds = %13, %2
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 2484
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %50 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @NL80211_CHAN_WIDTH_20_NOHT, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %228

55:                                               ; preds = %48
  %56 = load i32*, i32** %5, align 8
  store i32 82, i32* %56, align 4
  store i32 1, i32* %3, align 4
  br label %228

57:                                               ; preds = %45
  %58 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %59 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %65 [
    i32 129, label %61
    i32 131, label %62
    i32 128, label %63
    i32 132, label %64
    i32 130, label %64
  ]

61:                                               ; preds = %57
  store i32 128, i32* %6, align 4
  br label %66

62:                                               ; preds = %57
  store i32 129, i32* %6, align 4
  br label %66

63:                                               ; preds = %57
  store i32 130, i32* %6, align 4
  br label %66

64:                                               ; preds = %57, %57
  store i32 0, i32* %3, align 4
  br label %228

65:                                               ; preds = %57
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %63, %62, %61
  %67 = load i32, i32* %7, align 4
  %68 = icmp sge i32 %67, 5180
  br i1 %68, label %69, label %101

69:                                               ; preds = %66
  %70 = load i32, i32* %7, align 4
  %71 = icmp sle i32 %70, 5240
  br i1 %71, label %72, label %101

72:                                               ; preds = %69
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* %6, align 4
  %77 = load i32*, i32** %5, align 8
  store i32 %76, i32* %77, align 4
  br label %100

78:                                               ; preds = %72
  %79 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %80 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @NL80211_CHAN_WIDTH_40, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %78
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %87 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %86, i32 0, i32 2
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp sgt i32 %85, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = load i32*, i32** %5, align 8
  store i32 116, i32* %93, align 4
  br label %96

94:                                               ; preds = %84
  %95 = load i32*, i32** %5, align 8
  store i32 117, i32* %95, align 4
  br label %96

96:                                               ; preds = %94, %92
  br label %99

97:                                               ; preds = %78
  %98 = load i32*, i32** %5, align 8
  store i32 115, i32* %98, align 4
  br label %99

99:                                               ; preds = %97, %96
  br label %100

100:                                              ; preds = %99, %75
  store i32 1, i32* %3, align 4
  br label %228

101:                                              ; preds = %69, %66
  %102 = load i32, i32* %7, align 4
  %103 = icmp sge i32 %102, 5260
  br i1 %103, label %104, label %136

104:                                              ; preds = %101
  %105 = load i32, i32* %7, align 4
  %106 = icmp sle i32 %105, 5320
  br i1 %106, label %107, label %136

107:                                              ; preds = %104
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32, i32* %6, align 4
  %112 = load i32*, i32** %5, align 8
  store i32 %111, i32* %112, align 4
  br label %135

113:                                              ; preds = %107
  %114 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %115 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @NL80211_CHAN_WIDTH_40, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %132

119:                                              ; preds = %113
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %122 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %121, i32 0, i32 2
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp sgt i32 %120, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %119
  %128 = load i32*, i32** %5, align 8
  store i32 119, i32* %128, align 4
  br label %131

129:                                              ; preds = %119
  %130 = load i32*, i32** %5, align 8
  store i32 120, i32* %130, align 4
  br label %131

131:                                              ; preds = %129, %127
  br label %134

132:                                              ; preds = %113
  %133 = load i32*, i32** %5, align 8
  store i32 118, i32* %133, align 4
  br label %134

134:                                              ; preds = %132, %131
  br label %135

135:                                              ; preds = %134, %110
  store i32 1, i32* %3, align 4
  br label %228

136:                                              ; preds = %104, %101
  %137 = load i32, i32* %7, align 4
  %138 = icmp sge i32 %137, 5500
  br i1 %138, label %139, label %171

139:                                              ; preds = %136
  %140 = load i32, i32* %7, align 4
  %141 = icmp sle i32 %140, 5720
  br i1 %141, label %142, label %171

142:                                              ; preds = %139
  %143 = load i32, i32* %6, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load i32, i32* %6, align 4
  %147 = load i32*, i32** %5, align 8
  store i32 %146, i32* %147, align 4
  br label %170

148:                                              ; preds = %142
  %149 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %150 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @NL80211_CHAN_WIDTH_40, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %167

154:                                              ; preds = %148
  %155 = load i32, i32* %7, align 4
  %156 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %157 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %156, i32 0, i32 2
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = icmp sgt i32 %155, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %154
  %163 = load i32*, i32** %5, align 8
  store i32 122, i32* %163, align 4
  br label %166

164:                                              ; preds = %154
  %165 = load i32*, i32** %5, align 8
  store i32 123, i32* %165, align 4
  br label %166

166:                                              ; preds = %164, %162
  br label %169

167:                                              ; preds = %148
  %168 = load i32*, i32** %5, align 8
  store i32 121, i32* %168, align 4
  br label %169

169:                                              ; preds = %167, %166
  br label %170

170:                                              ; preds = %169, %145
  store i32 1, i32* %3, align 4
  br label %228

171:                                              ; preds = %139, %136
  %172 = load i32, i32* %7, align 4
  %173 = icmp sge i32 %172, 5745
  br i1 %173, label %174, label %212

174:                                              ; preds = %171
  %175 = load i32, i32* %7, align 4
  %176 = icmp sle i32 %175, 5845
  br i1 %176, label %177, label %212

177:                                              ; preds = %174
  %178 = load i32, i32* %6, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = load i32, i32* %6, align 4
  %182 = load i32*, i32** %5, align 8
  store i32 %181, i32* %182, align 4
  br label %211

183:                                              ; preds = %177
  %184 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %185 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @NL80211_CHAN_WIDTH_40, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %202

189:                                              ; preds = %183
  %190 = load i32, i32* %7, align 4
  %191 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %192 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %191, i32 0, i32 2
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = icmp sgt i32 %190, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %189
  %198 = load i32*, i32** %5, align 8
  store i32 126, i32* %198, align 4
  br label %201

199:                                              ; preds = %189
  %200 = load i32*, i32** %5, align 8
  store i32 127, i32* %200, align 4
  br label %201

201:                                              ; preds = %199, %197
  br label %210

202:                                              ; preds = %183
  %203 = load i32, i32* %7, align 4
  %204 = icmp sle i32 %203, 5805
  br i1 %204, label %205, label %207

205:                                              ; preds = %202
  %206 = load i32*, i32** %5, align 8
  store i32 124, i32* %206, align 4
  br label %209

207:                                              ; preds = %202
  %208 = load i32*, i32** %5, align 8
  store i32 125, i32* %208, align 4
  br label %209

209:                                              ; preds = %207, %205
  br label %210

210:                                              ; preds = %209, %201
  br label %211

211:                                              ; preds = %210, %180
  store i32 1, i32* %3, align 4
  br label %228

212:                                              ; preds = %174, %171
  %213 = load i32, i32* %7, align 4
  %214 = icmp sge i32 %213, 58320
  br i1 %214, label %215, label %227

215:                                              ; preds = %212
  %216 = load i32, i32* %7, align 4
  %217 = icmp sle i32 %216, 69120
  br i1 %217, label %218, label %227

218:                                              ; preds = %215
  %219 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %220 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @NL80211_CHAN_WIDTH_40, align 4
  %223 = icmp sge i32 %221, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %218
  store i32 0, i32* %3, align 4
  br label %228

225:                                              ; preds = %218
  %226 = load i32*, i32** %5, align 8
  store i32 180, i32* %226, align 4
  store i32 1, i32* %3, align 4
  br label %228

227:                                              ; preds = %215, %212
  store i32 0, i32* %3, align 4
  br label %228

228:                                              ; preds = %227, %225, %224, %211, %170, %135, %100, %64, %55, %54, %44, %22
  %229 = load i32, i32* %3, align 4
  ret i32 %229
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
