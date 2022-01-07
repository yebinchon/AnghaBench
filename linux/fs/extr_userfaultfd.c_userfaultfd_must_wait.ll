; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_userfaultfd.c_userfaultfd_must_wait.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_userfaultfd.c_userfaultfd_must_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.userfaultfd_ctx = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.userfaultfd_ctx*, i64, i64, i64)* @userfaultfd_must_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @userfaultfd_must_wait(%struct.userfaultfd_ctx* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.userfaultfd_ctx*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mm_struct*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.userfaultfd_ctx* %0, %struct.userfaultfd_ctx** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %17 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.userfaultfd_ctx, %struct.userfaultfd_ctx* %17, i32 0, i32 0
  %19 = load %struct.mm_struct*, %struct.mm_struct** %18, align 8
  store %struct.mm_struct* %19, %struct.mm_struct** %9, align 8
  store i32 1, i32* %16, align 4
  %20 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %21 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %20, i32 0, i32 0
  %22 = call i32 @rwsem_is_locked(i32* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @VM_BUG_ON(i32 %25)
  %27 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32* @pgd_offset(%struct.mm_struct* %27, i64 %28)
  store i32* %29, i32** %10, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pgd_present(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %4
  br label %86

35:                                               ; preds = %4
  %36 = load i32*, i32** %10, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32* @p4d_offset(i32* %36, i64 %37)
  store i32* %38, i32** %11, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @p4d_present(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %35
  br label %86

44:                                               ; preds = %35
  %45 = load i32*, i32** %11, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32* @pud_offset(i32* %45, i64 %46)
  store i32* %47, i32** %12, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pud_present(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  br label %86

53:                                               ; preds = %44
  %54 = load i32*, i32** %12, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i32* @pmd_offset(i32* %54, i64 %55)
  store i32* %56, i32** %13, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @READ_ONCE(i32 %58)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = call i64 @pmd_none(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %86

64:                                               ; preds = %53
  store i32 0, i32* %16, align 4
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @pmd_present(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  br label %86

69:                                               ; preds = %64
  %70 = load i32, i32* %14, align 4
  %71 = call i64 @pmd_trans_huge(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %86

74:                                               ; preds = %69
  %75 = load i32*, i32** %13, align 8
  %76 = load i64, i64* %6, align 8
  %77 = call i32* @pte_offset_map(i32* %75, i64 %76)
  store i32* %77, i32** %15, align 8
  %78 = load i32*, i32** %15, align 8
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @pte_none(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  store i32 1, i32* %16, align 4
  br label %83

83:                                               ; preds = %82, %74
  %84 = load i32*, i32** %15, align 8
  %85 = call i32 @pte_unmap(i32* %84)
  br label %86

86:                                               ; preds = %83, %73, %68, %63, %52, %43, %34
  %87 = load i32, i32* %16, align 4
  ret i32 %87
}

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @rwsem_is_locked(i32*) #1

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i32 @pgd_present(i32) #1

declare dso_local i32* @p4d_offset(i32*, i64) #1

declare dso_local i32 @p4d_present(i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i32 @pud_present(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i32 @pmd_present(i32) #1

declare dso_local i64 @pmd_trans_huge(i32) #1

declare dso_local i32* @pte_offset_map(i32*, i64) #1

declare dso_local i64 @pte_none(i32) #1

declare dso_local i32 @pte_unmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
