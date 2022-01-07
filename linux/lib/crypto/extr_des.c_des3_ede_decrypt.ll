; ModuleID = '/home/carl/AnghaBench/linux/lib/crypto/extr_des.c_des3_ede_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/lib/crypto/extr_des.c_des3_ede_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.des3_ede_ctx = type { i32* }

@DES3_EDE_EXPKEY_WORDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @des3_ede_decrypt(%struct.des3_ede_ctx* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.des3_ede_ctx*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.des3_ede_ctx* %0, %struct.des3_ede_ctx** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.des3_ede_ctx*, %struct.des3_ede_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.des3_ede_ctx, %struct.des3_ede_ctx* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* @DES3_EDE_EXPKEY_WORDS, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = getelementptr inbounds i32, i32* %18, i64 -2
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @get_unaligned_le32(i32* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  %24 = call i32 @get_unaligned_le32(i32* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @IP(i32 %25, i32 %26, i32 %27)
  store i32 0, i32* %12, align 4
  br label %29

29:                                               ; preds = %45, %3
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %30, 8
  br i1 %31, label %32, label %48

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @ROUND(i32 %33, i32 %34, i32 %35, i32 %36, i32* %37, i32 -2)
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @ROUND(i32 %39, i32 %40, i32 %41, i32 %42, i32* %43, i32 -2)
  br label %45

45:                                               ; preds = %32
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %12, align 4
  br label %29

48:                                               ; preds = %29
  store i32 0, i32* %12, align 4
  br label %49

49:                                               ; preds = %65, %48
  %50 = load i32, i32* %12, align 4
  %51 = icmp slt i32 %50, 8
  br i1 %51, label %52, label %68

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @ROUND(i32 %53, i32 %54, i32 %55, i32 %56, i32* %57, i32 -2)
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @ROUND(i32 %59, i32 %60, i32 %61, i32 %62, i32* %63, i32 -2)
  br label %65

65:                                               ; preds = %52
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %12, align 4
  br label %49

68:                                               ; preds = %49
  store i32 0, i32* %12, align 4
  br label %69

69:                                               ; preds = %85, %68
  %70 = load i32, i32* %12, align 4
  %71 = icmp slt i32 %70, 8
  br i1 %71, label %72, label %88

72:                                               ; preds = %69
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @ROUND(i32 %73, i32 %74, i32 %75, i32 %76, i32* %77, i32 -2)
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @ROUND(i32 %79, i32 %80, i32 %81, i32 %82, i32* %83, i32 -2)
  br label %85

85:                                               ; preds = %72
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %12, align 4
  br label %69

88:                                               ; preds = %69
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @FP(i32 %89, i32 %90, i32 %91)
  %93 = load i32, i32* %9, align 4
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @put_unaligned_le32(i32 %93, i32* %94)
  %96 = load i32, i32* %8, align 4
  %97 = load i32*, i32** %5, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 4
  %99 = call i32 @put_unaligned_le32(i32 %96, i32* %98)
  ret void
}

declare dso_local i32 @get_unaligned_le32(i32*) #1

declare dso_local i32 @IP(i32, i32, i32) #1

declare dso_local i32 @ROUND(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @FP(i32, i32, i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
