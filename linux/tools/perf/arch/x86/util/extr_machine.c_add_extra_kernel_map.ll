; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_machine.c_add_extra_kernel_map.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_machine.c_add_extra_kernel_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extra_kernel_map_info = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8*, i8*, i8* }

@KMAP_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.extra_kernel_map_info*, i8*, i8*, i8*, i8*)* @add_extra_kernel_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_extra_kernel_map(%struct.extra_kernel_map_info* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.extra_kernel_map_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.extra_kernel_map_info* %0, %struct.extra_kernel_map_info** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load %struct.extra_kernel_map_info*, %struct.extra_kernel_map_info** %7, align 8
  %15 = getelementptr inbounds %struct.extra_kernel_map_info, %struct.extra_kernel_map_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.extra_kernel_map_info*, %struct.extra_kernel_map_info** %7, align 8
  %18 = getelementptr inbounds %struct.extra_kernel_map_info, %struct.extra_kernel_map_info* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp uge i64 %16, %19
  br i1 %20, label %21, label %53

21:                                               ; preds = %5
  %22 = load %struct.extra_kernel_map_info*, %struct.extra_kernel_map_info** %7, align 8
  %23 = getelementptr inbounds %struct.extra_kernel_map_info, %struct.extra_kernel_map_info* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.extra_kernel_map_info*, %struct.extra_kernel_map_info** %7, align 8
  %28 = getelementptr inbounds %struct.extra_kernel_map_info, %struct.extra_kernel_map_info* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = mul i64 %29, 2
  br label %32

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %26
  %33 = phi i64 [ %30, %26 ], [ 32, %31 ]
  %34 = load %struct.extra_kernel_map_info*, %struct.extra_kernel_map_info** %7, align 8
  %35 = getelementptr inbounds %struct.extra_kernel_map_info, %struct.extra_kernel_map_info* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load %struct.extra_kernel_map_info*, %struct.extra_kernel_map_info** %7, align 8
  %37 = getelementptr inbounds %struct.extra_kernel_map_info, %struct.extra_kernel_map_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = mul i64 4, %38
  store i64 %39, i64* %13, align 8
  %40 = load %struct.extra_kernel_map_info*, %struct.extra_kernel_map_info** %7, align 8
  %41 = getelementptr inbounds %struct.extra_kernel_map_info, %struct.extra_kernel_map_info* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i64, i64* %13, align 8
  %44 = call i8* @realloc(%struct.TYPE_2__* %42, i64 %43)
  store i8* %44, i8** %12, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %32
  store i32 -1, i32* %6, align 4
  br label %97

48:                                               ; preds = %32
  %49 = load i8*, i8** %12, align 8
  %50 = bitcast i8* %49 to %struct.TYPE_2__*
  %51 = load %struct.extra_kernel_map_info*, %struct.extra_kernel_map_info** %7, align 8
  %52 = getelementptr inbounds %struct.extra_kernel_map_info, %struct.extra_kernel_map_info* %51, i32 0, i32 2
  store %struct.TYPE_2__* %50, %struct.TYPE_2__** %52, align 8
  br label %53

53:                                               ; preds = %48, %5
  %54 = load i8*, i8** %8, align 8
  %55 = load %struct.extra_kernel_map_info*, %struct.extra_kernel_map_info** %7, align 8
  %56 = getelementptr inbounds %struct.extra_kernel_map_info, %struct.extra_kernel_map_info* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load %struct.extra_kernel_map_info*, %struct.extra_kernel_map_info** %7, align 8
  %59 = getelementptr inbounds %struct.extra_kernel_map_info, %struct.extra_kernel_map_info* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  store i8* %54, i8** %62, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = load %struct.extra_kernel_map_info*, %struct.extra_kernel_map_info** %7, align 8
  %65 = getelementptr inbounds %struct.extra_kernel_map_info, %struct.extra_kernel_map_info* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load %struct.extra_kernel_map_info*, %struct.extra_kernel_map_info** %7, align 8
  %68 = getelementptr inbounds %struct.extra_kernel_map_info, %struct.extra_kernel_map_info* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  store i8* %63, i8** %71, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = load %struct.extra_kernel_map_info*, %struct.extra_kernel_map_info** %7, align 8
  %74 = getelementptr inbounds %struct.extra_kernel_map_info, %struct.extra_kernel_map_info* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load %struct.extra_kernel_map_info*, %struct.extra_kernel_map_info** %7, align 8
  %77 = getelementptr inbounds %struct.extra_kernel_map_info, %struct.extra_kernel_map_info* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  store i8* %72, i8** %80, align 8
  %81 = load %struct.extra_kernel_map_info*, %struct.extra_kernel_map_info** %7, align 8
  %82 = getelementptr inbounds %struct.extra_kernel_map_info, %struct.extra_kernel_map_info* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load %struct.extra_kernel_map_info*, %struct.extra_kernel_map_info** %7, align 8
  %85 = getelementptr inbounds %struct.extra_kernel_map_info, %struct.extra_kernel_map_info* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = load i32, i32* @KMAP_NAME_LEN, align 4
  %92 = call i32 @strlcpy(i32 %89, i8* %90, i32 %91)
  %93 = load %struct.extra_kernel_map_info*, %struct.extra_kernel_map_info** %7, align 8
  %94 = getelementptr inbounds %struct.extra_kernel_map_info, %struct.extra_kernel_map_info* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %94, align 8
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %53, %47
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i8* @realloc(%struct.TYPE_2__*, i64) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
