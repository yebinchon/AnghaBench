; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_key.c_ieee80211_key_link.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_key.c_ieee80211_key_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_key = type { %struct.sta_info*, %struct.ieee80211_sub_if_data*, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_6__*, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.sta_info = type { i32*, i32* }

@IEEE80211_KEY_FLAG_PAIRWISE = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_key_link(%struct.ieee80211_key* %0, %struct.ieee80211_sub_if_data* %1, %struct.sta_info* %2) #0 {
  %4 = alloca %struct.ieee80211_key*, align 8
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca %struct.ieee80211_key*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211_key*, align 8
  store %struct.ieee80211_key* %0, %struct.ieee80211_key** %4, align 8
  store %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_sub_if_data** %5, align 8
  store %struct.sta_info* %2, %struct.sta_info** %6, align 8
  %13 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %9, align 4
  %23 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %11, align 4
  %32 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %33 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %38 = icmp ne %struct.sta_info* %37, null
  br i1 %38, label %39, label %93

39:                                               ; preds = %3
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %93

42:                                               ; preds = %39
  %43 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %44 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %47 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.ieee80211_key* @key_mtx_dereference(%struct.TYPE_6__* %45, i32 %52)
  store %struct.ieee80211_key* %53, %struct.ieee80211_key** %7, align 8
  %54 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %55 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %58 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = xor i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call %struct.ieee80211_key* @key_mtx_dereference(%struct.TYPE_6__* %56, i32 %64)
  store %struct.ieee80211_key* %65, %struct.ieee80211_key** %12, align 8
  %66 = load %struct.ieee80211_key*, %struct.ieee80211_key** %12, align 8
  %67 = icmp ne %struct.ieee80211_key* %66, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %42
  %69 = load %struct.ieee80211_key*, %struct.ieee80211_key** %12, align 8
  %70 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %74 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %72, %76
  br i1 %77, label %91, label %78

78:                                               ; preds = %68, %42
  %79 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %80 = icmp ne %struct.ieee80211_key* %79, null
  br i1 %80, label %81, label %92

81:                                               ; preds = %78
  %82 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %83 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %87 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %85, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %81, %68
  br label %181

92:                                               ; preds = %81, %78
  br label %121

93:                                               ; preds = %39, %3
  %94 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %95 = icmp ne %struct.sta_info* %94, null
  br i1 %95, label %96, label %108

96:                                               ; preds = %93
  %97 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %98 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %101 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call %struct.ieee80211_key* @key_mtx_dereference(%struct.TYPE_6__* %99, i32 %106)
  store %struct.ieee80211_key* %107, %struct.ieee80211_key** %7, align 8
  br label %120

108:                                              ; preds = %93
  %109 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %110 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %113 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call %struct.ieee80211_key* @key_mtx_dereference(%struct.TYPE_6__* %111, i32 %118)
  store %struct.ieee80211_key* %119, %struct.ieee80211_key** %7, align 8
  br label %120

120:                                              ; preds = %108, %96
  br label %121

121:                                              ; preds = %120, %92
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %139, label %124

124:                                              ; preds = %121
  %125 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %126 = icmp ne %struct.ieee80211_key* %125, null
  br i1 %126, label %127, label %138

127:                                              ; preds = %124
  %128 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %129 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %133 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %131, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %127
  br label %181

138:                                              ; preds = %127, %124
  br label %139

139:                                              ; preds = %138, %121
  %140 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %141 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %142 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %143 = call i64 @ieee80211_key_identical(%struct.ieee80211_sub_if_data* %140, %struct.ieee80211_key* %141, %struct.ieee80211_key* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %139
  %146 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %147 = call i32 @ieee80211_key_free_unused(%struct.ieee80211_key* %146)
  store i32 0, i32* %11, align 4
  br label %181

148:                                              ; preds = %139
  %149 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %150 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %149, i32 0, i32 0
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %153 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %152, i32 0, i32 2
  store %struct.TYPE_6__* %151, %struct.TYPE_6__** %153, align 8
  %154 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %155 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %156 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %155, i32 0, i32 1
  store %struct.ieee80211_sub_if_data* %154, %struct.ieee80211_sub_if_data** %156, align 8
  %157 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %158 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %159 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %158, i32 0, i32 0
  store %struct.sta_info* %157, %struct.sta_info** %159, align 8
  %160 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %161 = call i32 @increment_tailroom_need_count(%struct.ieee80211_sub_if_data* %160)
  %162 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %163 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %164 = load i32, i32* %9, align 4
  %165 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %166 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %167 = call i32 @ieee80211_key_replace(%struct.ieee80211_sub_if_data* %162, %struct.sta_info* %163, i32 %164, %struct.ieee80211_key* %165, %struct.ieee80211_key* %166)
  store i32 %167, i32* %11, align 4
  %168 = load i32, i32* %11, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %176, label %170

170:                                              ; preds = %148
  %171 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %172 = call i32 @ieee80211_debugfs_key_add(%struct.ieee80211_key* %171)
  %173 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %174 = load i32, i32* %10, align 4
  %175 = call i32 @ieee80211_key_destroy(%struct.ieee80211_key* %173, i32 %174)
  br label %180

176:                                              ; preds = %148
  %177 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %178 = load i32, i32* %10, align 4
  %179 = call i32 @ieee80211_key_free(%struct.ieee80211_key* %177, i32 %178)
  br label %180

180:                                              ; preds = %176, %170
  br label %181

181:                                              ; preds = %180, %145, %137, %91
  %182 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %183 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %182, i32 0, i32 0
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = call i32 @mutex_unlock(i32* %185)
  %187 = load i32, i32* %11, align 4
  ret i32 %187
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ieee80211_key* @key_mtx_dereference(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @ieee80211_key_identical(%struct.ieee80211_sub_if_data*, %struct.ieee80211_key*, %struct.ieee80211_key*) #1

declare dso_local i32 @ieee80211_key_free_unused(%struct.ieee80211_key*) #1

declare dso_local i32 @increment_tailroom_need_count(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_key_replace(%struct.ieee80211_sub_if_data*, %struct.sta_info*, i32, %struct.ieee80211_key*, %struct.ieee80211_key*) #1

declare dso_local i32 @ieee80211_debugfs_key_add(%struct.ieee80211_key*) #1

declare dso_local i32 @ieee80211_key_destroy(%struct.ieee80211_key*, i32) #1

declare dso_local i32 @ieee80211_key_free(%struct.ieee80211_key*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
