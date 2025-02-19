; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kallsyms.c_kallsyms_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kallsyms.c_kallsyms_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KSYM_NAME_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kallsyms_lookup(i64 %0, i64* %1, i64* %2, i8** %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i8*, i8** %11, align 8
  %15 = load i32, i32* @KSYM_NAME_LEN, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %14, i64 %17
  store i8 0, i8* %18, align 1
  %19 = load i8*, i8** %11, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 0, i8* %20, align 1
  %21 = load i64, i64* %7, align 8
  %22 = call i64 @is_ksym_addr(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %5
  %25 = load i64, i64* %7, align 8
  %26 = load i64*, i64** %8, align 8
  %27 = load i64*, i64** %9, align 8
  %28 = call i64 @get_symbol_pos(i64 %25, i64* %26, i64* %27)
  store i64 %28, i64* %13, align 8
  %29 = load i64, i64* %13, align 8
  %30 = call i32 @get_symbol_offset(i64 %29)
  %31 = load i8*, i8** %11, align 8
  %32 = load i32, i32* @KSYM_NAME_LEN, align 4
  %33 = call i32 @kallsyms_expand_symbol(i32 %30, i8* %31, i32 %32)
  %34 = load i8**, i8*** %10, align 8
  %35 = icmp ne i8** %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = load i8**, i8*** %10, align 8
  store i8* null, i8** %37, align 8
  br label %38

38:                                               ; preds = %36, %24
  %39 = load i8*, i8** %11, align 8
  store i8* %39, i8** %6, align 8
  br label %68

40:                                               ; preds = %5
  %41 = load i64, i64* %7, align 8
  %42 = load i64*, i64** %8, align 8
  %43 = load i64*, i64** %9, align 8
  %44 = load i8**, i8*** %10, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = call i8* @module_address_lookup(i64 %41, i64* %42, i64* %43, i8** %44, i8* %45)
  store i8* %46, i8** %12, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %40
  %50 = load i64, i64* %7, align 8
  %51 = load i64*, i64** %8, align 8
  %52 = load i64*, i64** %9, align 8
  %53 = load i8**, i8*** %10, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = call i8* @bpf_address_lookup(i64 %50, i64* %51, i64* %52, i8** %53, i8* %54)
  store i8* %55, i8** %12, align 8
  br label %56

56:                                               ; preds = %49, %40
  %57 = load i8*, i8** %12, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %56
  %60 = load i64, i64* %7, align 8
  %61 = load i64*, i64** %8, align 8
  %62 = load i64*, i64** %9, align 8
  %63 = load i8**, i8*** %10, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = call i8* @ftrace_mod_address_lookup(i64 %60, i64* %61, i64* %62, i8** %63, i8* %64)
  store i8* %65, i8** %12, align 8
  br label %66

66:                                               ; preds = %59, %56
  %67 = load i8*, i8** %12, align 8
  store i8* %67, i8** %6, align 8
  br label %68

68:                                               ; preds = %66, %38
  %69 = load i8*, i8** %6, align 8
  ret i8* %69
}

declare dso_local i64 @is_ksym_addr(i64) #1

declare dso_local i64 @get_symbol_pos(i64, i64*, i64*) #1

declare dso_local i32 @kallsyms_expand_symbol(i32, i8*, i32) #1

declare dso_local i32 @get_symbol_offset(i64) #1

declare dso_local i8* @module_address_lookup(i64, i64*, i64*, i8**, i8*) #1

declare dso_local i8* @bpf_address_lookup(i64, i64*, i64*, i8**, i8*) #1

declare dso_local i8* @ftrace_mod_address_lookup(i64, i64*, i64*, i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
