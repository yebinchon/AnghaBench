; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_dwarf-regs.c_get_dwarf_regstr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_dwarf-regs.c_get_dwarf_regstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x86_32_regstr_tbl = common dso_local global i32 0, align 4
@x86_64_regstr_tbl = common dso_local global i32 0, align 4
@arm_regstr_tbl = common dso_local global i32 0, align 4
@aarch64_regstr_tbl = common dso_local global i32 0, align 4
@sh_regstr_tbl = common dso_local global i32 0, align 4
@s390_regstr_tbl = common dso_local global i32 0, align 4
@powerpc_regstr_tbl = common dso_local global i32 0, align 4
@sparc_regstr_tbl = common dso_local global i32 0, align 4
@xtensa_regstr_tbl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ELF MACHINE %x is not supported.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_dwarf_regstr(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %46 [
    i32 136, label %7
    i32 139, label %10
    i32 129, label %14
    i32 137, label %18
    i32 138, label %22
    i32 132, label %26
    i32 133, label %30
    i32 135, label %34
    i32 134, label %34
    i32 131, label %38
    i32 130, label %38
    i32 128, label %42
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = call i8* @get_arch_regstr(i32 %8)
  store i8* %9, i8** %3, align 8
  br label %50

10:                                               ; preds = %2
  %11 = load i32, i32* @x86_32_regstr_tbl, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i8* @__get_dwarf_regstr(i32 %11, i32 %12)
  store i8* %13, i8** %3, align 8
  br label %50

14:                                               ; preds = %2
  %15 = load i32, i32* @x86_64_regstr_tbl, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i8* @__get_dwarf_regstr(i32 %15, i32 %16)
  store i8* %17, i8** %3, align 8
  br label %50

18:                                               ; preds = %2
  %19 = load i32, i32* @arm_regstr_tbl, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i8* @__get_dwarf_regstr(i32 %19, i32 %20)
  store i8* %21, i8** %3, align 8
  br label %50

22:                                               ; preds = %2
  %23 = load i32, i32* @aarch64_regstr_tbl, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i8* @__get_dwarf_regstr(i32 %23, i32 %24)
  store i8* %25, i8** %3, align 8
  br label %50

26:                                               ; preds = %2
  %27 = load i32, i32* @sh_regstr_tbl, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i8* @__get_dwarf_regstr(i32 %27, i32 %28)
  store i8* %29, i8** %3, align 8
  br label %50

30:                                               ; preds = %2
  %31 = load i32, i32* @s390_regstr_tbl, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i8* @__get_dwarf_regstr(i32 %31, i32 %32)
  store i8* %33, i8** %3, align 8
  br label %50

34:                                               ; preds = %2, %2
  %35 = load i32, i32* @powerpc_regstr_tbl, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i8* @__get_dwarf_regstr(i32 %35, i32 %36)
  store i8* %37, i8** %3, align 8
  br label %50

38:                                               ; preds = %2, %2
  %39 = load i32, i32* @sparc_regstr_tbl, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i8* @__get_dwarf_regstr(i32 %39, i32 %40)
  store i8* %41, i8** %3, align 8
  br label %50

42:                                               ; preds = %2
  %43 = load i32, i32* @xtensa_regstr_tbl, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i8* @__get_dwarf_regstr(i32 %43, i32 %44)
  store i8* %45, i8** %3, align 8
  br label %50

46:                                               ; preds = %2
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %46
  store i8* null, i8** %3, align 8
  br label %50

50:                                               ; preds = %49, %42, %38, %34, %30, %26, %22, %18, %14, %10, %7
  %51 = load i8*, i8** %3, align 8
  ret i8* %51
}

declare dso_local i8* @get_arch_regstr(i32) #1

declare dso_local i8* @__get_dwarf_regstr(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
