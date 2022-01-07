; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_alloc.c_nilfs_palloc_find_available_slot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_alloc.c_nilfs_palloc_find_available_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32, i32*)* @nilfs_palloc_find_available_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_palloc_find_available_slot(i8* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* %8, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i64, i64* %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = zext i32 %14 to i64
  %16 = icmp ult i64 %13, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @likely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %49

20:                                               ; preds = %4
  %21 = load i64, i64* %7, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %10, align 4
  br label %23

23:                                               ; preds = %41, %20
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @nilfs_find_next_zero_bit(i8* %24, i32 %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %46

32:                                               ; preds = %23
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @nilfs_set_bit_atomic(i32* %33, i32 %34, i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %5, align 4
  br label %78

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %23, label %46

46:                                               ; preds = %41, %31
  %47 = load i64, i64* %7, align 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %46, %4
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %72, %49
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %50
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @nilfs_find_next_zero_bit(i8* %55, i32 %56, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp sge i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %75

63:                                               ; preds = %54
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @nilfs_set_bit_atomic(i32* %64, i32 %65, i8* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %5, align 4
  br label %78

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %50

75:                                               ; preds = %62, %50
  %76 = load i32, i32* @ENOSPC, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %75, %69, %38
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @nilfs_find_next_zero_bit(i8*, i32, i32) #1

declare dso_local i32 @nilfs_set_bit_atomic(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
