; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_intel-pt.c_intel_pt_parse_terms_with_default.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_intel-pt.c_intel_pt_parse_terms_with_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.perf_event_attr = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*, i8*, i32*)* @intel_pt_parse_terms_with_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_parse_terms_with_default(%struct.list_head* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca %struct.perf_event_attr, align 4
  %10 = alloca i32, align 4
  store %struct.list_head* %0, %struct.list_head** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = bitcast %struct.perf_event_attr* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 8, i1 false)
  %12 = call %struct.list_head* @malloc(i32 4)
  store %struct.list_head* %12, %struct.list_head** %8, align 8
  %13 = load %struct.list_head*, %struct.list_head** %8, align 8
  %14 = icmp ne %struct.list_head* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %45

18:                                               ; preds = %3
  %19 = load %struct.list_head*, %struct.list_head** %8, align 8
  %20 = call i32 @INIT_LIST_HEAD(%struct.list_head* %19)
  %21 = load %struct.list_head*, %struct.list_head** %8, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @parse_events_terms(%struct.list_head* %21, i8* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %41

27:                                               ; preds = %18
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %9, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load %struct.list_head*, %struct.list_head** %5, align 8
  %32 = load %struct.list_head*, %struct.list_head** %8, align 8
  %33 = call i32 @perf_pmu__config_terms(%struct.list_head* %31, %struct.perf_event_attr* %9, %struct.list_head* %32, i32 1, i32* null)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %41

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %9, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %36, %26
  %42 = load %struct.list_head*, %struct.list_head** %8, align 8
  %43 = call i32 @parse_events_terms__delete(%struct.list_head* %42)
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %41, %15
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.list_head* @malloc(i32) #2

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #2

declare dso_local i32 @parse_events_terms(%struct.list_head*, i8*) #2

declare dso_local i32 @perf_pmu__config_terms(%struct.list_head*, %struct.perf_event_attr*, %struct.list_head*, i32, i32*) #2

declare dso_local i32 @parse_events_terms__delete(%struct.list_head*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
