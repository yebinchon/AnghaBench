; ModuleID = '/home/carl/AnghaBench/linux/net/iucv/extr_iucv.c_iucv_declare_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/net/iucv/extr_iucv.c_iucv_declare_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.iucv_param = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@iucv_buffer_cpumask = common dso_local global i32 0, align 4
@iucv_param_irq = common dso_local global %union.iucv_param** null, align 8
@iucv_irq_data = common dso_local global i32* null, align 8
@IUCV_DECLARE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Directory error\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Invalid length\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Buffer already exists\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Buffer overlap\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Paging or storage error\00", align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"Defining an interrupt buffer on CPU %i failed with 0x%02x (%s)\0A\00", align 1
@iucv_nonsmp_handler = common dso_local global i64 0, align 8
@iucv_irq_cpumask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @iucv_declare_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iucv_declare_cpu(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %union.iucv_param*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %7 = call i32 (...) @smp_processor_id()
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @cpumask_test_cpu(i32 %8, i32* @iucv_buffer_cpumask)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %58

12:                                               ; preds = %1
  %13 = load %union.iucv_param**, %union.iucv_param*** @iucv_param_irq, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %union.iucv_param*, %union.iucv_param** %13, i64 %15
  %17 = load %union.iucv_param*, %union.iucv_param** %16, align 8
  store %union.iucv_param* %17, %union.iucv_param** %4, align 8
  %18 = load %union.iucv_param*, %union.iucv_param** %4, align 8
  %19 = call i32 @memset(%union.iucv_param* %18, i32 0, i32 4)
  %20 = load i32*, i32** @iucv_irq_data, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @virt_to_phys(i32 %24)
  %26 = load %union.iucv_param*, %union.iucv_param** %4, align 8
  %27 = bitcast %union.iucv_param* %26 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @IUCV_DECLARE_BUFFER, align 4
  %30 = load %union.iucv_param*, %union.iucv_param** %4, align 8
  %31 = call i32 @iucv_call_b2f0(i32 %29, %union.iucv_param* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %12
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %35 = load i32, i32* %5, align 4
  switch i32 %35, label %41 [
    i32 3, label %36
    i32 10, label %37
    i32 19, label %38
    i32 62, label %39
    i32 92, label %40
  ]

36:                                               ; preds = %34
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %41

37:                                               ; preds = %34
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %41

38:                                               ; preds = %34
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %41

39:                                               ; preds = %34
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %41

40:                                               ; preds = %34
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  br label %41

41:                                               ; preds = %34, %40, %39, %38, %37, %36
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @pr_warn(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0), i32 %42, i32 %43, i8* %44)
  br label %58

46:                                               ; preds = %12
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @cpumask_set_cpu(i32 %47, i32* @iucv_buffer_cpumask)
  %49 = load i64, i64* @iucv_nonsmp_handler, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = call i64 @cpumask_empty(i32* @iucv_irq_cpumask)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51, %46
  %55 = call i32 @iucv_allow_cpu(i32* null)
  br label %58

56:                                               ; preds = %51
  %57 = call i32 @iucv_block_cpu(i32* null)
  br label %58

58:                                               ; preds = %11, %41, %56, %54
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @cpumask_test_cpu(i32, i32*) #1

declare dso_local i32 @memset(%union.iucv_param*, i32, i32) #1

declare dso_local i32 @virt_to_phys(i32) #1

declare dso_local i32 @iucv_call_b2f0(i32, %union.iucv_param*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, i8*) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32*) #1

declare dso_local i64 @cpumask_empty(i32*) #1

declare dso_local i32 @iucv_allow_cpu(i32*) #1

declare dso_local i32 @iucv_block_cpu(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
