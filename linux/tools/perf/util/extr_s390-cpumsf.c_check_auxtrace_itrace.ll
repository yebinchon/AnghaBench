; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_s390-cpumsf.c_check_auxtrace_itrace.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_s390-cpumsf.c_check_auxtrace_itrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itrace_synth_opts = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Unsupported --itrace options specified\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.itrace_synth_opts*)* @check_auxtrace_itrace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_auxtrace_itrace(%struct.itrace_synth_opts* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.itrace_synth_opts*, align 8
  %4 = alloca i32, align 4
  store %struct.itrace_synth_opts* %0, %struct.itrace_synth_opts** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.itrace_synth_opts*, %struct.itrace_synth_opts** %3, align 8
  %6 = icmp ne %struct.itrace_synth_opts* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.itrace_synth_opts*, %struct.itrace_synth_opts** %3, align 8
  %9 = getelementptr inbounds %struct.itrace_synth_opts, %struct.itrace_synth_opts* %8, i32 0, i32 13
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7, %1
  store i32 1, i32* %2, align 4
  br label %86

13:                                               ; preds = %7
  %14 = load %struct.itrace_synth_opts*, %struct.itrace_synth_opts** %3, align 8
  %15 = getelementptr inbounds %struct.itrace_synth_opts, %struct.itrace_synth_opts* %14, i32 0, i32 12
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %78, label %18

18:                                               ; preds = %13
  %19 = load %struct.itrace_synth_opts*, %struct.itrace_synth_opts** %3, align 8
  %20 = getelementptr inbounds %struct.itrace_synth_opts, %struct.itrace_synth_opts* %19, i32 0, i32 11
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %78, label %23

23:                                               ; preds = %18
  %24 = load %struct.itrace_synth_opts*, %struct.itrace_synth_opts** %3, align 8
  %25 = getelementptr inbounds %struct.itrace_synth_opts, %struct.itrace_synth_opts* %24, i32 0, i32 10
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %78, label %28

28:                                               ; preds = %23
  %29 = load %struct.itrace_synth_opts*, %struct.itrace_synth_opts** %3, align 8
  %30 = getelementptr inbounds %struct.itrace_synth_opts, %struct.itrace_synth_opts* %29, i32 0, i32 9
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %78, label %33

33:                                               ; preds = %28
  %34 = load %struct.itrace_synth_opts*, %struct.itrace_synth_opts** %3, align 8
  %35 = getelementptr inbounds %struct.itrace_synth_opts, %struct.itrace_synth_opts* %34, i32 0, i32 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %78, label %38

38:                                               ; preds = %33
  %39 = load %struct.itrace_synth_opts*, %struct.itrace_synth_opts** %3, align 8
  %40 = getelementptr inbounds %struct.itrace_synth_opts, %struct.itrace_synth_opts* %39, i32 0, i32 7
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %78, label %43

43:                                               ; preds = %38
  %44 = load %struct.itrace_synth_opts*, %struct.itrace_synth_opts** %3, align 8
  %45 = getelementptr inbounds %struct.itrace_synth_opts, %struct.itrace_synth_opts* %44, i32 0, i32 6
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %78, label %48

48:                                               ; preds = %43
  %49 = load %struct.itrace_synth_opts*, %struct.itrace_synth_opts** %3, align 8
  %50 = getelementptr inbounds %struct.itrace_synth_opts, %struct.itrace_synth_opts* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %78, label %53

53:                                               ; preds = %48
  %54 = load %struct.itrace_synth_opts*, %struct.itrace_synth_opts** %3, align 8
  %55 = getelementptr inbounds %struct.itrace_synth_opts, %struct.itrace_synth_opts* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %78, label %58

58:                                               ; preds = %53
  %59 = load %struct.itrace_synth_opts*, %struct.itrace_synth_opts** %3, align 8
  %60 = getelementptr inbounds %struct.itrace_synth_opts, %struct.itrace_synth_opts* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %78, label %63

63:                                               ; preds = %58
  %64 = load %struct.itrace_synth_opts*, %struct.itrace_synth_opts** %3, align 8
  %65 = getelementptr inbounds %struct.itrace_synth_opts, %struct.itrace_synth_opts* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %63
  %69 = load %struct.itrace_synth_opts*, %struct.itrace_synth_opts** %3, align 8
  %70 = getelementptr inbounds %struct.itrace_synth_opts, %struct.itrace_synth_opts* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load %struct.itrace_synth_opts*, %struct.itrace_synth_opts** %3, align 8
  %75 = getelementptr inbounds %struct.itrace_synth_opts, %struct.itrace_synth_opts* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br label %78

78:                                               ; preds = %73, %68, %63, %58, %53, %48, %43, %38, %33, %28, %23, %18, %13
  %79 = phi i1 [ true, %68 ], [ true, %63 ], [ true, %58 ], [ true, %53 ], [ true, %48 ], [ true, %43 ], [ true, %38 ], [ true, %33 ], [ true, %28 ], [ true, %23 ], [ true, %18 ], [ true, %13 ], [ %77, %73 ]
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %78
  store i32 1, i32* %2, align 4
  br label %86

84:                                               ; preds = %78
  %85 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %84, %83, %12
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
