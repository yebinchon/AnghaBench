; ModuleID = '/home/carl/AnghaBench/linux/lib/crypto/extr_des.c_des3_ede_expand_key.c'
source_filename = "/home/carl/AnghaBench/linux/lib/crypto/extr_des.c_des3_ede_expand_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.des3_ede_ctx = type { i32* }

@DES3_EDE_KEY_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4
@DES_EXPKEY_WORDS = common dso_local global i32 0, align 4
@DES_KEY_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @des3_ede_expand_key(%struct.des3_ede_ctx* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.des3_ede_ctx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.des3_ede_ctx* %0, %struct.des3_ede_ctx** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.des3_ede_ctx*, %struct.des3_ede_ctx** %5, align 8
  %11 = getelementptr inbounds %struct.des3_ede_ctx, %struct.des3_ede_ctx* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @DES3_EDE_KEY_SIZE, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %59

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @des3_ede_verify_key(i32* %20, i32 %21, i32 1)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @ENOKEY, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %59

32:                                               ; preds = %25, %19
  %33 = load i32*, i32** %8, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @des_ekey(i32* %33, i32* %34)
  %36 = load i32, i32* @DES_EXPKEY_WORDS, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32* %39, i32** %8, align 8
  %40 = load i32, i32* @DES_KEY_SIZE, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32* %43, i32** %6, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @dkey(i32* %44, i32* %45)
  %47 = load i32, i32* @DES_EXPKEY_WORDS, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32* %50, i32** %8, align 8
  %51 = load i32, i32* @DES_KEY_SIZE, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32* %54, i32** %6, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @des_ekey(i32* %55, i32* %56)
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %32, %30, %16
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @des3_ede_verify_key(i32*, i32, i32) #1

declare dso_local i32 @des_ekey(i32*, i32*) #1

declare dso_local i32 @dkey(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
