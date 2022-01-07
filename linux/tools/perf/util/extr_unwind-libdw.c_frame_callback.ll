; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_unwind-libdw.c_frame_callback.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_unwind-libdw.c_frame_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_info = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@DWARF_CB_ABORT = common dso_local global i32 0, align 4
@DWARF_CB_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @frame_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @frame_callback(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.unwind_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.unwind_info*
  store %struct.unwind_info* %10, %struct.unwind_info** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @dwfl_frame_pc(i32* %11, i32* %7, i32* null)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = call i32 @dwfl_errmsg(i32 -1)
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @DWARF_CB_ABORT, align 4
  store i32 %17, i32* %3, align 4
  br label %52

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.unwind_info*, %struct.unwind_info** %6, align 8
  %21 = call i32 @report_module(i32 %19, %struct.unwind_info* %20)
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @dwfl_frame_pc(i32* %22, i32* %7, i32* %8)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = call i32 @dwfl_errmsg(i32 -1)
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @DWARF_CB_ABORT, align 4
  store i32 %28, i32* %3, align 4
  br label %52

29:                                               ; preds = %18
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.unwind_info*, %struct.unwind_info** %6, align 8
  %38 = call i64 @entry(i32 %36, %struct.unwind_info* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = load %struct.unwind_info*, %struct.unwind_info** %6, align 8
  %42 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %40, %35
  %47 = load i32, i32* @DWARF_CB_ABORT, align 4
  br label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @DWARF_CB_OK, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %25, %14
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @dwfl_frame_pc(i32*, i32*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @dwfl_errmsg(i32) #1

declare dso_local i32 @report_module(i32, %struct.unwind_info*) #1

declare dso_local i64 @entry(i32, %struct.unwind_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
