; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/powerpc/util/extr_perf_regs.c_sdt_init_op_regex.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/powerpc/util/extr_perf_regs.c_sdt_init_op_regex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sdt_init_op_regex.initialized = internal global i32 0, align 4
@sdt_op_regex1 = common dso_local global i32 0, align 4
@SDT_OP_REGEX1 = common dso_local global i32 0, align 4
@REG_EXTENDED = common dso_local global i32 0, align 4
@sdt_op_regex2 = common dso_local global i32 0, align 4
@SDT_OP_REGEX2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Regex compilation error.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sdt_init_op_regex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdt_init_op_regex() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = load i32, i32* @sdt_init_op_regex.initialized, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %26

6:                                                ; preds = %0
  %7 = load i32, i32* @SDT_OP_REGEX1, align 4
  %8 = load i32, i32* @REG_EXTENDED, align 4
  %9 = call i32 @regcomp(i32* @sdt_op_regex1, i32 %7, i32 %8)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  br label %23

13:                                               ; preds = %6
  %14 = load i32, i32* @SDT_OP_REGEX2, align 4
  %15 = load i32, i32* @REG_EXTENDED, align 4
  %16 = call i32 @regcomp(i32* @sdt_op_regex2, i32 %14, i32 %15)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %21

20:                                               ; preds = %13
  store i32 1, i32* @sdt_init_op_regex.initialized, align 4
  store i32 0, i32* %1, align 4
  br label %26

21:                                               ; preds = %19
  %22 = call i32 @regfree(i32* @sdt_op_regex1)
  br label %23

23:                                               ; preds = %21, %12
  %24 = call i32 @pr_debug4(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %2, align 4
  store i32 %25, i32* %1, align 4
  br label %26

26:                                               ; preds = %23, %20, %5
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local i32 @regcomp(i32*, i32, i32) #1

declare dso_local i32 @regfree(i32*) #1

declare dso_local i32 @pr_debug4(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
