; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_util.c_ieee80211_get_vht_max_nss.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_util.c_ieee80211_get_vht_max_nss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vht_cap = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@IEEE80211_VHT_EXT_NSS_BW_CAPABLE = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_EXT_NSS_BW_MASK = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_get_vht_max_nss(%struct.ieee80211_vht_cap* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_vht_cap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ieee80211_vht_cap* %0, %struct.ieee80211_vht_cap** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.ieee80211_vht_cap*, %struct.ieee80211_vht_cap** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le16_to_cpu(i32 %20)
  store i32 %21, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, 65535
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %207

25:                                               ; preds = %4
  %26 = load i32, i32* %8, align 4
  %27 = icmp sgt i32 %26, 9
  %28 = zext i1 %27 to i32
  %29 = call i64 @WARN_ON(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %207

32:                                               ; preds = %25
  %33 = load i32, i32* %8, align 4
  %34 = icmp sle i32 %33, 7
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 0, i32* %15, align 4
  br label %42

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 8
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 1, i32* %15, align 4
  br label %41

40:                                               ; preds = %36
  store i32 2, i32* %15, align 4
  br label %41

41:                                               ; preds = %40, %39
  br label %42

42:                                               ; preds = %41, %35
  store i32 7, i32* %14, align 4
  br label %43

43:                                               ; preds = %63, %42
  %44 = load i32, i32* %14, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %43
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %14, align 4
  %49 = mul nsw i32 2, %48
  %50 = ashr i32 %47, %49
  %51 = and i32 %50, 3
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp eq i32 %52, 3
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %63

55:                                               ; preds = %46
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  br label %66

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %54
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %14, align 4
  br label %43

66:                                               ; preds = %59, %43
  %67 = load %struct.ieee80211_vht_cap*, %struct.ieee80211_vht_cap** %6, align 8
  %68 = getelementptr inbounds %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @IEEE80211_VHT_EXT_NSS_BW_CAPABLE, align 4
  %72 = call i32 @cpu_to_le16(i32 %71)
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %66
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %5, align 4
  br label %207

77:                                               ; preds = %66
  %78 = load %struct.ieee80211_vht_cap*, %struct.ieee80211_vht_cap** %6, align 8
  %79 = getelementptr inbounds %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @IEEE80211_VHT_CAP_EXT_NSS_BW_MASK, align 4
  %82 = call i32 @le32_get_bits(i32 %80, i32 %81)
  store i32 %82, i32* %12, align 4
  %83 = load %struct.ieee80211_vht_cap*, %struct.ieee80211_vht_cap** %6, align 8
  %84 = getelementptr inbounds %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_MASK, align 4
  %87 = call i32 @le32_get_bits(i32 %85, i32 %86)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %77
  store i32 0, i32* %12, align 4
  br label %91

91:                                               ; preds = %90, %77
  %92 = load i32, i32* %13, align 4
  %93 = icmp eq i32 %92, 3
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i32 0, i32* %5, align 4
  br label %207

95:                                               ; preds = %91
  %96 = load i32, i32* %13, align 4
  %97 = icmp eq i32 %96, 2
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load i32, i32* %12, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %12, align 4
  %103 = icmp eq i32 %102, 2
  br i1 %103, label %104, label %105

104:                                              ; preds = %101, %98
  store i32 0, i32* %5, align 4
  br label %207

105:                                              ; preds = %101, %95
  %106 = load i32, i32* %7, align 4
  switch i32 %106, label %205 [
    i32 128, label %107
    i32 130, label %107
    i32 131, label %120
    i32 129, label %152
  ]

107:                                              ; preds = %105, %105
  %108 = load i32, i32* %13, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %13, align 4
  %112 = icmp eq i32 %111, 2
  br i1 %112, label %113, label %119

113:                                              ; preds = %110, %107
  %114 = load i32, i32* %12, align 4
  %115 = icmp eq i32 %114, 3
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i32, i32* %11, align 4
  %118 = mul nsw i32 2, %117
  store i32 %118, i32* %5, align 4
  br label %207

119:                                              ; preds = %113, %110
  br label %205

120:                                              ; preds = %105
  %121 = load i32, i32* %13, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %120
  %124 = load i32, i32* %12, align 4
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %129, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %12, align 4
  %128 = icmp eq i32 %127, 2
  br i1 %128, label %129, label %132

129:                                              ; preds = %126, %123
  %130 = load i32, i32* %11, align 4
  %131 = sdiv i32 %130, 2
  store i32 %131, i32* %5, align 4
  br label %207

132:                                              ; preds = %126, %120
  %133 = load i32, i32* %13, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %132
  %136 = load i32, i32* %12, align 4
  %137 = icmp eq i32 %136, 3
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load i32, i32* %11, align 4
  %140 = mul nsw i32 3, %139
  %141 = sdiv i32 %140, 4
  store i32 %141, i32* %5, align 4
  br label %207

142:                                              ; preds = %135, %132
  %143 = load i32, i32* %13, align 4
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %151

145:                                              ; preds = %142
  %146 = load i32, i32* %12, align 4
  %147 = icmp eq i32 %146, 3
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load i32, i32* %11, align 4
  %150 = mul nsw i32 2, %149
  store i32 %150, i32* %5, align 4
  br label %207

151:                                              ; preds = %145, %142
  br label %205

152:                                              ; preds = %105
  %153 = load i32, i32* %13, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %152
  %156 = load i32, i32* %12, align 4
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  store i32 0, i32* %5, align 4
  br label %207

159:                                              ; preds = %155, %152
  %160 = load i32, i32* %13, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %159
  %163 = load i32, i32* %12, align 4
  %164 = icmp eq i32 %163, 2
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load i32, i32* %11, align 4
  %167 = sdiv i32 %166, 2
  store i32 %167, i32* %5, align 4
  br label %207

168:                                              ; preds = %162, %159
  %169 = load i32, i32* %13, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %168
  %172 = load i32, i32* %12, align 4
  %173 = icmp eq i32 %172, 3
  br i1 %173, label %174, label %178

174:                                              ; preds = %171
  %175 = load i32, i32* %11, align 4
  %176 = mul nsw i32 3, %175
  %177 = sdiv i32 %176, 4
  store i32 %177, i32* %5, align 4
  br label %207

178:                                              ; preds = %171, %168
  %179 = load i32, i32* %13, align 4
  %180 = icmp eq i32 %179, 1
  br i1 %180, label %181, label %185

181:                                              ; preds = %178
  %182 = load i32, i32* %12, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  store i32 0, i32* %5, align 4
  br label %207

185:                                              ; preds = %181, %178
  %186 = load i32, i32* %13, align 4
  %187 = icmp eq i32 %186, 1
  br i1 %187, label %188, label %194

188:                                              ; preds = %185
  %189 = load i32, i32* %12, align 4
  %190 = icmp eq i32 %189, 1
  br i1 %190, label %191, label %194

191:                                              ; preds = %188
  %192 = load i32, i32* %11, align 4
  %193 = sdiv i32 %192, 2
  store i32 %193, i32* %5, align 4
  br label %207

194:                                              ; preds = %188, %185
  %195 = load i32, i32* %13, align 4
  %196 = icmp eq i32 %195, 1
  br i1 %196, label %197, label %204

197:                                              ; preds = %194
  %198 = load i32, i32* %12, align 4
  %199 = icmp eq i32 %198, 2
  br i1 %199, label %200, label %204

200:                                              ; preds = %197
  %201 = load i32, i32* %11, align 4
  %202 = mul nsw i32 3, %201
  %203 = sdiv i32 %202, 4
  store i32 %203, i32* %5, align 4
  br label %207

204:                                              ; preds = %197, %194
  br label %205

205:                                              ; preds = %105, %204, %151, %119
  %206 = load i32, i32* %11, align 4
  store i32 %206, i32* %5, align 4
  br label %207

207:                                              ; preds = %205, %200, %191, %184, %174, %165, %158, %148, %138, %129, %116, %104, %94, %75, %31, %24
  %208 = load i32, i32* %5, align 4
  ret i32 %208
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @le32_get_bits(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
