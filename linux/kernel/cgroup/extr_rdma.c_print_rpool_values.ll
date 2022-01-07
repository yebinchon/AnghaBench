; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_rdma.c_print_rpool_values.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_rdma.c_print_rpool_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.rdmacg_resource_pool = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }

@RDMACG_RESOURCE_MAX = common dso_local global i32 0, align 4
@rdmacg_resource_names = common dso_local global i32* null, align 8
@RDMACG_RESOURCE_TYPE_MAX = common dso_local global i32 0, align 4
@S32_MAX = common dso_local global i64 0, align 8
@RDMACG_MAX_STR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.rdmacg_resource_pool*)* @print_rpool_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_rpool_values(%struct.seq_file* %0, %struct.rdmacg_resource_pool* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.rdmacg_resource_pool*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.rdmacg_resource_pool* %1, %struct.rdmacg_resource_pool** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = call %struct.TYPE_4__* @seq_cft(%struct.seq_file* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %73, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @RDMACG_RESOURCE_MAX, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %76

16:                                               ; preds = %12
  %17 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %18 = load i32*, i32** @rdmacg_resource_names, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @seq_puts(%struct.seq_file* %17, i32 %22)
  %24 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %25 = call i32 @seq_putc(%struct.seq_file* %24, i8 signext 61)
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @RDMACG_RESOURCE_TYPE_MAX, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %16
  %30 = load %struct.rdmacg_resource_pool*, %struct.rdmacg_resource_pool** %4, align 8
  %31 = icmp ne %struct.rdmacg_resource_pool* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load %struct.rdmacg_resource_pool*, %struct.rdmacg_resource_pool** %4, align 8
  %34 = getelementptr inbounds %struct.rdmacg_resource_pool, %struct.rdmacg_resource_pool* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %7, align 8
  br label %43

41:                                               ; preds = %29
  %42 = load i64, i64* @S32_MAX, align 8
  store i64 %42, i64* %7, align 8
  br label %43

43:                                               ; preds = %41, %32
  br label %58

44:                                               ; preds = %16
  %45 = load %struct.rdmacg_resource_pool*, %struct.rdmacg_resource_pool** %4, align 8
  %46 = icmp ne %struct.rdmacg_resource_pool* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load %struct.rdmacg_resource_pool*, %struct.rdmacg_resource_pool** %4, align 8
  %49 = getelementptr inbounds %struct.rdmacg_resource_pool, %struct.rdmacg_resource_pool* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %7, align 8
  br label %57

56:                                               ; preds = %44
  store i64 0, i64* %7, align 8
  br label %57

57:                                               ; preds = %56, %47
  br label %58

58:                                               ; preds = %57, %43
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* @S32_MAX, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %64 = load i32, i32* @RDMACG_MAX_STR, align 4
  %65 = call i32 @seq_puts(%struct.seq_file* %63, i32 %64)
  br label %70

66:                                               ; preds = %58
  %67 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @seq_printf(%struct.seq_file* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %68)
  br label %70

70:                                               ; preds = %66, %62
  %71 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %72 = call i32 @seq_putc(%struct.seq_file* %71, i8 signext 32)
  br label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %12

76:                                               ; preds = %12
  ret void
}

declare dso_local %struct.TYPE_4__* @seq_cft(%struct.seq_file*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i32) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
