; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/bench/extr_parse.c_prepare_default_config.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/bench/extr_parse.c_prepare_default_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64 }

@.str = private unnamed_addr constant [18 x i8] c"loading defaults\0A\00", align 1
@SCHED_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"ondemand\00", align 1
@stdout = common dso_local global i32 0, align 4
@DEFAULT_CONFIG_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.config* @prepare_default_config() #0 {
  %1 = alloca %struct.config*, align 8
  %2 = call %struct.config* @malloc(i32 56)
  store %struct.config* %2, %struct.config** %1, align 8
  %3 = call i32 @dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.config*, %struct.config** %1, align 8
  %5 = getelementptr inbounds %struct.config, %struct.config* %4, i32 0, i32 0
  store i32 500000, i32* %5, align 8
  %6 = load %struct.config*, %struct.config** %1, align 8
  %7 = getelementptr inbounds %struct.config, %struct.config* %6, i32 0, i32 1
  store i32 500000, i32* %7, align 4
  %8 = load %struct.config*, %struct.config** %1, align 8
  %9 = getelementptr inbounds %struct.config, %struct.config* %8, i32 0, i32 2
  store i32 500000, i32* %9, align 8
  %10 = load %struct.config*, %struct.config** %1, align 8
  %11 = getelementptr inbounds %struct.config, %struct.config* %10, i32 0, i32 3
  store i32 500000, i32* %11, align 4
  %12 = load %struct.config*, %struct.config** %1, align 8
  %13 = getelementptr inbounds %struct.config, %struct.config* %12, i32 0, i32 4
  store i32 5, i32* %13, align 8
  %14 = load %struct.config*, %struct.config** %1, align 8
  %15 = getelementptr inbounds %struct.config, %struct.config* %14, i32 0, i32 5
  store i32 50, i32* %15, align 4
  %16 = load %struct.config*, %struct.config** %1, align 8
  %17 = getelementptr inbounds %struct.config, %struct.config* %16, i32 0, i32 10
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @SCHED_HIGH, align 4
  %19 = load %struct.config*, %struct.config** %1, align 8
  %20 = getelementptr inbounds %struct.config, %struct.config* %19, i32 0, i32 9
  store i32 %18, i32* %20, align 8
  %21 = load %struct.config*, %struct.config** %1, align 8
  %22 = getelementptr inbounds %struct.config, %struct.config* %21, i32 0, i32 8
  store i64 0, i64* %22, align 8
  %23 = load %struct.config*, %struct.config** %1, align 8
  %24 = getelementptr inbounds %struct.config, %struct.config* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @strncpy(i32 %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %27 = load i32, i32* @stdout, align 4
  %28 = load %struct.config*, %struct.config** %1, align 8
  %29 = getelementptr inbounds %struct.config, %struct.config* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  %30 = load %struct.config*, %struct.config** %1, align 8
  ret %struct.config* %30
}

declare dso_local %struct.config* @malloc(i32) #1

declare dso_local i32 @dprintf(i8*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
