; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_hists__calc_col_len.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_hists__calc_col_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i64 }
%struct.TYPE_29__ = type { i64 }
%struct.hists = type { i32 }
%struct.hist_entry = type { i64, i64, i64, i64, %struct.TYPE_27__*, %struct.TYPE_21__*, %struct.TYPE_33__*, %struct.TYPE_32__, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_25__, %struct.TYPE_24__ }
%struct.TYPE_25__ = type { %struct.TYPE_26__*, %struct.TYPE_22__* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_21__ = type { i64, i64, %struct.TYPE_20__, %struct.TYPE_36__ }
%struct.TYPE_20__ = type { %struct.TYPE_38__*, %struct.TYPE_37__* }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_37__ = type { i64 }
%struct.TYPE_36__ = type { %struct.TYPE_35__*, %struct.TYPE_34__* }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_32__ = type { %struct.TYPE_31__*, %struct.TYPE_30__* }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_30__ = type { i32 }

@BITS_PER_LONG = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@HISTC_SYMBOL = common dso_local global i32 0, align 4
@HISTC_DSO = common dso_local global i32 0, align 4
@HISTC_COMM = common dso_local global i32 0, align 4
@HISTC_THREAD = common dso_local global i32 0, align 4
@HISTC_PARENT = common dso_local global i32 0, align 4
@HISTC_SYMBOL_FROM = common dso_local global i32 0, align 4
@HISTC_DSO_FROM = common dso_local global i32 0, align 4
@HISTC_SYMBOL_TO = common dso_local global i32 0, align 4
@HISTC_DSO_TO = common dso_local global i32 0, align 4
@HISTC_SRCLINE_FROM = common dso_local global i32 0, align 4
@HISTC_SRCLINE_TO = common dso_local global i32 0, align 4
@HISTC_MEM_DADDR_SYMBOL = common dso_local global i32 0, align 4
@HISTC_MEM_DCACHELINE = common dso_local global i32 0, align 4
@HISTC_MEM_IADDR_SYMBOL = common dso_local global i32 0, align 4
@HISTC_MEM_DADDR_DSO = common dso_local global i32 0, align 4
@HISTC_MEM_PHYS_DADDR = common dso_local global i32 0, align 4
@HISTC_CGROUP_ID = common dso_local global i32 0, align 4
@HISTC_CPU = common dso_local global i32 0, align 4
@HISTC_SOCKET = common dso_local global i32 0, align 4
@HISTC_MEM_LOCKED = common dso_local global i32 0, align 4
@HISTC_MEM_TLB = common dso_local global i32 0, align 4
@HISTC_MEM_SNOOP = common dso_local global i32 0, align 4
@HISTC_MEM_LVL = common dso_local global i32 0, align 4
@HISTC_LOCAL_WEIGHT = common dso_local global i32 0, align 4
@HISTC_GLOBAL_WEIGHT = common dso_local global i32 0, align 4
@symbol_conf = common dso_local global %struct.TYPE_28__ zeroinitializer, align 8
@HISTC_TIME = common dso_local global i32 0, align 4
@sort_srcline = common dso_local global %struct.TYPE_29__ zeroinitializer, align 8
@HISTC_SRCLINE = common dso_local global i32 0, align 4
@HISTC_SRCFILE = common dso_local global i32 0, align 4
@HISTC_TRANSACTION = common dso_local global i32 0, align 4
@HISTC_TRACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hists__calc_col_len(%struct.hists* %0, %struct.hist_entry* %1) #0 {
  %3 = alloca %struct.hists*, align 8
  %4 = alloca %struct.hist_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hists* %0, %struct.hists** %3, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %4, align 8
  %8 = load i32, i32* @BITS_PER_LONG, align 4
  %9 = sdiv i32 %8, 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %11 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %14 = icmp ne %struct.TYPE_30__* %13, null
  br i1 %14, label %15, label %37

15:                                               ; preds = %2
  %16 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %17 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %16, i32 0, i32 7
  %18 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 4
  store i32 %22, i32* %6, align 4
  %23 = load i64, i64* @verbose, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %15
  %26 = load i32, i32* @BITS_PER_LONG, align 4
  %27 = sdiv i32 %26, 4
  %28 = add nsw i32 %27, 2
  %29 = add nsw i32 %28, 3
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %25, %15
  %33 = load %struct.hists*, %struct.hists** %3, align 8
  %34 = load i32, i32* @HISTC_SYMBOL, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @hists__new_col_len(%struct.hists* %33, i32 %34, i32 %35)
  br label %48

37:                                               ; preds = %2
  %38 = load i32, i32* %5, align 4
  %39 = add i32 %38, 4
  %40 = add i32 %39, 2
  store i32 %40, i32* %6, align 4
  %41 = load %struct.hists*, %struct.hists** %3, align 8
  %42 = load i32, i32* @HISTC_SYMBOL, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @hists__new_col_len(%struct.hists* %41, i32 %42, i32 %43)
  %45 = load %struct.hists*, %struct.hists** %3, align 8
  %46 = load i32, i32* @HISTC_DSO, align 4
  %47 = call i32 @hists__set_unres_dso_col_len(%struct.hists* %45, i32 %46)
  br label %48

48:                                               ; preds = %37, %32
  %49 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %50 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @thread__comm_len(i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load %struct.hists*, %struct.hists** %3, align 8
  %54 = load i32, i32* @HISTC_COMM, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i64 @hists__new_col_len(%struct.hists* %53, i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %48
  %59 = load %struct.hists*, %struct.hists** %3, align 8
  %60 = load i32, i32* @HISTC_THREAD, align 4
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 8
  %63 = call i32 @hists__set_col_len(%struct.hists* %59, i32 %60, i32 %62)
  br label %64

64:                                               ; preds = %58, %48
  %65 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %66 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %65, i32 0, i32 7
  %67 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_31__*, %struct.TYPE_31__** %67, align 8
  %69 = icmp ne %struct.TYPE_31__* %68, null
  br i1 %69, label %70, label %82

70:                                               ; preds = %64
  %71 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %72 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %71, i32 0, i32 7
  %73 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_31__*, %struct.TYPE_31__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dso__name_len(i32 %76)
  store i32 %77, i32* %7, align 4
  %78 = load %struct.hists*, %struct.hists** %3, align 8
  %79 = load i32, i32* @HISTC_DSO, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i64 @hists__new_col_len(%struct.hists* %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %70, %64
  %83 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %84 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %83, i32 0, i32 6
  %85 = load %struct.TYPE_33__*, %struct.TYPE_33__** %84, align 8
  %86 = icmp ne %struct.TYPE_33__* %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %82
  %88 = load %struct.hists*, %struct.hists** %3, align 8
  %89 = load i32, i32* @HISTC_PARENT, align 4
  %90 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %91 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %90, i32 0, i32 6
  %92 = load %struct.TYPE_33__*, %struct.TYPE_33__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @hists__new_col_len(%struct.hists* %88, i32 %89, i32 %94)
  br label %96

96:                                               ; preds = %87, %82
  %97 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %98 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %97, i32 0, i32 5
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %98, align 8
  %100 = icmp ne %struct.TYPE_21__* %99, null
  br i1 %100, label %101, label %250

101:                                              ; preds = %96
  %102 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %103 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %102, i32 0, i32 5
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_34__*, %struct.TYPE_34__** %106, align 8
  %108 = icmp ne %struct.TYPE_34__* %107, null
  br i1 %108, label %109, label %147

109:                                              ; preds = %101
  %110 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %111 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %110, i32 0, i32 5
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_34__*, %struct.TYPE_34__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = trunc i64 %117 to i32
  %119 = add nsw i32 %118, 4
  store i32 %119, i32* %6, align 4
  %120 = load i64, i64* @verbose, align 8
  %121 = icmp sgt i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %109
  %123 = load i32, i32* @BITS_PER_LONG, align 4
  %124 = sdiv i32 %123, 4
  %125 = add nsw i32 %124, 2
  %126 = add nsw i32 %125, 3
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, %126
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %122, %109
  %130 = load %struct.hists*, %struct.hists** %3, align 8
  %131 = load i32, i32* @HISTC_SYMBOL_FROM, align 4
  %132 = load i32, i32* %6, align 4
  %133 = call i64 @hists__new_col_len(%struct.hists* %130, i32 %131, i32 %132)
  %134 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %135 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %134, i32 0, i32 5
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_35__*, %struct.TYPE_35__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @dso__name_len(i32 %141)
  store i32 %142, i32* %6, align 4
  %143 = load %struct.hists*, %struct.hists** %3, align 8
  %144 = load i32, i32* @HISTC_DSO_FROM, align 4
  %145 = load i32, i32* %6, align 4
  %146 = call i64 @hists__new_col_len(%struct.hists* %143, i32 %144, i32 %145)
  br label %158

147:                                              ; preds = %101
  %148 = load i32, i32* %5, align 4
  %149 = add i32 %148, 4
  %150 = add i32 %149, 2
  store i32 %150, i32* %6, align 4
  %151 = load %struct.hists*, %struct.hists** %3, align 8
  %152 = load i32, i32* @HISTC_SYMBOL_FROM, align 4
  %153 = load i32, i32* %6, align 4
  %154 = call i64 @hists__new_col_len(%struct.hists* %151, i32 %152, i32 %153)
  %155 = load %struct.hists*, %struct.hists** %3, align 8
  %156 = load i32, i32* @HISTC_DSO_FROM, align 4
  %157 = call i32 @hists__set_unres_dso_col_len(%struct.hists* %155, i32 %156)
  br label %158

158:                                              ; preds = %147, %129
  %159 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %160 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %159, i32 0, i32 5
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_37__*, %struct.TYPE_37__** %163, align 8
  %165 = icmp ne %struct.TYPE_37__* %164, null
  br i1 %165, label %166, label %204

166:                                              ; preds = %158
  %167 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %168 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %167, i32 0, i32 5
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_37__*, %struct.TYPE_37__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = trunc i64 %174 to i32
  %176 = add nsw i32 %175, 4
  store i32 %176, i32* %6, align 4
  %177 = load i64, i64* @verbose, align 8
  %178 = icmp sgt i64 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %166
  %180 = load i32, i32* @BITS_PER_LONG, align 4
  %181 = sdiv i32 %180, 4
  %182 = add nsw i32 %181, 2
  %183 = add nsw i32 %182, 3
  %184 = load i32, i32* %6, align 4
  %185 = add nsw i32 %184, %183
  store i32 %185, i32* %6, align 4
  br label %186

186:                                              ; preds = %179, %166
  %187 = load %struct.hists*, %struct.hists** %3, align 8
  %188 = load i32, i32* @HISTC_SYMBOL_TO, align 4
  %189 = load i32, i32* %6, align 4
  %190 = call i64 @hists__new_col_len(%struct.hists* %187, i32 %188, i32 %189)
  %191 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %192 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %191, i32 0, i32 5
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_38__*, %struct.TYPE_38__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @dso__name_len(i32 %198)
  store i32 %199, i32* %6, align 4
  %200 = load %struct.hists*, %struct.hists** %3, align 8
  %201 = load i32, i32* @HISTC_DSO_TO, align 4
  %202 = load i32, i32* %6, align 4
  %203 = call i64 @hists__new_col_len(%struct.hists* %200, i32 %201, i32 %202)
  br label %215

204:                                              ; preds = %158
  %205 = load i32, i32* %5, align 4
  %206 = add i32 %205, 4
  %207 = add i32 %206, 2
  store i32 %207, i32* %6, align 4
  %208 = load %struct.hists*, %struct.hists** %3, align 8
  %209 = load i32, i32* @HISTC_SYMBOL_TO, align 4
  %210 = load i32, i32* %6, align 4
  %211 = call i64 @hists__new_col_len(%struct.hists* %208, i32 %209, i32 %210)
  %212 = load %struct.hists*, %struct.hists** %3, align 8
  %213 = load i32, i32* @HISTC_DSO_TO, align 4
  %214 = call i32 @hists__set_unres_dso_col_len(%struct.hists* %212, i32 %213)
  br label %215

215:                                              ; preds = %204, %186
  %216 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %217 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %216, i32 0, i32 5
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %232

222:                                              ; preds = %215
  %223 = load %struct.hists*, %struct.hists** %3, align 8
  %224 = load i32, i32* @HISTC_SRCLINE_FROM, align 4
  %225 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %226 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %225, i32 0, i32 5
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = call i32 @strlen(i64 %229)
  %231 = call i64 @hists__new_col_len(%struct.hists* %223, i32 %224, i32 %230)
  br label %232

232:                                              ; preds = %222, %215
  %233 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %234 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %233, i32 0, i32 5
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %249

239:                                              ; preds = %232
  %240 = load %struct.hists*, %struct.hists** %3, align 8
  %241 = load i32, i32* @HISTC_SRCLINE_TO, align 4
  %242 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %243 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %242, i32 0, i32 5
  %244 = load %struct.TYPE_21__*, %struct.TYPE_21__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = call i32 @strlen(i64 %246)
  %248 = call i64 @hists__new_col_len(%struct.hists* %240, i32 %241, i32 %247)
  br label %249

249:                                              ; preds = %239, %232
  br label %250

250:                                              ; preds = %249, %96
  %251 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %252 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %251, i32 0, i32 4
  %253 = load %struct.TYPE_27__*, %struct.TYPE_27__** %252, align 8
  %254 = icmp ne %struct.TYPE_27__* %253, null
  br i1 %254, label %255, label %368

255:                                              ; preds = %250
  %256 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %257 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %256, i32 0, i32 4
  %258 = load %struct.TYPE_27__*, %struct.TYPE_27__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %259, i32 0, i32 1
  %261 = load %struct.TYPE_22__*, %struct.TYPE_22__** %260, align 8
  %262 = icmp ne %struct.TYPE_22__* %261, null
  br i1 %262, label %263, label %286

263:                                              ; preds = %255
  %264 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %265 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %264, i32 0, i32 4
  %266 = load %struct.TYPE_27__*, %struct.TYPE_27__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %267, i32 0, i32 1
  %269 = load %struct.TYPE_22__*, %struct.TYPE_22__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = trunc i64 %271 to i32
  %273 = add nsw i32 %272, 4
  %274 = load i32, i32* %5, align 4
  %275 = add i32 %273, %274
  %276 = add i32 %275, 2
  store i32 %276, i32* %6, align 4
  %277 = load %struct.hists*, %struct.hists** %3, align 8
  %278 = load i32, i32* @HISTC_MEM_DADDR_SYMBOL, align 4
  %279 = load i32, i32* %6, align 4
  %280 = call i64 @hists__new_col_len(%struct.hists* %277, i32 %278, i32 %279)
  %281 = load %struct.hists*, %struct.hists** %3, align 8
  %282 = load i32, i32* @HISTC_MEM_DCACHELINE, align 4
  %283 = load i32, i32* %6, align 4
  %284 = add nsw i32 %283, 1
  %285 = call i64 @hists__new_col_len(%struct.hists* %281, i32 %282, i32 %284)
  br label %298

286:                                              ; preds = %255
  %287 = load i32, i32* %5, align 4
  %288 = add i32 %287, 4
  %289 = add i32 %288, 2
  store i32 %289, i32* %6, align 4
  %290 = load %struct.hists*, %struct.hists** %3, align 8
  %291 = load i32, i32* @HISTC_MEM_DADDR_SYMBOL, align 4
  %292 = load i32, i32* %6, align 4
  %293 = call i64 @hists__new_col_len(%struct.hists* %290, i32 %291, i32 %292)
  %294 = load %struct.hists*, %struct.hists** %3, align 8
  %295 = load i32, i32* @HISTC_MEM_DCACHELINE, align 4
  %296 = load i32, i32* %6, align 4
  %297 = call i64 @hists__new_col_len(%struct.hists* %294, i32 %295, i32 %296)
  br label %298

298:                                              ; preds = %286, %263
  %299 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %300 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %299, i32 0, i32 4
  %301 = load %struct.TYPE_27__*, %struct.TYPE_27__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %302, i32 0, i32 0
  %304 = load %struct.TYPE_23__*, %struct.TYPE_23__** %303, align 8
  %305 = icmp ne %struct.TYPE_23__* %304, null
  br i1 %305, label %306, label %324

306:                                              ; preds = %298
  %307 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %308 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %307, i32 0, i32 4
  %309 = load %struct.TYPE_27__*, %struct.TYPE_27__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %310, i32 0, i32 0
  %312 = load %struct.TYPE_23__*, %struct.TYPE_23__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = trunc i64 %314 to i32
  %316 = add nsw i32 %315, 4
  %317 = load i32, i32* %5, align 4
  %318 = add i32 %316, %317
  %319 = add i32 %318, 2
  store i32 %319, i32* %6, align 4
  %320 = load %struct.hists*, %struct.hists** %3, align 8
  %321 = load i32, i32* @HISTC_MEM_IADDR_SYMBOL, align 4
  %322 = load i32, i32* %6, align 4
  %323 = call i64 @hists__new_col_len(%struct.hists* %320, i32 %321, i32 %322)
  br label %332

324:                                              ; preds = %298
  %325 = load i32, i32* %5, align 4
  %326 = add i32 %325, 4
  %327 = add i32 %326, 2
  store i32 %327, i32* %6, align 4
  %328 = load %struct.hists*, %struct.hists** %3, align 8
  %329 = load i32, i32* @HISTC_MEM_IADDR_SYMBOL, align 4
  %330 = load i32, i32* %6, align 4
  %331 = call i64 @hists__new_col_len(%struct.hists* %328, i32 %329, i32 %330)
  br label %332

332:                                              ; preds = %324, %306
  %333 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %334 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %333, i32 0, i32 4
  %335 = load %struct.TYPE_27__*, %struct.TYPE_27__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %336, i32 0, i32 0
  %338 = load %struct.TYPE_26__*, %struct.TYPE_26__** %337, align 8
  %339 = icmp ne %struct.TYPE_26__* %338, null
  br i1 %339, label %340, label %354

340:                                              ; preds = %332
  %341 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %342 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %341, i32 0, i32 4
  %343 = load %struct.TYPE_27__*, %struct.TYPE_27__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %344, i32 0, i32 0
  %346 = load %struct.TYPE_26__*, %struct.TYPE_26__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = call i32 @dso__name_len(i32 %348)
  store i32 %349, i32* %6, align 4
  %350 = load %struct.hists*, %struct.hists** %3, align 8
  %351 = load i32, i32* @HISTC_MEM_DADDR_DSO, align 4
  %352 = load i32, i32* %6, align 4
  %353 = call i64 @hists__new_col_len(%struct.hists* %350, i32 %351, i32 %352)
  br label %361

354:                                              ; preds = %332
  %355 = load i32, i32* %5, align 4
  %356 = add i32 %355, 4
  %357 = add i32 %356, 2
  store i32 %357, i32* %6, align 4
  %358 = load %struct.hists*, %struct.hists** %3, align 8
  %359 = load i32, i32* @HISTC_MEM_DADDR_DSO, align 4
  %360 = call i32 @hists__set_unres_dso_col_len(%struct.hists* %358, i32 %359)
  br label %361

361:                                              ; preds = %354, %340
  %362 = load %struct.hists*, %struct.hists** %3, align 8
  %363 = load i32, i32* @HISTC_MEM_PHYS_DADDR, align 4
  %364 = load i32, i32* %5, align 4
  %365 = add i32 %364, 4
  %366 = add i32 %365, 2
  %367 = call i64 @hists__new_col_len(%struct.hists* %362, i32 %363, i32 %366)
  br label %383

368:                                              ; preds = %250
  %369 = load i32, i32* %5, align 4
  %370 = add i32 %369, 4
  %371 = add i32 %370, 2
  store i32 %371, i32* %6, align 4
  %372 = load %struct.hists*, %struct.hists** %3, align 8
  %373 = load i32, i32* @HISTC_MEM_DADDR_SYMBOL, align 4
  %374 = load i32, i32* %6, align 4
  %375 = call i64 @hists__new_col_len(%struct.hists* %372, i32 %373, i32 %374)
  %376 = load %struct.hists*, %struct.hists** %3, align 8
  %377 = load i32, i32* @HISTC_MEM_IADDR_SYMBOL, align 4
  %378 = load i32, i32* %6, align 4
  %379 = call i64 @hists__new_col_len(%struct.hists* %376, i32 %377, i32 %378)
  %380 = load %struct.hists*, %struct.hists** %3, align 8
  %381 = load i32, i32* @HISTC_MEM_DADDR_DSO, align 4
  %382 = call i32 @hists__set_unres_dso_col_len(%struct.hists* %380, i32 %381)
  br label %383

383:                                              ; preds = %368, %361
  %384 = load %struct.hists*, %struct.hists** %3, align 8
  %385 = load i32, i32* @HISTC_CGROUP_ID, align 4
  %386 = call i64 @hists__new_col_len(%struct.hists* %384, i32 %385, i32 20)
  %387 = load %struct.hists*, %struct.hists** %3, align 8
  %388 = load i32, i32* @HISTC_CPU, align 4
  %389 = call i64 @hists__new_col_len(%struct.hists* %387, i32 %388, i32 3)
  %390 = load %struct.hists*, %struct.hists** %3, align 8
  %391 = load i32, i32* @HISTC_SOCKET, align 4
  %392 = call i64 @hists__new_col_len(%struct.hists* %390, i32 %391, i32 6)
  %393 = load %struct.hists*, %struct.hists** %3, align 8
  %394 = load i32, i32* @HISTC_MEM_LOCKED, align 4
  %395 = call i64 @hists__new_col_len(%struct.hists* %393, i32 %394, i32 6)
  %396 = load %struct.hists*, %struct.hists** %3, align 8
  %397 = load i32, i32* @HISTC_MEM_TLB, align 4
  %398 = call i64 @hists__new_col_len(%struct.hists* %396, i32 %397, i32 22)
  %399 = load %struct.hists*, %struct.hists** %3, align 8
  %400 = load i32, i32* @HISTC_MEM_SNOOP, align 4
  %401 = call i64 @hists__new_col_len(%struct.hists* %399, i32 %400, i32 12)
  %402 = load %struct.hists*, %struct.hists** %3, align 8
  %403 = load i32, i32* @HISTC_MEM_LVL, align 4
  %404 = call i64 @hists__new_col_len(%struct.hists* %402, i32 %403, i32 24)
  %405 = load %struct.hists*, %struct.hists** %3, align 8
  %406 = load i32, i32* @HISTC_LOCAL_WEIGHT, align 4
  %407 = call i64 @hists__new_col_len(%struct.hists* %405, i32 %406, i32 12)
  %408 = load %struct.hists*, %struct.hists** %3, align 8
  %409 = load i32, i32* @HISTC_GLOBAL_WEIGHT, align 4
  %410 = call i64 @hists__new_col_len(%struct.hists* %408, i32 %409, i32 12)
  %411 = load i64, i64* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @symbol_conf, i32 0, i32 0), align 8
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %417

413:                                              ; preds = %383
  %414 = load %struct.hists*, %struct.hists** %3, align 8
  %415 = load i32, i32* @HISTC_TIME, align 4
  %416 = call i64 @hists__new_col_len(%struct.hists* %414, i32 %415, i32 16)
  br label %421

417:                                              ; preds = %383
  %418 = load %struct.hists*, %struct.hists** %3, align 8
  %419 = load i32, i32* @HISTC_TIME, align 4
  %420 = call i64 @hists__new_col_len(%struct.hists* %418, i32 %419, i32 12)
  br label %421

421:                                              ; preds = %417, %413
  %422 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %423 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %422, i32 0, i32 3
  %424 = load i64, i64* %423, align 8
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %438

426:                                              ; preds = %421
  %427 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %428 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %427, i32 0, i32 3
  %429 = load i64, i64* %428, align 8
  %430 = call i32 @strlen(i64 %429)
  %431 = load i64, i64* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @sort_srcline, i32 0, i32 0), align 8
  %432 = call i32 @strlen(i64 %431)
  %433 = call i32 @MAX(i32 %430, i32 %432)
  store i32 %433, i32* %7, align 4
  %434 = load %struct.hists*, %struct.hists** %3, align 8
  %435 = load i32, i32* @HISTC_SRCLINE, align 4
  %436 = load i32, i32* %7, align 4
  %437 = call i64 @hists__new_col_len(%struct.hists* %434, i32 %435, i32 %436)
  br label %438

438:                                              ; preds = %426, %421
  %439 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %440 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %439, i32 0, i32 2
  %441 = load i64, i64* %440, align 8
  %442 = icmp ne i64 %441, 0
  br i1 %442, label %443, label %451

443:                                              ; preds = %438
  %444 = load %struct.hists*, %struct.hists** %3, align 8
  %445 = load i32, i32* @HISTC_SRCFILE, align 4
  %446 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %447 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %446, i32 0, i32 2
  %448 = load i64, i64* %447, align 8
  %449 = call i32 @strlen(i64 %448)
  %450 = call i64 @hists__new_col_len(%struct.hists* %444, i32 %445, i32 %449)
  br label %451

451:                                              ; preds = %443, %438
  %452 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %453 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %452, i32 0, i32 1
  %454 = load i64, i64* %453, align 8
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %456, label %461

456:                                              ; preds = %451
  %457 = load %struct.hists*, %struct.hists** %3, align 8
  %458 = load i32, i32* @HISTC_TRANSACTION, align 4
  %459 = call i32 (...) @hist_entry__transaction_len()
  %460 = call i64 @hists__new_col_len(%struct.hists* %457, i32 %458, i32 %459)
  br label %461

461:                                              ; preds = %456, %451
  %462 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %463 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %462, i32 0, i32 0
  %464 = load i64, i64* %463, align 8
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %466, label %474

466:                                              ; preds = %461
  %467 = load %struct.hists*, %struct.hists** %3, align 8
  %468 = load i32, i32* @HISTC_TRACE, align 4
  %469 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %470 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %469, i32 0, i32 0
  %471 = load i64, i64* %470, align 8
  %472 = call i32 @strlen(i64 %471)
  %473 = call i64 @hists__new_col_len(%struct.hists* %467, i32 %468, i32 %472)
  br label %474

474:                                              ; preds = %466, %461
  ret void
}

declare dso_local i64 @hists__new_col_len(%struct.hists*, i32, i32) #1

declare dso_local i32 @hists__set_unres_dso_col_len(%struct.hists*, i32) #1

declare dso_local i32 @thread__comm_len(i32) #1

declare dso_local i32 @hists__set_col_len(%struct.hists*, i32, i32) #1

declare dso_local i32 @dso__name_len(i32) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @hist_entry__transaction_len(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
