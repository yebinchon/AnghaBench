; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_scripts.c_attr_to_script.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_scripts.c_attr_to_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_attr = type { i32, i32 }

@PERF_FORMAT_GROUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c" -F +metric\00", align 1
@PERF_SAMPLE_BRANCH_STACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c" -F +brstackinsn --xed\00", align 1
@PERF_SAMPLE_REGS_INTR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c" -F +iregs\00", align 1
@PERF_SAMPLE_REGS_USER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c" -F +uregs\00", align 1
@PERF_SAMPLE_PHYS_ADDR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c" -F +phys_addr\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @attr_to_script(i8* %0, %struct.perf_event_attr* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.perf_event_attr*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.perf_event_attr* %1, %struct.perf_event_attr** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 0
  store i8 0, i8* %6, align 1
  %7 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %8 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @PERF_FORMAT_GROUP, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @strcat(i8* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %18 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PERF_SAMPLE_BRANCH_STACK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @strcat(i8* %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %16
  %27 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %28 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PERF_SAMPLE_REGS_INTR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @strcat(i8* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %26
  %37 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %38 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PERF_SAMPLE_REGS_USER, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @strcat(i8* %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %36
  %47 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %48 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PERF_SAMPLE_PHYS_ADDR, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i8*, i8** %3, align 8
  %55 = call i32 @strcat(i8* %54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %46
  ret void
}

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
