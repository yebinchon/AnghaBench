; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kallsyms.c_kallsyms_sym_address.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kallsyms.c_kallsyms_sym_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_KALLSYMS_BASE_RELATIVE = common dso_local global i32 0, align 4
@kallsyms_addresses = common dso_local global i64* null, align 8
@CONFIG_KALLSYMS_ABSOLUTE_PERCPU = common dso_local global i32 0, align 4
@kallsyms_relative_base = common dso_local global i32 0, align 4
@kallsyms_offsets = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @kallsyms_sym_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kallsyms_sym_address(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @CONFIG_KALLSYMS_BASE_RELATIVE, align 4
  %5 = call i32 @IS_ENABLED(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load i64*, i64** @kallsyms_addresses, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i64, i64* %8, i64 %10
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %2, align 8
  br label %49

13:                                               ; preds = %1
  %14 = load i32, i32* @CONFIG_KALLSYMS_ABSOLUTE_PERCPU, align 4
  %15 = call i32 @IS_ENABLED(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @kallsyms_relative_base, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64*, i64** @kallsyms_offsets, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %19, %24
  store i64 %25, i64* %2, align 8
  br label %49

26:                                               ; preds = %13
  %27 = load i64*, i64** @kallsyms_offsets, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp sge i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load i64*, i64** @kallsyms_offsets, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %2, align 8
  br label %49

39:                                               ; preds = %26
  %40 = load i32, i32* @kallsyms_relative_base, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = load i64*, i64** @kallsyms_offsets, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %42, %47
  store i64 %48, i64* %2, align 8
  br label %49

49:                                               ; preds = %39, %33, %17, %7
  %50 = load i64, i64* %2, align 8
  ret i64 %50
}

declare dso_local i32 @IS_ENABLED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
