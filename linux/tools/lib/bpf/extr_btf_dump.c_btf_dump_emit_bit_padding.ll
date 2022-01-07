; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf_dump.c_btf_dump_emit_bit_padding.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf_dump.c_btf_dump_emit_bit_padding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_dump = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"\0A%s%s: %d;\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btf_dump*, i32, i32, i32, i32, i32)* @btf_dump_emit_bit_padding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btf_dump_emit_bit_padding(%struct.btf_dump* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.btf_dump*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.btf_dump* %0, %struct.btf_dump** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = sub nsw i32 %17, %18
  store i32 %19, i32* %13, align 4
  store i32 64, i32* %14, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  br label %73

23:                                               ; preds = %6
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %11, align 4
  %29 = mul nsw i32 %28, 8
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %73

32:                                               ; preds = %26, %23
  br label %33

33:                                               ; preds = %63, %32
  %34 = load i32, i32* %13, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %73

36:                                               ; preds = %33
  %37 = load i32, i32* %14, align 4
  %38 = icmp sgt i32 %37, 32
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i32, i32* %13, align 4
  %41 = icmp sgt i32 %40, 32
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @chip_away_bits(i32 %43, i32 %44)
  store i32 %45, i32* %16, align 4
  br label %63

46:                                               ; preds = %39, %36
  %47 = load i32, i32* %13, align 4
  %48 = icmp sgt i32 %47, 16
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @chip_away_bits(i32 %50, i32 32)
  store i32 %51, i32* %16, align 4
  br label %62

52:                                               ; preds = %46
  %53 = load i32, i32* %13, align 4
  %54 = icmp sgt i32 %53, 8
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %15, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @chip_away_bits(i32 %56, i32 16)
  store i32 %57, i32* %16, align 4
  br label %61

58:                                               ; preds = %52
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %15, align 8
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @chip_away_bits(i32 %59, i32 8)
  store i32 %60, i32* %16, align 4
  br label %61

61:                                               ; preds = %58, %55
  br label %62

62:                                               ; preds = %61, %49
  br label %63

63:                                               ; preds = %62, %42
  %64 = load %struct.btf_dump*, %struct.btf_dump** %7, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @pfx(i32 %65)
  %67 = load i8*, i8** %15, align 8
  %68 = load i32, i32* %16, align 4
  %69 = call i32 @btf_dump_printf(%struct.btf_dump* %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %66, i8* %67, i32 %68)
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* %13, align 4
  %72 = sub nsw i32 %71, %70
  store i32 %72, i32* %13, align 4
  br label %33

73:                                               ; preds = %22, %31, %33
  ret void
}

declare dso_local i32 @chip_away_bits(i32, i32) #1

declare dso_local i32 @btf_dump_printf(%struct.btf_dump*, i8*, i32, i8*, i32) #1

declare dso_local i32 @pfx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
