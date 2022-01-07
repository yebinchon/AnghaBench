; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_padata.c_show_cpumask.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_padata.c_show_cpumask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.padata_instance = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cpumask*, %struct.cpumask* }
%struct.cpumask = type { i32 }
%struct.attribute = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"serial_cpumask\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%*pb\0A\00", align 1
@nr_cpu_ids = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.padata_instance*, %struct.attribute*, i8*)* @show_cpumask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @show_cpumask(%struct.padata_instance* %0, %struct.attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.padata_instance*, align 8
  %5 = alloca %struct.attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cpumask*, align 8
  %8 = alloca i64, align 8
  store %struct.padata_instance* %0, %struct.padata_instance** %4, align 8
  store %struct.attribute* %1, %struct.attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.padata_instance*, %struct.padata_instance** %4, align 8
  %10 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.attribute*, %struct.attribute** %5, align 8
  %13 = getelementptr inbounds %struct.attribute, %struct.attribute* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @strcmp(i32 %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.padata_instance*, %struct.padata_instance** %4, align 8
  %19 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.cpumask*, %struct.cpumask** %20, align 8
  store %struct.cpumask* %21, %struct.cpumask** %7, align 8
  br label %27

22:                                               ; preds = %3
  %23 = load %struct.padata_instance*, %struct.padata_instance** %4, align 8
  %24 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.cpumask*, %struct.cpumask** %25, align 8
  store %struct.cpumask* %26, %struct.cpumask** %7, align 8
  br label %27

27:                                               ; preds = %22, %17
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* @PAGE_SIZE, align 8
  %30 = load i32, i32* @nr_cpu_ids, align 4
  %31 = load %struct.cpumask*, %struct.cpumask** %7, align 8
  %32 = call i32 @cpumask_bits(%struct.cpumask* %31)
  %33 = call i64 @snprintf(i8* %28, i64 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %32)
  store i64 %33, i64* %8, align 8
  %34 = load %struct.padata_instance*, %struct.padata_instance** %4, align 8
  %35 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @PAGE_SIZE, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = load i64, i64* %8, align 8
  br label %45

42:                                               ; preds = %27
  %43 = load i64, i64* @EINVAL, align 8
  %44 = sub nsw i64 0, %43
  br label %45

45:                                               ; preds = %42, %40
  %46 = phi i64 [ %41, %40 ], [ %44, %42 ]
  ret i64 %46
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i64 @snprintf(i8*, i64, i8*, i32, i32) #1

declare dso_local i32 @cpumask_bits(%struct.cpumask*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
