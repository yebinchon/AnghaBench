; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_trace__read_syscall_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_trace__read_syscall_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace = type { %struct.TYPE_10__, %struct.TYPE_13__* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_13__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.syscall = type { i32, i8*, i32, i32, i32, %struct.TYPE_12__*, %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i8*, %struct.TYPE_12__* }
%struct.TYPE_15__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { i8* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"sys_enter_%s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"syscalls\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"__syscall_nr\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"nr\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"exit_group\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"openat\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace*, i32)* @trace__read_syscall_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace__read_syscall_info(%struct.trace* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [128 x i8], align 16
  %7 = alloca %struct.syscall*, align 8
  %8 = alloca i8*, align 8
  store %struct.trace* %0, %struct.trace** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.trace*, %struct.trace** %4, align 8
  %10 = getelementptr inbounds %struct.trace, %struct.trace* %9, i32 0, i32 1
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i8* @syscalltbl__name(%struct.TYPE_13__* %11, i32 %12)
  store i8* %13, i8** %8, align 8
  %14 = load %struct.trace*, %struct.trace** %4, align 8
  %15 = getelementptr inbounds %struct.trace, %struct.trace* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %40

19:                                               ; preds = %2
  %20 = load %struct.trace*, %struct.trace** %4, align 8
  %21 = getelementptr inbounds %struct.trace, %struct.trace* %20, i32 0, i32 1
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  %27 = call i32* @calloc(i64 %26, i32 56)
  %28 = load %struct.trace*, %struct.trace** %4, align 8
  %29 = getelementptr inbounds %struct.trace, %struct.trace* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  store i32* %27, i32** %30, align 8
  %31 = load %struct.trace*, %struct.trace** %4, align 8
  %32 = getelementptr inbounds %struct.trace, %struct.trace* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %19
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %213

39:                                               ; preds = %19
  br label %40

40:                                               ; preds = %39, %2
  %41 = load %struct.trace*, %struct.trace** %4, align 8
  %42 = getelementptr inbounds %struct.trace, %struct.trace* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = bitcast i32* %47 to %struct.syscall*
  store %struct.syscall* %48, %struct.syscall** %7, align 8
  %49 = load %struct.syscall*, %struct.syscall** %7, align 8
  %50 = getelementptr inbounds %struct.syscall, %struct.syscall* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %213

54:                                               ; preds = %40
  %55 = load i8*, i8** %8, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load %struct.syscall*, %struct.syscall** %7, align 8
  %59 = getelementptr inbounds %struct.syscall, %struct.syscall* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  store i32 0, i32* %3, align 4
  br label %213

60:                                               ; preds = %54
  %61 = load i8*, i8** %8, align 8
  %62 = load %struct.syscall*, %struct.syscall** %7, align 8
  %63 = getelementptr inbounds %struct.syscall, %struct.syscall* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load %struct.syscall*, %struct.syscall** %7, align 8
  %65 = getelementptr inbounds %struct.syscall, %struct.syscall* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call %struct.TYPE_14__* @syscall_fmt__find(i8* %66)
  %68 = load %struct.syscall*, %struct.syscall** %7, align 8
  %69 = getelementptr inbounds %struct.syscall, %struct.syscall* %68, i32 0, i32 7
  store %struct.TYPE_14__* %67, %struct.TYPE_14__** %69, align 8
  %70 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %71 = load %struct.syscall*, %struct.syscall** %7, align 8
  %72 = getelementptr inbounds %struct.syscall, %struct.syscall* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @snprintf(i8* %70, i32 128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %73)
  %75 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %76 = call i8* @trace_event__tp_format(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %75)
  %77 = bitcast i8* %76 to %struct.TYPE_15__*
  %78 = load %struct.syscall*, %struct.syscall** %7, align 8
  %79 = getelementptr inbounds %struct.syscall, %struct.syscall* %78, i32 0, i32 6
  store %struct.TYPE_15__* %77, %struct.TYPE_15__** %79, align 8
  %80 = load %struct.syscall*, %struct.syscall** %7, align 8
  %81 = getelementptr inbounds %struct.syscall, %struct.syscall* %80, i32 0, i32 6
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %81, align 8
  %83 = call i64 @IS_ERR(%struct.TYPE_15__* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %110

85:                                               ; preds = %60
  %86 = load %struct.syscall*, %struct.syscall** %7, align 8
  %87 = getelementptr inbounds %struct.syscall, %struct.syscall* %86, i32 0, i32 7
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %87, align 8
  %89 = icmp ne %struct.TYPE_14__* %88, null
  br i1 %89, label %90, label %110

90:                                               ; preds = %85
  %91 = load %struct.syscall*, %struct.syscall** %7, align 8
  %92 = getelementptr inbounds %struct.syscall, %struct.syscall* %91, i32 0, i32 7
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %110

97:                                               ; preds = %90
  %98 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %99 = load %struct.syscall*, %struct.syscall** %7, align 8
  %100 = getelementptr inbounds %struct.syscall, %struct.syscall* %99, i32 0, i32 7
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @snprintf(i8* %98, i32 128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %103)
  %105 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %106 = call i8* @trace_event__tp_format(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %105)
  %107 = bitcast i8* %106 to %struct.TYPE_15__*
  %108 = load %struct.syscall*, %struct.syscall** %7, align 8
  %109 = getelementptr inbounds %struct.syscall, %struct.syscall* %108, i32 0, i32 6
  store %struct.TYPE_15__* %107, %struct.TYPE_15__** %109, align 8
  br label %110

110:                                              ; preds = %97, %90, %85, %60
  %111 = load %struct.syscall*, %struct.syscall** %7, align 8
  %112 = load %struct.syscall*, %struct.syscall** %7, align 8
  %113 = getelementptr inbounds %struct.syscall, %struct.syscall* %112, i32 0, i32 6
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %113, align 8
  %115 = call i64 @IS_ERR(%struct.TYPE_15__* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  br label %125

118:                                              ; preds = %110
  %119 = load %struct.syscall*, %struct.syscall** %7, align 8
  %120 = getelementptr inbounds %struct.syscall, %struct.syscall* %119, i32 0, i32 6
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  br label %125

125:                                              ; preds = %118, %117
  %126 = phi i32 [ 6, %117 ], [ %124, %118 ]
  %127 = call i64 @syscall__alloc_arg_fmts(%struct.syscall* %111, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %3, align 4
  br label %213

132:                                              ; preds = %125
  %133 = load %struct.syscall*, %struct.syscall** %7, align 8
  %134 = getelementptr inbounds %struct.syscall, %struct.syscall* %133, i32 0, i32 6
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %134, align 8
  %136 = call i64 @IS_ERR(%struct.TYPE_15__* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %132
  %139 = load %struct.syscall*, %struct.syscall** %7, align 8
  %140 = getelementptr inbounds %struct.syscall, %struct.syscall* %139, i32 0, i32 6
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %140, align 8
  %142 = call i32 @PTR_ERR(%struct.TYPE_15__* %141)
  store i32 %142, i32* %3, align 4
  br label %213

143:                                              ; preds = %132
  %144 = load %struct.syscall*, %struct.syscall** %7, align 8
  %145 = getelementptr inbounds %struct.syscall, %struct.syscall* %144, i32 0, i32 6
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %148, align 8
  %150 = load %struct.syscall*, %struct.syscall** %7, align 8
  %151 = getelementptr inbounds %struct.syscall, %struct.syscall* %150, i32 0, i32 5
  store %struct.TYPE_12__* %149, %struct.TYPE_12__** %151, align 8
  %152 = load %struct.syscall*, %struct.syscall** %7, align 8
  %153 = getelementptr inbounds %struct.syscall, %struct.syscall* %152, i32 0, i32 5
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %153, align 8
  %155 = icmp ne %struct.TYPE_12__* %154, null
  br i1 %155, label %156, label %184

156:                                              ; preds = %143
  %157 = load %struct.syscall*, %struct.syscall** %7, align 8
  %158 = getelementptr inbounds %struct.syscall, %struct.syscall* %157, i32 0, i32 5
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @strcmp(i8* %161, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %156
  %165 = load %struct.syscall*, %struct.syscall** %7, align 8
  %166 = getelementptr inbounds %struct.syscall, %struct.syscall* %165, i32 0, i32 5
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @strcmp(i8* %169, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %184, label %172

172:                                              ; preds = %164, %156
  %173 = load %struct.syscall*, %struct.syscall** %7, align 8
  %174 = getelementptr inbounds %struct.syscall, %struct.syscall* %173, i32 0, i32 5
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %176, align 8
  %178 = load %struct.syscall*, %struct.syscall** %7, align 8
  %179 = getelementptr inbounds %struct.syscall, %struct.syscall* %178, i32 0, i32 5
  store %struct.TYPE_12__* %177, %struct.TYPE_12__** %179, align 8
  %180 = load %struct.syscall*, %struct.syscall** %7, align 8
  %181 = getelementptr inbounds %struct.syscall, %struct.syscall* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = add nsw i32 %182, -1
  store i32 %183, i32* %181, align 8
  br label %184

184:                                              ; preds = %172, %164, %143
  %185 = load i8*, i8** %8, align 8
  %186 = call i32 @strcmp(i8* %185, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %184
  %189 = load i8*, i8** %8, align 8
  %190 = call i32 @strcmp(i8* %189, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %191 = icmp ne i32 %190, 0
  %192 = xor i1 %191, true
  br label %193

193:                                              ; preds = %188, %184
  %194 = phi i1 [ true, %184 ], [ %192, %188 ]
  %195 = zext i1 %194 to i32
  %196 = load %struct.syscall*, %struct.syscall** %7, align 8
  %197 = getelementptr inbounds %struct.syscall, %struct.syscall* %196, i32 0, i32 2
  store i32 %195, i32* %197, align 8
  %198 = load i8*, i8** %8, align 8
  %199 = call i32 @strcmp(i8* %198, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %193
  %202 = load i8*, i8** %8, align 8
  %203 = call i32 @strcmp(i8* %202, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %204 = icmp ne i32 %203, 0
  %205 = xor i1 %204, true
  br label %206

206:                                              ; preds = %201, %193
  %207 = phi i1 [ true, %193 ], [ %205, %201 ]
  %208 = zext i1 %207 to i32
  %209 = load %struct.syscall*, %struct.syscall** %7, align 8
  %210 = getelementptr inbounds %struct.syscall, %struct.syscall* %209, i32 0, i32 3
  store i32 %208, i32* %210, align 4
  %211 = load %struct.syscall*, %struct.syscall** %7, align 8
  %212 = call i32 @syscall__set_arg_fmts(%struct.syscall* %211)
  store i32 %212, i32* %3, align 4
  br label %213

213:                                              ; preds = %206, %138, %129, %57, %53, %36
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local i8* @syscalltbl__name(%struct.TYPE_13__*, i32) #1

declare dso_local i32* @calloc(i64, i32) #1

declare dso_local %struct.TYPE_14__* @syscall_fmt__find(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @trace_event__tp_format(i8*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_15__*) #1

declare dso_local i64 @syscall__alloc_arg_fmts(%struct.syscall*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_15__*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @syscall__set_arg_fmts(%struct.syscall*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
