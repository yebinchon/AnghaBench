; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_set_csa_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_set_csa_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_16__, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.ieee80211_if_mesh, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.ieee80211_if_mesh = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.cfg80211_csa_settings = type { i32, %struct.TYPE_18__, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_csa_settings = type { i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@IEEE80211_MAX_CSA_COUNTERS_NUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IEEE80211_MESH_CSA_ROLE_INIT = common dso_local global i32 0, align 4
@IEEE80211_MESH_CSA_ROLE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, %struct.cfg80211_csa_settings*, i32*)* @ieee80211_set_csa_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_set_csa_beacon(%struct.ieee80211_sub_if_data* %0, %struct.cfg80211_csa_settings* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.cfg80211_csa_settings*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ieee80211_csa_settings, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store %struct.cfg80211_csa_settings* %1, %struct.cfg80211_csa_settings** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = bitcast %struct.ieee80211_csa_settings* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 20, i1 false)
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %182 [
    i32 129, label %15
    i32 130, label %93
  ]

15:                                               ; preds = %3
  %16 = load %struct.cfg80211_csa_settings*, %struct.cfg80211_csa_settings** %6, align 8
  %17 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %16, i32 0, i32 7
  %18 = call i32 @cfg80211_beacon_dup(i32* %17)
  %19 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  store i32 %18, i32* %22, align 8
  %23 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %15
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %186

32:                                               ; preds = %15
  %33 = load %struct.cfg80211_csa_settings*, %struct.cfg80211_csa_settings** %6, align 8
  %34 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sle i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %185

38:                                               ; preds = %32
  %39 = load %struct.cfg80211_csa_settings*, %struct.cfg80211_csa_settings** %6, align 8
  %40 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @IEEE80211_MAX_CSA_COUNTERS_NUM, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.cfg80211_csa_settings*, %struct.cfg80211_csa_settings** %6, align 8
  %46 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IEEE80211_MAX_CSA_COUNTERS_NUM, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44, %38
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %186

53:                                               ; preds = %44
  %54 = load %struct.cfg80211_csa_settings*, %struct.cfg80211_csa_settings** %6, align 8
  %55 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.ieee80211_csa_settings, %struct.ieee80211_csa_settings* %8, i32 0, i32 4
  store i32 %56, i32* %57, align 4
  %58 = load %struct.cfg80211_csa_settings*, %struct.cfg80211_csa_settings** %6, align 8
  %59 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.ieee80211_csa_settings, %struct.ieee80211_csa_settings* %8, i32 0, i32 3
  store i32 %60, i32* %61, align 4
  %62 = load %struct.cfg80211_csa_settings*, %struct.cfg80211_csa_settings** %6, align 8
  %63 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.ieee80211_csa_settings, %struct.ieee80211_csa_settings* %8, i32 0, i32 2
  store i32 %64, i32* %65, align 4
  %66 = load %struct.cfg80211_csa_settings*, %struct.cfg80211_csa_settings** %6, align 8
  %67 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.ieee80211_csa_settings, %struct.ieee80211_csa_settings* %8, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  %70 = load %struct.cfg80211_csa_settings*, %struct.cfg80211_csa_settings** %6, align 8
  %71 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds %struct.ieee80211_csa_settings, %struct.ieee80211_csa_settings* %8, i32 0, i32 0
  store i32 %72, i32* %73, align 4
  %74 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %75 = load %struct.cfg80211_csa_settings*, %struct.cfg80211_csa_settings** %6, align 8
  %76 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %75, i32 0, i32 2
  %77 = call i32 @ieee80211_assign_beacon(%struct.ieee80211_sub_if_data* %74, i32* %76, %struct.ieee80211_csa_settings* %8)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %53
  %81 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %82 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @kfree(i32 %85)
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %4, align 4
  br label %186

88:                                               ; preds = %53
  %89 = load i32, i32* %9, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %89
  store i32 %92, i32* %90, align 4
  br label %185

93:                                               ; preds = %3
  %94 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %95 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %93
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %186

103:                                              ; preds = %93
  %104 = load %struct.cfg80211_csa_settings*, %struct.cfg80211_csa_settings** %6, align 8
  %105 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %109 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %107, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %103
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %4, align 4
  br label %186

118:                                              ; preds = %103
  %119 = load %struct.cfg80211_csa_settings*, %struct.cfg80211_csa_settings** %6, align 8
  %120 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  switch i32 %122, label %138 [
    i32 132, label %123
    i32 131, label %137
    i32 135, label %137
    i32 133, label %137
    i32 134, label %137
  ]

123:                                              ; preds = %118
  %124 = load %struct.cfg80211_csa_settings*, %struct.cfg80211_csa_settings** %6, align 8
  %125 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %124, i32 0, i32 1
  %126 = call i32 @cfg80211_get_chandef_type(%struct.TYPE_18__* %125)
  %127 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %128 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = call i32 @cfg80211_get_chandef_type(%struct.TYPE_18__* %130)
  %132 = icmp ne i32 %126, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %123
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %4, align 4
  br label %186

136:                                              ; preds = %123
  br label %137

137:                                              ; preds = %118, %118, %118, %118, %136
  br label %141

138:                                              ; preds = %118
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %4, align 4
  br label %186

141:                                              ; preds = %137
  %142 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %143 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.cfg80211_csa_settings*, %struct.cfg80211_csa_settings** %6, align 8
  %151 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %149, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %141
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %4, align 4
  br label %186

160:                                              ; preds = %141
  %161 = load %struct.cfg80211_csa_settings*, %struct.cfg80211_csa_settings** %6, align 8
  %162 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp sgt i32 %163, 1
  br i1 %164, label %165, label %178

165:                                              ; preds = %160
  %166 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %167 = load %struct.cfg80211_csa_settings*, %struct.cfg80211_csa_settings** %6, align 8
  %168 = call i32 @ieee80211_ibss_csa_beacon(%struct.ieee80211_sub_if_data* %166, %struct.cfg80211_csa_settings* %167)
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* %9, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %165
  %172 = load i32, i32* %9, align 4
  store i32 %172, i32* %4, align 4
  br label %186

173:                                              ; preds = %165
  %174 = load i32, i32* %9, align 4
  %175 = load i32*, i32** %7, align 8
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %174
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %173, %160
  %179 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %180 = load %struct.cfg80211_csa_settings*, %struct.cfg80211_csa_settings** %6, align 8
  %181 = call i32 @ieee80211_send_action_csa(%struct.ieee80211_sub_if_data* %179, %struct.cfg80211_csa_settings* %180)
  br label %185

182:                                              ; preds = %3
  %183 = load i32, i32* @EOPNOTSUPP, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %4, align 4
  br label %186

185:                                              ; preds = %178, %88, %37
  store i32 0, i32* %4, align 4
  br label %186

186:                                              ; preds = %185, %182, %171, %157, %138, %133, %115, %100, %80, %50, %29
  %187 = load i32, i32* %4, align 4
  ret i32 %187
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cfg80211_beacon_dup(i32*) #2

declare dso_local i32 @ieee80211_assign_beacon(%struct.ieee80211_sub_if_data*, i32*, %struct.ieee80211_csa_settings*) #2

declare dso_local i32 @kfree(i32) #2

declare dso_local i32 @cfg80211_get_chandef_type(%struct.TYPE_18__*) #2

declare dso_local i32 @ieee80211_ibss_csa_beacon(%struct.ieee80211_sub_if_data*, %struct.cfg80211_csa_settings*) #2

declare dso_local i32 @ieee80211_send_action_csa(%struct.ieee80211_sub_if_data*, %struct.cfg80211_csa_settings*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
