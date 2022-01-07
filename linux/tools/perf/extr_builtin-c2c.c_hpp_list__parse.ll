; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_hpp_list__parse.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_hpp_list__parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.perf_hpp_list = type { i32 }

@c2c_hists__init_output = common dso_local global i32 0, align 4
@c2c_hists__init_sort = common dso_local global i32 0, align 4
@hists = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_hpp_list*, i8*, i8*)* @hpp_list__parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpp_list__parse(%struct.perf_hpp_list* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.perf_hpp_list*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.perf_hpp_list* %0, %struct.perf_hpp_list** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @strdup(i8* %13)
  br label %16

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %15, %12
  %17 = phi i8* [ %14, %12 ], [ null, %15 ]
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i8*, i8** %6, align 8
  %22 = call i8* @strdup(i8* %21)
  br label %24

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %20
  %25 = phi i8* [ %22, %20 ], [ null, %23 ]
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* @c2c_hists__init_output, align 4
  %28 = call i32 @PARSE_LIST(i8* %26, i32 %27)
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* @c2c_hists__init_sort, align 4
  %31 = call i32 @PARSE_LIST(i8* %29, i32 %30)
  %32 = load %struct.perf_hpp_list*, %struct.perf_hpp_list** %4, align 8
  %33 = call i32 @perf_hpp__setup_output_field(%struct.perf_hpp_list* %32)
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @free(i8* %34)
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @free(i8* %36)
  %38 = load i32, i32* %9, align 4
  ret i32 %38
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @PARSE_LIST(i8*, i32) #1

declare dso_local i32 @perf_hpp__setup_output_field(%struct.perf_hpp_list*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
