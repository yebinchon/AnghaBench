; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_kernel_get_symbol_address_by_name.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_kernel_get_symbol_address_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_reloc_sym = type { i64, i64, i32 }
%struct.symbol = type { i32 }
%struct.map = type { i32, i64, i64 (%struct.map*, i32)* }

@host_machine = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, i32, i32)* @kernel_get_symbol_address_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kernel_get_symbol_address_by_name(i8* %0, i64* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ref_reloc_sym*, align 8
  %11 = alloca %struct.symbol*, align 8
  %12 = alloca %struct.map*, align 8
  store i8* %0, i8** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = call %struct.ref_reloc_sym* (...) @kernel_get_ref_reloc_sym()
  store %struct.ref_reloc_sym* %13, %struct.ref_reloc_sym** %10, align 8
  %14 = load %struct.ref_reloc_sym*, %struct.ref_reloc_sym** %10, align 8
  %15 = icmp ne %struct.ref_reloc_sym* %14, null
  br i1 %15, label %16, label %37

16:                                               ; preds = %4
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.ref_reloc_sym*, %struct.ref_reloc_sym** %10, align 8
  %19 = getelementptr inbounds %struct.ref_reloc_sym, %struct.ref_reloc_sym* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @strcmp(i8* %17, i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %16
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.ref_reloc_sym*, %struct.ref_reloc_sym** %10, align 8
  %28 = getelementptr inbounds %struct.ref_reloc_sym, %struct.ref_reloc_sym* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  br label %34

30:                                               ; preds = %23
  %31 = load %struct.ref_reloc_sym*, %struct.ref_reloc_sym** %10, align 8
  %32 = getelementptr inbounds %struct.ref_reloc_sym, %struct.ref_reloc_sym* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i64 [ %29, %26 ], [ %33, %30 ]
  %36 = load i64*, i64** %7, align 8
  store i64 %35, i64* %36, align 8
  br label %77

37:                                               ; preds = %16, %4
  %38 = load i32, i32* @host_machine, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = call %struct.symbol* @machine__find_kernel_symbol_by_name(i32 %38, i8* %39, %struct.map** %12)
  store %struct.symbol* %40, %struct.symbol** %11, align 8
  %41 = load %struct.symbol*, %struct.symbol** %11, align 8
  %42 = icmp ne %struct.symbol* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @ENOENT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %78

46:                                               ; preds = %37
  %47 = load %struct.map*, %struct.map** %12, align 8
  %48 = getelementptr inbounds %struct.map, %struct.map* %47, i32 0, i32 2
  %49 = load i64 (%struct.map*, i32)*, i64 (%struct.map*, i32)** %48, align 8
  %50 = load %struct.map*, %struct.map** %12, align 8
  %51 = load %struct.symbol*, %struct.symbol** %11, align 8
  %52 = getelementptr inbounds %struct.symbol, %struct.symbol* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 %49(%struct.map* %50, i32 %53)
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  br label %62

58:                                               ; preds = %46
  %59 = load %struct.map*, %struct.map** %12, align 8
  %60 = getelementptr inbounds %struct.map, %struct.map* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  br label %62

62:                                               ; preds = %58, %57
  %63 = phi i64 [ 0, %57 ], [ %61, %58 ]
  %64 = sub nsw i64 %54, %63
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load %struct.map*, %struct.map** %12, align 8
  %69 = getelementptr inbounds %struct.map, %struct.map* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  br label %72

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71, %67
  %73 = phi i32 [ %70, %67 ], [ 0, %71 ]
  %74 = sext i32 %73 to i64
  %75 = sub nsw i64 %64, %74
  %76 = load i64*, i64** %7, align 8
  store i64 %75, i64* %76, align 8
  br label %77

77:                                               ; preds = %72, %34
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %77, %43
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local %struct.ref_reloc_sym* @kernel_get_ref_reloc_sym(...) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local %struct.symbol* @machine__find_kernel_symbol_by_name(i32, i8*, %struct.map**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
