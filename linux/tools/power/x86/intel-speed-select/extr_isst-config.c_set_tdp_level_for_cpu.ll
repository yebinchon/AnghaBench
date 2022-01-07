; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-config.c_set_tdp_level_for_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-config.c_set_tdp_level_for_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isst_pkg_ctdp_level_info = type { i32, i32, i64 }

@tdp_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"set_tdp_level_for_cpu\00", align 1
@outf = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"perf-profile\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"set_tdp_level\00", align 1
@force_online_offline = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Option is set to online/offline\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"online cpu %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"offline cpu %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*, i8*, i8*)* @set_tdp_level_for_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_tdp_level_for_cpu(i32 %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.isst_pkg_ctdp_level_info, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @tdp_level, align 4
  %19 = call i32 @isst_set_tdp_level(i32 %17, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = call i32 @perror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %91

24:                                               ; preds = %5
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @outf, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @isst_display_result(i32 %25, i32 %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load i64, i64* @force_online_offline, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %90

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @get_physical_package_id(i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @get_physical_die_id(i32 %34)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* @stderr, align 4
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %38 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %12, i32 0, i32 0
  %39 = call i32 @alloc_cpu_set(i32* %38)
  %40 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %12, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @tdp_level, align 4
  %43 = call i32 @isst_get_coremask_info(i32 %41, i32 %42, %struct.isst_pkg_ctdp_level_info* %12)
  %44 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %12, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %89

47:                                               ; preds = %31
  %48 = call i32 (...) @get_topo_max_cpus()
  store i32 %48, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %49

49:                                               ; preds = %85, %47
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %88

53:                                               ; preds = %49
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %15, align 4
  %56 = call i32 @get_physical_package_id(i32 %55)
  %57 = icmp ne i32 %54, %56
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @get_physical_die_id(i32 %60)
  %62 = icmp ne i32 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58, %53
  br label %85

64:                                               ; preds = %58
  %65 = load i32, i32* %15, align 4
  %66 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %12, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.isst_pkg_ctdp_level_info, %struct.isst_pkg_ctdp_level_info* %12, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @CPU_ISSET_S(i32 %65, i32 %67, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = load i32, i32* @stderr, align 4
  %74 = load i32, i32* %15, align 4
  %75 = call i32 (i32, i8*, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %15, align 4
  %77 = call i32 @set_cpu_online_offline(i32 %76, i32 1)
  br label %84

78:                                               ; preds = %64
  %79 = load i32, i32* @stderr, align 4
  %80 = load i32, i32* %15, align 4
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %79, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %15, align 4
  %83 = call i32 @set_cpu_online_offline(i32 %82, i32 0)
  br label %84

84:                                               ; preds = %78, %72
  br label %85

85:                                               ; preds = %84, %63
  %86 = load i32, i32* %15, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %15, align 4
  br label %49

88:                                               ; preds = %49
  br label %89

89:                                               ; preds = %88, %31
  br label %90

90:                                               ; preds = %89, %24
  br label %91

91:                                               ; preds = %90, %22
  ret void
}

declare dso_local i32 @isst_set_tdp_level(i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @isst_display_result(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @get_physical_package_id(i32) #1

declare dso_local i32 @get_physical_die_id(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @alloc_cpu_set(i32*) #1

declare dso_local i32 @isst_get_coremask_info(i32, i32, %struct.isst_pkg_ctdp_level_info*) #1

declare dso_local i32 @get_topo_max_cpus(...) #1

declare dso_local i64 @CPU_ISSET_S(i32, i32, i32) #1

declare dso_local i32 @set_cpu_online_offline(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
