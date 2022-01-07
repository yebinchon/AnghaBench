; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_gen_crc32table.c_crc32init_le_generic.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_gen_crc32table.c_crc32init_le_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LE_TABLE_SIZE = common dso_local global i32 0, align 4
@LE_TABLE_ROWS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, [256 x i32]*)* @crc32init_le_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crc32init_le_generic(i32 %0, [256 x i32]* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca [256 x i32]*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store [256 x i32]* %1, [256 x i32]** %4, align 8
  store i32 1, i32* %7, align 4
  %8 = load [256 x i32]*, [256 x i32]** %4, align 8
  %9 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0
  %10 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @LE_TABLE_SIZE, align 4
  %12 = ashr i32 %11, 1
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %54, %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %57

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = ashr i32 %17, 1
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %3, align 4
  br label %25

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  %27 = xor i32 %18, %26
  store i32 %27, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %48, %25
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @LE_TABLE_SIZE, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = load [256 x i32]*, [256 x i32]** %4, align 8
  %35 = getelementptr inbounds [256 x i32], [256 x i32]* %34, i64 0
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds [256 x i32], [256 x i32]* %35, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = xor i32 %33, %39
  %41 = load [256 x i32]*, [256 x i32]** %4, align 8
  %42 = getelementptr inbounds [256 x i32], [256 x i32]* %41, i64 0
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add i32 %43, %44
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [256 x i32], [256 x i32]* %42, i64 0, i64 %46
  store i32 %40, i32* %47, align 4
  br label %48

48:                                               ; preds = %32
  %49 = load i32, i32* %5, align 4
  %50 = mul i32 2, %49
  %51 = load i32, i32* %6, align 4
  %52 = add i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %28

53:                                               ; preds = %28
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %5, align 4
  %56 = lshr i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %13

57:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %96, %57
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @LE_TABLE_SIZE, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %99

62:                                               ; preds = %58
  %63 = load [256 x i32]*, [256 x i32]** %4, align 8
  %64 = getelementptr inbounds [256 x i32], [256 x i32]* %63, i64 0
  %65 = load i32, i32* %5, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds [256 x i32], [256 x i32]* %64, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %69

69:                                               ; preds = %92, %62
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @LE_TABLE_ROWS, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %95

73:                                               ; preds = %69
  %74 = load [256 x i32]*, [256 x i32]** %4, align 8
  %75 = getelementptr inbounds [256 x i32], [256 x i32]* %74, i64 0
  %76 = load i32, i32* %7, align 4
  %77 = and i32 %76, 255
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [256 x i32], [256 x i32]* %75, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %7, align 4
  %82 = ashr i32 %81, 8
  %83 = xor i32 %80, %82
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load [256 x i32]*, [256 x i32]** %4, align 8
  %86 = load i32, i32* %6, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds [256 x i32], [256 x i32]* %85, i64 %87
  %89 = load i32, i32* %5, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds [256 x i32], [256 x i32]* %88, i64 0, i64 %90
  store i32 %84, i32* %91, align 4
  br label %92

92:                                               ; preds = %73
  %93 = load i32, i32* %6, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %69

95:                                               ; preds = %69
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %5, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %5, align 4
  br label %58

99:                                               ; preds = %58
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
