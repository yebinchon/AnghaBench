; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_bpf_sk_storage.c_bpf_sk_storage_map_alloc_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_bpf_sk_storage.c_bpf_sk_storage_map_alloc_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.bpf_attr = type { i64 }

@SK_STORAGE_CREATE_FLAG_MASK = common dso_local global i32 0, align 4
@BPF_F_NO_PREALLOC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@KMALLOC_MAX_SIZE = common dso_local global i32 0, align 4
@MAX_BPF_STACK = common dso_local global i32 0, align 4
@U16_MAX = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.bpf_attr*)* @bpf_sk_storage_map_alloc_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_sk_storage_map_alloc_check(%union.bpf_attr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.bpf_attr*, align 8
  store %union.bpf_attr* %0, %union.bpf_attr** %3, align 8
  %4 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %5 = bitcast %union.bpf_attr* %4 to i32*
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @SK_STORAGE_CREATE_FLAG_MASK, align 4
  %8 = xor i32 %7, -1
  %9 = and i32 %6, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %44, label %11

11:                                               ; preds = %1
  %12 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %13 = bitcast %union.bpf_attr* %12 to i32*
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @BPF_F_NO_PREALLOC, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %11
  %19 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %20 = bitcast %union.bpf_attr* %19 to i64*
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %44, label %23

23:                                               ; preds = %18
  %24 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %25 = bitcast %union.bpf_attr* %24 to i32*
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = icmp ne i64 %27, 4
  br i1 %28, label %44, label %29

29:                                               ; preds = %23
  %30 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %31 = bitcast %union.bpf_attr* %30 to i32*
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %36 = bitcast %union.bpf_attr* %35 to i32*
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %41 = bitcast %union.bpf_attr* %40 to i32*
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39, %34, %29, %23, %18, %11, %1
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %78

47:                                               ; preds = %39
  %48 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %49 = call i32 @capable(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* @EPERM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %78

54:                                               ; preds = %47
  %55 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %56 = bitcast %union.bpf_attr* %55 to i32*
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = load i32, i32* @KMALLOC_MAX_SIZE, align 4
  %60 = load i32, i32* @MAX_BPF_STACK, align 4
  %61 = sub nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = sub i64 %62, 4
  %64 = icmp uge i64 %58, %63
  br i1 %64, label %74, label %65

65:                                               ; preds = %54
  %66 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %67 = bitcast %union.bpf_attr* %66 to i32*
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = load i32, i32* @U16_MAX, align 4
  %71 = sext i32 %70 to i64
  %72 = sub i64 %71, 4
  %73 = icmp ugt i64 %69, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %65, %54
  %75 = load i32, i32* @E2BIG, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %78

77:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %74, %51, %44
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @capable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
