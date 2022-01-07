; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_parse_events_load_bpf_obj.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_parse_events_load_bpf_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_events_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.bpf_object = type { i32 }
%struct.list_head = type { i32 }
%struct.__add_bpf_event_param = type { %struct.list_head*, %struct.list_head*, %struct.parse_events_state* }

@BUFSIZ = common dso_local global i32 0, align 4
@parse_events_load_bpf_obj.registered_unprobe_atexit = internal global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Internal error: load bpf obj with NULL\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@bpf__clear = common dso_local global i32 0, align 4
@add_bpf_event = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Attach events in BPF object failed\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"(add -v to see detail)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_events_load_bpf_obj(%struct.parse_events_state* %0, %struct.list_head* %1, %struct.bpf_object* %2, %struct.list_head* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.parse_events_state*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.bpf_object*, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.__add_bpf_event_param, align 8
  %14 = alloca i32, align 4
  store %struct.parse_events_state* %0, %struct.parse_events_state** %6, align 8
  store %struct.list_head* %1, %struct.list_head** %7, align 8
  store %struct.bpf_object* %2, %struct.bpf_object** %8, align 8
  store %struct.list_head* %3, %struct.list_head** %9, align 8
  %15 = load i32, i32* @BUFSIZ, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = getelementptr inbounds %struct.__add_bpf_event_param, %struct.__add_bpf_event_param* %13, i32 0, i32 0
  %20 = load %struct.parse_events_state*, %struct.parse_events_state** %6, align 8
  %21 = bitcast %struct.parse_events_state* %20 to %struct.list_head*
  store %struct.list_head* %21, %struct.list_head** %19, align 8
  %22 = getelementptr inbounds %struct.__add_bpf_event_param, %struct.__add_bpf_event_param* %13, i32 0, i32 1
  %23 = load %struct.list_head*, %struct.list_head** %7, align 8
  store %struct.list_head* %23, %struct.list_head** %22, align 8
  %24 = getelementptr inbounds %struct.__add_bpf_event_param, %struct.__add_bpf_event_param* %13, i32 0, i32 2
  %25 = load %struct.list_head*, %struct.list_head** %9, align 8
  %26 = bitcast %struct.list_head* %25 to %struct.parse_events_state*
  store %struct.parse_events_state* %26, %struct.parse_events_state** %24, align 8
  %27 = load %struct.bpf_object*, %struct.bpf_object** %8, align 8
  %28 = call i64 @IS_ERR(%struct.bpf_object* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %4
  %31 = load %struct.bpf_object*, %struct.bpf_object** %8, align 8
  %32 = icmp ne %struct.bpf_object* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %30, %4
  %34 = trunc i64 %16 to i32
  %35 = call i32 @snprintf(i8* %18, i32 %34, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %10, align 4
  br label %74

38:                                               ; preds = %30
  %39 = load i32, i32* @parse_events_load_bpf_obj.registered_unprobe_atexit, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @bpf__clear, align 4
  %43 = call i32 @atexit(i32 %42)
  store i32 1, i32* @parse_events_load_bpf_obj.registered_unprobe_atexit, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.bpf_object*, %struct.bpf_object** %8, align 8
  %46 = call i32 @bpf__probe(%struct.bpf_object* %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.bpf_object*, %struct.bpf_object** %8, align 8
  %51 = load i32, i32* %10, align 4
  %52 = trunc i64 %16 to i32
  %53 = call i32 @bpf__strerror_probe(%struct.bpf_object* %50, i32 %51, i8* %18, i32 %52)
  br label %74

54:                                               ; preds = %44
  %55 = load %struct.bpf_object*, %struct.bpf_object** %8, align 8
  %56 = call i32 @bpf__load(%struct.bpf_object* %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.bpf_object*, %struct.bpf_object** %8, align 8
  %61 = load i32, i32* %10, align 4
  %62 = trunc i64 %16 to i32
  %63 = call i32 @bpf__strerror_load(%struct.bpf_object* %60, i32 %61, i8* %18, i32 %62)
  br label %74

64:                                               ; preds = %54
  %65 = load %struct.bpf_object*, %struct.bpf_object** %8, align 8
  %66 = load i32, i32* @add_bpf_event, align 4
  %67 = call i32 @bpf__foreach_event(%struct.bpf_object* %65, i32 %66, %struct.__add_bpf_event_param* %13)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = trunc i64 %16 to i32
  %72 = call i32 @snprintf(i8* %18, i32 %71, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %74

73:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %86

74:                                               ; preds = %70, %59, %49, %33
  %75 = call i8* @strdup(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %76 = load %struct.parse_events_state*, %struct.parse_events_state** %6, align 8
  %77 = getelementptr inbounds %struct.parse_events_state, %struct.parse_events_state* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store i8* %75, i8** %79, align 8
  %80 = call i8* @strdup(i8* %18)
  %81 = load %struct.parse_events_state*, %struct.parse_events_state** %6, align 8
  %82 = getelementptr inbounds %struct.parse_events_state, %struct.parse_events_state* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i8* %80, i8** %84, align 8
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %86

86:                                               ; preds = %74, %73
  %87 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @IS_ERR(%struct.bpf_object*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*) #2

declare dso_local i32 @atexit(i32) #2

declare dso_local i32 @bpf__probe(%struct.bpf_object*) #2

declare dso_local i32 @bpf__strerror_probe(%struct.bpf_object*, i32, i8*, i32) #2

declare dso_local i32 @bpf__load(%struct.bpf_object*) #2

declare dso_local i32 @bpf__strerror_load(%struct.bpf_object*, i32, i8*, i32) #2

declare dso_local i32 @bpf__foreach_event(%struct.bpf_object*, i32, %struct.__add_bpf_event_param*) #2

declare dso_local i8* @strdup(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
