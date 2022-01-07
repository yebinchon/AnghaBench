; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_appraise.c_modsig_verify.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_appraise.c_modsig_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.modsig = type { i32 }

@INTEGRITY_KEYRING_IMA = common dso_local global i32 0, align 4
@CONFIG_INTEGRITY_PLATFORM_KEYRING = common dso_local global i32 0, align 4
@KEXEC_KERNEL_CHECK = common dso_local global i32 0, align 4
@INTEGRITY_KEYRING_PLATFORM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"invalid-signature\00", align 1
@INTEGRITY_FAIL = common dso_local global i32 0, align 4
@INTEGRITY_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.modsig*, i32*, i8**)* @modsig_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modsig_verify(i32 %0, %struct.modsig* %1, i32* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.modsig*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.modsig* %1, %struct.modsig** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8** %3, i8*** %8, align 8
  %10 = load i32, i32* @INTEGRITY_KEYRING_IMA, align 4
  %11 = load %struct.modsig*, %struct.modsig** %6, align 8
  %12 = call i32 @integrity_modsig_verify(i32 %10, %struct.modsig* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @CONFIG_INTEGRITY_PLATFORM_KEYRING, align 4
  %14 = call i64 @IS_ENABLED(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @KEXEC_KERNEL_CHECK, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @INTEGRITY_KEYRING_PLATFORM, align 4
  %25 = load %struct.modsig*, %struct.modsig** %6, align 8
  %26 = call i32 @integrity_modsig_verify(i32 %24, %struct.modsig* %25)
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %23, %19, %16, %4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i8**, i8*** %8, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %31, align 8
  %32 = load i32, i32* @INTEGRITY_FAIL, align 4
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  br label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @INTEGRITY_PASS, align 4
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %30
  %38 = load i32, i32* %9, align 4
  ret i32 %38
}

declare dso_local i32 @integrity_modsig_verify(i32, %struct.modsig*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
