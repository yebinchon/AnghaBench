; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_trusted.c_tpm_unseal.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_trusted.c_tpm_unseal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_buf = type { i64 }

@TPM_NONCE_SIZE = common dso_local global i32 0, align 4
@SHA1_DIGEST_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"trusted_key: oiap failed (%d)\0A\00", align 1
@TPM_ORD_UNSEAL = common dso_local global i64 0, align 8
@SRKHANDLE = common dso_local global i64 0, align 8
@chip = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"trusted_key: tpm_get_random failed (%d)\0A\00", align 1
@TPM_TAG_RQU_AUTH2_COMMAND = common dso_local global i32 0, align 4
@TPM_UNSEAL_SIZE = common dso_local global i64 0, align 8
@MAX_BUF_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"trusted_key: authhmac failed (%d)\0A\00", align 1
@TPM_DATA_OFFSET = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"trusted_key: TSS_checkhmac2 failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_buf*, i64, i8*, i8*, i32, i8*, i8*, i32*)* @tpm_unseal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_unseal(%struct.tpm_buf* %0, i64 %1, i8* %2, i8* %3, i32 %4, i8* %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.tpm_buf*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8, align 1
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.tpm_buf* %0, %struct.tpm_buf** %10, align 8
  store i64 %1, i64* %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  %31 = load i32, i32* @TPM_NONCE_SIZE, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %18, align 8
  %34 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %19, align 8
  %35 = load i32, i32* @TPM_NONCE_SIZE, align 4
  %36 = zext i32 %35 to i64
  %37 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %20, align 8
  %38 = load i32, i32* @TPM_NONCE_SIZE, align 4
  %39 = zext i32 %38 to i64
  %40 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %21, align 8
  %41 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %42 = zext i32 %41 to i64
  %43 = alloca i8, i64 %42, align 16
  store i64 %42, i64* %22, align 8
  %44 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %45 = zext i32 %44 to i64
  %46 = alloca i8, i64 %45, align 16
  store i64 %45, i64* %23, align 8
  store i64 0, i64* %24, align 8
  store i64 0, i64* %25, align 8
  store i8 0, i8* %26, align 1
  %47 = load %struct.tpm_buf*, %struct.tpm_buf** %10, align 8
  %48 = call i32 @oiap(%struct.tpm_buf* %47, i64* %24, i8* %37)
  store i32 %48, i32* %29, align 4
  %49 = load i32, i32* %29, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %8
  %52 = load i32, i32* %29, align 4
  %53 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %29, align 4
  store i32 %54, i32* %9, align 4
  store i32 1, i32* %30, align 4
  br label %196

55:                                               ; preds = %8
  %56 = load %struct.tpm_buf*, %struct.tpm_buf** %10, align 8
  %57 = call i32 @oiap(%struct.tpm_buf* %56, i64* %25, i8* %40)
  store i32 %57, i32* %29, align 4
  %58 = load i32, i32* %29, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* %29, align 4
  %62 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %29, align 4
  store i32 %63, i32* %9, align 4
  store i32 1, i32* %30, align 4
  br label %196

64:                                               ; preds = %55
  %65 = load i64, i64* @TPM_ORD_UNSEAL, align 8
  %66 = call i64 @htonl(i64 %65)
  store i64 %66, i64* %27, align 8
  %67 = load i64, i64* @SRKHANDLE, align 8
  %68 = call i64 @htonl(i64 %67)
  store i64 %68, i64* %28, align 8
  %69 = load i32, i32* @chip, align 4
  %70 = load i32, i32* @TPM_NONCE_SIZE, align 4
  %71 = call i32 @tpm_get_random(i32 %69, i8* %34, i32 %70)
  store i32 %71, i32* %29, align 4
  %72 = load i32, i32* %29, align 4
  %73 = load i32, i32* @TPM_NONCE_SIZE, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %64
  %76 = load i32, i32* %29, align 4
  %77 = call i32 @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %29, align 4
  store i32 %78, i32* %9, align 4
  store i32 1, i32* %30, align 4
  br label %196

79:                                               ; preds = %64
  %80 = load i8*, i8** %12, align 8
  %81 = load i32, i32* @TPM_NONCE_SIZE, align 4
  %82 = load i8, i8* %26, align 1
  %83 = load i32, i32* %14, align 4
  %84 = load i8*, i8** %13, align 8
  %85 = call i32 @TSS_authhmac(i8* %43, i8* %80, i32 %81, i8* %37, i8* %34, i8 zeroext %82, i32 8, i64* %27, i32 %83, i8* %84, i32 0, i32 0)
  store i32 %85, i32* %29, align 4
  %86 = load i32, i32* %29, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = load i32, i32* %29, align 4
  store i32 %89, i32* %9, align 4
  store i32 1, i32* %30, align 4
  br label %196

90:                                               ; preds = %79
  %91 = load i8*, i8** %15, align 8
  %92 = load i32, i32* @TPM_NONCE_SIZE, align 4
  %93 = load i8, i8* %26, align 1
  %94 = load i32, i32* %14, align 4
  %95 = load i8*, i8** %13, align 8
  %96 = call i32 @TSS_authhmac(i8* %46, i8* %91, i32 %92, i8* %40, i8* %34, i8 zeroext %93, i32 8, i64* %27, i32 %94, i8* %95, i32 0, i32 0)
  store i32 %96, i32* %29, align 4
  %97 = load i32, i32* %29, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %90
  %100 = load i32, i32* %29, align 4
  store i32 %100, i32* %9, align 4
  store i32 1, i32* %30, align 4
  br label %196

101:                                              ; preds = %90
  %102 = load %struct.tpm_buf*, %struct.tpm_buf** %10, align 8
  %103 = call i32 @INIT_BUF(%struct.tpm_buf* %102)
  %104 = load %struct.tpm_buf*, %struct.tpm_buf** %10, align 8
  %105 = load i32, i32* @TPM_TAG_RQU_AUTH2_COMMAND, align 4
  %106 = call i32 @store16(%struct.tpm_buf* %104, i32 %105)
  %107 = load %struct.tpm_buf*, %struct.tpm_buf** %10, align 8
  %108 = load i64, i64* @TPM_UNSEAL_SIZE, align 8
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %108, %110
  %112 = call i32 @store32(%struct.tpm_buf* %107, i64 %111)
  %113 = load %struct.tpm_buf*, %struct.tpm_buf** %10, align 8
  %114 = load i64, i64* @TPM_ORD_UNSEAL, align 8
  %115 = call i32 @store32(%struct.tpm_buf* %113, i64 %114)
  %116 = load %struct.tpm_buf*, %struct.tpm_buf** %10, align 8
  %117 = load i64, i64* %11, align 8
  %118 = call i32 @store32(%struct.tpm_buf* %116, i64 %117)
  %119 = load %struct.tpm_buf*, %struct.tpm_buf** %10, align 8
  %120 = load i8*, i8** %13, align 8
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @storebytes(%struct.tpm_buf* %119, i8* %120, i32 %121)
  %123 = load %struct.tpm_buf*, %struct.tpm_buf** %10, align 8
  %124 = load i64, i64* %24, align 8
  %125 = call i32 @store32(%struct.tpm_buf* %123, i64 %124)
  %126 = load %struct.tpm_buf*, %struct.tpm_buf** %10, align 8
  %127 = load i32, i32* @TPM_NONCE_SIZE, align 4
  %128 = call i32 @storebytes(%struct.tpm_buf* %126, i8* %34, i32 %127)
  %129 = load %struct.tpm_buf*, %struct.tpm_buf** %10, align 8
  %130 = load i8, i8* %26, align 1
  %131 = call i32 @store8(%struct.tpm_buf* %129, i8 zeroext %130)
  %132 = load %struct.tpm_buf*, %struct.tpm_buf** %10, align 8
  %133 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %134 = call i32 @storebytes(%struct.tpm_buf* %132, i8* %43, i32 %133)
  %135 = load %struct.tpm_buf*, %struct.tpm_buf** %10, align 8
  %136 = load i64, i64* %25, align 8
  %137 = call i32 @store32(%struct.tpm_buf* %135, i64 %136)
  %138 = load %struct.tpm_buf*, %struct.tpm_buf** %10, align 8
  %139 = load i32, i32* @TPM_NONCE_SIZE, align 4
  %140 = call i32 @storebytes(%struct.tpm_buf* %138, i8* %34, i32 %139)
  %141 = load %struct.tpm_buf*, %struct.tpm_buf** %10, align 8
  %142 = load i8, i8* %26, align 1
  %143 = call i32 @store8(%struct.tpm_buf* %141, i8 zeroext %142)
  %144 = load %struct.tpm_buf*, %struct.tpm_buf** %10, align 8
  %145 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %146 = call i32 @storebytes(%struct.tpm_buf* %144, i8* %46, i32 %145)
  %147 = load %struct.tpm_buf*, %struct.tpm_buf** %10, align 8
  %148 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i32, i32* @MAX_BUF_SIZE, align 4
  %151 = call i32 @trusted_tpm_send(i64 %149, i32 %150)
  store i32 %151, i32* %29, align 4
  %152 = load i32, i32* %29, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %101
  %155 = load i32, i32* %29, align 4
  %156 = call i32 @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* %29, align 4
  store i32 %157, i32* %9, align 4
  store i32 1, i32* %30, align 4
  br label %196

158:                                              ; preds = %101
  %159 = load %struct.tpm_buf*, %struct.tpm_buf** %10, align 8
  %160 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @TPM_DATA_OFFSET, align 8
  %163 = call i32 @LOAD32(i64 %161, i64 %162)
  %164 = load i32*, i32** %17, align 8
  store i32 %163, i32* %164, align 4
  %165 = load %struct.tpm_buf*, %struct.tpm_buf** %10, align 8
  %166 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* %27, align 8
  %169 = load i8*, i8** %12, align 8
  %170 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %171 = load i8*, i8** %15, align 8
  %172 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %173 = load i64, i64* @TPM_DATA_OFFSET, align 8
  %174 = load i32*, i32** %17, align 8
  %175 = load i32, i32* %174, align 4
  %176 = load i64, i64* @TPM_DATA_OFFSET, align 8
  %177 = add i64 %176, 8
  %178 = call i32 @TSS_checkhmac2(i64 %167, i64 %168, i8* %34, i8* %169, i32 %170, i8* %171, i32 %172, i32 8, i64 %173, i32 %175, i64 %177, i32 0, i32 0)
  store i32 %178, i32* %29, align 4
  %179 = load i32, i32* %29, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %158
  %182 = load i32, i32* %29, align 4
  %183 = call i32 @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %182)
  %184 = load i32, i32* %29, align 4
  store i32 %184, i32* %9, align 4
  store i32 1, i32* %30, align 4
  br label %196

185:                                              ; preds = %158
  %186 = load i8*, i8** %16, align 8
  %187 = load %struct.tpm_buf*, %struct.tpm_buf** %10, align 8
  %188 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @TPM_DATA_OFFSET, align 8
  %191 = add nsw i64 %189, %190
  %192 = add i64 %191, 8
  %193 = load i32*, i32** %17, align 8
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @memcpy(i8* %186, i64 %192, i32 %194)
  store i32 0, i32* %9, align 4
  store i32 1, i32* %30, align 4
  br label %196

196:                                              ; preds = %185, %181, %154, %99, %88, %75, %60, %51
  %197 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %197)
  %198 = load i32, i32* %9, align 4
  ret i32 %198
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @oiap(%struct.tpm_buf*, i64*, i8*) #2

declare dso_local i32 @pr_info(i8*, i32) #2

declare dso_local i64 @htonl(i64) #2

declare dso_local i32 @tpm_get_random(i32, i8*, i32) #2

declare dso_local i32 @TSS_authhmac(i8*, i8*, i32, i8*, i8*, i8 zeroext, i32, i64*, i32, i8*, i32, i32) #2

declare dso_local i32 @INIT_BUF(%struct.tpm_buf*) #2

declare dso_local i32 @store16(%struct.tpm_buf*, i32) #2

declare dso_local i32 @store32(%struct.tpm_buf*, i64) #2

declare dso_local i32 @storebytes(%struct.tpm_buf*, i8*, i32) #2

declare dso_local i32 @store8(%struct.tpm_buf*, i8 zeroext) #2

declare dso_local i32 @trusted_tpm_send(i64, i32) #2

declare dso_local i32 @LOAD32(i64, i64) #2

declare dso_local i32 @TSS_checkhmac2(i64, i64, i8*, i8*, i32, i8*, i32, i32, i64, i32, i64, i32, i32) #2

declare dso_local i32 @memcpy(i8*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
