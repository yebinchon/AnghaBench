; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_trusted.c_oiap.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_trusted.c_oiap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_buf = type { i32* }

@chip = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@TPM_TAG_RQU_COMMAND = common dso_local global i32 0, align 4
@TPM_OIAP_SIZE = common dso_local global i32 0, align 4
@TPM_ORD_OIAP = common dso_local global i32 0, align 4
@MAX_BUF_SIZE = common dso_local global i32 0, align 4
@TPM_DATA_OFFSET = common dso_local global i32 0, align 4
@TPM_NONCE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oiap(%struct.tpm_buf* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tpm_buf*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.tpm_buf* %0, %struct.tpm_buf** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @chip, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %52

14:                                               ; preds = %3
  %15 = load %struct.tpm_buf*, %struct.tpm_buf** %5, align 8
  %16 = call i32 @INIT_BUF(%struct.tpm_buf* %15)
  %17 = load %struct.tpm_buf*, %struct.tpm_buf** %5, align 8
  %18 = load i32, i32* @TPM_TAG_RQU_COMMAND, align 4
  %19 = call i32 @store16(%struct.tpm_buf* %17, i32 %18)
  %20 = load %struct.tpm_buf*, %struct.tpm_buf** %5, align 8
  %21 = load i32, i32* @TPM_OIAP_SIZE, align 4
  %22 = call i32 @store32(%struct.tpm_buf* %20, i32 %21)
  %23 = load %struct.tpm_buf*, %struct.tpm_buf** %5, align 8
  %24 = load i32, i32* @TPM_ORD_OIAP, align 4
  %25 = call i32 @store32(%struct.tpm_buf* %23, i32 %24)
  %26 = load %struct.tpm_buf*, %struct.tpm_buf** %5, align 8
  %27 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* @MAX_BUF_SIZE, align 4
  %30 = call i32 @trusted_tpm_send(i32* %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %14
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %52

35:                                               ; preds = %14
  %36 = load %struct.tpm_buf*, %struct.tpm_buf** %5, align 8
  %37 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* @TPM_DATA_OFFSET, align 4
  %40 = call i32 @LOAD32(i32* %38, i32 %39)
  %41 = load i32*, i32** %6, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.tpm_buf*, %struct.tpm_buf** %5, align 8
  %44 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* @TPM_DATA_OFFSET, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 %47, 4
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* @TPM_NONCE_SIZE, align 4
  %51 = call i32 @memcpy(i8* %42, i32* %49, i32 %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %35, %33, %11
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @INIT_BUF(%struct.tpm_buf*) #1

declare dso_local i32 @store16(%struct.tpm_buf*, i32) #1

declare dso_local i32 @store32(%struct.tpm_buf*, i32) #1

declare dso_local i32 @trusted_tpm_send(i32*, i32) #1

declare dso_local i32 @LOAD32(i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
