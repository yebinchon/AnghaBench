; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-record.c_record__switch_output.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-record.c_record__switch_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.record = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__*, i64, i64, %struct.perf_data }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i8** }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.perf_data = type { i8* }

@__const.record__switch_output.timestamp = private unnamed_addr constant [17 x i8] c"InvalidTimestamp\00", align 16
@.str = private unnamed_addr constant [33 x i8] c"Failed to get current timestamp\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@quiet = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"[ perf record: Dump %s.%s ]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.record*, i32)* @record__switch_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @record__switch_output(%struct.record* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.record*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [17 x i8], align 16
  %11 = alloca i32, align 4
  store %struct.record* %0, %struct.record** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.record*, %struct.record** %4, align 8
  %13 = getelementptr inbounds %struct.record, %struct.record* %12, i32 0, i32 5
  store %struct.perf_data* %13, %struct.perf_data** %6, align 8
  %14 = bitcast [17 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 getelementptr inbounds ([17 x i8], [17 x i8]* @__const.record__switch_output.timestamp, i32 0, i32 0), i64 17, i1 false)
  %15 = load %struct.record*, %struct.record** %4, align 8
  %16 = call i32 @record__aio_mmap_read_sync(%struct.record* %15)
  %17 = load %struct.record*, %struct.record** %4, align 8
  %18 = call i32 @record__synthesize(%struct.record* %17, i32 1)
  %19 = load %struct.record*, %struct.record** %4, align 8
  %20 = getelementptr inbounds %struct.record, %struct.record* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = call i64 @target__none(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.record*, %struct.record** %4, align 8
  %26 = call i32 @record__synthesize_workload(%struct.record* %25, i32 1)
  br label %27

27:                                               ; preds = %24, %2
  %28 = load %struct.record*, %struct.record** %4, align 8
  %29 = getelementptr inbounds %struct.record, %struct.record* %28, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = load %struct.record*, %struct.record** %4, align 8
  %31 = call i32 @record__finish_output(%struct.record* %30)
  %32 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i64 0, i64 0
  %33 = call i32 @fetch_current_timestamp(i8* %32, i32 17)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %154

40:                                               ; preds = %27
  %41 = load %struct.perf_data*, %struct.perf_data** %6, align 8
  %42 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i64 0, i64 0
  %43 = load %struct.record*, %struct.record** %4, align 8
  %44 = getelementptr inbounds %struct.record, %struct.record* %43, i32 0, i32 2
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @perf_data__switch(%struct.perf_data* %41, i8* %42, i32 %48, i32 %49, i8** %9)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %40
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %53
  %57 = load %struct.record*, %struct.record** %4, align 8
  %58 = getelementptr inbounds %struct.record, %struct.record* %57, i32 0, i32 3
  store i64 0, i64* %58, align 8
  %59 = load %struct.record*, %struct.record** %4, align 8
  %60 = getelementptr inbounds %struct.record, %struct.record* %59, i32 0, i32 2
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  br label %64

64:                                               ; preds = %56, %53, %40
  %65 = load i32, i32* @quiet, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* @stderr, align 4
  %69 = load %struct.perf_data*, %struct.perf_data** %6, align 8
  %70 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i64 0, i64 0
  %73 = call i32 @fprintf(i32 %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %71, i8* %72)
  br label %74

74:                                               ; preds = %67, %64
  %75 = load %struct.record*, %struct.record** %4, align 8
  %76 = getelementptr inbounds %struct.record, %struct.record* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %134

80:                                               ; preds = %74
  %81 = load %struct.record*, %struct.record** %4, align 8
  %82 = getelementptr inbounds %struct.record, %struct.record* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.record*, %struct.record** %4, align 8
  %88 = getelementptr inbounds %struct.record, %struct.record* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp sge i32 %86, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %80
  store i32 0, i32* %11, align 4
  br label %93

93:                                               ; preds = %92, %80
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.record*, %struct.record** %4, align 8
  %96 = getelementptr inbounds %struct.record, %struct.record* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 4
  %98 = load %struct.record*, %struct.record** %4, align 8
  %99 = getelementptr inbounds %struct.record, %struct.record* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = load i8**, i8*** %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %125

107:                                              ; preds = %93
  %108 = load %struct.record*, %struct.record** %4, align 8
  %109 = getelementptr inbounds %struct.record, %struct.record* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 2
  %111 = load i8**, i8*** %110, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @remove(i8* %115)
  %117 = load %struct.record*, %struct.record** %4, align 8
  %118 = getelementptr inbounds %struct.record, %struct.record* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  %120 = load i8**, i8*** %119, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %120, i64 %122
  %124 = call i32 @zfree(i8** %123)
  br label %125

125:                                              ; preds = %107, %93
  %126 = load i8*, i8** %9, align 8
  %127 = load %struct.record*, %struct.record** %4, align 8
  %128 = getelementptr inbounds %struct.record, %struct.record* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 2
  %130 = load i8**, i8*** %129, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %130, i64 %132
  store i8* %126, i8** %133, align 8
  br label %137

134:                                              ; preds = %74
  %135 = load i8*, i8** %9, align 8
  %136 = call i32 @free(i8* %135)
  br label %137

137:                                              ; preds = %134, %125
  %138 = load i32, i32* %5, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %152, label %140

140:                                              ; preds = %137
  %141 = load %struct.record*, %struct.record** %4, align 8
  %142 = call i32 @record__synthesize(%struct.record* %141, i32 0)
  %143 = load %struct.record*, %struct.record** %4, align 8
  %144 = getelementptr inbounds %struct.record, %struct.record* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = call i64 @target__none(i32* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %140
  %149 = load %struct.record*, %struct.record** %4, align 8
  %150 = call i32 @record__synthesize_workload(%struct.record* %149, i32 0)
  br label %151

151:                                              ; preds = %148, %140
  br label %152

152:                                              ; preds = %151, %137
  %153 = load i32, i32* %7, align 4
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %152, %36
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @record__aio_mmap_read_sync(%struct.record*) #2

declare dso_local i32 @record__synthesize(%struct.record*, i32) #2

declare dso_local i64 @target__none(i32*) #2

declare dso_local i32 @record__synthesize_workload(%struct.record*, i32) #2

declare dso_local i32 @record__finish_output(%struct.record*) #2

declare dso_local i32 @fetch_current_timestamp(i8*, i32) #2

declare dso_local i32 @pr_err(i8*) #2

declare dso_local i32 @perf_data__switch(%struct.perf_data*, i8*, i32, i32, i8**) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #2

declare dso_local i32 @remove(i8*) #2

declare dso_local i32 @zfree(i8**) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
