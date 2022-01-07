; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_trusted.c_osap.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_trusted.c_osap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_buf = type { i32* }
%struct.osapsess = type { i8*, i32, i32 }

@TPM_NONCE_SIZE = common dso_local global i32 0, align 4
@chip = common dso_local global i32 0, align 4
@TPM_TAG_RQU_COMMAND = common dso_local global i32 0, align 4
@TPM_OSAP_SIZE = common dso_local global i32 0, align 4
@TPM_ORD_OSAP = common dso_local global i32 0, align 4
@MAX_BUF_SIZE = common dso_local global i32 0, align 4
@TPM_DATA_OFFSET = common dso_local global i32 0, align 4
@SHA1_DIGEST_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_buf*, %struct.osapsess*, i8*, i32, i32)* @osap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @osap(%struct.tpm_buf* %0, %struct.osapsess* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tpm_buf*, align 8
  %8 = alloca %struct.osapsess*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.tpm_buf* %0, %struct.tpm_buf** %7, align 8
  store %struct.osapsess* %1, %struct.osapsess** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* @TPM_NONCE_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load i32, i32* @TPM_NONCE_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %14, align 8
  %24 = load i32, i32* @chip, align 4
  %25 = load i32, i32* @TPM_NONCE_SIZE, align 4
  %26 = call i32 @tpm_get_random(i32 %24, i8* %23, i32 %25)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* @TPM_NONCE_SIZE, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %5
  %31 = load i32, i32* %15, align 4
  store i32 %31, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %102

32:                                               ; preds = %5
  %33 = load %struct.tpm_buf*, %struct.tpm_buf** %7, align 8
  %34 = call i32 @INIT_BUF(%struct.tpm_buf* %33)
  %35 = load %struct.tpm_buf*, %struct.tpm_buf** %7, align 8
  %36 = load i32, i32* @TPM_TAG_RQU_COMMAND, align 4
  %37 = call i32 @store16(%struct.tpm_buf* %35, i32 %36)
  %38 = load %struct.tpm_buf*, %struct.tpm_buf** %7, align 8
  %39 = load i32, i32* @TPM_OSAP_SIZE, align 4
  %40 = call i32 @store32(%struct.tpm_buf* %38, i32 %39)
  %41 = load %struct.tpm_buf*, %struct.tpm_buf** %7, align 8
  %42 = load i32, i32* @TPM_ORD_OSAP, align 4
  %43 = call i32 @store32(%struct.tpm_buf* %41, i32 %42)
  %44 = load %struct.tpm_buf*, %struct.tpm_buf** %7, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @store16(%struct.tpm_buf* %44, i32 %45)
  %47 = load %struct.tpm_buf*, %struct.tpm_buf** %7, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @store32(%struct.tpm_buf* %47, i32 %48)
  %50 = load %struct.tpm_buf*, %struct.tpm_buf** %7, align 8
  %51 = load i32, i32* @TPM_NONCE_SIZE, align 4
  %52 = call i32 @storebytes(%struct.tpm_buf* %50, i8* %23, i32 %51)
  %53 = load %struct.tpm_buf*, %struct.tpm_buf** %7, align 8
  %54 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* @MAX_BUF_SIZE, align 4
  %57 = call i32 @trusted_tpm_send(i32* %55, i32 %56)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %32
  %61 = load i32, i32* %15, align 4
  store i32 %61, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %102

62:                                               ; preds = %32
  %63 = load %struct.tpm_buf*, %struct.tpm_buf** %7, align 8
  %64 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* @TPM_DATA_OFFSET, align 4
  %67 = call i32 @LOAD32(i32* %65, i32 %66)
  %68 = load %struct.osapsess*, %struct.osapsess** %8, align 8
  %69 = getelementptr inbounds %struct.osapsess, %struct.osapsess* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.osapsess*, %struct.osapsess** %8, align 8
  %71 = getelementptr inbounds %struct.osapsess, %struct.osapsess* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.tpm_buf*, %struct.tpm_buf** %7, align 8
  %74 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* @TPM_DATA_OFFSET, align 4
  %77 = sext i32 %76 to i64
  %78 = add i64 %77, 4
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* @TPM_NONCE_SIZE, align 4
  %81 = call i32 @memcpy(i8* %72, i32* %79, i32 %80)
  %82 = load %struct.tpm_buf*, %struct.tpm_buf** %7, align 8
  %83 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* @TPM_DATA_OFFSET, align 4
  %86 = sext i32 %85 to i64
  %87 = add i64 %86, 4
  %88 = load i32, i32* @TPM_NONCE_SIZE, align 4
  %89 = sext i32 %88 to i64
  %90 = add i64 %87, %89
  %91 = getelementptr inbounds i32, i32* %84, i64 %90
  %92 = load i32, i32* @TPM_NONCE_SIZE, align 4
  %93 = call i32 @memcpy(i8* %20, i32* %91, i32 %92)
  %94 = load %struct.osapsess*, %struct.osapsess** %8, align 8
  %95 = getelementptr inbounds %struct.osapsess, %struct.osapsess* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %99 = load i32, i32* @TPM_NONCE_SIZE, align 4
  %100 = load i32, i32* @TPM_NONCE_SIZE, align 4
  %101 = call i32 @TSS_rawhmac(i32 %96, i8* %97, i32 %98, i32 %99, i8* %20, i32 %100, i8* %23, i32 0, i32 0)
  store i32 %101, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %102

102:                                              ; preds = %62, %60, %30
  %103 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @tpm_get_random(i32, i8*, i32) #2

declare dso_local i32 @INIT_BUF(%struct.tpm_buf*) #2

declare dso_local i32 @store16(%struct.tpm_buf*, i32) #2

declare dso_local i32 @store32(%struct.tpm_buf*, i32) #2

declare dso_local i32 @storebytes(%struct.tpm_buf*, i8*, i32) #2

declare dso_local i32 @trusted_tpm_send(i32*, i32) #2

declare dso_local i32 @LOAD32(i32*, i32) #2

declare dso_local i32 @memcpy(i8*, i32*, i32) #2

declare dso_local i32 @TSS_rawhmac(i32, i8*, i32, i32, i8*, i32, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
