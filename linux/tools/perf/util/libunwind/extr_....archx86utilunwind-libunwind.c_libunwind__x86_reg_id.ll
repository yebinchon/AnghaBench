; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/libunwind/extr_....archx86utilunwind-libunwind.c_libunwind__x86_reg_id.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/libunwind/extr_....archx86utilunwind-libunwind.c_libunwind__x86_reg_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PERF_REG_X86_AX = common dso_local global i32 0, align 4
@PERF_REG_X86_DX = common dso_local global i32 0, align 4
@PERF_REG_X86_CX = common dso_local global i32 0, align 4
@PERF_REG_X86_BX = common dso_local global i32 0, align 4
@PERF_REG_X86_SI = common dso_local global i32 0, align 4
@PERF_REG_X86_DI = common dso_local global i32 0, align 4
@PERF_REG_X86_BP = common dso_local global i32 0, align 4
@PERF_REG_X86_SP = common dso_local global i32 0, align 4
@PERF_REG_X86_IP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unwind: invalid reg id %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LIBUNWIND__ARCH_REG_ID(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %24 [
    i32 136, label %6
    i32 131, label %8
    i32 133, label %10
    i32 134, label %12
    i32 129, label %14
    i32 132, label %16
    i32 135, label %18
    i32 128, label %20
    i32 130, label %22
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @PERF_REG_X86_AX, align 4
  store i32 %7, i32* %4, align 4
  br label %29

8:                                                ; preds = %1
  %9 = load i32, i32* @PERF_REG_X86_DX, align 4
  store i32 %9, i32* %4, align 4
  br label %29

10:                                               ; preds = %1
  %11 = load i32, i32* @PERF_REG_X86_CX, align 4
  store i32 %11, i32* %4, align 4
  br label %29

12:                                               ; preds = %1
  %13 = load i32, i32* @PERF_REG_X86_BX, align 4
  store i32 %13, i32* %4, align 4
  br label %29

14:                                               ; preds = %1
  %15 = load i32, i32* @PERF_REG_X86_SI, align 4
  store i32 %15, i32* %4, align 4
  br label %29

16:                                               ; preds = %1
  %17 = load i32, i32* @PERF_REG_X86_DI, align 4
  store i32 %17, i32* %4, align 4
  br label %29

18:                                               ; preds = %1
  %19 = load i32, i32* @PERF_REG_X86_BP, align 4
  store i32 %19, i32* %4, align 4
  br label %29

20:                                               ; preds = %1
  %21 = load i32, i32* @PERF_REG_X86_SP, align 4
  store i32 %21, i32* %4, align 4
  br label %29

22:                                               ; preds = %1
  %23 = load i32, i32* @PERF_REG_X86_IP, align 4
  store i32 %23, i32* %4, align 4
  br label %29

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %31

29:                                               ; preds = %22, %20, %18, %16, %14, %12, %10, %8, %6
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %24
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
