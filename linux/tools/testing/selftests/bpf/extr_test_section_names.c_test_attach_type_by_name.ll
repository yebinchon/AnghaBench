; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_section_names.c_test_attach_type_by_name.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_section_names.c_test_attach_type_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_name_test = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"attach: unexpected rc=%d for %s\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"attach: unexpected attach_type=%d for %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sec_name_test*)* @test_attach_type_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_attach_type_by_name(%struct.sec_name_test* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sec_name_test*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sec_name_test* %0, %struct.sec_name_test** %3, align 8
  %6 = load %struct.sec_name_test*, %struct.sec_name_test** %3, align 8
  %7 = getelementptr inbounds %struct.sec_name_test, %struct.sec_name_test* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @libbpf_attach_type_by_name(i32 %8, i32* %4)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.sec_name_test*, %struct.sec_name_test** %3, align 8
  %12 = getelementptr inbounds %struct.sec_name_test, %struct.sec_name_test* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %10, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.sec_name_test*, %struct.sec_name_test** %3, align 8
  %19 = getelementptr inbounds %struct.sec_name_test, %struct.sec_name_test* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20)
  store i32 -1, i32* %2, align 4
  br label %40

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %40

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.sec_name_test*, %struct.sec_name_test** %3, align 8
  %29 = getelementptr inbounds %struct.sec_name_test, %struct.sec_name_test* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %27, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.sec_name_test*, %struct.sec_name_test** %3, align 8
  %36 = getelementptr inbounds %struct.sec_name_test, %struct.sec_name_test* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @warnx(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %37)
  store i32 -1, i32* %2, align 4
  br label %40

39:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %33, %25, %16
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @libbpf_attach_type_by_name(i32, i32*) #1

declare dso_local i32 @warnx(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
