; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_appraise.c_xattr_verify.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_appraise.c_xattr_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.integrity_iint_cache = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.evm_ima_xattr_data = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@IMA_DIGSIG_REQUIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"IMA-signature-required\00", align 1
@INTEGRITY_FAIL = common dso_local global i32 0, align 4
@IMA_DIGSIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"invalid-hash\00", align 1
@INTEGRITY_PASS = common dso_local global i32 0, align 4
@INTEGRITY_KEYRING_IMA = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@INTEGRITY_UNKNOWN = common dso_local global i32 0, align 4
@CONFIG_INTEGRITY_PLATFORM_KEYRING = common dso_local global i32 0, align 4
@KEXEC_KERNEL_CHECK = common dso_local global i32 0, align 4
@INTEGRITY_KEYRING_PLATFORM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"invalid-signature\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"unknown-ima-data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.integrity_iint_cache*, %struct.evm_ima_xattr_data*, i32, i32*, i8**)* @xattr_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xattr_verify(i32 %0, %struct.integrity_iint_cache* %1, %struct.evm_ima_xattr_data* %2, i32 %3, i32* %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.integrity_iint_cache*, align 8
  %9 = alloca %struct.evm_ima_xattr_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.integrity_iint_cache* %1, %struct.integrity_iint_cache** %8, align 8
  store %struct.evm_ima_xattr_data* %2, %struct.evm_ima_xattr_data** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8** %5, i8*** %12, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load %struct.evm_ima_xattr_data*, %struct.evm_ima_xattr_data** %9, align 8
  %18 = getelementptr inbounds %struct.evm_ima_xattr_data, %struct.evm_ima_xattr_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %146 [
    i32 128, label %20
    i32 129, label %21
    i32 130, label %81
  ]

20:                                               ; preds = %6
  store i32 1, i32* %14, align 4
  br label %21

21:                                               ; preds = %6, %20
  %22 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %8, align 8
  %23 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IMA_DIGSIG_REQUIRED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i8**, i8*** %12, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %29, align 8
  %30 = load i32, i32* @INTEGRITY_FAIL, align 4
  %31 = load i32*, i32** %11, align 8
  store i32 %30, i32* %31, align 4
  br label %150

32:                                               ; preds = %21
  %33 = load i32, i32* @IMA_DIGSIG, align 4
  %34 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %8, align 8
  %35 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %34, i32 0, i32 2
  %36 = call i32 @clear_bit(i32 %33, i32* %35)
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = sub i64 %38, 4
  %40 = load i32, i32* %14, align 4
  %41 = sext i32 %40 to i64
  %42 = sub i64 %39, %41
  %43 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %8, align 8
  %44 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp uge i64 %42, %48
  br i1 %49, label %50, label %68

50:                                               ; preds = %32
  %51 = load %struct.evm_ima_xattr_data*, %struct.evm_ima_xattr_data** %9, align 8
  %52 = getelementptr inbounds %struct.evm_ima_xattr_data, %struct.evm_ima_xattr_data* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %8, align 8
  %58 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %8, align 8
  %63 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @memcmp(i32* %56, i32 %61, i32 %66)
  store i32 %67, i32* %13, align 4
  br label %71

68:                                               ; preds = %32
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %13, align 4
  br label %71

71:                                               ; preds = %68, %50
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i8**, i8*** %12, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %75, align 8
  %76 = load i32, i32* @INTEGRITY_FAIL, align 4
  %77 = load i32*, i32** %11, align 8
  store i32 %76, i32* %77, align 4
  br label %150

78:                                               ; preds = %71
  %79 = load i32, i32* @INTEGRITY_PASS, align 4
  %80 = load i32*, i32** %11, align 8
  store i32 %79, i32* %80, align 4
  br label %150

81:                                               ; preds = %6
  %82 = load i32, i32* @IMA_DIGSIG, align 4
  %83 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %8, align 8
  %84 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %83, i32 0, i32 2
  %85 = call i32 @set_bit(i32 %82, i32* %84)
  %86 = load i32, i32* @INTEGRITY_KEYRING_IMA, align 4
  %87 = load %struct.evm_ima_xattr_data*, %struct.evm_ima_xattr_data** %9, align 8
  %88 = bitcast %struct.evm_ima_xattr_data* %87 to i8*
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %8, align 8
  %91 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %8, align 8
  %96 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @integrity_digsig_verify(i32 %86, i8* %88, i32 %89, i32 %94, i32 %99)
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* @EOPNOTSUPP, align 4
  %103 = sub nsw i32 0, %102
  %104 = icmp eq i32 %101, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %81
  %106 = load i32, i32* @INTEGRITY_UNKNOWN, align 4
  %107 = load i32*, i32** %11, align 8
  store i32 %106, i32* %107, align 4
  br label %150

108:                                              ; preds = %81
  %109 = load i32, i32* @CONFIG_INTEGRITY_PLATFORM_KEYRING, align 4
  %110 = call i32 @IS_ENABLED(i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %135

112:                                              ; preds = %108
  %113 = load i32, i32* %13, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %135

115:                                              ; preds = %112
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @KEXEC_KERNEL_CHECK, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %135

119:                                              ; preds = %115
  %120 = load i32, i32* @INTEGRITY_KEYRING_PLATFORM, align 4
  %121 = load %struct.evm_ima_xattr_data*, %struct.evm_ima_xattr_data** %9, align 8
  %122 = bitcast %struct.evm_ima_xattr_data* %121 to i8*
  %123 = load i32, i32* %10, align 4
  %124 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %8, align 8
  %125 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %124, i32 0, i32 1
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %8, align 8
  %130 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %129, i32 0, i32 1
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @integrity_digsig_verify(i32 %120, i8* %122, i32 %123, i32 %128, i32 %133)
  store i32 %134, i32* %13, align 4
  br label %135

135:                                              ; preds = %119, %115, %112, %108
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load i8**, i8*** %12, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %139, align 8
  %140 = load i32, i32* @INTEGRITY_FAIL, align 4
  %141 = load i32*, i32** %11, align 8
  store i32 %140, i32* %141, align 4
  br label %145

142:                                              ; preds = %135
  %143 = load i32, i32* @INTEGRITY_PASS, align 4
  %144 = load i32*, i32** %11, align 8
  store i32 %143, i32* %144, align 4
  br label %145

145:                                              ; preds = %142, %138
  br label %150

146:                                              ; preds = %6
  %147 = load i32, i32* @INTEGRITY_UNKNOWN, align 4
  %148 = load i32*, i32** %11, align 8
  store i32 %147, i32* %148, align 4
  %149 = load i8**, i8*** %12, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %149, align 8
  br label %150

150:                                              ; preds = %146, %145, %105, %78, %74, %28
  %151 = load i32, i32* %13, align 4
  ret i32 %151
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @integrity_digsig_verify(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @IS_ENABLED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
