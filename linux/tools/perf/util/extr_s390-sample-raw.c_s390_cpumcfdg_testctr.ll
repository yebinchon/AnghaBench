; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_s390-sample-raw.c_s390_cpumcfdg_testctr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_s390-sample-raw.c_s390_cpumcfdg_testctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sample = type { i64, i8* }
%struct.cf_trailer_entry = type { i32 }
%struct.cf_ctrset_entry = type { i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [34 x i8] c"Invalid counter set entry at %zd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_sample*)* @s390_cpumcfdg_testctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s390_cpumcfdg_testctr(%struct.perf_sample* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_sample*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cf_trailer_entry*, align 8
  %8 = alloca %struct.cf_ctrset_entry*, align 8
  %9 = alloca %struct.cf_ctrset_entry, align 8
  store %struct.perf_sample* %0, %struct.perf_sample** %3, align 8
  %10 = load %struct.perf_sample*, %struct.perf_sample** %3, align 8
  %11 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %13 = load %struct.perf_sample*, %struct.perf_sample** %3, align 8
  %14 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %6, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %72

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %67, %19
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %71

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = bitcast i8* %27 to %struct.cf_ctrset_entry*
  store %struct.cf_ctrset_entry* %28, %struct.cf_ctrset_entry** %8, align 8
  %29 = load %struct.cf_ctrset_entry*, %struct.cf_ctrset_entry** %8, align 8
  %30 = getelementptr inbounds %struct.cf_ctrset_entry, %struct.cf_ctrset_entry* %29, i32 0, i32 3
  %31 = load i8*, i8** %30, align 8
  %32 = call i8* @be16_to_cpu(i8* %31)
  %33 = getelementptr inbounds %struct.cf_ctrset_entry, %struct.cf_ctrset_entry* %9, i32 0, i32 3
  store i8* %32, i8** %33, align 8
  %34 = load %struct.cf_ctrset_entry*, %struct.cf_ctrset_entry** %8, align 8
  %35 = getelementptr inbounds %struct.cf_ctrset_entry, %struct.cf_ctrset_entry* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = call i8* @be16_to_cpu(i8* %36)
  %38 = getelementptr inbounds %struct.cf_ctrset_entry, %struct.cf_ctrset_entry* %9, i32 0, i32 2
  store i8* %37, i8** %38, align 8
  %39 = load %struct.cf_ctrset_entry*, %struct.cf_ctrset_entry** %8, align 8
  %40 = getelementptr inbounds %struct.cf_ctrset_entry, %struct.cf_ctrset_entry* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i8* @be16_to_cpu(i8* %41)
  %43 = getelementptr inbounds %struct.cf_ctrset_entry, %struct.cf_ctrset_entry* %9, i32 0, i32 1
  store i8* %42, i8** %43, align 8
  %44 = load %struct.cf_ctrset_entry*, %struct.cf_ctrset_entry** %8, align 8
  %45 = getelementptr inbounds %struct.cf_ctrset_entry, %struct.cf_ctrset_entry* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i8* @be16_to_cpu(i8* %46)
  %48 = getelementptr inbounds %struct.cf_ctrset_entry, %struct.cf_ctrset_entry* %9, i32 0, i32 0
  store i8* %47, i8** %48, align 8
  %49 = call i32 @ctrset_valid(%struct.cf_ctrset_entry* %9)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %24
  %52 = load i64, i64* %5, align 8
  %53 = call i64 @ctrset_size(%struct.cf_ctrset_entry* %9)
  %54 = add i64 %52, %53
  %55 = load i64, i64* %4, align 8
  %56 = icmp ugt i64 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %51, %24
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* %5, align 8
  %60 = sub i64 %58, %59
  %61 = sub i64 %60, 4
  %62 = icmp eq i64 %61, 4
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %71

64:                                               ; preds = %57
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %65)
  store i32 0, i32* %2, align 4
  br label %72

67:                                               ; preds = %51
  %68 = call i64 @ctrset_size(%struct.cf_ctrset_entry* %9)
  %69 = load i64, i64* %5, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %5, align 8
  br label %20

71:                                               ; preds = %63, %20
  store i32 1, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %64, %18
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i8* @be16_to_cpu(i8*) #1

declare dso_local i32 @ctrset_valid(%struct.cf_ctrset_entry*) #1

declare dso_local i64 @ctrset_size(%struct.cf_ctrset_entry*) #1

declare dso_local i32 @pr_err(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
