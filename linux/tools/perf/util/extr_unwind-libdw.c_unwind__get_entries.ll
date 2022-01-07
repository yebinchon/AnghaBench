; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_unwind-libdw.c_unwind__get_entries.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_unwind-libdw.c_unwind__get_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.thread = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.perf_sample = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.unwind_info = type { i32 (%struct.TYPE_8__*, i8*)*, i8*, i32, i32, i32, %struct.TYPE_8__*, i32, %struct.thread*, %struct.perf_sample* }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@offline_callbacks = common dso_local global i32 0, align 4
@PERF_REG_IP = common dso_local global i32 0, align 4
@EM_NONE = common dso_local global i32 0, align 4
@callbacks = common dso_local global i32 0, align 4
@frame_callback = common dso_local global i32 0, align 4
@callchain_param = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@ORDER_CALLER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"unwind: failed with '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unwind__get_entries(i32 (%struct.TYPE_8__*, i8*)* %0, i8* %1, %struct.thread* %2, %struct.perf_sample* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32 (%struct.TYPE_8__*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.perf_sample*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.unwind_info*, align 8
  %13 = alloca %struct.unwind_info, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 (%struct.TYPE_8__*, i8*)* %0, i32 (%struct.TYPE_8__*, i8*)** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.thread* %2, %struct.thread** %9, align 8
  store %struct.perf_sample* %3, %struct.perf_sample** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %13, i32 0, i32 0
  %19 = load i32 (%struct.TYPE_8__*, i8*)*, i32 (%struct.TYPE_8__*, i8*)** %7, align 8
  store i32 (%struct.TYPE_8__*, i8*)* %19, i32 (%struct.TYPE_8__*, i8*)** %18, align 8
  %20 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %13, i32 0, i32 1
  %21 = load i8*, i8** %8, align 8
  store i8* %21, i8** %20, align 8
  %22 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %13, i32 0, i32 2
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %22, align 8
  %24 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %13, i32 0, i32 3
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %13, i32 0, i32 4
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %13, i32 0, i32 5
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %26, align 8
  %27 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %13, i32 0, i32 6
  %28 = load %struct.thread*, %struct.thread** %9, align 8
  %29 = getelementptr inbounds %struct.thread, %struct.thread* %28, i32 0, i32 1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %27, align 8
  %33 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %13, i32 0, i32 7
  %34 = load %struct.thread*, %struct.thread** %9, align 8
  store %struct.thread* %34, %struct.thread** %33, align 8
  %35 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %13, i32 0, i32 8
  %36 = load %struct.perf_sample*, %struct.perf_sample** %10, align 8
  store %struct.perf_sample* %36, %struct.perf_sample** %35, align 8
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %15, align 4
  %39 = load %struct.perf_sample*, %struct.perf_sample** %10, align 8
  %40 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %5
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %190

47:                                               ; preds = %5
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 8, %49
  %51 = add i64 64, %50
  %52 = trunc i64 %51 to i32
  %53 = call %struct.unwind_info* @zalloc(i32 %52)
  store %struct.unwind_info* %53, %struct.unwind_info** %12, align 8
  %54 = load %struct.unwind_info*, %struct.unwind_info** %12, align 8
  %55 = icmp ne %struct.unwind_info* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %47
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %190

59:                                               ; preds = %47
  %60 = load %struct.unwind_info*, %struct.unwind_info** %12, align 8
  %61 = bitcast %struct.unwind_info* %60 to i8*
  %62 = bitcast %struct.unwind_info* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 %62, i64 64, i1 false)
  %63 = call i32 @dwfl_begin(i32* @offline_callbacks)
  %64 = load %struct.unwind_info*, %struct.unwind_info** %12, align 8
  %65 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load %struct.unwind_info*, %struct.unwind_info** %12, align 8
  %67 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %59
  br label %177

71:                                               ; preds = %59
  %72 = load %struct.perf_sample*, %struct.perf_sample** %10, align 8
  %73 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %72, i32 0, i32 0
  %74 = load i32, i32* @PERF_REG_IP, align 4
  %75 = call i32 @perf_reg_value(i32* %14, %struct.TYPE_9__* %73, i32 %74)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %177

79:                                               ; preds = %71
  %80 = load i32, i32* %14, align 4
  %81 = load %struct.unwind_info*, %struct.unwind_info** %12, align 8
  %82 = call i32 @report_module(i32 %80, %struct.unwind_info* %81)
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %177

86:                                               ; preds = %79
  %87 = load %struct.unwind_info*, %struct.unwind_info** %12, align 8
  %88 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @EM_NONE, align 4
  %91 = load %struct.thread*, %struct.thread** %9, align 8
  %92 = getelementptr inbounds %struct.thread, %struct.thread* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.unwind_info*, %struct.unwind_info** %12, align 8
  %95 = call i32 @dwfl_attach_state(i32 %89, i32 %90, i32 %93, i32* @callbacks, %struct.unwind_info* %94)
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %15, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %86
  br label %177

102:                                              ; preds = %86
  %103 = load %struct.unwind_info*, %struct.unwind_info** %12, align 8
  %104 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.thread*, %struct.thread** %9, align 8
  %107 = getelementptr inbounds %struct.thread, %struct.thread* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @frame_callback, align 4
  %110 = load %struct.unwind_info*, %struct.unwind_info** %12, align 8
  %111 = call i32 @dwfl_getthread_frames(i32 %105, i32 %108, i32 %109, %struct.unwind_info* %110)
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %15, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %102
  %115 = load %struct.unwind_info*, %struct.unwind_info** %12, align 8
  %116 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  store i32 0, i32* %15, align 4
  br label %121

121:                                              ; preds = %120, %114, %102
  store i32 0, i32* %16, align 4
  br label %122

122:                                              ; preds = %173, %121
  %123 = load i32, i32* %16, align 4
  %124 = load %struct.unwind_info*, %struct.unwind_info** %12, align 8
  %125 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = load i32, i32* %15, align 4
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  br label %132

132:                                              ; preds = %128, %122
  %133 = phi i1 [ false, %122 ], [ %131, %128 ]
  br i1 %133, label %134, label %176

134:                                              ; preds = %132
  %135 = load i32, i32* %16, align 4
  store i32 %135, i32* %17, align 4
  %136 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @callchain_param, i32 0, i32 0), align 8
  %137 = load i64, i64* @ORDER_CALLER, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %134
  %140 = load %struct.unwind_info*, %struct.unwind_info** %12, align 8
  %141 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %16, align 4
  %144 = sub nsw i32 %142, %143
  %145 = sub nsw i32 %144, 1
  store i32 %145, i32* %17, align 4
  br label %146

146:                                              ; preds = %139, %134
  %147 = load %struct.unwind_info*, %struct.unwind_info** %12, align 8
  %148 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %147, i32 0, i32 5
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = load i32, i32* %17, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %170

156:                                              ; preds = %146
  %157 = load %struct.unwind_info*, %struct.unwind_info** %12, align 8
  %158 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %157, i32 0, i32 0
  %159 = load i32 (%struct.TYPE_8__*, i8*)*, i32 (%struct.TYPE_8__*, i8*)** %158, align 8
  %160 = load %struct.unwind_info*, %struct.unwind_info** %12, align 8
  %161 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %160, i32 0, i32 5
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %161, align 8
  %163 = load i32, i32* %17, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i64 %164
  %166 = load %struct.unwind_info*, %struct.unwind_info** %12, align 8
  %167 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %166, i32 0, i32 1
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 %159(%struct.TYPE_8__* %165, i8* %168)
  br label %171

170:                                              ; preds = %146
  br label %171

171:                                              ; preds = %170, %156
  %172 = phi i32 [ %169, %156 ], [ 0, %170 ]
  store i32 %172, i32* %15, align 4
  br label %173

173:                                              ; preds = %171
  %174 = load i32, i32* %16, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %16, align 4
  br label %122

176:                                              ; preds = %132
  br label %177

177:                                              ; preds = %176, %101, %85, %78, %70
  %178 = load i32, i32* %15, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = call i32 @dwfl_errmsg(i32 -1)
  %182 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %181)
  br label %183

183:                                              ; preds = %180, %177
  %184 = load %struct.unwind_info*, %struct.unwind_info** %12, align 8
  %185 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @dwfl_end(i32 %186)
  %188 = load %struct.unwind_info*, %struct.unwind_info** %12, align 8
  %189 = call i32 @free(%struct.unwind_info* %188)
  store i32 0, i32* %6, align 4
  br label %190

190:                                              ; preds = %183, %56, %44
  %191 = load i32, i32* %6, align 4
  ret i32 %191
}

declare dso_local %struct.unwind_info* @zalloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dwfl_begin(i32*) #1

declare dso_local i32 @perf_reg_value(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @report_module(i32, %struct.unwind_info*) #1

declare dso_local i32 @dwfl_attach_state(i32, i32, i32, i32*, %struct.unwind_info*) #1

declare dso_local i32 @dwfl_getthread_frames(i32, i32, i32, %struct.unwind_info*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @dwfl_errmsg(i32) #1

declare dso_local i32 @dwfl_end(i32) #1

declare dso_local i32 @free(%struct.unwind_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
