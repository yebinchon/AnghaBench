; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_padata.c_store_cpumask.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_padata.c_store_cpumask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.padata_instance = type { i32 }
%struct.attribute = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@nr_cpumask_bits = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"serial_cpumask\00", align 1
@PADATA_CPU_SERIAL = common dso_local global i32 0, align 4
@PADATA_CPU_PARALLEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.padata_instance*, %struct.attribute*, i8*, i64)* @store_cpumask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_cpumask(%struct.padata_instance* %0, %struct.attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.padata_instance*, align 8
  %7 = alloca %struct.attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.padata_instance* %0, %struct.padata_instance** %6, align 8
  store %struct.attribute* %1, %struct.attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32 @alloc_cpumask_var(i32* %10, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* @ENOMEM, align 8
  %18 = sub i64 0, %17
  store i64 %18, i64* %5, align 8
  br label %54

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @cpumask_bits(i32 %22)
  %24 = load i32, i32* @nr_cpumask_bits, align 4
  %25 = call i64 @bitmap_parse(i8* %20, i64 %21, i32 %23, i32 %24)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = icmp ult i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %50

29:                                               ; preds = %19
  %30 = load %struct.attribute*, %struct.attribute** %7, align 8
  %31 = getelementptr inbounds %struct.attribute, %struct.attribute* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @strcmp(i32 %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @PADATA_CPU_SERIAL, align 4
  br label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @PADATA_CPU_PARALLEL, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  store i32 %40, i32* %12, align 4
  %41 = load %struct.padata_instance*, %struct.padata_instance** %6, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i64 @padata_set_cpumask(%struct.padata_instance* %41, i32 %42, i32 %43)
  store i64 %44, i64* %11, align 8
  %45 = load i64, i64* %11, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %39
  %48 = load i64, i64* %9, align 8
  store i64 %48, i64* %11, align 8
  br label %49

49:                                               ; preds = %47, %39
  br label %50

50:                                               ; preds = %49, %28
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @free_cpumask_var(i32 %51)
  %53 = load i64, i64* %11, align 8
  store i64 %53, i64* %5, align 8
  br label %54

54:                                               ; preds = %50, %16
  %55 = load i64, i64* %5, align 8
  ret i64 %55
}

declare dso_local i32 @alloc_cpumask_var(i32*, i32) #1

declare dso_local i64 @bitmap_parse(i8*, i64, i32, i32) #1

declare dso_local i32 @cpumask_bits(i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i64 @padata_set_cpumask(%struct.padata_instance*, i32, i32) #1

declare dso_local i32 @free_cpumask_var(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
