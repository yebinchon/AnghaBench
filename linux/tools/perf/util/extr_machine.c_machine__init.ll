; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_machine__init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_machine__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { i32, i32, i32, i32*, i32*, i32*, i32*, i64, i64, i32*, i32*, i32, i32, i32 }
%struct.thread = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@HOST_KERNEL_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"[guest/%d]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine__init(%struct.machine* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.machine*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca [64 x i8], align 16
  store %struct.machine* %0, %struct.machine** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.machine*, %struct.machine** %5, align 8
  %14 = call i32 @memset(%struct.machine* %13, i32 0, i32 96)
  %15 = load %struct.machine*, %struct.machine** %5, align 8
  %16 = getelementptr inbounds %struct.machine, %struct.machine* %15, i32 0, i32 13
  %17 = load %struct.machine*, %struct.machine** %5, align 8
  %18 = call i32 @map_groups__init(i32* %16, %struct.machine* %17)
  %19 = load %struct.machine*, %struct.machine** %5, align 8
  %20 = getelementptr inbounds %struct.machine, %struct.machine* %19, i32 0, i32 12
  %21 = call i32 @RB_CLEAR_NODE(i32* %20)
  %22 = load %struct.machine*, %struct.machine** %5, align 8
  %23 = getelementptr inbounds %struct.machine, %struct.machine* %22, i32 0, i32 11
  %24 = call i32 @dsos__init(i32* %23)
  %25 = load %struct.machine*, %struct.machine** %5, align 8
  %26 = call i32 @machine__threads_init(%struct.machine* %25)
  %27 = load %struct.machine*, %struct.machine** %5, align 8
  %28 = getelementptr inbounds %struct.machine, %struct.machine* %27, i32 0, i32 10
  store i32* null, i32** %28, align 8
  %29 = load %struct.machine*, %struct.machine** %5, align 8
  %30 = getelementptr inbounds %struct.machine, %struct.machine* %29, i32 0, i32 9
  store i32* null, i32** %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.machine*, %struct.machine** %5, align 8
  %33 = getelementptr inbounds %struct.machine, %struct.machine* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.machine*, %struct.machine** %5, align 8
  %35 = getelementptr inbounds %struct.machine, %struct.machine* %34, i32 0, i32 8
  store i64 0, i64* %35, align 8
  %36 = load %struct.machine*, %struct.machine** %5, align 8
  %37 = getelementptr inbounds %struct.machine, %struct.machine* %36, i32 0, i32 1
  store i32 0, i32* %37, align 4
  %38 = load %struct.machine*, %struct.machine** %5, align 8
  %39 = getelementptr inbounds %struct.machine, %struct.machine* %38, i32 0, i32 2
  store i32 0, i32* %39, align 8
  %40 = load %struct.machine*, %struct.machine** %5, align 8
  %41 = getelementptr inbounds %struct.machine, %struct.machine* %40, i32 0, i32 7
  store i64 0, i64* %41, align 8
  %42 = load %struct.machine*, %struct.machine** %5, align 8
  %43 = getelementptr inbounds %struct.machine, %struct.machine* %42, i32 0, i32 6
  store i32* null, i32** %43, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32* @strdup(i8* %44)
  %46 = load %struct.machine*, %struct.machine** %5, align 8
  %47 = getelementptr inbounds %struct.machine, %struct.machine* %46, i32 0, i32 4
  store i32* %45, i32** %47, align 8
  %48 = load %struct.machine*, %struct.machine** %5, align 8
  %49 = getelementptr inbounds %struct.machine, %struct.machine* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %3
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %94

55:                                               ; preds = %3
  %56 = load %struct.machine*, %struct.machine** %5, align 8
  %57 = call i64 @machine__set_mmap_name(%struct.machine* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %83

60:                                               ; preds = %55
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @HOST_KERNEL_ID, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %60
  %65 = load %struct.machine*, %struct.machine** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call %struct.thread* @machine__findnew_thread(%struct.machine* %65, i32 -1, i32 %66)
  store %struct.thread* %67, %struct.thread** %9, align 8
  %68 = load %struct.thread*, %struct.thread** %9, align 8
  %69 = icmp eq %struct.thread* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %83

71:                                               ; preds = %64
  %72 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @snprintf(i8* %72, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load %struct.thread*, %struct.thread** %9, align 8
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %77 = call i32 @thread__set_comm(%struct.thread* %75, i8* %76, i32 0)
  %78 = load %struct.thread*, %struct.thread** %9, align 8
  %79 = call i32 @thread__put(%struct.thread* %78)
  br label %80

80:                                               ; preds = %71, %60
  %81 = load %struct.machine*, %struct.machine** %5, align 8
  %82 = getelementptr inbounds %struct.machine, %struct.machine* %81, i32 0, i32 5
  store i32* null, i32** %82, align 8
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %80, %70, %59
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load %struct.machine*, %struct.machine** %5, align 8
  %88 = getelementptr inbounds %struct.machine, %struct.machine* %87, i32 0, i32 4
  %89 = call i32 @zfree(i32** %88)
  %90 = load %struct.machine*, %struct.machine** %5, align 8
  %91 = getelementptr inbounds %struct.machine, %struct.machine* %90, i32 0, i32 3
  %92 = call i32 @zfree(i32** %91)
  br label %93

93:                                               ; preds = %86, %83
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %52
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @memset(%struct.machine*, i32, i32) #1

declare dso_local i32 @map_groups__init(i32*, %struct.machine*) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

declare dso_local i32 @dsos__init(i32*) #1

declare dso_local i32 @machine__threads_init(%struct.machine*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i64 @machine__set_mmap_name(%struct.machine*) #1

declare dso_local %struct.thread* @machine__findnew_thread(%struct.machine*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @thread__set_comm(%struct.thread*, i8*, i32) #1

declare dso_local i32 @thread__put(%struct.thread*) #1

declare dso_local i32 @zfree(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
