; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_section_names.c_test_prog_type_by_name.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_section_names.c_test_prog_type_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_name_test = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"prog: unexpected rc=%d for %s\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"prog: unexpected prog_type=%d for %s\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"prog: unexpected expected_attach_type=%d for %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sec_name_test*)* @test_prog_type_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_prog_type_by_name(%struct.sec_name_test* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sec_name_test*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sec_name_test* %0, %struct.sec_name_test** %3, align 8
  %7 = load %struct.sec_name_test*, %struct.sec_name_test** %3, align 8
  %8 = getelementptr inbounds %struct.sec_name_test, %struct.sec_name_test* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @libbpf_prog_type_by_name(i32 %9, i32* %5, i32* %4)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.sec_name_test*, %struct.sec_name_test** %3, align 8
  %13 = getelementptr inbounds %struct.sec_name_test, %struct.sec_name_test* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %11, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.sec_name_test*, %struct.sec_name_test** %3, align 8
  %20 = getelementptr inbounds %struct.sec_name_test, %struct.sec_name_test* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  store i32 -1, i32* %2, align 4
  br label %54

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %54

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.sec_name_test*, %struct.sec_name_test** %3, align 8
  %30 = getelementptr inbounds %struct.sec_name_test, %struct.sec_name_test* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %28, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.sec_name_test*, %struct.sec_name_test** %3, align 8
  %37 = getelementptr inbounds %struct.sec_name_test, %struct.sec_name_test* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %38)
  store i32 -1, i32* %2, align 4
  br label %54

40:                                               ; preds = %27
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.sec_name_test*, %struct.sec_name_test** %3, align 8
  %43 = getelementptr inbounds %struct.sec_name_test, %struct.sec_name_test* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %41, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.sec_name_test*, %struct.sec_name_test** %3, align 8
  %50 = getelementptr inbounds %struct.sec_name_test, %struct.sec_name_test* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %48, i32 %51)
  store i32 -1, i32* %2, align 4
  br label %54

53:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %47, %34, %26, %17
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @libbpf_prog_type_by_name(i32, i32*, i32*) #1

declare dso_local i32 @warnx(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
