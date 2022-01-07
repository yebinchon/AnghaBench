; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_map_perf_test_user.c_fixup_map.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_map_perf_test_user.c_fixup_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [19 x i8] c"inner_lru_hash_map\00", align 1
@inner_lru_hash_idx = common dso_local global i32 0, align 4
@inner_lru_hash_size = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"array_of_lru_hashs\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"inner_lru_hash_map must be defined before array_of_lru_hashs\0A\00", align 1
@array_of_lru_hashs_idx = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"lru_hash_lookup_map\00", align 1
@lru_hash_lookup_idx = common dso_local global i32 0, align 4
@num_map_entries = common dso_local global i64 0, align 8
@NR_TESTS = common dso_local global i32 0, align 4
@test_map_names = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_map_data*, i32)* @fixup_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixup_map(%struct.bpf_map_data* %0, i32 %1) #0 {
  %3 = alloca %struct.bpf_map_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bpf_map_data* %0, %struct.bpf_map_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bpf_map_data*, %struct.bpf_map_data** %3, align 8
  %7 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @strcmp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* @inner_lru_hash_idx, align 4
  %13 = load %struct.bpf_map_data*, %struct.bpf_map_data** %3, align 8
  %14 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* @inner_lru_hash_size, align 8
  br label %17

17:                                               ; preds = %11, %2
  %18 = load %struct.bpf_map_data*, %struct.bpf_map_data** %3, align 8
  %19 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @strcmp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @inner_lru_hash_idx, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = call i32 @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %28 = call i32 @exit(i32 1) #3
  unreachable

29:                                               ; preds = %23
  %30 = load i32, i32* @inner_lru_hash_idx, align 4
  %31 = load %struct.bpf_map_data*, %struct.bpf_map_data** %3, align 8
  %32 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* @array_of_lru_hashs_idx, align 4
  br label %35

35:                                               ; preds = %29, %17
  %36 = load %struct.bpf_map_data*, %struct.bpf_map_data** %3, align 8
  %37 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @strcmp(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* @lru_hash_lookup_idx, align 4
  br label %43

43:                                               ; preds = %41, %35
  %44 = load i64, i64* @num_map_entries, align 8
  %45 = icmp sle i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %77

47:                                               ; preds = %43
  %48 = load i64, i64* @num_map_entries, align 8
  store i64 %48, i64* @inner_lru_hash_size, align 8
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %74, %47
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @NR_TESTS, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %77

53:                                               ; preds = %49
  %54 = load i8**, i8*** @test_map_names, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.bpf_map_data*, %struct.bpf_map_data** %3, align 8
  %60 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @strcmp(i8* %58, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %53
  %65 = load i32, i32* %5, align 4
  %66 = call i64 @check_test_flags(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i64, i64* @num_map_entries, align 8
  %70 = load %struct.bpf_map_data*, %struct.bpf_map_data** %3, align 8
  %71 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i64 %69, i64* %72, align 8
  br label %73

73:                                               ; preds = %68, %64, %53
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %49

77:                                               ; preds = %46, %49
  ret void
}

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @check_test_flags(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
