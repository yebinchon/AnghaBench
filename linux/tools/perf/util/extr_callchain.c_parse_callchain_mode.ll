; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_parse_callchain_mode.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_parse_callchain_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"graph\00", align 1
@CHAIN_GRAPH_ABS = common dso_local global i32 0, align 4
@callchain_param = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"flat\00", align 1
@CHAIN_FLAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"fractal\00", align 1
@CHAIN_GRAPH_REL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"folded\00", align 1
@CHAIN_FOLDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @parse_callchain_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_callchain_mode(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @strlen(i8* %5)
  %7 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @CHAIN_GRAPH_ABS, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @callchain_param, i32 0, i32 0), align 4
  store i32 0, i32* %2, align 4
  br label %36

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = call i32 @strncmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* @CHAIN_FLAT, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @callchain_param, i32 0, i32 0), align 4
  store i32 0, i32* %2, align 4
  br label %36

19:                                               ; preds = %11
  %20 = load i8*, i8** %3, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = call i32 @strncmp(i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @CHAIN_GRAPH_REL, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @callchain_param, i32 0, i32 0), align 4
  store i32 0, i32* %2, align 4
  br label %36

27:                                               ; preds = %19
  %28 = load i8*, i8** %3, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = call i32 @strncmp(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @CHAIN_FOLDED, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @callchain_param, i32 0, i32 0), align 4
  store i32 0, i32* %2, align 4
  br label %36

35:                                               ; preds = %27
  store i32 -1, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %33, %25, %17, %9
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
