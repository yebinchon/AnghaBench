; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_symbol__tty_annotate2.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_symbol__tty_annotate2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_root = type { i32 }
%struct.symbol = type { i8* }
%struct.map = type { %struct.dso* }
%struct.dso = type { i8* }
%struct.evsel = type { i32 }
%struct.annotation_options = type { i32, i32, i64 }
%struct.hists = type { i32 }
%struct.TYPE_2__ = type { i32 }

@RB_ROOT = common dso_local global %struct.rb_root zeroinitializer, align 4
@srcline_full_filename = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s, [percent: %s]\0A%s() %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @symbol__tty_annotate2(%struct.symbol* %0, %struct.map* %1, %struct.evsel* %2, %struct.annotation_options* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca %struct.map*, align 8
  %8 = alloca %struct.evsel*, align 8
  %9 = alloca %struct.annotation_options*, align 8
  %10 = alloca %struct.dso*, align 8
  %11 = alloca %struct.rb_root, align 4
  %12 = alloca %struct.hists*, align 8
  %13 = alloca [1024 x i8], align 16
  store %struct.symbol* %0, %struct.symbol** %6, align 8
  store %struct.map* %1, %struct.map** %7, align 8
  store %struct.evsel* %2, %struct.evsel** %8, align 8
  store %struct.annotation_options* %3, %struct.annotation_options** %9, align 8
  %14 = load %struct.map*, %struct.map** %7, align 8
  %15 = getelementptr inbounds %struct.map, %struct.map* %14, i32 0, i32 0
  %16 = load %struct.dso*, %struct.dso** %15, align 8
  store %struct.dso* %16, %struct.dso** %10, align 8
  %17 = bitcast %struct.rb_root* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.rb_root* @RB_ROOT to i8*), i64 4, i1 false)
  %18 = load %struct.evsel*, %struct.evsel** %8, align 8
  %19 = call %struct.hists* @evsel__hists(%struct.evsel* %18)
  store %struct.hists* %19, %struct.hists** %12, align 8
  %20 = load %struct.symbol*, %struct.symbol** %6, align 8
  %21 = load %struct.map*, %struct.map** %7, align 8
  %22 = load %struct.evsel*, %struct.evsel** %8, align 8
  %23 = load %struct.annotation_options*, %struct.annotation_options** %9, align 8
  %24 = call i64 @symbol__annotate2(%struct.symbol* %20, %struct.map* %21, %struct.evsel* %22, %struct.annotation_options* %23, i32* null)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %70

27:                                               ; preds = %4
  %28 = load %struct.annotation_options*, %struct.annotation_options** %9, align 8
  %29 = getelementptr inbounds %struct.annotation_options, %struct.annotation_options* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load %struct.annotation_options*, %struct.annotation_options** %9, align 8
  %34 = getelementptr inbounds %struct.annotation_options, %struct.annotation_options* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* @srcline_full_filename, align 4
  %36 = load %struct.symbol*, %struct.symbol** %6, align 8
  %37 = load %struct.map*, %struct.map** %7, align 8
  %38 = load %struct.annotation_options*, %struct.annotation_options** %9, align 8
  %39 = call i32 @symbol__calc_lines(%struct.symbol* %36, %struct.map* %37, %struct.rb_root* %11, %struct.annotation_options* %38)
  %40 = load %struct.dso*, %struct.dso** %10, align 8
  %41 = getelementptr inbounds %struct.dso, %struct.dso* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @print_summary(%struct.rb_root* %11, i8* %42)
  br label %44

44:                                               ; preds = %32, %27
  %45 = load %struct.hists*, %struct.hists** %12, align 8
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %47 = call i32 @hists__scnprintf_title(%struct.hists* %45, i8* %46, i32 1024)
  %48 = load i32, i32* @stdout, align 4
  %49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %50 = load %struct.annotation_options*, %struct.annotation_options** %9, align 8
  %51 = getelementptr inbounds %struct.annotation_options, %struct.annotation_options* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i8* @percent_type_str(i32 %52)
  %54 = load %struct.symbol*, %struct.symbol** %6, align 8
  %55 = getelementptr inbounds %struct.symbol, %struct.symbol* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.dso*, %struct.dso** %10, align 8
  %58 = getelementptr inbounds %struct.dso, %struct.dso* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @fprintf(i32 %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %49, i8* %53, i8* %56, i8* %59)
  %61 = load %struct.symbol*, %struct.symbol** %6, align 8
  %62 = load i32, i32* @stdout, align 4
  %63 = load %struct.annotation_options*, %struct.annotation_options** %9, align 8
  %64 = call i32 @symbol__annotate_fprintf2(%struct.symbol* %61, i32 %62, %struct.annotation_options* %63)
  %65 = load %struct.symbol*, %struct.symbol** %6, align 8
  %66 = call %struct.TYPE_2__* @symbol__annotation(%struct.symbol* %65)
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @annotated_source__purge(i32 %68)
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %44, %26
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.hists* @evsel__hists(%struct.evsel*) #2

declare dso_local i64 @symbol__annotate2(%struct.symbol*, %struct.map*, %struct.evsel*, %struct.annotation_options*, i32*) #2

declare dso_local i32 @symbol__calc_lines(%struct.symbol*, %struct.map*, %struct.rb_root*, %struct.annotation_options*) #2

declare dso_local i32 @print_summary(%struct.rb_root*, i8*) #2

declare dso_local i32 @hists__scnprintf_title(%struct.hists*, i8*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*, i8*) #2

declare dso_local i8* @percent_type_str(i32) #2

declare dso_local i32 @symbol__annotate_fprintf2(%struct.symbol*, i32, %struct.annotation_options*) #2

declare dso_local i32 @annotated_source__purge(i32) #2

declare dso_local %struct.TYPE_2__* @symbol__annotation(%struct.symbol*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
