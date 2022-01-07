; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_record.c_record_opts__config_freq.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_record.c_record_opts__config_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.record_opts = type { i32, i64, i32, i32, i64 }

@UINT_MAX = common dso_local global i32 0, align 4
@ULLONG_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"frequency and count are zero, aborting\0A\00", align 1
@.str.1 = private unnamed_addr constant [175 x i8] c"error: Maximum frequency rate (%'u Hz) exceeded.\0A       Please use -F freq option with a lower value or consider\0A       tweaking /proc/sys/kernel/perf_event_max_sample_rate.\0A\00", align 1
@.str.2 = private unnamed_addr constant [315 x i8] c"warning: Maximum frequency rate (%'u Hz) exceeded, throttling from %'u Hz to %'u Hz.\0A         The limit can be raised via /proc/sys/kernel/perf_event_max_sample_rate.\0A         The kernel will lower it when perf's interrupts take too long.\0A         Use --strict-freq to disable this throttling, refusing to record.\0A\00", align 1
@.str.3 = private unnamed_addr constant [110 x i8] c"Lowering default frequency rate to %u.\0APlease consider tweaking /proc/sys/kernel/perf_event_max_sample_rate.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.record_opts*)* @record_opts__config_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @record_opts__config_freq(%struct.record_opts* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.record_opts*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.record_opts* %0, %struct.record_opts** %3, align 8
  %6 = load %struct.record_opts*, %struct.record_opts** %3, align 8
  %7 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @UINT_MAX, align 4
  %10 = icmp ne i32 %8, %9
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %4, align 4
  %12 = load %struct.record_opts*, %struct.record_opts** %3, align 8
  %13 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ULLONG_MAX, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.record_opts*, %struct.record_opts** %3, align 8
  %19 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = load %struct.record_opts*, %struct.record_opts** %3, align 8
  %23 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  br label %24

24:                                               ; preds = %17, %1
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.record_opts*, %struct.record_opts** %3, align 8
  %29 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.record_opts*, %struct.record_opts** %3, align 8
  %32 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %27, %24
  %34 = load %struct.record_opts*, %struct.record_opts** %3, align 8
  %35 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.record_opts*, %struct.record_opts** %3, align 8
  %40 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %39, i32 0, i32 3
  store i32 0, i32* %40, align 4
  br label %55

41:                                               ; preds = %33
  %42 = load %struct.record_opts*, %struct.record_opts** %3, align 8
  %43 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.record_opts*, %struct.record_opts** %3, align 8
  %48 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.record_opts*, %struct.record_opts** %3, align 8
  %51 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  br label %54

52:                                               ; preds = %41
  %53 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %100

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %38
  %56 = call i64 @get_max_rate(i32* %5)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %100

59:                                               ; preds = %55
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %87

62:                                               ; preds = %59
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.record_opts*, %struct.record_opts** %3, align 8
  %65 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = icmp ult i32 %63, %66
  br i1 %67, label %68, label %87

68:                                               ; preds = %62
  %69 = load %struct.record_opts*, %struct.record_opts** %3, align 8
  %70 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* %5, align 4
  %75 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([175 x i8], [175 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  store i32 -1, i32* %2, align 4
  br label %100

76:                                               ; preds = %68
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.record_opts*, %struct.record_opts** %3, align 8
  %79 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i32 (i8*, i32, ...) @pr_warning(i8* getelementptr inbounds ([315 x i8], [315 x i8]* @.str.2, i64 0, i64 0), i32 %77, i32 %80, i32 %81)
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.record_opts*, %struct.record_opts** %3, align 8
  %85 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86, %62, %59
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.record_opts*, %struct.record_opts** %3, align 8
  %90 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = icmp ult i32 %88, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load i32, i32* %5, align 4
  %95 = call i32 (i8*, i32, ...) @pr_warning(i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %5, align 4
  %97 = load %struct.record_opts*, %struct.record_opts** %3, align 8
  %98 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %93, %87
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %99, %73, %58, %52
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @get_max_rate(i32*) #1

declare dso_local i32 @pr_warning(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
