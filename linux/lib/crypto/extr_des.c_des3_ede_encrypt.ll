; ModuleID = '/home/carl/AnghaBench/linux/lib/crypto/extr_des.c_des3_ede_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/lib/crypto/extr_des.c_des3_ede_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.des3_ede_ctx = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @des3_ede_encrypt(%struct.des3_ede_ctx* %0, i32* %1, i32* %2) #0 {
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
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @get_unaligned_le32(i32* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 4
  %20 = call i32 @get_unaligned_le32(i32* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @IP(i32 %21, i32 %22, i32 %23)
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %41, %3
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 8
  br i1 %27, label %28, label %44

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @ROUND(i32 %29, i32 %30, i32 %31, i32 %32, i32* %33, i32 2)
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @ROUND(i32 %35, i32 %36, i32 %37, i32 %38, i32* %39, i32 2)
  br label %41

41:                                               ; preds = %28
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %12, align 4
  br label %25

44:                                               ; preds = %25
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %61, %44
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 8
  br i1 %47, label %48, label %64

48:                                               ; preds = %45
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @ROUND(i32 %49, i32 %50, i32 %51, i32 %52, i32* %53, i32 2)
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @ROUND(i32 %55, i32 %56, i32 %57, i32 %58, i32* %59, i32 2)
  br label %61

61:                                               ; preds = %48
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %12, align 4
  br label %45

64:                                               ; preds = %45
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %81, %64
  %66 = load i32, i32* %12, align 4
  %67 = icmp slt i32 %66, 8
  br i1 %67, label %68, label %84

68:                                               ; preds = %65
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @ROUND(i32 %69, i32 %70, i32 %71, i32 %72, i32* %73, i32 2)
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @ROUND(i32 %75, i32 %76, i32 %77, i32 %78, i32* %79, i32 2)
  br label %81

81:                                               ; preds = %68
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %65

84:                                               ; preds = %65
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @FP(i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* %9, align 4
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 @put_unaligned_le32(i32 %89, i32* %90)
  %92 = load i32, i32* %8, align 4
  %93 = load i32*, i32** %5, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 4
  %95 = call i32 @put_unaligned_le32(i32 %92, i32* %94)
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
