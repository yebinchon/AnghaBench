; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_request_any_context_irq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_request_any_context_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }

@IRQ_NOTCONNECTED = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IRQC_IS_NESTED = common dso_local global i32 0, align 4
@IRQC_IS_HARDIRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @request_any_context_irq(i32 %0, i32 %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.irq_desc*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @IRQ_NOTCONNECTED, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* @ENOTCONN, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %62

20:                                               ; preds = %5
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.irq_desc* @irq_to_desc(i32 %21)
  store %struct.irq_desc* %22, %struct.irq_desc** %12, align 8
  %23 = load %struct.irq_desc*, %struct.irq_desc** %12, align 8
  %24 = icmp ne %struct.irq_desc* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %62

28:                                               ; preds = %20
  %29 = load %struct.irq_desc*, %struct.irq_desc** %12, align 8
  %30 = call i64 @irq_settings_is_nested_thread(%struct.irq_desc* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i64, i64* %9, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = call i32 @request_threaded_irq(i32 %33, i32* null, i32 %34, i64 %35, i8* %36, i8* %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %32
  %42 = load i32, i32* @IRQC_IS_NESTED, align 4
  br label %45

43:                                               ; preds = %32
  %44 = load i32, i32* %13, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  store i32 %46, i32* %6, align 4
  br label %62

47:                                               ; preds = %28
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i64, i64* %9, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = call i32 @request_irq(i32 %48, i32 %49, i64 %50, i8* %51, i8* %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %47
  %57 = load i32, i32* @IRQC_IS_HARDIRQ, align 4
  br label %60

58:                                               ; preds = %47
  %59 = load i32, i32* %13, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %60, %45, %25, %17
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local i64 @irq_settings_is_nested_thread(%struct.irq_desc*) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i64, i8*, i8*) #1

declare dso_local i32 @request_irq(i32, i32, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
