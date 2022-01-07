; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_devres.c_devm_request_threaded_irq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_devres.c_devm_request_threaded_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.irq_devres = type { i32, i8* }

@devm_irq_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devm_request_threaded_irq(%struct.device* %0, i32 %1, i32 %2, i32 %3, i64 %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.irq_devres*, align 8
  %17 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %18 = load i32, i32* @devm_irq_release, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.irq_devres* @devres_alloc(i32 %18, i32 16, i32 %19)
  store %struct.irq_devres* %20, %struct.irq_devres** %16, align 8
  %21 = load %struct.irq_devres*, %struct.irq_devres** %16, align 8
  %22 = icmp ne %struct.irq_devres* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %7
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %8, align 4
  br label %56

26:                                               ; preds = %7
  %27 = load i8*, i8** %14, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load %struct.device*, %struct.device** %9, align 8
  %31 = call i8* @dev_name(%struct.device* %30)
  store i8* %31, i8** %14, align 8
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i64, i64* %13, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = load i8*, i8** %15, align 8
  %39 = call i32 @request_threaded_irq(i32 %33, i32 %34, i32 %35, i64 %36, i8* %37, i8* %38)
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %17, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %32
  %43 = load %struct.irq_devres*, %struct.irq_devres** %16, align 8
  %44 = call i32 @devres_free(%struct.irq_devres* %43)
  %45 = load i32, i32* %17, align 4
  store i32 %45, i32* %8, align 4
  br label %56

46:                                               ; preds = %32
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.irq_devres*, %struct.irq_devres** %16, align 8
  %49 = getelementptr inbounds %struct.irq_devres, %struct.irq_devres* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i8*, i8** %15, align 8
  %51 = load %struct.irq_devres*, %struct.irq_devres** %16, align 8
  %52 = getelementptr inbounds %struct.irq_devres, %struct.irq_devres* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.device*, %struct.device** %9, align 8
  %54 = load %struct.irq_devres*, %struct.irq_devres** %16, align 8
  %55 = call i32 @devres_add(%struct.device* %53, %struct.irq_devres* %54)
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %46, %42, %23
  %57 = load i32, i32* %8, align 4
  ret i32 %57
}

declare dso_local %struct.irq_devres* @devres_alloc(i32, i32, i32) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @request_threaded_irq(i32, i32, i32, i64, i8*, i8*) #1

declare dso_local i32 @devres_free(%struct.irq_devres*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.irq_devres*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
