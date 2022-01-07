; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_fork.c_account_kernel_stack.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_fork.c_account_kernel_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.vm_struct = type { i32, %struct.page** }
%struct.page = type { i32 }

@CONFIG_VMAP_STACK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@THREAD_SIZE = common dso_local global i32 0, align 4
@NR_KERNEL_STACK_KB = common dso_local global i32 0, align 4
@MEMCG_KERNEL_STACK_KB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i32)* @account_kernel_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @account_kernel_stack(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vm_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %10 = call i8* @task_stack_page(%struct.task_struct* %9)
  store i8* %10, i8** %5, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %12 = call %struct.vm_struct* @task_stack_vm_area(%struct.task_struct* %11)
  store %struct.vm_struct* %12, %struct.vm_struct** %6, align 8
  %13 = load i32, i32* @CONFIG_VMAP_STACK, align 4
  %14 = call i64 @IS_ENABLED(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = srem i32 %17, 1024
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %16, %2
  %21 = phi i1 [ false, %2 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUILD_BUG_ON(i32 %22)
  %24 = load %struct.vm_struct*, %struct.vm_struct** %6, align 8
  %25 = icmp ne %struct.vm_struct* %24, null
  br i1 %25, label %26, label %61

26:                                               ; preds = %20
  %27 = load %struct.vm_struct*, %struct.vm_struct** %6, align 8
  %28 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @THREAD_SIZE, align 4
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = sdiv i32 %30, %31
  %33 = icmp ne i32 %29, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %57, %26
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @THREAD_SIZE, align 4
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = sdiv i32 %38, %39
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %36
  %43 = load %struct.vm_struct*, %struct.vm_struct** %6, align 8
  %44 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %43, i32 0, i32 1
  %45 = load %struct.page**, %struct.page*** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.page*, %struct.page** %45, i64 %47
  %49 = load %struct.page*, %struct.page** %48, align 8
  %50 = call i32 @page_zone(%struct.page* %49)
  %51 = load i32, i32* @NR_KERNEL_STACK_KB, align 4
  %52 = load i32, i32* @PAGE_SIZE, align 4
  %53 = sdiv i32 %52, 1024
  %54 = load i32, i32* %4, align 4
  %55 = mul nsw i32 %53, %54
  %56 = call i32 @mod_zone_page_state(i32 %50, i32 %51, i32 %55)
  br label %57

57:                                               ; preds = %42
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %36

60:                                               ; preds = %36
  br label %79

61:                                               ; preds = %20
  %62 = load i8*, i8** %5, align 8
  %63 = call %struct.page* @virt_to_page(i8* %62)
  store %struct.page* %63, %struct.page** %8, align 8
  %64 = load %struct.page*, %struct.page** %8, align 8
  %65 = call i32 @page_zone(%struct.page* %64)
  %66 = load i32, i32* @NR_KERNEL_STACK_KB, align 4
  %67 = load i32, i32* @THREAD_SIZE, align 4
  %68 = sdiv i32 %67, 1024
  %69 = load i32, i32* %4, align 4
  %70 = mul nsw i32 %68, %69
  %71 = call i32 @mod_zone_page_state(i32 %65, i32 %66, i32 %70)
  %72 = load %struct.page*, %struct.page** %8, align 8
  %73 = load i32, i32* @MEMCG_KERNEL_STACK_KB, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @THREAD_SIZE, align 4
  %76 = sdiv i32 %75, 1024
  %77 = mul nsw i32 %74, %76
  %78 = call i32 @mod_memcg_page_state(%struct.page* %72, i32 %73, i32 %77)
  br label %79

79:                                               ; preds = %61, %60
  ret void
}

declare dso_local i8* @task_stack_page(%struct.task_struct*) #1

declare dso_local %struct.vm_struct* @task_stack_vm_area(%struct.task_struct*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mod_zone_page_state(i32, i32, i32) #1

declare dso_local i32 @page_zone(%struct.page*) #1

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local i32 @mod_memcg_page_state(%struct.page*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
