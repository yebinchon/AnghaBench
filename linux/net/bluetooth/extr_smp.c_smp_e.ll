; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_e.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_e.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aes_ctx = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"k %16phN r %16phN\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"cipher setkey failed: %d\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"r %16phN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @smp_e to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smp_e(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.crypto_aes_ctx, align 4
  %7 = alloca [16 x i32], align 16
  %8 = alloca [16 x i32], align 16
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 (i8*, i32*, ...) @SMP_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %10, i32* %11)
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %15 = call i32 @swap_buf(i32* %13, i32* %14, i32 16)
  %16 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %17 = call i32 @aes_expandkey(%struct.crypto_aes_ctx* %6, i32* %16, i32 16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @BT_ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %3, align 4
  br label %38

24:                                               ; preds = %2
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %27 = call i32 @swap_buf(i32* %25, i32* %26, i32 16)
  %28 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %29 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %30 = call i32 @aes_encrypt(%struct.crypto_aes_ctx* %6, i32* %28, i32* %29)
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @swap_buf(i32* %31, i32* %32, i32 16)
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 (i8*, i32*, ...) @SMP_DBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %34)
  %36 = call i32 @memzero_explicit(%struct.crypto_aes_ctx* %6, i32 4)
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %24, %20
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @SMP_DBG(i8*, i32*, ...) #1

declare dso_local i32 @swap_buf(i32*, i32*, i32) #1

declare dso_local i32 @aes_expandkey(%struct.crypto_aes_ctx*, i32*, i32) #1

declare dso_local i32 @BT_ERR(i8*, i32) #1

declare dso_local i32 @aes_encrypt(%struct.crypto_aes_ctx*, i32*, i32*) #1

declare dso_local i32 @memzero_explicit(%struct.crypto_aes_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
