; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_gen_crc32table.c_crc32init_be.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_gen_crc32table.c_crc32init_be.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crc32table_be = common dso_local global i32** null, align 8
@BE_TABLE_SIZE = common dso_local global i32 0, align 4
@CRC32_POLY_BE = common dso_local global i32 0, align 4
@BE_TABLE_ROWS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @crc32init_be to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crc32init_be() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 -2147483648, i32* %3, align 4
  %4 = load i32**, i32*** @crc32table_be, align 8
  %5 = getelementptr inbounds i32*, i32** %4, i64 0
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  store i32 0, i32* %7, align 4
  store i32 1, i32* %1, align 4
  br label %8

8:                                                ; preds = %50, %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @BE_TABLE_SIZE, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %53

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = shl i32 %13, 1
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, -2147483648
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @CRC32_POLY_BE, align 4
  br label %21

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 0, %20 ]
  %23 = xor i32 %14, %22
  store i32 %23, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %46, %21
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* %1, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = load i32**, i32*** @crc32table_be, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i64 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %2, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = xor i32 %29, %36
  %38 = load i32**, i32*** @crc32table_be, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i64 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %1, align 4
  %42 = load i32, i32* %2, align 4
  %43 = add i32 %41, %42
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  store i32 %37, i32* %45, align 4
  br label %46

46:                                               ; preds = %28
  %47 = load i32, i32* %2, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %2, align 4
  br label %24

49:                                               ; preds = %24
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %1, align 4
  %52 = shl i32 %51, 1
  store i32 %52, i32* %1, align 4
  br label %8

53:                                               ; preds = %8
  store i32 0, i32* %1, align 4
  br label %54

54:                                               ; preds = %96, %53
  %55 = load i32, i32* %1, align 4
  %56 = load i32, i32* @BE_TABLE_SIZE, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %99

58:                                               ; preds = %54
  %59 = load i32**, i32*** @crc32table_be, align 8
  %60 = getelementptr inbounds i32*, i32** %59, i64 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %1, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %3, align 4
  store i32 1, i32* %2, align 4
  br label %66

66:                                               ; preds = %92, %58
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* @BE_TABLE_ROWS, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %70, label %95

70:                                               ; preds = %66
  %71 = load i32**, i32*** @crc32table_be, align 8
  %72 = getelementptr inbounds i32*, i32** %71, i64 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = ashr i32 %74, 24
  %76 = and i32 %75, 255
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %3, align 4
  %81 = shl i32 %80, 8
  %82 = xor i32 %79, %81
  store i32 %82, i32* %3, align 4
  %83 = load i32, i32* %3, align 4
  %84 = load i32**, i32*** @crc32table_be, align 8
  %85 = load i32, i32* %2, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i32*, i32** %84, i64 %86
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %1, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %83, i32* %91, align 4
  br label %92

92:                                               ; preds = %70
  %93 = load i32, i32* %2, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %2, align 4
  br label %66

95:                                               ; preds = %66
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %1, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %1, align 4
  br label %54

99:                                               ; preds = %54
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
