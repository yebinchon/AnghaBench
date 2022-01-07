; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_queue_stack_maps.c_queue_stack_map_alloc_check.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_queue_stack_maps.c_queue_stack_map_alloc_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.bpf_attr = type { i64 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@QUEUE_STACK_CREATE_FLAG_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KMALLOC_MAX_SIZE = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.bpf_attr*)* @queue_stack_map_alloc_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_stack_map_alloc_check(%union.bpf_attr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.bpf_attr*, align 8
  store %union.bpf_attr* %0, %union.bpf_attr** %3, align 8
  %4 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %5 = call i32 @capable(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @EPERM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %52

10:                                               ; preds = %1
  %11 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %12 = bitcast %union.bpf_attr* %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %39, label %15

15:                                               ; preds = %10
  %16 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %17 = bitcast %union.bpf_attr* %16 to i64*
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %39, label %20

20:                                               ; preds = %15
  %21 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %22 = bitcast %union.bpf_attr* %21 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %20
  %26 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %27 = bitcast %union.bpf_attr* %26 to i32*
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @QUEUE_STACK_CREATE_FLAG_MASK, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %25
  %34 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %35 = bitcast %union.bpf_attr* %34 to i32*
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @bpf_map_flags_access_ok(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %33, %25, %20, %15, %10
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %52

42:                                               ; preds = %33
  %43 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %44 = bitcast %union.bpf_attr* %43 to i64*
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @KMALLOC_MAX_SIZE, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @E2BIG, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %52

51:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %48, %39, %7
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @bpf_map_flags_access_ok(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
