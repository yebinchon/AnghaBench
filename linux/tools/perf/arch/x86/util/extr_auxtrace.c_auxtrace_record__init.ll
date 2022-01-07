; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_auxtrace.c_auxtrace_record__init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_auxtrace.c_auxtrace_record__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auxtrace_record = type { i32 }
%struct.evlist = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"GenuineIntel,\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.auxtrace_record* @auxtrace_record__init(%struct.evlist* %0, i32* %1) #0 {
  %3 = alloca %struct.auxtrace_record*, align 8
  %4 = alloca %struct.evlist*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca i32, align 4
  store %struct.evlist* %0, %struct.evlist** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %10 = call i32 @get_cpuid(i8* %9, i32 64)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  %15 = load i32*, i32** %5, align 8
  store i32 %14, i32* %15, align 4
  store %struct.auxtrace_record* null, %struct.auxtrace_record** %3, align 8
  br label %25

16:                                               ; preds = %2
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %18 = call i32 @strncmp(i8* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 13)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load %struct.evlist*, %struct.evlist** %4, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call %struct.auxtrace_record* @auxtrace_record__init_intel(%struct.evlist* %21, i32* %22)
  store %struct.auxtrace_record* %23, %struct.auxtrace_record** %3, align 8
  br label %25

24:                                               ; preds = %16
  store %struct.auxtrace_record* null, %struct.auxtrace_record** %3, align 8
  br label %25

25:                                               ; preds = %24, %20, %13
  %26 = load %struct.auxtrace_record*, %struct.auxtrace_record** %3, align 8
  ret %struct.auxtrace_record* %26
}

declare dso_local i32 @get_cpuid(i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local %struct.auxtrace_record* @auxtrace_record__init_intel(%struct.evlist*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
