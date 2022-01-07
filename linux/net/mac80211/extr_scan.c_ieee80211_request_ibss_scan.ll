; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_scan.c_ieee80211_request_ibss_scan.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_scan.c_ieee80211_request_ibss_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local* }
%struct.ieee80211_local = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_8__, i64 }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_9__*, %struct.ieee80211_channel** }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@NUM_NL80211_BANDS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_IR = common dso_local global i32 0, align 4
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@IEEE80211_MAX_SSID_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_request_ibss_scan(%struct.ieee80211_sub_if_data* %0, i32* %1, i32 %2, %struct.ieee80211_channel** %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ieee80211_sub_if_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_channel**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee80211_local*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ieee80211_channel*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.ieee80211_channel** %3, %struct.ieee80211_channel*** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %20 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %21 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %20, i32 0, i32 0
  %22 = load %struct.ieee80211_local*, %struct.ieee80211_local** %21, align 8
  store %struct.ieee80211_local* %22, %struct.ieee80211_local** %13, align 8
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %25 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %26 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %29 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %6
  br label %221

33:                                               ; preds = %6
  %34 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %10, align 8
  %35 = icmp ne %struct.ieee80211_channel** %34, null
  br i1 %35, label %128, label %36

36:                                               ; preds = %33
  store i32 0, i32* %17, align 4
  br label %37

37:                                               ; preds = %112, %36
  %38 = load i32, i32* %17, align 4
  %39 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %115

41:                                               ; preds = %37
  %42 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %43 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %46, align 8
  %48 = load i32, i32* %17, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %47, i64 %49
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = icmp ne %struct.TYPE_6__* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %41
  br label %112

54:                                               ; preds = %41
  %55 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %56 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %59, align 8
  %61 = load i32, i32* %17, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %60, i64 %62
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %18, align 4
  store i32 0, i32* %15, align 4
  br label %67

67:                                               ; preds = %108, %54
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %18, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %111

71:                                               ; preds = %67
  %72 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %73 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %76, align 8
  %78 = load i32, i32* %17, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %77, i64 %79
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %82, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %83, i64 %85
  store %struct.ieee80211_channel* %86, %struct.ieee80211_channel** %19, align 8
  %87 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %19, align 8
  %88 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %91 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %92 = or i32 %90, %91
  %93 = and i32 %89, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %71
  br label %108

96:                                               ; preds = %71
  %97 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %19, align 8
  %98 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %99 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %98, i32 0, i32 1
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 4
  %102 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %101, align 8
  %103 = load i32, i32* %16, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %102, i64 %104
  store %struct.ieee80211_channel* %97, %struct.ieee80211_channel** %105, align 8
  %106 = load i32, i32* %16, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %16, align 4
  br label %108

108:                                              ; preds = %96, %95
  %109 = load i32, i32* %15, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %15, align 4
  br label %67

111:                                              ; preds = %67
  br label %112

112:                                              ; preds = %111, %53
  %113 = load i32, i32* %17, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %17, align 4
  br label %37

115:                                              ; preds = %37
  %116 = load i32, i32* %16, align 4
  %117 = icmp eq i32 %116, 0
  %118 = zext i1 %117 to i32
  %119 = call i64 @WARN_ON_ONCE(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %221

122:                                              ; preds = %115
  %123 = load i32, i32* %16, align 4
  %124 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %125 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %124, i32 0, i32 1
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  store i32 %123, i32* %127, align 8
  br label %179

128:                                              ; preds = %33
  store i32 0, i32* %15, align 4
  br label %129

129:                                              ; preds = %163, %128
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp ult i32 %130, %131
  br i1 %132, label %133, label %166

133:                                              ; preds = %129
  %134 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %10, align 8
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %134, i64 %136
  %138 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %137, align 8
  %139 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %142 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %143 = or i32 %141, %142
  %144 = and i32 %140, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %133
  br label %163

147:                                              ; preds = %133
  %148 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %10, align 8
  %149 = load i32, i32* %15, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %148, i64 %150
  %152 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %151, align 8
  %153 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %154 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %153, i32 0, i32 1
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 4
  %157 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %156, align 8
  %158 = load i32, i32* %16, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %157, i64 %159
  store %struct.ieee80211_channel* %152, %struct.ieee80211_channel** %160, align 8
  %161 = load i32, i32* %16, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %16, align 4
  br label %163

163:                                              ; preds = %147, %146
  %164 = load i32, i32* %15, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %15, align 4
  br label %129

166:                                              ; preds = %129
  %167 = load i32, i32* %16, align 4
  %168 = icmp eq i32 %167, 0
  %169 = zext i1 %168 to i32
  %170 = call i64 @WARN_ON_ONCE(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %166
  br label %221

173:                                              ; preds = %166
  %174 = load i32, i32* %16, align 4
  %175 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %176 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %175, i32 0, i32 1
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  store i32 %174, i32* %178, align 8
  br label %179

179:                                              ; preds = %173, %122
  %180 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %181 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %180, i32 0, i32 2
  %182 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %183 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %182, i32 0, i32 1
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 3
  store %struct.TYPE_9__* %181, %struct.TYPE_9__** %185, align 8
  %186 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %187 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %186, i32 0, i32 1
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 1
  store i32 1, i32* %189, align 4
  %190 = load i32, i32* %12, align 4
  %191 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %192 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %191, i32 0, i32 1
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 2
  store i32 %190, i32* %194, align 8
  %195 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %196 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %195, i32 0, i32 1
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 3
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i64 0
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load i32*, i32** %8, align 8
  %204 = load i32, i32* @IEEE80211_MAX_SSID_LEN, align 4
  %205 = call i32 @memcpy(i32 %202, i32* %203, i32 %204)
  %206 = load i32, i32* %9, align 4
  %207 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %208 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %207, i32 0, i32 1
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 3
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i64 0
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 0
  store i32 %206, i32* %213, align 4
  %214 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %215 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %216 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %215, i32 0, i32 0
  %217 = load %struct.ieee80211_local*, %struct.ieee80211_local** %216, align 8
  %218 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %217, i32 0, i32 1
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %218, align 8
  %220 = call i32 @__ieee80211_start_scan(%struct.ieee80211_sub_if_data* %214, %struct.TYPE_10__* %219)
  store i32 %220, i32* %14, align 4
  br label %221

221:                                              ; preds = %179, %172, %121, %32
  %222 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %223 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %222, i32 0, i32 0
  %224 = call i32 @mutex_unlock(i32* %223)
  %225 = load i32, i32* %14, align 4
  ret i32 %225
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @__ieee80211_start_scan(%struct.ieee80211_sub_if_data*, %struct.TYPE_10__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
