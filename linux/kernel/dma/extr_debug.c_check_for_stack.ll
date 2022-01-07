; ModuleID = '/home/carl/AnghaBench/linux/kernel/dma/extr_debug.c_check_for_stack.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/dma/extr_debug.c_check_for_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.device = type { i32 }
%struct.page = type { i32 }
%struct.vm_struct = type { i32, %struct.page** }

@current = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [48 x i8] c"device driver maps memory from stack [addr=%p]\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"device driver maps memory from stack [probable addr=%p]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.page*, i64)* @check_for_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_for_stack(%struct.device* %0, %struct.page* %1, i64 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.vm_struct*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %11 = call %struct.vm_struct* @task_stack_vm_area(%struct.TYPE_3__* %10)
  store %struct.vm_struct* %11, %struct.vm_struct** %8, align 8
  %12 = load %struct.vm_struct*, %struct.vm_struct** %8, align 8
  %13 = icmp ne %struct.vm_struct* %12, null
  br i1 %13, label %32, label %14

14:                                               ; preds = %3
  %15 = load %struct.page*, %struct.page** %5, align 8
  %16 = call i64 @PageHighMem(%struct.page* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %70

19:                                               ; preds = %14
  %20 = load %struct.page*, %struct.page** %5, align 8
  %21 = call i8* @page_address(%struct.page* %20)
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr i8, i8* %21, i64 %22
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @object_is_on_stack(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @err_printk(%struct.device* %28, i32* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %27, %19
  br label %70

32:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %66, %32
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.vm_struct*, %struct.vm_struct** %8, align 8
  %36 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %69

39:                                               ; preds = %33
  %40 = load %struct.page*, %struct.page** %5, align 8
  %41 = load %struct.vm_struct*, %struct.vm_struct** %8, align 8
  %42 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %41, i32 0, i32 1
  %43 = load %struct.page**, %struct.page*** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.page*, %struct.page** %43, i64 %45
  %47 = load %struct.page*, %struct.page** %46, align 8
  %48 = icmp ne %struct.page* %40, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %66

50:                                               ; preds = %39
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i32*
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @PAGE_SIZE, align 4
  %57 = mul nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  %60 = load i64, i64* %6, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = bitcast i32* %61 to i8*
  store i8* %62, i8** %7, align 8
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @err_printk(%struct.device* %63, i32* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  br label %69

66:                                               ; preds = %49
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %33

69:                                               ; preds = %50, %33
  br label %70

70:                                               ; preds = %18, %69, %31
  ret void
}

declare dso_local %struct.vm_struct* @task_stack_vm_area(%struct.TYPE_3__*) #1

declare dso_local i64 @PageHighMem(%struct.page*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i64 @object_is_on_stack(i8*) #1

declare dso_local i32 @err_printk(%struct.device*, i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
