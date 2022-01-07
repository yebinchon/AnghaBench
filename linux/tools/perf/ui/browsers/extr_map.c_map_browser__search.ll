; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_map.c_map_browser__search.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_map.c_map_browser__search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_browser = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32* }
%struct.symbol = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Search by name/addr\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Prefix with 0x to search by address\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"ENTER: OK, ESC: Cancel\00", align 1
@K_ENTER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"%s not found!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.map_browser*)* @map_browser__search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_browser__search(%struct.map_browser* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.map_browser*, align 8
  %4 = alloca [512 x i8], align 16
  %5 = alloca %struct.symbol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.map_browser* %0, %struct.map_browser** %3, align 8
  %9 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %10 = call i32 @ui_browser__input_window(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @K_ENTER, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %63

15:                                               ; preds = %1
  %16 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %17 = load i8, i8* %16, align 16
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 48
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = call signext i8 @tolower(i8 signext %22)
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 120
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %28 = call i32 @strtoull(i8* %27, i32* null, i32 16)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.map_browser*, %struct.map_browser** %3, align 8
  %30 = getelementptr inbounds %struct.map_browser, %struct.map_browser* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call %struct.symbol* @map__find_symbol(i32 %31, i32 %32)
  store %struct.symbol* %33, %struct.symbol** %5, align 8
  br label %40

34:                                               ; preds = %20, %15
  %35 = load %struct.map_browser*, %struct.map_browser** %3, align 8
  %36 = getelementptr inbounds %struct.map_browser, %struct.map_browser* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %39 = call %struct.symbol* @map__find_symbol_by_name(i32 %37, i8* %38)
  store %struct.symbol* %39, %struct.symbol** %5, align 8
  br label %40

40:                                               ; preds = %34, %26
  %41 = load %struct.symbol*, %struct.symbol** %5, align 8
  %42 = icmp ne %struct.symbol* %41, null
  br i1 %42, label %43, label %59

43:                                               ; preds = %40
  %44 = load %struct.symbol*, %struct.symbol** %5, align 8
  %45 = call i32* @symbol__browser_index(%struct.symbol* %44)
  store i32* %45, i32** %8, align 8
  %46 = load %struct.symbol*, %struct.symbol** %5, align 8
  %47 = getelementptr inbounds %struct.symbol, %struct.symbol* %46, i32 0, i32 0
  %48 = load %struct.map_browser*, %struct.map_browser** %3, align 8
  %49 = getelementptr inbounds %struct.map_browser, %struct.map_browser* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  store i32* %47, i32** %50, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.map_browser*, %struct.map_browser** %3, align 8
  %54 = getelementptr inbounds %struct.map_browser, %struct.map_browser* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load %struct.map_browser*, %struct.map_browser** %3, align 8
  %57 = getelementptr inbounds %struct.map_browser, %struct.map_browser* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 %52, i32* %58, align 4
  br label %62

59:                                               ; preds = %40
  %60 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %61 = call i32 @ui_helpline__fpush(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %59, %43
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %14
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @ui_browser__input_window(i8*, i8*, i8*, i8*, i32) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i32 @strtoull(i8*, i32*, i32) #1

declare dso_local %struct.symbol* @map__find_symbol(i32, i32) #1

declare dso_local %struct.symbol* @map__find_symbol_by_name(i32, i8*) #1

declare dso_local i32* @symbol__browser_index(%struct.symbol*) #1

declare dso_local i32 @ui_helpline__fpush(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
