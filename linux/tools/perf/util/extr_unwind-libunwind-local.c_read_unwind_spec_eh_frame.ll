; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_unwind-libunwind-local.c_read_unwind_spec_eh_frame.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_unwind-libunwind-local.c_read_unwind_spec_eh_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.machine = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c".eh_frame_hdr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dso*, %struct.machine*, i64*, i64*, i64*)* @read_unwind_spec_eh_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_unwind_spec_eh_frame(%struct.dso* %0, %struct.machine* %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dso*, align 8
  %8 = alloca %struct.machine*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.dso* %0, %struct.dso** %7, align 8
  store %struct.machine* %1, %struct.machine** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %12, align 4
  %17 = load %struct.dso*, %struct.dso** %7, align 8
  %18 = getelementptr inbounds %struct.dso, %struct.dso* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %14, align 8
  %21 = load i64, i64* %14, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %5
  %24 = load %struct.dso*, %struct.dso** %7, align 8
  %25 = load %struct.machine*, %struct.machine** %8, align 8
  %26 = call i32 @dso__data_get_fd(%struct.dso* %24, %struct.machine* %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %54

32:                                               ; preds = %23
  %33 = load i32, i32* %13, align 4
  %34 = call i64 @elf_section_offset(i32 %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i64 %34, i64* %14, align 8
  %35 = load i64, i64* %14, align 8
  %36 = load %struct.dso*, %struct.dso** %7, align 8
  %37 = getelementptr inbounds %struct.dso, %struct.dso* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i64 %35, i64* %38, align 8
  %39 = load %struct.dso*, %struct.dso** %7, align 8
  %40 = call i32 @dso__data_put_fd(%struct.dso* %39)
  br label %41

41:                                               ; preds = %32, %5
  %42 = load i64, i64* %14, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load %struct.dso*, %struct.dso** %7, align 8
  %46 = load %struct.machine*, %struct.machine** %8, align 8
  %47 = load i64, i64* %14, align 8
  %48 = load i64*, i64** %9, align 8
  %49 = load i64*, i64** %10, align 8
  %50 = load i64*, i64** %11, align 8
  %51 = call i32 @unwind_spec_ehframe(%struct.dso* %45, %struct.machine* %46, i64 %47, i64* %48, i64* %49, i64* %50)
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %44, %41
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %52, %29
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @dso__data_get_fd(%struct.dso*, %struct.machine*) #1

declare dso_local i64 @elf_section_offset(i32, i8*) #1

declare dso_local i32 @dso__data_put_fd(%struct.dso*) #1

declare dso_local i32 @unwind_spec_ehframe(%struct.dso*, %struct.machine*, i64, i64*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
