; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_c2c_hists__init_sort.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_c2c_hists__init_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2c_dimension = type { i32 }
%struct.perf_hpp_list = type { i32 }
%struct.c2c_fmt = type { i32, %struct.c2c_dimension* }

@dim_dso = common dso_local global %struct.c2c_dimension zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_hpp_list*, i8*)* @c2c_hists__init_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c2c_hists__init_sort(%struct.perf_hpp_list* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_hpp_list*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.c2c_fmt*, align 8
  %7 = alloca %struct.c2c_dimension*, align 8
  store %struct.perf_hpp_list* %0, %struct.perf_hpp_list** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call %struct.c2c_fmt* @get_format(i8* %8)
  store %struct.c2c_fmt* %9, %struct.c2c_fmt** %6, align 8
  %10 = load %struct.c2c_fmt*, %struct.c2c_fmt** %6, align 8
  %11 = icmp ne %struct.c2c_fmt* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = call i32 (...) @reset_dimensions()
  %14 = load %struct.perf_hpp_list*, %struct.perf_hpp_list** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @sort_dimension__add(%struct.perf_hpp_list* %14, i8* %15, i32* null, i32 0)
  store i32 %16, i32* %3, align 4
  br label %31

17:                                               ; preds = %2
  %18 = load %struct.c2c_fmt*, %struct.c2c_fmt** %6, align 8
  %19 = getelementptr inbounds %struct.c2c_fmt, %struct.c2c_fmt* %18, i32 0, i32 1
  %20 = load %struct.c2c_dimension*, %struct.c2c_dimension** %19, align 8
  store %struct.c2c_dimension* %20, %struct.c2c_dimension** %7, align 8
  %21 = load %struct.c2c_dimension*, %struct.c2c_dimension** %7, align 8
  %22 = icmp eq %struct.c2c_dimension* %21, @dim_dso
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.perf_hpp_list*, %struct.perf_hpp_list** %4, align 8
  %25 = getelementptr inbounds %struct.perf_hpp_list, %struct.perf_hpp_list* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %23, %17
  %27 = load %struct.perf_hpp_list*, %struct.perf_hpp_list** %4, align 8
  %28 = load %struct.c2c_fmt*, %struct.c2c_fmt** %6, align 8
  %29 = getelementptr inbounds %struct.c2c_fmt, %struct.c2c_fmt* %28, i32 0, i32 0
  %30 = call i32 @perf_hpp_list__register_sort_field(%struct.perf_hpp_list* %27, i32* %29)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %26, %12
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.c2c_fmt* @get_format(i8*) #1

declare dso_local i32 @reset_dimensions(...) #1

declare dso_local i32 @sort_dimension__add(%struct.perf_hpp_list*, i8*, i32*, i32) #1

declare dso_local i32 @perf_hpp_list__register_sort_field(%struct.perf_hpp_list*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
