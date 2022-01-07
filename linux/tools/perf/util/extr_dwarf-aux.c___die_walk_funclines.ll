; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_dwarf-aux.c___die_walk_funclines.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_dwarf-aux.c___die_walk_funclines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__line_walk_param = type { i32, i64 (i8*, i32, i32, i8*)*, i8*, i64 }

@__die_walk_funclines_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64 (i8*, i32, i32, i8*)*, i8*)* @__die_walk_funclines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__die_walk_funclines(i32* %0, i32 %1, i64 (i8*, i32, i32, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64 (i8*, i32, i32, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.__line_walk_param, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 (i8*, i32, i32, i8*)* %2, i64 (i8*, i32, i32, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = getelementptr inbounds %struct.__line_walk_param, %struct.__line_walk_param* %9, i32 0, i32 0
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %14, align 8
  %16 = getelementptr inbounds %struct.__line_walk_param, %struct.__line_walk_param* %9, i32 0, i32 1
  %17 = load i64 (i8*, i32, i32, i8*)*, i64 (i8*, i32, i32, i8*)** %7, align 8
  store i64 (i8*, i32, i32, i8*)* %17, i64 (i8*, i32, i32, i8*)** %16, align 8
  %18 = getelementptr inbounds %struct.__line_walk_param, %struct.__line_walk_param* %9, i32 0, i32 2
  %19 = load i8*, i8** %8, align 8
  store i8* %19, i8** %18, align 8
  %20 = getelementptr inbounds %struct.__line_walk_param, %struct.__line_walk_param* %9, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i8* @dwarf_decl_file(i32* %21)
  store i8* %22, i8** %12, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %46

25:                                               ; preds = %4
  %26 = load i32*, i32** %5, align 8
  %27 = call i64 @dwarf_decl_line(i32* %26, i32* %13)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %25
  %30 = load i32*, i32** %5, align 8
  %31 = call i64 @dwarf_entrypc(i32* %30, i32* %11)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load i64 (i8*, i32, i32, i8*)*, i64 (i8*, i32, i32, i8*)** %7, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = call i64 %34(i8* %35, i32 %36, i32 %37, i8* %38)
  %40 = getelementptr inbounds %struct.__line_walk_param, %struct.__line_walk_param* %9, i32 0, i32 3
  store i64 %39, i64* %40, align 8
  %41 = getelementptr inbounds %struct.__line_walk_param, %struct.__line_walk_param* %9, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %50

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45, %29, %25, %4
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* @__die_walk_funclines_cb, align 4
  %49 = call i32 @die_find_child(i32* %47, i32 %48, %struct.__line_walk_param* %9, i32* %10)
  br label %50

50:                                               ; preds = %46, %44
  %51 = getelementptr inbounds %struct.__line_walk_param, %struct.__line_walk_param* %9, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  ret i32 %53
}

declare dso_local i8* @dwarf_decl_file(i32*) #1

declare dso_local i64 @dwarf_decl_line(i32*, i32*) #1

declare dso_local i64 @dwarf_entrypc(i32*, i32*) #1

declare dso_local i32 @die_find_child(i32*, i32, %struct.__line_walk_param*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
