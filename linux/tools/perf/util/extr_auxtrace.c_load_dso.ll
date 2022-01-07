; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_load_dso.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_load_dso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i32 }
%struct.map = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"File '%s' not found or has no symbols.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dso* (i8*)* @load_dso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dso* @load_dso(i8* %0) #0 {
  %2 = alloca %struct.dso*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.map*, align 8
  %5 = alloca %struct.dso*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call %struct.map* @dso__new_map(i8* %6)
  store %struct.map* %7, %struct.map** %4, align 8
  %8 = load %struct.map*, %struct.map** %4, align 8
  %9 = icmp ne %struct.map* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.dso* null, %struct.dso** %2, align 8
  br label %26

11:                                               ; preds = %1
  %12 = load %struct.map*, %struct.map** %4, align 8
  %13 = call i64 @map__load(%struct.map* %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %15, %11
  %19 = load %struct.map*, %struct.map** %4, align 8
  %20 = getelementptr inbounds %struct.map, %struct.map* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.dso* @dso__get(i32 %21)
  store %struct.dso* %22, %struct.dso** %5, align 8
  %23 = load %struct.map*, %struct.map** %4, align 8
  %24 = call i32 @map__put(%struct.map* %23)
  %25 = load %struct.dso*, %struct.dso** %5, align 8
  store %struct.dso* %25, %struct.dso** %2, align 8
  br label %26

26:                                               ; preds = %18, %10
  %27 = load %struct.dso*, %struct.dso** %2, align 8
  ret %struct.dso* %27
}

declare dso_local %struct.map* @dso__new_map(i8*) #1

declare dso_local i64 @map__load(%struct.map*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local %struct.dso* @dso__get(i32) #1

declare dso_local i32 @map__put(%struct.map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
