; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-buildid-list.c_perf_session__list_build_ids.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-buildid-list.c_perf_session__list_build_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_session = type { i32 }
%struct.perf_data = type { i32, i32, i32 }

@PERF_DATA_MODE_READ = common dso_local global i32 0, align 4
@input_name = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@build_id__mark_dso_hit_ops = common dso_local global i32 0, align 4
@HEADER_AUXTRACE = common dso_local global i32 0, align 4
@dso__skip_buildid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @perf_session__list_build_ids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_session__list_build_ids(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_session*, align 8
  %7 = alloca %struct.perf_data, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %7, i32 0, i32 0
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %7, i32 0, i32 1
  %11 = load i32, i32* @PERF_DATA_MODE_READ, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %7, i32 0, i32 2
  %13 = load i32, i32* @input_name, align 4
  store i32 %13, i32* %12, align 4
  %14 = call i32 (...) @symbol__elf_init()
  %15 = load i32, i32* @input_name, align 4
  %16 = load i32, i32* @stdout, align 4
  %17 = call i64 @filename__fprintf_build_id(i32 %15, i32 %16)
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %55

20:                                               ; preds = %2
  %21 = call %struct.perf_session* @perf_session__new(%struct.perf_data* %7, i32 0, i32* @build_id__mark_dso_hit_ops)
  store %struct.perf_session* %21, %struct.perf_session** %6, align 8
  %22 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %23 = call i64 @IS_ERR(%struct.perf_session* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %27 = call i32 @PTR_ERR(%struct.perf_session* %26)
  store i32 %27, i32* %3, align 4
  br label %56

28:                                               ; preds = %20
  %29 = call i64 @perf_data__is_pipe(%struct.perf_data* %7)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  %32 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %33 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %32, i32 0, i32 0
  %34 = load i32, i32* @HEADER_AUXTRACE, align 4
  %35 = call i64 @perf_header__has_feat(i32* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %31, %28
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = call i64 @perf_data__is_pipe(%struct.perf_data* %7)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41, %38
  %45 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %46 = call i32 @perf_session__process_events(%struct.perf_session* %45)
  br label %47

47:                                               ; preds = %44, %41
  %48 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %49 = load i32, i32* @stdout, align 4
  %50 = load i32, i32* @dso__skip_buildid, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @perf_session__fprintf_dsos_buildid(%struct.perf_session* %48, i32 %49, i32 %50, i32 %51)
  %53 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  %54 = call i32 @perf_session__delete(%struct.perf_session* %53)
  br label %55

55:                                               ; preds = %47, %19
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %25
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @symbol__elf_init(...) #1

declare dso_local i64 @filename__fprintf_build_id(i32, i32) #1

declare dso_local %struct.perf_session* @perf_session__new(%struct.perf_data*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.perf_session*) #1

declare dso_local i32 @PTR_ERR(%struct.perf_session*) #1

declare dso_local i64 @perf_data__is_pipe(%struct.perf_data*) #1

declare dso_local i64 @perf_header__has_feat(i32*, i32) #1

declare dso_local i32 @perf_session__process_events(%struct.perf_session*) #1

declare dso_local i32 @perf_session__fprintf_dsos_buildid(%struct.perf_session*, i32, i32, i32) #1

declare dso_local i32 @perf_session__delete(%struct.perf_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
