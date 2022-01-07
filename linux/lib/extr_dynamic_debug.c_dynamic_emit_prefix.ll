; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_dynamic_debug.c_dynamic_emit_prefix.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_dynamic_debug.c_dynamic_emit_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ddebug = type { i32, i8*, i8*, i32 }

@_DPRINTK_FLAGS_INCL_TID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"<intr> \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"[%d] \00", align 1
@current = common dso_local global i32 0, align 4
@_DPRINTK_FLAGS_INCL_MODNAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@_DPRINTK_FLAGS_INCL_FUNCNAME = common dso_local global i32 0, align 4
@_DPRINTK_FLAGS_INCL_LINENO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%d:\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@PREFIX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct._ddebug*, i8*)* @dynamic_emit_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dynamic_emit_prefix(%struct._ddebug* %0, i8* %1) #0 {
  %3 = alloca %struct._ddebug*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._ddebug* %0, %struct._ddebug** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i8*, i8** %4, align 8
  store i8 0, i8* %7, align 1
  %8 = load %struct._ddebug*, %struct._ddebug** %3, align 8
  %9 = getelementptr inbounds %struct._ddebug, %struct._ddebug* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @_DPRINTK_FLAGS_INCL_TID, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %44

14:                                               ; preds = %2
  %15 = call i64 (...) @in_interrupt()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @remaining(i32 %22)
  %24 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %21, i32 %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %6, align 4
  br label %43

29:                                               ; preds = %14
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @remaining(i32 %34)
  %36 = load i32, i32* @current, align 4
  %37 = call i32 @task_pid_vnr(i32 %36)
  %38 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %33, i32 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %29, %17
  br label %44

44:                                               ; preds = %43, %2
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %5, align 4
  %46 = load %struct._ddebug*, %struct._ddebug** %3, align 8
  %47 = getelementptr inbounds %struct._ddebug, %struct._ddebug* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @_DPRINTK_FLAGS_INCL_MODNAME, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %44
  %53 = load i8*, i8** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @remaining(i32 %57)
  %59 = load %struct._ddebug*, %struct._ddebug** %3, align 8
  %60 = getelementptr inbounds %struct._ddebug, %struct._ddebug* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %56, i32 %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %61)
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %52, %44
  %68 = load %struct._ddebug*, %struct._ddebug** %3, align 8
  %69 = getelementptr inbounds %struct._ddebug, %struct._ddebug* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @_DPRINTK_FLAGS_INCL_FUNCNAME, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %67
  %75 = load i8*, i8** %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @remaining(i32 %79)
  %81 = load %struct._ddebug*, %struct._ddebug** %3, align 8
  %82 = getelementptr inbounds %struct._ddebug, %struct._ddebug* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %78, i32 %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %83)
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %74, %67
  %90 = load %struct._ddebug*, %struct._ddebug** %3, align 8
  %91 = getelementptr inbounds %struct._ddebug, %struct._ddebug* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @_DPRINTK_FLAGS_INCL_LINENO, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %89
  %97 = load i8*, i8** %4, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @remaining(i32 %101)
  %103 = load %struct._ddebug*, %struct._ddebug** %3, align 8
  %104 = getelementptr inbounds %struct._ddebug, %struct._ddebug* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %100, i32 %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %108, %106
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %96, %89
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %5, align 4
  %114 = sub nsw i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %111
  %117 = load i8*, i8** %4, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @remaining(i32 %121)
  %123 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %120, i32 %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %125, %123
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %116, %111
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @PREFIX_SIZE, align 4
  %131 = icmp sge i32 %129, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %128
  %133 = load i8*, i8** %4, align 8
  %134 = load i32, i32* @PREFIX_SIZE, align 4
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %133, i64 %136
  store i8 0, i8* %137, align 1
  br label %138

138:                                              ; preds = %132, %128
  %139 = load i8*, i8** %4, align 8
  ret i8* %139
}

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @remaining(i32) #1

declare dso_local i32 @task_pid_vnr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
