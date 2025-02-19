; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kallsyms.c_kallsyms_lookup_name.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kallsyms.c_kallsyms_lookup_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KSYM_NAME_LEN = common dso_local global i32 0, align 4
@kallsyms_num_syms = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kallsyms_lookup_name(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i32, i32* @KSYM_NAME_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %28, %1
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @kallsyms_num_syms, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @ARRAY_SIZE(i8* %12)
  %20 = call i32 @kallsyms_expand_symbol(i32 %18, i8* %12, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @strcmp(i8* %12, i8* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i64, i64* %6, align 8
  %26 = call i64 @kallsyms_sym_address(i64 %25)
  store i64 %26, i64* %2, align 8
  store i32 1, i32* %8, align 4
  br label %34

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %6, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %6, align 8
  br label %13

31:                                               ; preds = %13
  %32 = load i8*, i8** %3, align 8
  %33 = call i64 @module_kallsyms_lookup_name(i8* %32)
  store i64 %33, i64* %2, align 8
  store i32 1, i32* %8, align 4
  br label %34

34:                                               ; preds = %31, %24
  %35 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %35)
  %36 = load i64, i64* %2, align 8
  ret i64 %36
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @kallsyms_expand_symbol(i32, i8*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i64 @kallsyms_sym_address(i64) #2

declare dso_local i64 @module_kallsyms_lookup_name(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
