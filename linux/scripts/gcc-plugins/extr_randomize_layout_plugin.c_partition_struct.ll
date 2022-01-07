; ModuleID = '/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_randomize_layout_plugin.c_partition_struct.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_randomize_layout_plugin.c_partition_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partition_group = type { i64, i64, i64 }

@INT_MAX = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64, %struct.partition_group*, i64*)* @partition_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @partition_struct(i64* %0, i64 %1, %struct.partition_group* %2, i64* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.partition_group*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.partition_group* %2, %struct.partition_group** %7, align 8
  store i64* %3, i64** %8, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @INT_MAX, align 8
  %15 = icmp ult i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @gcc_assert(i32 %16)
  %18 = load %struct.partition_group*, %struct.partition_group** %7, align 8
  %19 = load i64, i64* %6, align 8
  %20 = mul i64 24, %19
  %21 = trunc i64 %20 to i32
  %22 = call i32 @memset(%struct.partition_group* %18, i32 0, i32 %21)
  store i64 0, i64* %9, align 8
  br label %23

23:                                               ; preds = %71, %4
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %74

27:                                               ; preds = %23
  %28 = load %struct.partition_group*, %struct.partition_group** %7, align 8
  %29 = load i64, i64* %12, align 8
  %30 = getelementptr inbounds %struct.partition_group, %struct.partition_group* %28, i64 %29
  %31 = getelementptr inbounds %struct.partition_group, %struct.partition_group* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NULL_TREE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %27
  %36 = load i64*, i64** %5, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.partition_group*, %struct.partition_group** %7, align 8
  %41 = load i64, i64* %12, align 8
  %42 = getelementptr inbounds %struct.partition_group, %struct.partition_group* %40, i64 %41
  %43 = getelementptr inbounds %struct.partition_group, %struct.partition_group* %42, i32 0, i32 0
  store i64 %39, i64* %43, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load %struct.partition_group*, %struct.partition_group** %7, align 8
  %46 = load i64, i64* %12, align 8
  %47 = getelementptr inbounds %struct.partition_group, %struct.partition_group* %45, i64 %46
  %48 = getelementptr inbounds %struct.partition_group, %struct.partition_group* %47, i32 0, i32 1
  store i64 %44, i64* %48, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %49

49:                                               ; preds = %35, %27
  %50 = load i64*, i64** %5, align 8
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @TREE_TYPE(i64 %53)
  %55 = call i64 @int_size_in_bytes(i32 %54)
  %56 = load i64, i64* %10, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %11, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %10, align 8
  %61 = icmp uge i64 %60, 64
  br i1 %61, label %62, label %70

62:                                               ; preds = %49
  %63 = load i64, i64* %11, align 8
  %64 = load %struct.partition_group*, %struct.partition_group** %7, align 8
  %65 = load i64, i64* %12, align 8
  %66 = getelementptr inbounds %struct.partition_group, %struct.partition_group* %64, i64 %65
  %67 = getelementptr inbounds %struct.partition_group, %struct.partition_group* %66, i32 0, i32 2
  store i64 %63, i64* %67, align 8
  store i64 0, i64* %11, align 8
  %68 = load i64, i64* %12, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %12, align 8
  br label %70

70:                                               ; preds = %62, %49
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %9, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %9, align 8
  br label %23

74:                                               ; preds = %23
  %75 = load %struct.partition_group*, %struct.partition_group** %7, align 8
  %76 = load i64, i64* %12, align 8
  %77 = getelementptr inbounds %struct.partition_group, %struct.partition_group* %75, i64 %76
  %78 = getelementptr inbounds %struct.partition_group, %struct.partition_group* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @NULL_TREE, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %97

82:                                               ; preds = %74
  %83 = load %struct.partition_group*, %struct.partition_group** %7, align 8
  %84 = load i64, i64* %12, align 8
  %85 = getelementptr inbounds %struct.partition_group, %struct.partition_group* %83, i64 %84
  %86 = getelementptr inbounds %struct.partition_group, %struct.partition_group* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %82
  %90 = load i64, i64* %11, align 8
  %91 = load %struct.partition_group*, %struct.partition_group** %7, align 8
  %92 = load i64, i64* %12, align 8
  %93 = getelementptr inbounds %struct.partition_group, %struct.partition_group* %91, i64 %92
  %94 = getelementptr inbounds %struct.partition_group, %struct.partition_group* %93, i32 0, i32 2
  store i64 %90, i64* %94, align 8
  %95 = load i64, i64* %12, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %12, align 8
  br label %97

97:                                               ; preds = %89, %82, %74
  %98 = load i64, i64* %12, align 8
  %99 = load i64*, i64** %8, align 8
  store i64 %98, i64* %99, align 8
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @memset(%struct.partition_group*, i32, i32) #1

declare dso_local i64 @int_size_in_bytes(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
