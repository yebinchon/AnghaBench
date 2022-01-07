; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_get_hist_field_flags.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_get_hist_field_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_field = type { i32 }

@HIST_FIELD_FL_HEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@HIST_FIELD_FL_SYM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"sym\00", align 1
@HIST_FIELD_FL_SYM_OFFSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"sym-offset\00", align 1
@HIST_FIELD_FL_EXECNAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"execname\00", align 1
@HIST_FIELD_FL_SYSCALL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"syscall\00", align 1
@HIST_FIELD_FL_LOG2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"log2\00", align 1
@HIST_FIELD_FL_TIMESTAMP_USECS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"usecs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.hist_field*)* @get_hist_field_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_hist_field_flags(%struct.hist_field* %0) #0 {
  %2 = alloca %struct.hist_field*, align 8
  %3 = alloca i8*, align 8
  store %struct.hist_field* %0, %struct.hist_field** %2, align 8
  store i8* null, i8** %3, align 8
  %4 = load %struct.hist_field*, %struct.hist_field** %2, align 8
  %5 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @HIST_FIELD_FL_HEX, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %65

11:                                               ; preds = %1
  %12 = load %struct.hist_field*, %struct.hist_field** %2, align 8
  %13 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @HIST_FIELD_FL_SYM, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %64

19:                                               ; preds = %11
  %20 = load %struct.hist_field*, %struct.hist_field** %2, align 8
  %21 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @HIST_FIELD_FL_SYM_OFFSET, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %63

27:                                               ; preds = %19
  %28 = load %struct.hist_field*, %struct.hist_field** %2, align 8
  %29 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @HIST_FIELD_FL_EXECNAME, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %62

35:                                               ; preds = %27
  %36 = load %struct.hist_field*, %struct.hist_field** %2, align 8
  %37 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @HIST_FIELD_FL_SYSCALL, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %61

43:                                               ; preds = %35
  %44 = load %struct.hist_field*, %struct.hist_field** %2, align 8
  %45 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @HIST_FIELD_FL_LOG2, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %60

51:                                               ; preds = %43
  %52 = load %struct.hist_field*, %struct.hist_field** %2, align 8
  %53 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @HIST_FIELD_FL_TIMESTAMP_USECS, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %59

59:                                               ; preds = %58, %51
  br label %60

60:                                               ; preds = %59, %50
  br label %61

61:                                               ; preds = %60, %42
  br label %62

62:                                               ; preds = %61, %34
  br label %63

63:                                               ; preds = %62, %26
  br label %64

64:                                               ; preds = %63, %18
  br label %65

65:                                               ; preds = %64, %10
  %66 = load i8*, i8** %3, align 8
  ret i8* %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
