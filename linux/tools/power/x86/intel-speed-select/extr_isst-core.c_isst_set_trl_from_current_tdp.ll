; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-core.c_isst_set_trl_from_current_tdp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-core.c_isst_set_trl_from_current_tdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isst_pkg_ctdp = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isst_set_trl_from_current_tdp(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.isst_pkg_ctdp, align 4
  %9 = alloca [8 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  store i64 %15, i64* %6, align 8
  br label %54

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @isst_get_ctdp_levels(i32 %17, %struct.isst_pkg_ctdp* %8)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %62

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  %25 = getelementptr inbounds %struct.isst_pkg_ctdp, %struct.isst_pkg_ctdp* %8, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %28 = call i32 @isst_get_get_trl(i32 %24, i32 %26, i32 0, i32* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %62

33:                                               ; preds = %23
  store i64 0, i64* %6, align 8
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %50, %33
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 8
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i32, i32* %10, align 4
  %45 = mul nsw i32 %44, 8
  %46 = zext i32 %45 to i64
  %47 = shl i64 %43, %46
  %48 = load i64, i64* %6, align 8
  %49 = or i64 %48, %47
  store i64 %49, i64* %6, align 8
  br label %50

50:                                               ; preds = %37
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %34

53:                                               ; preds = %34
  br label %54

54:                                               ; preds = %53, %14
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @isst_send_msr_command(i32 %55, i32 429, i32 1, i64* %6)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %62

61:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %59, %31, %21
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @isst_get_ctdp_levels(i32, %struct.isst_pkg_ctdp*) #1

declare dso_local i32 @isst_get_get_trl(i32, i32, i32, i32*) #1

declare dso_local i32 @isst_send_msr_command(i32, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
