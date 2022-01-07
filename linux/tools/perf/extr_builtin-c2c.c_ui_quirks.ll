; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_ui_quirks.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_ui_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_15__, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_19__ = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"Data address\00", align 1
@c2c = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@dim_offset = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@header_offset_tui = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"CL\00", align 1
@percent_hitm_header = common dso_local global i32* null, align 8
@dim_percent_hitm = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"Cacheline\00", align 1
@dim_dcacheline = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@dim_dcacheline_node = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@dim_dcacheline_count = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@ENOMEM = common dso_local global i32 0, align 4
@dim_offset_node = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ui_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ui_quirks() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @c2c, i32 0, i32 1), align 8
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store i32 5, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @dim_offset, i32 0, i32 0), align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_17__* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @dim_offset, i32 0, i32 1) to i8*), i8* align 8 bitcast (%struct.TYPE_17__* @header_offset_tui to i8*), i64 8, i1 false)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %7

7:                                                ; preds = %6, %0
  %8 = load i32*, i32** @percent_hitm_header, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @c2c, i32 0, i32 0), align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @dim_percent_hitm, i32 0, i32 0), align 4
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dim_dcacheline, i32 0, i32 1), align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @dim_dcacheline_node, i32 0, i32 0), align 8
  %14 = add nsw i64 %12, %13
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @dim_dcacheline_count, i32 0, i32 0), align 8
  %16 = add nsw i64 %14, %15
  %17 = add nsw i64 %16, 4
  %18 = call i8* @fill_line(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %17)
  store i8* %18, i8** %3, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %7
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %1, align 4
  br label %48

24:                                               ; preds = %7
  %25 = load i8*, i8** %3, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dim_dcacheline, i32 0, i32 0, i32 0), align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  store i8* %25, i8** %28, align 8
  %29 = load i8*, i8** %2, align 8
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @dim_offset, i32 0, i32 0), align 8
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @dim_offset_node, i32 0, i32 0), align 8
  %33 = add nsw i64 %31, %32
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @dim_dcacheline_count, i32 0, i32 0), align 8
  %35 = add nsw i64 %33, %34
  %36 = add nsw i64 %35, 4
  %37 = call i8* @fill_line(i8* %29, i64 %36)
  store i8* %37, i8** %3, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %24
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %1, align 4
  br label %48

43:                                               ; preds = %24
  %44 = load i8*, i8** %3, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @dim_offset, i32 0, i32 1, i32 0), align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  store i8* %44, i8** %47, align 8
  store i32 0, i32* %1, align 4
  br label %48

48:                                               ; preds = %43, %40, %21
  %49 = load i32, i32* %1, align 4
  ret i32 %49
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @fill_line(i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
