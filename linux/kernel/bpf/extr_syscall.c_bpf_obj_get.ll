; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_bpf_obj_get.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_bpf_obj_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.bpf_attr = type { i64 }

@BPF_OBJ = common dso_local global i32 0, align 4
@BPF_OBJ_FLAG_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.bpf_attr*)* @bpf_obj_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_obj_get(%union.bpf_attr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.bpf_attr*, align 8
  store %union.bpf_attr* %0, %union.bpf_attr** %3, align 8
  %4 = load i32, i32* @BPF_OBJ, align 4
  %5 = call i64 @CHECK_ATTR(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %1
  %8 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %9 = bitcast %union.bpf_attr* %8 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %7
  %13 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %14 = bitcast %union.bpf_attr* %13 to i32*
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @BPF_OBJ_FLAG_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %12, %7, %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %32

23:                                               ; preds = %12
  %24 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %25 = bitcast %union.bpf_attr* %24 to i32*
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @u64_to_user_ptr(i32 %26)
  %28 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %29 = bitcast %union.bpf_attr* %28 to i32*
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @bpf_obj_get_user(i32 %27, i32 %30)
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %23, %20
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @CHECK_ATTR(i32) #1

declare dso_local i32 @bpf_obj_get_user(i32, i32) #1

declare dso_local i32 @u64_to_user_ptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
