; ModuleID = '/home/carl/AnghaBench/linux/lib/842/extr_842_decompress.c_do_op.c'
source_filename = "/home/carl/AnghaBench/linux/lib/842/extr_842_decompress.c_do_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw842_param = type { i32 }

@OPS_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@decomp_ops = common dso_local global i64** null, align 8
@.str = private unnamed_addr constant [10 x i8] c"op is %x\0A\00", align 1
@OP_ACTION = common dso_local global i64 0, align 8
@OP_AMOUNT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Internal error, invalid op %x\0A\00", align 1
@sw842_template_counts = common dso_local global i64 0, align 8
@template_count = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sw842_param*, i64)* @do_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_op(%struct.sw842_param* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sw842_param*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.sw842_param* %0, %struct.sw842_param** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @OPS_MAX, align 8
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %69

15:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %57, %15
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %60

19:                                               ; preds = %16
  %20 = load i64**, i64*** @decomp_ops, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds i64*, i64** %20, i64 %21
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @OP_ACTION, align 8
  %32 = and i64 %30, %31
  switch i64 %32, label %46 [
    i64 130, label %33
    i64 129, label %39
    i64 128, label %45
  ]

33:                                               ; preds = %19
  %34 = load %struct.sw842_param*, %struct.sw842_param** %4, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @OP_AMOUNT, align 8
  %37 = and i64 %35, %36
  %38 = call i32 @do_data(%struct.sw842_param* %34, i64 %37)
  store i32 %38, i32* %7, align 4
  br label %51

39:                                               ; preds = %19
  %40 = load %struct.sw842_param*, %struct.sw842_param** %4, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @OP_AMOUNT, align 8
  %43 = and i64 %41, %42
  %44 = call i32 @do_index(%struct.sw842_param* %40, i64 %43)
  store i32 %44, i32* %7, align 4
  br label %51

45:                                               ; preds = %19
  br label %51

46:                                               ; preds = %19
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %69

51:                                               ; preds = %45, %39, %33
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %69

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %16

60:                                               ; preds = %16
  %61 = load i64, i64* @sw842_template_counts, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i32*, i32** @template_count, align 8
  %65 = load i64, i64* %5, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = call i32 @atomic_inc(i32* %66)
  br label %68

68:                                               ; preds = %63, %60
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %54, %46, %12
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @do_data(%struct.sw842_param*, i64) #1

declare dso_local i32 @do_index(%struct.sw842_param*, i64) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
