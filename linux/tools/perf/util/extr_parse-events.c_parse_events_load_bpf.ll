; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_parse_events_load_bpf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_parse_events_load_bpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_events_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.list_head = type { i32 }
%struct.bpf_object = type { i32 }

@obj_head_config = common dso_local global i32 0, align 4
@BUFSIZ = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"BPF support is not compiled\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"(add -v to see detail)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_events_load_bpf(%struct.parse_events_state* %0, %struct.list_head* %1, i8* %2, i32 %3, %struct.list_head* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.parse_events_state*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.list_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.bpf_object*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.parse_events_state* %0, %struct.parse_events_state** %7, align 8
  store %struct.list_head* %1, %struct.list_head** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.list_head* %4, %struct.list_head** %11, align 8
  %16 = load i32, i32* @obj_head_config, align 4
  %17 = call i32 @LIST_HEAD(i32 %16)
  %18 = load %struct.list_head*, %struct.list_head** %11, align 8
  %19 = icmp ne %struct.list_head* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load %struct.list_head*, %struct.list_head** %11, align 8
  %22 = call i32 @split_bpf_config_terms(%struct.list_head* %21, i32* @obj_head_config)
  br label %23

23:                                               ; preds = %20, %5
  %24 = load i8*, i8** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call %struct.bpf_object* @bpf__prepare_load(i8* %24, i32 %25)
  store %struct.bpf_object* %26, %struct.bpf_object** %13, align 8
  %27 = load %struct.bpf_object*, %struct.bpf_object** %13, align 8
  %28 = call i64 @IS_ERR(%struct.bpf_object* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %64

30:                                               ; preds = %23
  %31 = load i32, i32* @BUFSIZ, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %14, align 8
  %34 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %15, align 8
  %35 = load %struct.bpf_object*, %struct.bpf_object** %13, align 8
  %36 = call i32 @PTR_ERR(%struct.bpf_object* %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @ENOTSUP, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = trunc i64 %32 to i32
  %43 = call i32 @snprintf(i8* %34, i32 %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %51

44:                                               ; preds = %30
  %45 = load i8*, i8** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %12, align 4
  %48 = sub nsw i32 0, %47
  %49 = trunc i64 %32 to i32
  %50 = call i32 @bpf__strerror_prepare_load(i8* %45, i32 %46, i32 %48, i8* %34, i32 %49)
  br label %51

51:                                               ; preds = %44, %41
  %52 = call i8* @strdup(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.parse_events_state*, %struct.parse_events_state** %7, align 8
  %54 = getelementptr inbounds %struct.parse_events_state, %struct.parse_events_state* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i8* %52, i8** %56, align 8
  %57 = call i8* @strdup(i8* %34)
  %58 = load %struct.parse_events_state*, %struct.parse_events_state** %7, align 8
  %59 = getelementptr inbounds %struct.parse_events_state, %struct.parse_events_state* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i8* %57, i8** %61, align 8
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %6, align 4
  %63 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %63)
  br label %85

64:                                               ; preds = %23
  %65 = load %struct.parse_events_state*, %struct.parse_events_state** %7, align 8
  %66 = load %struct.list_head*, %struct.list_head** %8, align 8
  %67 = load %struct.bpf_object*, %struct.bpf_object** %13, align 8
  %68 = load %struct.list_head*, %struct.list_head** %11, align 8
  %69 = call i32 @parse_events_load_bpf_obj(%struct.parse_events_state* %65, %struct.list_head* %66, %struct.bpf_object* %67, %struct.list_head* %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %6, align 4
  br label %85

74:                                               ; preds = %64
  %75 = load %struct.parse_events_state*, %struct.parse_events_state** %7, align 8
  %76 = load %struct.bpf_object*, %struct.bpf_object** %13, align 8
  %77 = call i32 @parse_events_config_bpf(%struct.parse_events_state* %75, %struct.bpf_object* %76, i32* @obj_head_config)
  store i32 %77, i32* %12, align 4
  %78 = load %struct.list_head*, %struct.list_head** %11, align 8
  %79 = icmp ne %struct.list_head* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load %struct.list_head*, %struct.list_head** %11, align 8
  %82 = call i32 @list_splice_tail(i32* @obj_head_config, %struct.list_head* %81)
  br label %83

83:                                               ; preds = %80, %74
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %83, %72, %51
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @split_bpf_config_terms(%struct.list_head*, i32*) #1

declare dso_local %struct.bpf_object* @bpf__prepare_load(i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.bpf_object*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @PTR_ERR(%struct.bpf_object*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

declare dso_local i32 @bpf__strerror_prepare_load(i8*, i32, i32, i8*, i32) #1

declare dso_local i8* @strdup(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @parse_events_load_bpf_obj(%struct.parse_events_state*, %struct.list_head*, %struct.bpf_object*, %struct.list_head*) #1

declare dso_local i32 @parse_events_config_bpf(%struct.parse_events_state*, %struct.bpf_object*, i32*) #1

declare dso_local i32 @list_splice_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
