; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_dh.c_kdf_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_dh.c_kdf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kdf_sdesc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"could not allocate digest TFM handle %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kdf_sdesc**, i8*)* @kdf_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kdf_alloc(%struct.kdf_sdesc** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kdf_sdesc**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.crypto_shash*, align 8
  %7 = alloca %struct.kdf_sdesc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kdf_sdesc** %0, %struct.kdf_sdesc*** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct.crypto_shash* @crypto_alloc_shash(i8* %10, i32 0, i32 0)
  store %struct.crypto_shash* %11, %struct.crypto_shash** %6, align 8
  %12 = load %struct.crypto_shash*, %struct.crypto_shash** %6, align 8
  %13 = call i64 @IS_ERR(%struct.crypto_shash* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load %struct.crypto_shash*, %struct.crypto_shash** %6, align 8
  %19 = call i32 @PTR_ERR(%struct.crypto_shash* %18)
  store i32 %19, i32* %3, align 4
  br label %52

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %9, align 4
  %23 = load %struct.crypto_shash*, %struct.crypto_shash** %6, align 8
  %24 = call i64 @crypto_shash_digestsize(%struct.crypto_shash* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %48

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  %30 = load %struct.crypto_shash*, %struct.crypto_shash** %6, align 8
  %31 = call i32 @crypto_shash_descsize(%struct.crypto_shash* %30)
  %32 = sext i32 %31 to i64
  %33 = add i64 4, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.kdf_sdesc* @kmalloc(i32 %35, i32 %36)
  store %struct.kdf_sdesc* %37, %struct.kdf_sdesc** %7, align 8
  %38 = load %struct.kdf_sdesc*, %struct.kdf_sdesc** %7, align 8
  %39 = icmp ne %struct.kdf_sdesc* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %27
  br label %48

41:                                               ; preds = %27
  %42 = load %struct.crypto_shash*, %struct.crypto_shash** %6, align 8
  %43 = load %struct.kdf_sdesc*, %struct.kdf_sdesc** %7, align 8
  %44 = getelementptr inbounds %struct.kdf_sdesc, %struct.kdf_sdesc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store %struct.crypto_shash* %42, %struct.crypto_shash** %45, align 8
  %46 = load %struct.kdf_sdesc*, %struct.kdf_sdesc** %7, align 8
  %47 = load %struct.kdf_sdesc**, %struct.kdf_sdesc*** %4, align 8
  store %struct.kdf_sdesc* %46, %struct.kdf_sdesc** %47, align 8
  store i32 0, i32* %3, align 4
  br label %52

48:                                               ; preds = %40, %26
  %49 = load %struct.crypto_shash*, %struct.crypto_shash** %6, align 8
  %50 = call i32 @crypto_free_shash(%struct.crypto_shash* %49)
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %48, %41, %15
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.crypto_shash* @crypto_alloc_shash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_shash*) #1

declare dso_local i32 @pr_info(i8*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_shash*) #1

declare dso_local i64 @crypto_shash_digestsize(%struct.crypto_shash*) #1

declare dso_local i32 @crypto_shash_descsize(%struct.crypto_shash*) #1

declare dso_local %struct.kdf_sdesc* @kmalloc(i32, i32) #1

declare dso_local i32 @crypto_free_shash(%struct.crypto_shash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
