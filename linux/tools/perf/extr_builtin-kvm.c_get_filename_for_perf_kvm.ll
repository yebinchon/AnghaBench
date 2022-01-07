; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-kvm.c_get_filename_for_perf_kvm.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-kvm.c_get_filename_for_perf_kvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@perf_host = common dso_local global i64 0, align 8
@perf_guest = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"perf.data.host\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"perf.data.guest\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"perf.data.kvm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @get_filename_for_perf_kvm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_filename_for_perf_kvm() #0 {
  %1 = alloca i8*, align 8
  %2 = load i64, i64* @perf_host, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = load i64, i64* @perf_guest, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = call i8* @strdup(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %1, align 8
  br label %20

9:                                                ; preds = %4, %0
  %10 = load i64, i64* @perf_host, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = load i64, i64* @perf_guest, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i8* @strdup(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i8* %16, i8** %1, align 8
  br label %19

17:                                               ; preds = %12, %9
  %18 = call i8* @strdup(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i8* %18, i8** %1, align 8
  br label %19

19:                                               ; preds = %17, %15
  br label %20

20:                                               ; preds = %19, %7
  %21 = load i8*, i8** %1, align 8
  ret i8* %21
}

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
