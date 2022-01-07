; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_chan.c_cfg80211_get_chan_state.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_chan.c_cfg80211_get_chan_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { i32, %struct.TYPE_6__, i32, i32, i32, i32, %struct.TYPE_5__*, i32, i32, i64 }
%struct.TYPE_6__ = type { %struct.ieee80211_channel*, i32 }
%struct.ieee80211_channel = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ieee80211_channel* }

@CHAN_MODE_UNDEFINED = common dso_local global i32 0, align 4
@CHAN_MODE_SHARED = common dso_local global i32 0, align 4
@CHAN_MODE_EXCLUSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_get_chan_state(%struct.wireless_dev* %0, %struct.ieee80211_channel** %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.wireless_dev*, align 8
  %6 = alloca %struct.ieee80211_channel**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.wireless_dev* %0, %struct.wireless_dev** %5, align 8
  store %struct.ieee80211_channel** %1, %struct.ieee80211_channel*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %6, align 8
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %10, align 8
  %11 = load i32, i32* @CHAN_MODE_UNDEFINED, align 4
  %12 = load i32*, i32** %7, align 8
  store i32 %11, i32* %12, align 4
  %13 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %14 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %13)
  %15 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %16 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %15, i32 0, i32 9
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %21 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %20, i32 0, i32 9
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @netif_running(i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %208

26:                                               ; preds = %19, %4
  %27 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %28 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %208 [
    i32 141, label %30
    i32 131, label %74
    i32 134, label %74
    i32 140, label %90
    i32 132, label %90
    i32 138, label %151
    i32 135, label %190
    i32 137, label %205
    i32 139, label %205
    i32 129, label %205
    i32 133, label %205
    i32 136, label %205
    i32 130, label %206
    i32 128, label %206
  ]

30:                                               ; preds = %26
  %31 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %32 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %31, i32 0, i32 6
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = icmp ne %struct.TYPE_5__* %33, null
  br i1 %34, label %35, label %73

35:                                               ; preds = %30
  %36 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %37 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %36, i32 0, i32 6
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %40, align 8
  %42 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %6, align 8
  store %struct.ieee80211_channel* %41, %struct.ieee80211_channel** %42, align 8
  %43 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %44 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %35
  %48 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %49 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @CHAN_MODE_SHARED, align 4
  br label %56

54:                                               ; preds = %47, %35
  %55 = load i32, i32* @CHAN_MODE_EXCLUSIVE, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = load i32*, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  %59 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %60 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %56
  %64 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %65 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @BIT(i32 %67)
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %68
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %63, %56
  br label %208

73:                                               ; preds = %30
  br label %208

74:                                               ; preds = %26, %26
  %75 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %76 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %75, i32 0, i32 6
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = icmp ne %struct.TYPE_5__* %77, null
  br i1 %78, label %79, label %89

79:                                               ; preds = %74
  %80 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %81 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %80, i32 0, i32 6
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %84, align 8
  %86 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %6, align 8
  store %struct.ieee80211_channel* %85, %struct.ieee80211_channel** %86, align 8
  %87 = load i32, i32* @CHAN_MODE_SHARED, align 4
  %88 = load i32*, i32** %7, align 8
  store i32 %87, i32* %88, align 4
  br label %208

89:                                               ; preds = %74
  br label %208

90:                                               ; preds = %26, %26
  %91 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %92 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %90
  %96 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %97 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %98, align 8
  %100 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %6, align 8
  store %struct.ieee80211_channel* %99, %struct.ieee80211_channel** %100, align 8
  %101 = load i32, i32* @CHAN_MODE_SHARED, align 4
  %102 = load i32*, i32** %7, align 8
  store i32 %101, i32* %102, align 4
  %103 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %104 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @BIT(i32 %106)
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %107
  store i32 %110, i32* %108, align 4
  br label %150

111:                                              ; preds = %90
  %112 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %113 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %149

116:                                              ; preds = %111
  %117 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %118 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %119, align 8
  %121 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %6, align 8
  store %struct.ieee80211_channel* %120, %struct.ieee80211_channel** %121, align 8
  %122 = load i32, i32* @CHAN_MODE_SHARED, align 4
  %123 = load i32*, i32** %7, align 8
  store i32 %122, i32* %123, align 4
  %124 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %125 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %128 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %127, i32 0, i32 1
  %129 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %130 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @cfg80211_chandef_dfs_required(i32 %126, %struct.TYPE_6__* %128, i32 %131)
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp slt i32 %133, 0
  %135 = zext i1 %134 to i32
  %136 = call i32 @WARN_ON(i32 %135)
  %137 = load i32, i32* %9, align 4
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %116
  %140 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %141 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @BIT(i32 %143)
  %145 = load i32*, i32** %8, align 8
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %144
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %139, %116
  br label %149

149:                                              ; preds = %148, %111
  br label %150

150:                                              ; preds = %149, %95
  br label %208

151:                                              ; preds = %26
  %152 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %153 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %189

156:                                              ; preds = %151
  %157 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %158 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %159, align 8
  %161 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %6, align 8
  store %struct.ieee80211_channel* %160, %struct.ieee80211_channel** %161, align 8
  %162 = load i32, i32* @CHAN_MODE_SHARED, align 4
  %163 = load i32*, i32** %7, align 8
  store i32 %162, i32* %163, align 4
  %164 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %165 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %168 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %167, i32 0, i32 1
  %169 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %170 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @cfg80211_chandef_dfs_required(i32 %166, %struct.TYPE_6__* %168, i32 %171)
  store i32 %172, i32* %9, align 4
  %173 = load i32, i32* %9, align 4
  %174 = icmp slt i32 %173, 0
  %175 = zext i1 %174 to i32
  %176 = call i32 @WARN_ON(i32 %175)
  %177 = load i32, i32* %9, align 4
  %178 = icmp sgt i32 %177, 0
  br i1 %178, label %179, label %188

179:                                              ; preds = %156
  %180 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %181 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @BIT(i32 %183)
  %185 = load i32*, i32** %8, align 8
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %186, %184
  store i32 %187, i32* %185, align 4
  br label %188

188:                                              ; preds = %179, %156
  br label %189

189:                                              ; preds = %188, %151
  br label %208

190:                                              ; preds = %26
  %191 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %192 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %193, align 8
  %195 = icmp ne %struct.ieee80211_channel* %194, null
  br i1 %195, label %196, label %204

196:                                              ; preds = %190
  %197 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %198 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %199, align 8
  %201 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %6, align 8
  store %struct.ieee80211_channel* %200, %struct.ieee80211_channel** %201, align 8
  %202 = load i32, i32* @CHAN_MODE_SHARED, align 4
  %203 = load i32*, i32** %7, align 8
  store i32 %202, i32* %203, align 4
  br label %208

204:                                              ; preds = %190
  br label %208

205:                                              ; preds = %26, %26, %26, %26, %26
  br label %208

206:                                              ; preds = %26, %26
  %207 = call i32 @WARN_ON(i32 1)
  br label %208

208:                                              ; preds = %25, %72, %79, %150, %189, %196, %205, %206, %26, %204, %89, %73
  ret void
}

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

declare dso_local i32 @netif_running(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @cfg80211_chandef_dfs_required(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
