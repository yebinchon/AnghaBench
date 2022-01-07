; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_header.c_perf_session__read_header.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_header.c_perf_session__read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_session = type { %struct.TYPE_19__*, %struct.TYPE_18__, %struct.TYPE_13__, %struct.perf_header, %struct.perf_data* }
%struct.TYPE_19__ = type { i32, i32* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }
%struct.perf_header = type { i64, i32 }
%struct.perf_data = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.perf_file_header = type { i32, %struct.TYPE_16__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.perf_file_attr = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.evsel = type { i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [117 x i8] c"WARNING: The %s file's data size field is 0 which is unexpected.\0AWas the 'perf record' command properly terminated?\0A\00", align 1
@.str.1 = private unnamed_addr constant [115 x i8] c"ERROR: The %s file's attr size field is 0 which is unexpected.\0AWas the 'perf record' command properly terminated?\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@perf_file_section__process = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_session__read_header(%struct.perf_session* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_session*, align 8
  %4 = alloca %struct.perf_data*, align 8
  %5 = alloca %struct.perf_header*, align 8
  %6 = alloca %struct.perf_file_header, align 8
  %7 = alloca %struct.perf_file_attr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.evsel*, align 8
  %15 = alloca i32, align 4
  store %struct.perf_session* %0, %struct.perf_session** %3, align 8
  %16 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %17 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %16, i32 0, i32 4
  %18 = load %struct.perf_data*, %struct.perf_data** %17, align 8
  store %struct.perf_data* %18, %struct.perf_data** %4, align 8
  %19 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %20 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %19, i32 0, i32 3
  store %struct.perf_header* %20, %struct.perf_header** %5, align 8
  %21 = load %struct.perf_data*, %struct.perf_data** %4, align 8
  %22 = call i32 @perf_data__fd(%struct.perf_data* %21)
  store i32 %22, i32* %13, align 4
  %23 = call %struct.TYPE_19__* (...) @evlist__new()
  %24 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %25 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %24, i32 0, i32 0
  store %struct.TYPE_19__* %23, %struct.TYPE_19__** %25, align 8
  %26 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %27 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %26, i32 0, i32 0
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  %29 = icmp eq %struct.TYPE_19__* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %228

33:                                               ; preds = %1
  %34 = load %struct.perf_header*, %struct.perf_header** %5, align 8
  %35 = getelementptr inbounds %struct.perf_header, %struct.perf_header* %34, i32 0, i32 1
  %36 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %37 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %36, i32 0, i32 0
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 1
  store i32* %35, i32** %39, align 8
  %40 = load %struct.perf_header*, %struct.perf_header** %5, align 8
  %41 = getelementptr inbounds %struct.perf_header, %struct.perf_header* %40, i32 0, i32 1
  %42 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %43 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  store i32* %41, i32** %45, align 8
  %46 = load %struct.perf_data*, %struct.perf_data** %4, align 8
  %47 = call i64 @perf_data__is_pipe(%struct.perf_data* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %33
  %50 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %51 = call i32 @perf_header__read_pipe(%struct.perf_session* %50)
  store i32 %51, i32* %2, align 4
  br label %228

52:                                               ; preds = %33
  %53 = load %struct.perf_header*, %struct.perf_header** %5, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i64 @perf_file_header__read(%struct.perf_file_header* %6, %struct.perf_header* %53, i32 %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %228

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.perf_file_header, %struct.perf_file_header* %6, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.perf_data*, %struct.perf_data** %4, align 8
  %67 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @pr_warning(i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %65, %60
  %72 = getelementptr inbounds %struct.perf_file_header, %struct.perf_file_header* %6, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = load %struct.perf_data*, %struct.perf_data** %4, align 8
  %77 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @pr_err(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %228

83:                                               ; preds = %71
  %84 = getelementptr inbounds %struct.perf_file_header, %struct.perf_file_header* %6, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.perf_file_header, %struct.perf_file_header* %6, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sdiv i32 %86, %88
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %13, align 4
  %91 = getelementptr inbounds %struct.perf_file_header, %struct.perf_file_header* %6, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @SEEK_SET, align 4
  %95 = call i32 @lseek(i32 %90, i32 %93, i32 %94)
  store i32 0, i32* %11, align 4
  br label %96

96:                                               ; preds = %195, %83
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %198

100:                                              ; preds = %96
  %101 = load i32, i32* %13, align 4
  %102 = load %struct.perf_header*, %struct.perf_header** %5, align 8
  %103 = call i64 @read_attr(i32 %101, %struct.perf_header* %102, %struct.perf_file_attr* %7)
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %216

106:                                              ; preds = %100
  %107 = load %struct.perf_header*, %struct.perf_header** %5, align 8
  %108 = getelementptr inbounds %struct.perf_header, %struct.perf_header* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %128

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.perf_file_attr, %struct.perf_file_attr* %7, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i8* @bswap_64(i32 %114)
  %116 = ptrtoint i8* %115 to i32
  %117 = getelementptr inbounds %struct.perf_file_attr, %struct.perf_file_attr* %7, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  %119 = getelementptr inbounds %struct.perf_file_attr, %struct.perf_file_attr* %7, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i8* @bswap_64(i32 %121)
  %123 = ptrtoint i8* %122 to i32
  %124 = getelementptr inbounds %struct.perf_file_attr, %struct.perf_file_attr* %7, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = getelementptr inbounds %struct.perf_file_attr, %struct.perf_file_attr* %7, i32 0, i32 1
  %127 = call i32 @perf_event__attr_swap(i32* %126)
  br label %128

128:                                              ; preds = %111, %106
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* @SEEK_CUR, align 4
  %131 = call i32 @lseek(i32 %129, i32 0, i32 %130)
  store i32 %131, i32* %15, align 4
  %132 = getelementptr inbounds %struct.perf_file_attr, %struct.perf_file_attr* %7, i32 0, i32 1
  %133 = call %struct.evsel* @evsel__new(i32* %132)
  store %struct.evsel* %133, %struct.evsel** %14, align 8
  %134 = load %struct.evsel*, %struct.evsel** %14, align 8
  %135 = icmp eq %struct.evsel* %134, null
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  br label %219

137:                                              ; preds = %128
  %138 = load %struct.perf_header*, %struct.perf_header** %5, align 8
  %139 = getelementptr inbounds %struct.perf_header, %struct.perf_header* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.evsel*, %struct.evsel** %14, align 8
  %142 = getelementptr inbounds %struct.evsel, %struct.evsel* %141, i32 0, i32 1
  store i64 %140, i64* %142, align 8
  %143 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %144 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %143, i32 0, i32 0
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %144, align 8
  %146 = load %struct.evsel*, %struct.evsel** %14, align 8
  %147 = call i32 @evlist__add(%struct.TYPE_19__* %145, %struct.evsel* %146)
  %148 = getelementptr inbounds %struct.perf_file_attr, %struct.perf_file_attr* %7, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = udiv i64 %151, 4
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %10, align 4
  %154 = load %struct.evsel*, %struct.evsel** %14, align 8
  %155 = getelementptr inbounds %struct.evsel, %struct.evsel* %154, i32 0, i32 0
  %156 = load i32, i32* %10, align 4
  %157 = call i64 @perf_evsel__alloc_id(i32* %155, i32 1, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %137
  br label %219

160:                                              ; preds = %137
  %161 = load i32, i32* %13, align 4
  %162 = getelementptr inbounds %struct.perf_file_attr, %struct.perf_file_attr* %7, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @SEEK_SET, align 4
  %166 = call i32 @lseek(i32 %161, i32 %164, i32 %165)
  store i32 0, i32* %12, align 4
  br label %167

167:                                              ; preds = %187, %160
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* %10, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %190

171:                                              ; preds = %167
  %172 = load %struct.perf_header*, %struct.perf_header** %5, align 8
  %173 = load i32, i32* %13, align 4
  %174 = call i64 @perf_header__getbuffer64(%struct.perf_header* %172, i32 %173, i32* %8, i32 4)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  br label %216

177:                                              ; preds = %171
  %178 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %179 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %178, i32 0, i32 0
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 0
  %182 = load %struct.evsel*, %struct.evsel** %14, align 8
  %183 = getelementptr inbounds %struct.evsel, %struct.evsel* %182, i32 0, i32 0
  %184 = load i32, i32* %12, align 4
  %185 = load i32, i32* %8, align 4
  %186 = call i32 @perf_evlist__id_add(i32* %181, i32* %183, i32 0, i32 %184, i32 %185)
  br label %187

187:                                              ; preds = %177
  %188 = load i32, i32* %12, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %12, align 4
  br label %167

190:                                              ; preds = %167
  %191 = load i32, i32* %13, align 4
  %192 = load i32, i32* %15, align 4
  %193 = load i32, i32* @SEEK_SET, align 4
  %194 = call i32 @lseek(i32 %191, i32 %192, i32 %193)
  br label %195

195:                                              ; preds = %190
  %196 = load i32, i32* %11, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %11, align 4
  br label %96

198:                                              ; preds = %96
  %199 = load %struct.perf_header*, %struct.perf_header** %5, align 8
  %200 = load i32, i32* %13, align 4
  %201 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %202 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %201, i32 0, i32 1
  %203 = load i32, i32* @perf_file_section__process, align 4
  %204 = call i32 @perf_header__process_sections(%struct.perf_header* %199, i32 %200, %struct.TYPE_18__* %202, i32 %203)
  %205 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %206 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %205, i32 0, i32 0
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %206, align 8
  %208 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %209 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = call i64 @perf_evlist__prepare_tracepoint_events(%struct.TYPE_19__* %207, i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %198
  br label %219

215:                                              ; preds = %198
  store i32 0, i32* %2, align 4
  br label %228

216:                                              ; preds = %176, %105
  %217 = load i32, i32* @errno, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %2, align 4
  br label %228

219:                                              ; preds = %214, %159, %136
  %220 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %221 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %220, i32 0, i32 0
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %221, align 8
  %223 = call i32 @evlist__delete(%struct.TYPE_19__* %222)
  %224 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %225 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %224, i32 0, i32 0
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %225, align 8
  %226 = load i32, i32* @ENOMEM, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %2, align 4
  br label %228

228:                                              ; preds = %219, %216, %215, %75, %57, %49, %30
  %229 = load i32, i32* %2, align 4
  ret i32 %229
}

declare dso_local i32 @perf_data__fd(%struct.perf_data*) #1

declare dso_local %struct.TYPE_19__* @evlist__new(...) #1

declare dso_local i64 @perf_data__is_pipe(%struct.perf_data*) #1

declare dso_local i32 @perf_header__read_pipe(%struct.perf_session*) #1

declare dso_local i64 @perf_file_header__read(%struct.perf_file_header*, %struct.perf_header*, i32) #1

declare dso_local i32 @pr_warning(i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i64 @read_attr(i32, %struct.perf_header*, %struct.perf_file_attr*) #1

declare dso_local i8* @bswap_64(i32) #1

declare dso_local i32 @perf_event__attr_swap(i32*) #1

declare dso_local %struct.evsel* @evsel__new(i32*) #1

declare dso_local i32 @evlist__add(%struct.TYPE_19__*, %struct.evsel*) #1

declare dso_local i64 @perf_evsel__alloc_id(i32*, i32, i32) #1

declare dso_local i64 @perf_header__getbuffer64(%struct.perf_header*, i32, i32*, i32) #1

declare dso_local i32 @perf_evlist__id_add(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @perf_header__process_sections(%struct.perf_header*, i32, %struct.TYPE_18__*, i32) #1

declare dso_local i64 @perf_evlist__prepare_tracepoint_events(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @evlist__delete(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
