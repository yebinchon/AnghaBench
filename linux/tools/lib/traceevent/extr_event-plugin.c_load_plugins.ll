; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-plugin.c_load_plugins.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-plugin.c_load_plugins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_handle = type { i32 }

@TEP_DISABLE_PLUGINS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"TRACEEVENT_PLUGIN_DIR\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@LOCAL_PLUGIN_DIR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"could not allocate plugin memory\0A\00", align 1
@PLUGIN_DIR = common dso_local global i8* null, align 8
@TEP_DISABLE_SYS_PLUGINS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tep_handle*, i8*, void (%struct.tep_handle*, i8*, i8*, i8*)*, i8*)* @load_plugins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_plugins(%struct.tep_handle* %0, i8* %1, void (%struct.tep_handle*, i8*, i8*, i8*)* %2, i8* %3) #0 {
  %5 = alloca %struct.tep_handle*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca void (%struct.tep_handle*, i8*, i8*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.tep_handle* %0, %struct.tep_handle** %5, align 8
  store i8* %1, i8** %6, align 8
  store void (%struct.tep_handle*, i8*, i8*, i8*)* %2, void (%struct.tep_handle*, i8*, i8*, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.tep_handle*, %struct.tep_handle** %5, align 8
  %14 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @TEP_DISABLE_PLUGINS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %53

20:                                               ; preds = %4
  %21 = call i8* @getenv(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %11, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load %struct.tep_handle*, %struct.tep_handle** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = load void (%struct.tep_handle*, i8*, i8*, i8*)*, void (%struct.tep_handle*, i8*, i8*, i8*)** %7, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @load_plugins_dir(%struct.tep_handle* %25, i8* %26, i8* %27, void (%struct.tep_handle*, i8*, i8*, i8*)* %28, i8* %29)
  br label %31

31:                                               ; preds = %24, %20
  %32 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %32, i8** %9, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %53

36:                                               ; preds = %31
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* @LOCAL_PLUGIN_DIR, align 4
  %39 = call i32 @asprintf(i8** %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %37, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = call i32 @warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %53

44:                                               ; preds = %36
  %45 = load %struct.tep_handle*, %struct.tep_handle** %5, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load void (%struct.tep_handle*, i8*, i8*, i8*)*, void (%struct.tep_handle*, i8*, i8*, i8*)** %7, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @load_plugins_dir(%struct.tep_handle* %45, i8* %46, i8* %47, void (%struct.tep_handle*, i8*, i8*, i8*)* %48, i8* %49)
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @free(i8* %51)
  br label %53

53:                                               ; preds = %44, %42, %35, %19
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @load_plugins_dir(%struct.tep_handle*, i8*, i8*, void (%struct.tep_handle*, i8*, i8*, i8*)*, i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i32) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
