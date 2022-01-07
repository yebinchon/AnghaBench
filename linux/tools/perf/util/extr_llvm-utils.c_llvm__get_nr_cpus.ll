; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_llvm-utils.c_llvm__get_nr_cpus.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_llvm-utils.c_llvm__get_nr_cpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm__get_nr_cpus.nr_cpus_avail = internal global i32 0, align 4
@STRERR_BUFSIZE = common dso_local global i32 0, align 4
@_SC_NPROCESSORS_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"WARNING:\09unable to get available CPUs in this system: %s\0A        \09Use 128 instead.\0A\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llvm__get_nr_cpus() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @STRERR_BUFSIZE, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %2, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %3, align 8
  %9 = load i32, i32* @llvm__get_nr_cpus.nr_cpus_avail, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = load i32, i32* @llvm__get_nr_cpus.nr_cpus_avail, align 4
  store i32 %12, i32* %1, align 4
  store i32 1, i32* %4, align 4
  br label %25

13:                                               ; preds = %0
  %14 = load i32, i32* @_SC_NPROCESSORS_CONF, align 4
  %15 = call i32 @sysconf(i32 %14)
  store i32 %15, i32* @llvm__get_nr_cpus.nr_cpus_avail, align 4
  %16 = load i32, i32* @llvm__get_nr_cpus.nr_cpus_avail, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i32, i32* @errno, align 4
  %20 = trunc i64 %6 to i32
  %21 = call i32 @str_error_r(i32 %19, i8* %8, i32 %20)
  %22 = call i32 @pr_err(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 128, i32* @llvm__get_nr_cpus.nr_cpus_avail, align 4
  br label %23

23:                                               ; preds = %18, %13
  %24 = load i32, i32* @llvm__get_nr_cpus.nr_cpus_avail, align 4
  store i32 %24, i32* %1, align 4
  store i32 1, i32* %4, align 4
  br label %25

25:                                               ; preds = %23, %11
  %26 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %26)
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sysconf(i32) #2

declare dso_local i32 @pr_err(i8*, i32) #2

declare dso_local i32 @str_error_r(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
