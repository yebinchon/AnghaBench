; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_compute_average.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_compute_average.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.msr_counter*, %struct.msr_counter*, %struct.msr_counter* }
%struct.msr_counter = type { i64, i64, %struct.msr_counter* }
%struct.thread_data = type { i32 }
%struct.core_data = type { i32 }
%struct.pkg_data = type { i32 }

@average = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@sum_counters = common dso_local global i32 0, align 4
@tv_delta = common dso_local global i32 0, align 4
@topo = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@sums_need_wide_columns = common dso_local global i32 0, align 4
@BIC_Totl_c0 = common dso_local global i32 0, align 4
@BIC_Any_c0 = common dso_local global i32 0, align 4
@BIC_GFX_c0 = common dso_local global i32 0, align 4
@BIC_CPUGFX = common dso_local global i32 0, align 4
@BIC_Pkgpc3 = common dso_local global i32 0, align 4
@BIC_Pkgpc6 = common dso_local global i32 0, align 4
@BIC_Pkgpc7 = common dso_local global i32 0, align 4
@sys = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@FORMAT_RAW = common dso_local global i64 0, align 8
@COUNTER_ITEMS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compute_average(%struct.thread_data* %0, %struct.core_data* %1, %struct.pkg_data* %2) #0 {
  %4 = alloca %struct.thread_data*, align 8
  %5 = alloca %struct.core_data*, align 8
  %6 = alloca %struct.pkg_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.msr_counter*, align 8
  store %struct.thread_data* %0, %struct.thread_data** %4, align 8
  store %struct.core_data* %1, %struct.core_data** %5, align 8
  store %struct.pkg_data* %2, %struct.pkg_data** %6, align 8
  %9 = call i32 @clear_counters(%struct.TYPE_9__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 2), %struct.TYPE_10__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 1), %struct.TYPE_11__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0))
  %10 = load i32, i32* @sum_counters, align 4
  %11 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %12 = load %struct.core_data*, %struct.core_data** %5, align 8
  %13 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %14 = call i32 @for_all_cpus(i32 %10, %struct.thread_data* %11, %struct.core_data* %12, %struct.pkg_data* %13)
  %15 = load i32, i32* @tv_delta, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 2, i32 6), align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @topo, i32 0, i32 0), align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 2, i32 0), align 8
  %18 = sdiv i32 %17, %16
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 2, i32 0), align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @topo, i32 0, i32 0), align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 2, i32 1), align 4
  %21 = sdiv i32 %20, %19
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 2, i32 1), align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @topo, i32 0, i32 0), align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 2, i32 2), align 8
  %24 = sdiv i32 %23, %22
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 2, i32 2), align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @topo, i32 0, i32 0), align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 2, i32 3), align 4
  %27 = sdiv i32 %26, %25
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 2, i32 3), align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 2, i32 4), align 8
  %29 = icmp sgt i32 %28, 9999999
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i32 1, i32* @sums_need_wide_columns, align 4
  br label %31

31:                                               ; preds = %30, %3
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @topo, i32 0, i32 1), align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 1, i32 0), align 8
  %34 = sdiv i32 %33, %32
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 1, i32 0), align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @topo, i32 0, i32 1), align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 1, i32 1), align 4
  %37 = sdiv i32 %36, %35
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 1, i32 1), align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @topo, i32 0, i32 1), align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 1, i32 2), align 8
  %40 = sdiv i32 %39, %38
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 1, i32 2), align 8
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @topo, i32 0, i32 1), align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 1, i32 3), align 4
  %43 = sdiv i32 %42, %41
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 1, i32 3), align 4
  %44 = load i32, i32* @BIC_Totl_c0, align 4
  %45 = call i64 @DO_BIC(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %31
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @topo, i32 0, i32 2), align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 0), align 8
  %50 = sdiv i32 %49, %48
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 0), align 8
  br label %51

51:                                               ; preds = %47, %31
  %52 = load i32, i32* @BIC_Any_c0, align 4
  %53 = call i64 @DO_BIC(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @topo, i32 0, i32 2), align 4
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 1), align 4
  %58 = sdiv i32 %57, %56
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 1), align 4
  br label %59

59:                                               ; preds = %55, %51
  %60 = load i32, i32* @BIC_GFX_c0, align 4
  %61 = call i64 @DO_BIC(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @topo, i32 0, i32 2), align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 2), align 8
  %66 = sdiv i32 %65, %64
  store i32 %66, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 2), align 8
  br label %67

67:                                               ; preds = %63, %59
  %68 = load i32, i32* @BIC_CPUGFX, align 4
  %69 = call i64 @DO_BIC(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @topo, i32 0, i32 2), align 4
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 3), align 4
  %74 = sdiv i32 %73, %72
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 3), align 4
  br label %75

75:                                               ; preds = %71, %67
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @topo, i32 0, i32 2), align 4
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 4), align 8
  %78 = sdiv i32 %77, %76
  store i32 %78, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 4), align 8
  %79 = load i32, i32* @BIC_Pkgpc3, align 4
  %80 = call i64 @DO_BIC(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @topo, i32 0, i32 2), align 4
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 5), align 4
  %85 = sdiv i32 %84, %83
  store i32 %85, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 5), align 4
  br label %86

86:                                               ; preds = %82, %75
  %87 = load i32, i32* @BIC_Pkgpc6, align 4
  %88 = call i64 @DO_BIC(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @topo, i32 0, i32 2), align 4
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 6), align 8
  %93 = sdiv i32 %92, %91
  store i32 %93, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 6), align 8
  br label %94

94:                                               ; preds = %90, %86
  %95 = load i32, i32* @BIC_Pkgpc7, align 4
  %96 = call i64 @DO_BIC(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @topo, i32 0, i32 2), align 4
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 7), align 4
  %101 = sdiv i32 %100, %99
  store i32 %101, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 7), align 4
  br label %102

102:                                              ; preds = %98, %94
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @topo, i32 0, i32 2), align 4
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 8), align 8
  %105 = sdiv i32 %104, %103
  store i32 %105, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 8), align 8
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @topo, i32 0, i32 2), align 4
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 9), align 4
  %108 = sdiv i32 %107, %106
  store i32 %108, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 9), align 4
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @topo, i32 0, i32 2), align 4
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 10), align 8
  %111 = sdiv i32 %110, %109
  store i32 %111, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 10), align 8
  store i32 0, i32* %7, align 4
  %112 = load %struct.msr_counter*, %struct.msr_counter** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sys, i32 0, i32 2), align 8
  store %struct.msr_counter* %112, %struct.msr_counter** %8, align 8
  br label %113

113:                                              ; preds = %146, %102
  %114 = load %struct.msr_counter*, %struct.msr_counter** %8, align 8
  %115 = icmp ne %struct.msr_counter* %114, null
  br i1 %115, label %116, label %152

116:                                              ; preds = %113
  %117 = load %struct.msr_counter*, %struct.msr_counter** %8, align 8
  %118 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @FORMAT_RAW, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %146

123:                                              ; preds = %116
  %124 = load %struct.msr_counter*, %struct.msr_counter** %8, align 8
  %125 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @COUNTER_ITEMS, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %123
  %130 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 2, i32 5), align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = icmp sgt i32 %134, 9999999
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  store i32 1, i32* @sums_need_wide_columns, align 4
  br label %137

137:                                              ; preds = %136, %129
  br label %146

138:                                              ; preds = %123
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @topo, i32 0, i32 0), align 4
  %140 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 2, i32 5), align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = sdiv i32 %144, %139
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %138, %137, %122
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %7, align 4
  %149 = load %struct.msr_counter*, %struct.msr_counter** %8, align 8
  %150 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %149, i32 0, i32 2
  %151 = load %struct.msr_counter*, %struct.msr_counter** %150, align 8
  store %struct.msr_counter* %151, %struct.msr_counter** %8, align 8
  br label %113

152:                                              ; preds = %113
  store i32 0, i32* %7, align 4
  %153 = load %struct.msr_counter*, %struct.msr_counter** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sys, i32 0, i32 1), align 8
  store %struct.msr_counter* %153, %struct.msr_counter** %8, align 8
  br label %154

154:                                              ; preds = %187, %152
  %155 = load %struct.msr_counter*, %struct.msr_counter** %8, align 8
  %156 = icmp ne %struct.msr_counter* %155, null
  br i1 %156, label %157, label %193

157:                                              ; preds = %154
  %158 = load %struct.msr_counter*, %struct.msr_counter** %8, align 8
  %159 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @FORMAT_RAW, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  br label %187

164:                                              ; preds = %157
  %165 = load %struct.msr_counter*, %struct.msr_counter** %8, align 8
  %166 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @COUNTER_ITEMS, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %179

170:                                              ; preds = %164
  %171 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 1, i32 4), align 8
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = icmp sgt i32 %175, 9999999
  br i1 %176, label %177, label %178

177:                                              ; preds = %170
  store i32 1, i32* @sums_need_wide_columns, align 4
  br label %178

178:                                              ; preds = %177, %170
  br label %179

179:                                              ; preds = %178, %164
  %180 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @topo, i32 0, i32 1), align 4
  %181 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 1, i32 4), align 8
  %182 = load i32, i32* %7, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = sdiv i32 %185, %180
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %179, %163
  %188 = load i32, i32* %7, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %7, align 4
  %190 = load %struct.msr_counter*, %struct.msr_counter** %8, align 8
  %191 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %190, i32 0, i32 2
  %192 = load %struct.msr_counter*, %struct.msr_counter** %191, align 8
  store %struct.msr_counter* %192, %struct.msr_counter** %8, align 8
  br label %154

193:                                              ; preds = %154
  store i32 0, i32* %7, align 4
  %194 = load %struct.msr_counter*, %struct.msr_counter** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sys, i32 0, i32 0), align 8
  store %struct.msr_counter* %194, %struct.msr_counter** %8, align 8
  br label %195

195:                                              ; preds = %228, %193
  %196 = load %struct.msr_counter*, %struct.msr_counter** %8, align 8
  %197 = icmp ne %struct.msr_counter* %196, null
  br i1 %197, label %198, label %234

198:                                              ; preds = %195
  %199 = load %struct.msr_counter*, %struct.msr_counter** %8, align 8
  %200 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @FORMAT_RAW, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %198
  br label %228

205:                                              ; preds = %198
  %206 = load %struct.msr_counter*, %struct.msr_counter** %8, align 8
  %207 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @COUNTER_ITEMS, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %220

211:                                              ; preds = %205
  %212 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 11), align 8
  %213 = load i32, i32* %7, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = icmp sgt i32 %216, 9999999
  br i1 %217, label %218, label %219

218:                                              ; preds = %211
  store i32 1, i32* @sums_need_wide_columns, align 4
  br label %219

219:                                              ; preds = %218, %211
  br label %220

220:                                              ; preds = %219, %205
  %221 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @topo, i32 0, i32 2), align 4
  %222 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @average, i32 0, i32 0, i32 11), align 8
  %223 = load i32, i32* %7, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = sdiv i32 %226, %221
  store i32 %227, i32* %225, align 4
  br label %228

228:                                              ; preds = %220, %204
  %229 = load i32, i32* %7, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %7, align 4
  %231 = load %struct.msr_counter*, %struct.msr_counter** %8, align 8
  %232 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %231, i32 0, i32 2
  %233 = load %struct.msr_counter*, %struct.msr_counter** %232, align 8
  store %struct.msr_counter* %233, %struct.msr_counter** %8, align 8
  br label %195

234:                                              ; preds = %195
  ret void
}

declare dso_local i32 @clear_counters(%struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @for_all_cpus(i32, %struct.thread_data*, %struct.core_data*, %struct.pkg_data*) #1

declare dso_local i64 @DO_BIC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
