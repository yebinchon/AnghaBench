; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c_tracing_map_create.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c_tracing_map_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracing_map = type { i32, i32, i32, i32, i32*, i32, i8*, %struct.tracing_map_ops*, i32 }
%struct.tracing_map_ops = type { i32 }

@TRACING_MAP_BITS_MIN = common dso_local global i32 0, align 4
@TRACING_MAP_BITS_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TRACING_MAP_KEYS_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tracing_map* @tracing_map_create(i32 %0, i32 %1, %struct.tracing_map_ops* %2, i8* %3) #0 {
  %5 = alloca %struct.tracing_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tracing_map_ops*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.tracing_map*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.tracing_map_ops* %2, %struct.tracing_map_ops** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @TRACING_MAP_BITS_MIN, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @TRACING_MAP_BITS_MAX, align 4
  %18 = icmp ugt i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15, %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.tracing_map* @ERR_PTR(i32 %21)
  store %struct.tracing_map* %22, %struct.tracing_map** %5, align 8
  br label %92

23:                                               ; preds = %15
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.tracing_map* @kzalloc(i32 56, i32 %24)
  store %struct.tracing_map* %25, %struct.tracing_map** %10, align 8
  %26 = load %struct.tracing_map*, %struct.tracing_map** %10, align 8
  %27 = icmp ne %struct.tracing_map* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.tracing_map* @ERR_PTR(i32 %30)
  store %struct.tracing_map* %31, %struct.tracing_map** %5, align 8
  br label %92

32:                                               ; preds = %23
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.tracing_map*, %struct.tracing_map** %10, align 8
  %35 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = shl i32 1, %36
  %38 = load %struct.tracing_map*, %struct.tracing_map** %10, align 8
  %39 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.tracing_map*, %struct.tracing_map** %10, align 8
  %41 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %40, i32 0, i32 8
  %42 = call i32 @atomic_set(i32* %41, i32 -1)
  %43 = load i32, i32* %6, align 4
  %44 = add i32 %43, 1
  %45 = shl i32 1, %44
  %46 = load %struct.tracing_map*, %struct.tracing_map** %10, align 8
  %47 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.tracing_map_ops*, %struct.tracing_map_ops** %8, align 8
  %49 = load %struct.tracing_map*, %struct.tracing_map** %10, align 8
  %50 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %49, i32 0, i32 7
  store %struct.tracing_map_ops* %48, %struct.tracing_map_ops** %50, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load %struct.tracing_map*, %struct.tracing_map** %10, align 8
  %53 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %52, i32 0, i32 6
  store i8* %51, i8** %53, align 8
  %54 = load %struct.tracing_map*, %struct.tracing_map** %10, align 8
  %55 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @tracing_map_array_alloc(i32 %56, i32 4)
  %58 = load %struct.tracing_map*, %struct.tracing_map** %10, align 8
  %59 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 8
  %60 = load %struct.tracing_map*, %struct.tracing_map** %10, align 8
  %61 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %32
  br label %86

65:                                               ; preds = %32
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.tracing_map*, %struct.tracing_map** %10, align 8
  %68 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %80, %65
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @TRACING_MAP_KEYS_MAX, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %69
  %74 = load %struct.tracing_map*, %struct.tracing_map** %10, align 8
  %75 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %74, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 -1, i32* %79, align 4
  br label %80

80:                                               ; preds = %73
  %81 = load i32, i32* %11, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %69

83:                                               ; preds = %69
  br label %84

84:                                               ; preds = %86, %83
  %85 = load %struct.tracing_map*, %struct.tracing_map** %10, align 8
  store %struct.tracing_map* %85, %struct.tracing_map** %5, align 8
  br label %92

86:                                               ; preds = %64
  %87 = load %struct.tracing_map*, %struct.tracing_map** %10, align 8
  %88 = call i32 @tracing_map_destroy(%struct.tracing_map* %87)
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  %91 = call %struct.tracing_map* @ERR_PTR(i32 %90)
  store %struct.tracing_map* %91, %struct.tracing_map** %10, align 8
  br label %84

92:                                               ; preds = %84, %28, %19
  %93 = load %struct.tracing_map*, %struct.tracing_map** %5, align 8
  ret %struct.tracing_map* %93
}

declare dso_local %struct.tracing_map* @ERR_PTR(i32) #1

declare dso_local %struct.tracing_map* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @tracing_map_array_alloc(i32, i32) #1

declare dso_local i32 @tracing_map_destroy(%struct.tracing_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
