; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-record.c_record__mmap_evlist.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-record.c_record__mmap_evlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.record = type { %struct.record_opts }
%struct.record_opts = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.evlist = type { i32 }

@PERF_AFFINITY_SYS = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [168 x i8] c"Permission error mapping pages.\0AConsider increasing /proc/sys/kernel/perf_event_mlock_kb,\0Aor try again with a smaller value of -m/--mmap_pages.\0A(current value: %u,%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to mmap with %d (%s)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.record*, %struct.evlist*)* @record__mmap_evlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @record__mmap_evlist(%struct.record* %0, %struct.evlist* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.record*, align 8
  %5 = alloca %struct.evlist*, align 8
  %6 = alloca %struct.record_opts*, align 8
  %7 = alloca [512 x i8], align 16
  store %struct.record* %0, %struct.record** %4, align 8
  store %struct.evlist* %1, %struct.evlist** %5, align 8
  %8 = load %struct.record*, %struct.record** %4, align 8
  %9 = getelementptr inbounds %struct.record, %struct.record* %8, i32 0, i32 0
  store %struct.record_opts* %9, %struct.record_opts** %6, align 8
  %10 = load %struct.record_opts*, %struct.record_opts** %6, align 8
  %11 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PERF_AFFINITY_SYS, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 (...) @cpu__setup_cpunode_map()
  br label %17

17:                                               ; preds = %15, %2
  %18 = load %struct.evlist*, %struct.evlist** %5, align 8
  %19 = load %struct.record_opts*, %struct.record_opts** %6, align 8
  %20 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.record_opts*, %struct.record_opts** %6, align 8
  %23 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.record_opts*, %struct.record_opts** %6, align 8
  %26 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.record_opts*, %struct.record_opts** %6, align 8
  %29 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.record_opts*, %struct.record_opts** %6, align 8
  %32 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.record_opts*, %struct.record_opts** %6, align 8
  %35 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.record_opts*, %struct.record_opts** %6, align 8
  %38 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @evlist__mmap_ex(%struct.evlist* %18, i32 %21, i32 %24, i32 %27, i32 %30, i64 %33, i32 %36, i32 %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %70

42:                                               ; preds = %17
  %43 = load i32, i32* @errno, align 4
  %44 = load i32, i32* @EPERM, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load %struct.record_opts*, %struct.record_opts** %6, align 8
  %48 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.record_opts*, %struct.record_opts** %6, align 8
  %51 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @pr_err(i8* getelementptr inbounds ([168 x i8], [168 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52)
  %54 = load i32, i32* @errno, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %71

56:                                               ; preds = %42
  %57 = load i32, i32* @errno, align 4
  %58 = load i32, i32* @errno, align 4
  %59 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %60 = call i32 @str_error_r(i32 %58, i8* %59, i32 512)
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %60)
  %62 = load i32, i32* @errno, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i32, i32* @errno, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %71

67:                                               ; preds = %56
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %71

70:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %67, %64, %46
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @cpu__setup_cpunode_map(...) #1

declare dso_local i64 @evlist__mmap_ex(%struct.evlist*, i32, i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @str_error_r(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
