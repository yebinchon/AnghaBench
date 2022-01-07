; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_print_cacheline.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_print_cacheline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2c_hists = type { i32 }
%struct.hist_entry = type { i32 }
%struct.perf_hpp_list = type { i32 }
%struct.perf_hpp = type { i8*, i32 }

@print_cacheline.once = internal global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"  -------------------------------------------------------------\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c2c_hists*, %struct.hist_entry*, %struct.perf_hpp_list*, i32*)* @print_cacheline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_cacheline(%struct.c2c_hists* %0, %struct.hist_entry* %1, %struct.perf_hpp_list* %2, i32* %3) #0 {
  %5 = alloca %struct.c2c_hists*, align 8
  %6 = alloca %struct.hist_entry*, align 8
  %7 = alloca %struct.perf_hpp_list*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [1000 x i8], align 16
  %10 = alloca %struct.perf_hpp, align 8
  store %struct.c2c_hists* %0, %struct.c2c_hists** %5, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %6, align 8
  store %struct.perf_hpp_list* %2, %struct.perf_hpp_list** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = getelementptr inbounds %struct.perf_hpp, %struct.perf_hpp* %10, i32 0, i32 0
  %12 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  store i8* %12, i8** %11, align 8
  %13 = getelementptr inbounds %struct.perf_hpp, %struct.perf_hpp* %10, i32 0, i32 1
  store i32 1000, i32* %13, align 8
  %14 = load i32, i32* @print_cacheline.once, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %4
  %17 = load %struct.c2c_hists*, %struct.c2c_hists** %5, align 8
  %18 = getelementptr inbounds %struct.c2c_hists, %struct.c2c_hists* %17, i32 0, i32 0
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @hists__fprintf_headers(i32* %18, i32* %19)
  store i32 1, i32* @print_cacheline.once, align 4
  br label %24

21:                                               ; preds = %4
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 (i32*, i8*, ...) @fprintf(i32* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %16
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 (i32*, i8*, ...) @fprintf(i32* %25, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.hist_entry*, %struct.hist_entry** %6, align 8
  %28 = load %struct.perf_hpp_list*, %struct.perf_hpp_list** %7, align 8
  %29 = call i32 @__hist_entry__snprintf(%struct.hist_entry* %27, %struct.perf_hpp* %10, %struct.perf_hpp_list* %28)
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds [1000 x i8], [1000 x i8]* %9, i64 0, i64 0
  %32 = call i32 (i32*, i8*, ...) @fprintf(i32* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 (i32*, i8*, ...) @fprintf(i32* %33, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.c2c_hists*, %struct.c2c_hists** %5, align 8
  %36 = getelementptr inbounds %struct.c2c_hists, %struct.c2c_hists* %35, i32 0, i32 0
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @hists__fprintf(i32* %36, i32 0, i32 0, i32 0, i32 0, i32* %37, i32 0)
  ret void
}

declare dso_local i32 @hists__fprintf_headers(i32*, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @__hist_entry__snprintf(%struct.hist_entry*, %struct.perf_hpp*, %struct.perf_hpp_list*) #1

declare dso_local i32 @hists__fprintf(i32*, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
