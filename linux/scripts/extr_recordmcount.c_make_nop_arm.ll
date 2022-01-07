; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_recordmcount.c_make_nop_arm.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_recordmcount.c_make_nop_arm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bl_mcount_arm = common dso_local global i32 0, align 4
@push_arm = common dso_local global i32 0, align 4
@ideal_nop4_arm = common dso_local global i32 0, align 4
@ideal_nop = common dso_local global i32 0, align 4
@push_bl_mcount_thumb = common dso_local global i32 0, align 4
@ideal_nop2_thumb = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @make_nop_arm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_nop_arm(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 1, i32* %7, align 4
  %10 = load i64, i64* %5, align 8
  store i64 %10, i64* %9, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr i8, i8* %11, i64 %12
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* @bl_mcount_arm, align 4
  %16 = call i64 @memcmp(i8* %14, i32 %15, i32 4)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 -4
  %21 = load i32, i32* @push_arm, align 4
  %22 = call i64 @memcmp(i8* %20, i32 %21, i32 4)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i64, i64* %9, align 8
  %26 = sub i64 %25, 4
  store i64 %26, i64* %9, align 8
  store i32 2, i32* %7, align 4
  br label %27

27:                                               ; preds = %24, %18
  %28 = load i32, i32* @ideal_nop4_arm, align 4
  store i32 %28, i32* @ideal_nop, align 4
  store i32 4, i32* %8, align 4
  br label %41

29:                                               ; preds = %2
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 -2
  %32 = load i32, i32* @push_bl_mcount_thumb, align 4
  %33 = call i64 @memcmp(i8* %31, i32 %32, i32 6)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  store i32 3, i32* %7, align 4
  store i32 2, i32* %8, align 4
  %36 = load i64, i64* %9, align 8
  %37 = sub i64 %36, 2
  store i64 %37, i64* %9, align 8
  %38 = load i32, i32* @ideal_nop2_thumb, align 4
  store i32 %38, i32* @ideal_nop, align 4
  br label %40

39:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %60

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40, %27
  %42 = load i64, i64* %9, align 8
  %43 = load i32, i32* @SEEK_SET, align 4
  %44 = call i64 @ulseek(i64 %42, i32 %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 -1, i32* %3, align 4
  br label %60

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %55, %47
  %49 = load i32, i32* @ideal_nop, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @uwrite(i32 %49, i32 %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 -1, i32* %3, align 4
  br label %60

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %7, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %48, label %59

59:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %53, %46, %39
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i64 @ulseek(i64, i32) #1

declare dso_local i64 @uwrite(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
