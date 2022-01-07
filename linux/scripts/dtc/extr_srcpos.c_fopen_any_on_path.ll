; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_srcpos.c_fopen_any_on_path.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_srcpos.c_fopen_any_on_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.search_path = type { i8*, %struct.search_path* }

@current_srcfile = common dso_local global %struct.TYPE_2__* null, align 8
@search_path_head = common dso_local global %struct.search_path* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32**)* @fopen_any_on_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fopen_any_on_path(i8* %0, i32** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.search_path*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32** %1, i32*** %4, align 8
  store i8* null, i8** %5, align 8
  %8 = load i32**, i32*** %4, align 8
  %9 = call i32 @assert(i32** %8)
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_srcfile, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_srcfile, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %5, align 8
  br label %16

16:                                               ; preds = %12, %2
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = load i32**, i32*** %4, align 8
  %20 = call i8* @try_open(i8* %17, i8* %18, i32** %19)
  store i8* %20, i8** %7, align 8
  %21 = load %struct.search_path*, %struct.search_path** @search_path_head, align 8
  store %struct.search_path* %21, %struct.search_path** %6, align 8
  br label %22

22:                                               ; preds = %38, %16
  %23 = load i32**, i32*** %4, align 8
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load %struct.search_path*, %struct.search_path** %6, align 8
  %28 = icmp ne %struct.search_path* %27, null
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi i1 [ false, %22 ], [ %28, %26 ]
  br i1 %30, label %31, label %42

31:                                               ; preds = %29
  %32 = load %struct.search_path*, %struct.search_path** %6, align 8
  %33 = getelementptr inbounds %struct.search_path, %struct.search_path* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = load i32**, i32*** %4, align 8
  %37 = call i8* @try_open(i8* %34, i8* %35, i32** %36)
  store i8* %37, i8** %7, align 8
  br label %38

38:                                               ; preds = %31
  %39 = load %struct.search_path*, %struct.search_path** %6, align 8
  %40 = getelementptr inbounds %struct.search_path, %struct.search_path* %39, i32 0, i32 1
  %41 = load %struct.search_path*, %struct.search_path** %40, align 8
  store %struct.search_path* %41, %struct.search_path** %6, align 8
  br label %22

42:                                               ; preds = %29
  %43 = load i8*, i8** %7, align 8
  ret i8* %43
}

declare dso_local i32 @assert(i32**) #1

declare dso_local i8* @try_open(i8*, i8*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
