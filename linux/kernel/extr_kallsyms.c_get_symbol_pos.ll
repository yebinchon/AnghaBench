; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kallsyms.c_get_symbol_pos.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kallsyms.c_get_symbol_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_KALLSYMS_BASE_RELATIVE = common dso_local global i32 0, align 4
@kallsyms_addresses = common dso_local global i32 0, align 4
@kallsyms_offsets = common dso_local global i32 0, align 4
@kallsyms_num_syms = common dso_local global i64 0, align 8
@_einittext = common dso_local global i64 0, align 8
@CONFIG_KALLSYMS_ALL = common dso_local global i32 0, align 4
@_end = common dso_local global i64 0, align 8
@_etext = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64*, i64*)* @get_symbol_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_symbol_pos(i64 %0, i64* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %13 = load i32, i32* @CONFIG_KALLSYMS_BASE_RELATIVE, align 4
  %14 = call i64 @IS_ENABLED(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @kallsyms_addresses, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  br label %28

22:                                               ; preds = %3
  %23 = load i32, i32* @kallsyms_offsets, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  br label %28

28:                                               ; preds = %22, %16
  store i64 0, i64* %10, align 8
  %29 = load i64, i64* @kallsyms_num_syms, align 8
  store i64 %29, i64* %11, align 8
  br label %30

30:                                               ; preds = %50, %28
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* %10, align 8
  %33 = sub i64 %31, %32
  %34 = icmp ugt i64 %33, 1
  br i1 %34, label %35, label %51

35:                                               ; preds = %30
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %10, align 8
  %39 = sub i64 %37, %38
  %40 = udiv i64 %39, 2
  %41 = add i64 %36, %40
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %12, align 8
  %43 = call i64 @kallsyms_sym_address(i64 %42)
  %44 = load i64, i64* %4, align 8
  %45 = icmp ule i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i64, i64* %12, align 8
  store i64 %47, i64* %10, align 8
  br label %50

48:                                               ; preds = %35
  %49 = load i64, i64* %12, align 8
  store i64 %49, i64* %11, align 8
  br label %50

50:                                               ; preds = %48, %46
  br label %30

51:                                               ; preds = %30
  br label %52

52:                                               ; preds = %64, %51
  %53 = load i64, i64* %10, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load i64, i64* %10, align 8
  %57 = sub i64 %56, 1
  %58 = call i64 @kallsyms_sym_address(i64 %57)
  %59 = load i64, i64* %10, align 8
  %60 = call i64 @kallsyms_sym_address(i64 %59)
  %61 = icmp eq i64 %58, %60
  br label %62

62:                                               ; preds = %55, %52
  %63 = phi i1 [ false, %52 ], [ %61, %55 ]
  br i1 %63, label %64, label %67

64:                                               ; preds = %62
  %65 = load i64, i64* %10, align 8
  %66 = add i64 %65, -1
  store i64 %66, i64* %10, align 8
  br label %52

67:                                               ; preds = %62
  %68 = load i64, i64* %10, align 8
  %69 = call i64 @kallsyms_sym_address(i64 %68)
  store i64 %69, i64* %7, align 8
  %70 = load i64, i64* %10, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %9, align 8
  br label %72

72:                                               ; preds = %85, %67
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* @kallsyms_num_syms, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %72
  %77 = load i64, i64* %9, align 8
  %78 = call i64 @kallsyms_sym_address(i64 %77)
  %79 = load i64, i64* %7, align 8
  %80 = icmp ugt i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i64, i64* %9, align 8
  %83 = call i64 @kallsyms_sym_address(i64 %82)
  store i64 %83, i64* %8, align 8
  br label %88

84:                                               ; preds = %76
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %9, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %9, align 8
  br label %72

88:                                               ; preds = %81, %72
  %89 = load i64, i64* %8, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %107, label %91

91:                                               ; preds = %88
  %92 = load i64, i64* %4, align 8
  %93 = call i64 @is_kernel_inittext(i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i64, i64* @_einittext, align 8
  store i64 %96, i64* %8, align 8
  br label %106

97:                                               ; preds = %91
  %98 = load i32, i32* @CONFIG_KALLSYMS_ALL, align 4
  %99 = call i64 @IS_ENABLED(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load i64, i64* @_end, align 8
  store i64 %102, i64* %8, align 8
  br label %105

103:                                              ; preds = %97
  %104 = load i64, i64* @_etext, align 8
  store i64 %104, i64* %8, align 8
  br label %105

105:                                              ; preds = %103, %101
  br label %106

106:                                              ; preds = %105, %95
  br label %107

107:                                              ; preds = %106, %88
  %108 = load i64*, i64** %5, align 8
  %109 = icmp ne i64* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load i64, i64* %8, align 8
  %112 = load i64, i64* %7, align 8
  %113 = sub i64 %111, %112
  %114 = load i64*, i64** %5, align 8
  store i64 %113, i64* %114, align 8
  br label %115

115:                                              ; preds = %110, %107
  %116 = load i64*, i64** %6, align 8
  %117 = icmp ne i64* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load i64, i64* %4, align 8
  %120 = load i64, i64* %7, align 8
  %121 = sub i64 %119, %120
  %122 = load i64*, i64** %6, align 8
  store i64 %121, i64* %122, align 8
  br label %123

123:                                              ; preds = %118, %115
  %124 = load i64, i64* %10, align 8
  ret i64 %124
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @kallsyms_sym_address(i64) #1

declare dso_local i64 @is_kernel_inittext(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
