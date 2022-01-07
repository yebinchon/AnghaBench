; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_hist_entry__get_srcfile.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_hist_entry__get_srcfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.map* }
%struct.map = type { i32 }

@no_srcfile = common dso_local global i8* null, align 8
@SRCLINE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.hist_entry*)* @hist_entry__get_srcfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hist_entry__get_srcfile(%struct.hist_entry* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hist_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.map*, align 8
  store %struct.hist_entry* %0, %struct.hist_entry** %3, align 8
  %7 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %8 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.map*, %struct.map** %9, align 8
  store %struct.map* %10, %struct.map** %6, align 8
  %11 = load %struct.map*, %struct.map** %6, align 8
  %12 = icmp ne %struct.map* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i8*, i8** @no_srcfile, align 8
  store i8* %14, i8** %2, align 8
  br label %55

15:                                               ; preds = %1
  %16 = load %struct.map*, %struct.map** %6, align 8
  %17 = getelementptr inbounds %struct.map, %struct.map* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.map*, %struct.map** %6, align 8
  %20 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %21 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @map__rip_2objdump(%struct.map* %19, i32 %22)
  %24 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %25 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %29 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i8* @__get_srcline(i32 %18, i32 %23, i32 %27, i32 0, i32 1, i32 1, i32 %30)
  store i8* %31, i8** %4, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* @SRCLINE_UNKNOWN, align 4
  %34 = call i32 @strcmp(i8* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %15
  %37 = load i8*, i8** @no_srcfile, align 8
  store i8* %37, i8** %2, align 8
  br label %55

38:                                               ; preds = %15
  %39 = load i8*, i8** %4, align 8
  %40 = call i8* @strchr(i8* %39, i8 signext 58)
  store i8* %40, i8** %5, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load i8*, i8** %4, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i8*, i8** %5, align 8
  store i8 0, i8* %49, align 1
  %50 = load i8*, i8** %4, align 8
  store i8* %50, i8** %2, align 8
  br label %55

51:                                               ; preds = %43, %38
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @free(i8* %52)
  %54 = load i8*, i8** @no_srcfile, align 8
  store i8* %54, i8** %2, align 8
  br label %55

55:                                               ; preds = %51, %48, %36, %13
  %56 = load i8*, i8** %2, align 8
  ret i8* %56
}

declare dso_local i8* @__get_srcline(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @map__rip_2objdump(%struct.map*, i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
