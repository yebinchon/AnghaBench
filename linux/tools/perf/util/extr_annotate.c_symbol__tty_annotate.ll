; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_symbol__tty_annotate.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_symbol__tty_annotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_root = type { i32 }
%struct.symbol = type { i32 }
%struct.map = type { %struct.dso* }
%struct.dso = type { i32 }
%struct.evsel = type { i32 }
%struct.annotation_options = type { i32, i64 }
%struct.TYPE_2__ = type { i32 }

@RB_ROOT = common dso_local global %struct.rb_root zeroinitializer, align 4
@srcline_full_filename = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @symbol__tty_annotate(%struct.symbol* %0, %struct.map* %1, %struct.evsel* %2, %struct.annotation_options* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca %struct.map*, align 8
  %8 = alloca %struct.evsel*, align 8
  %9 = alloca %struct.annotation_options*, align 8
  %10 = alloca %struct.dso*, align 8
  %11 = alloca %struct.rb_root, align 4
  store %struct.symbol* %0, %struct.symbol** %6, align 8
  store %struct.map* %1, %struct.map** %7, align 8
  store %struct.evsel* %2, %struct.evsel** %8, align 8
  store %struct.annotation_options* %3, %struct.annotation_options** %9, align 8
  %12 = load %struct.map*, %struct.map** %7, align 8
  %13 = getelementptr inbounds %struct.map, %struct.map* %12, i32 0, i32 0
  %14 = load %struct.dso*, %struct.dso** %13, align 8
  store %struct.dso* %14, %struct.dso** %10, align 8
  %15 = bitcast %struct.rb_root* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.rb_root* @RB_ROOT to i8*), i64 4, i1 false)
  %16 = load %struct.symbol*, %struct.symbol** %6, align 8
  %17 = load %struct.map*, %struct.map** %7, align 8
  %18 = load %struct.evsel*, %struct.evsel** %8, align 8
  %19 = load %struct.annotation_options*, %struct.annotation_options** %9, align 8
  %20 = call i64 @symbol__annotate(%struct.symbol* %16, %struct.map* %17, %struct.evsel* %18, i32 0, %struct.annotation_options* %19, i32* null)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %54

23:                                               ; preds = %4
  %24 = load %struct.symbol*, %struct.symbol** %6, align 8
  %25 = load %struct.evsel*, %struct.evsel** %8, align 8
  %26 = call i32 @symbol__calc_percent(%struct.symbol* %24, %struct.evsel* %25)
  %27 = load %struct.annotation_options*, %struct.annotation_options** %9, align 8
  %28 = getelementptr inbounds %struct.annotation_options, %struct.annotation_options* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %23
  %32 = load %struct.annotation_options*, %struct.annotation_options** %9, align 8
  %33 = getelementptr inbounds %struct.annotation_options, %struct.annotation_options* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* @srcline_full_filename, align 4
  %35 = load %struct.symbol*, %struct.symbol** %6, align 8
  %36 = load %struct.map*, %struct.map** %7, align 8
  %37 = load %struct.annotation_options*, %struct.annotation_options** %9, align 8
  %38 = call i32 @symbol__calc_lines(%struct.symbol* %35, %struct.map* %36, %struct.rb_root* %11, %struct.annotation_options* %37)
  %39 = load %struct.dso*, %struct.dso** %10, align 8
  %40 = getelementptr inbounds %struct.dso, %struct.dso* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @print_summary(%struct.rb_root* %11, i32 %41)
  br label %43

43:                                               ; preds = %31, %23
  %44 = load %struct.symbol*, %struct.symbol** %6, align 8
  %45 = load %struct.map*, %struct.map** %7, align 8
  %46 = load %struct.evsel*, %struct.evsel** %8, align 8
  %47 = load %struct.annotation_options*, %struct.annotation_options** %9, align 8
  %48 = call i32 @symbol__annotate_printf(%struct.symbol* %44, %struct.map* %45, %struct.evsel* %46, %struct.annotation_options* %47)
  %49 = load %struct.symbol*, %struct.symbol** %6, align 8
  %50 = call %struct.TYPE_2__* @symbol__annotation(%struct.symbol* %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @annotated_source__purge(i32 %52)
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %43, %22
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @symbol__annotate(%struct.symbol*, %struct.map*, %struct.evsel*, i32, %struct.annotation_options*, i32*) #2

declare dso_local i32 @symbol__calc_percent(%struct.symbol*, %struct.evsel*) #2

declare dso_local i32 @symbol__calc_lines(%struct.symbol*, %struct.map*, %struct.rb_root*, %struct.annotation_options*) #2

declare dso_local i32 @print_summary(%struct.rb_root*, i32) #2

declare dso_local i32 @symbol__annotate_printf(%struct.symbol*, %struct.map*, %struct.evsel*, %struct.annotation_options*) #2

declare dso_local i32 @annotated_source__purge(i32) #2

declare dso_local %struct.TYPE_2__* @symbol__annotation(%struct.symbol*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
