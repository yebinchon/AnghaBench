; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmpressure.c_vmpressure_register_event.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmpressure.c_vmpressure_register_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32 }
%struct.eventfd_ctx = type { i32 }
%struct.vmpressure = type { i32, i32 }
%struct.vmpressure_event = type { i32, i32, i32, %struct.eventfd_ctx* }

@VMPRESSURE_NO_PASSTHROUGH = common dso_local global i32 0, align 4
@MAX_VMPRESSURE_ARGS_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@vmpressure_str_levels = common dso_local global i32 0, align 4
@VMPRESSURE_NUM_LEVELS = common dso_local global i32 0, align 4
@vmpressure_str_modes = common dso_local global i32 0, align 4
@VMPRESSURE_NUM_MODES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmpressure_register_event(%struct.mem_cgroup* %0, %struct.eventfd_ctx* %1, i8* %2) #0 {
  %4 = alloca %struct.mem_cgroup*, align 8
  %5 = alloca %struct.eventfd_ctx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.vmpressure*, align 8
  %8 = alloca %struct.vmpressure_event*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %4, align 8
  store %struct.eventfd_ctx* %1, %struct.eventfd_ctx** %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %16 = call %struct.vmpressure* @memcg_to_vmpressure(%struct.mem_cgroup* %15)
  store %struct.vmpressure* %16, %struct.vmpressure** %7, align 8
  %17 = load i32, i32* @VMPRESSURE_NO_PASSTHROUGH, align 4
  store i32 %17, i32* %9, align 4
  store i32 0, i32* %14, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* @MAX_VMPRESSURE_ARGS_LEN, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @kstrndup(i8* %18, i32 %19, i32 %20)
  store i8* %21, i8** %11, align 8
  store i8* %21, i8** %12, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %14, align 4
  br label %80

27:                                               ; preds = %3
  %28 = call i8* @strsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %28, i8** %13, align 8
  %29 = load i32, i32* @vmpressure_str_levels, align 4
  %30 = load i32, i32* @VMPRESSURE_NUM_LEVELS, align 4
  %31 = load i8*, i8** %13, align 8
  %32 = call i32 @match_string(i32 %29, i32 %30, i8* %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %80

36:                                               ; preds = %27
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %10, align 4
  %38 = call i8* @strsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %38, i8** %13, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load i32, i32* @vmpressure_str_modes, align 4
  %43 = load i32, i32* @VMPRESSURE_NUM_MODES, align 4
  %44 = load i8*, i8** %13, align 8
  %45 = call i32 @match_string(i32 %42, i32 %43, i8* %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %80

49:                                               ; preds = %41
  %50 = load i32, i32* %14, align 4
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %49, %36
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.vmpressure_event* @kzalloc(i32 24, i32 %52)
  store %struct.vmpressure_event* %53, %struct.vmpressure_event** %8, align 8
  %54 = load %struct.vmpressure_event*, %struct.vmpressure_event** %8, align 8
  %55 = icmp ne %struct.vmpressure_event* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %14, align 4
  br label %80

59:                                               ; preds = %51
  %60 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %5, align 8
  %61 = load %struct.vmpressure_event*, %struct.vmpressure_event** %8, align 8
  %62 = getelementptr inbounds %struct.vmpressure_event, %struct.vmpressure_event* %61, i32 0, i32 3
  store %struct.eventfd_ctx* %60, %struct.eventfd_ctx** %62, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.vmpressure_event*, %struct.vmpressure_event** %8, align 8
  %65 = getelementptr inbounds %struct.vmpressure_event, %struct.vmpressure_event* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.vmpressure_event*, %struct.vmpressure_event** %8, align 8
  %68 = getelementptr inbounds %struct.vmpressure_event, %struct.vmpressure_event* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.vmpressure*, %struct.vmpressure** %7, align 8
  %70 = getelementptr inbounds %struct.vmpressure, %struct.vmpressure* %69, i32 0, i32 0
  %71 = call i32 @mutex_lock(i32* %70)
  %72 = load %struct.vmpressure_event*, %struct.vmpressure_event** %8, align 8
  %73 = getelementptr inbounds %struct.vmpressure_event, %struct.vmpressure_event* %72, i32 0, i32 2
  %74 = load %struct.vmpressure*, %struct.vmpressure** %7, align 8
  %75 = getelementptr inbounds %struct.vmpressure, %struct.vmpressure* %74, i32 0, i32 1
  %76 = call i32 @list_add(i32* %73, i32* %75)
  %77 = load %struct.vmpressure*, %struct.vmpressure** %7, align 8
  %78 = getelementptr inbounds %struct.vmpressure, %struct.vmpressure* %77, i32 0, i32 0
  %79 = call i32 @mutex_unlock(i32* %78)
  store i32 0, i32* %14, align 4
  br label %80

80:                                               ; preds = %59, %56, %48, %35, %24
  %81 = load i8*, i8** %12, align 8
  %82 = call i32 @kfree(i8* %81)
  %83 = load i32, i32* %14, align 4
  ret i32 %83
}

declare dso_local %struct.vmpressure* @memcg_to_vmpressure(%struct.mem_cgroup*) #1

declare dso_local i8* @kstrndup(i8*, i32, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @match_string(i32, i32, i8*) #1

declare dso_local %struct.vmpressure_event* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
