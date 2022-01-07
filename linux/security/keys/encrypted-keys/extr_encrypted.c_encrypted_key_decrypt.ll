; ModuleID = '/home/carl/AnghaBench/linux/security/keys/encrypted-keys/extr_encrypted.c_encrypted_key_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/encrypted-keys/extr_encrypted.c_encrypted_key_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encrypted_key_payload = type { i32, i32*, i32*, i32*, i32 }
%struct.key = type { i32 }

@HASH_SIZE = common dso_local global i32 0, align 4
@blksize = common dso_local global i32 0, align 4
@ivsize = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"encrypted_key: bad hmac (%d)\0A\00", align 1
@ENC_KEY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"encrypted_key: failed to decrypt key (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.encrypted_key_payload*, i8*, i8*)* @encrypted_key_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encrypted_key_decrypt(%struct.encrypted_key_payload* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.encrypted_key_payload*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.key*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.encrypted_key_payload* %0, %struct.encrypted_key_payload** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %19 = load i32, i32* @HASH_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %9, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %23 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %24 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @blksize, align 4
  %27 = call i32 @roundup(i32 %25, i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* @ivsize, align 4
  %29 = add nsw i32 %28, 1
  %30 = load i32, i32* %14, align 4
  %31 = add i32 %29, %30
  %32 = load i32, i32* @HASH_SIZE, align 4
  %33 = add i32 %31, %32
  %34 = mul i32 %33, 2
  %35 = zext i32 %34 to i64
  store i64 %35, i64* %16, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i64 @strlen(i8* %36)
  %38 = load i64, i64* %16, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %3
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %144

43:                                               ; preds = %3
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* @ivsize, align 4
  %46 = mul nsw i32 2, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  %49 = getelementptr inbounds i8, i8* %48, i64 2
  store i8* %49, i8** %13, align 8
  %50 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %51 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* @ivsize, align 4
  %55 = call i32 @hex2bin(i32* %52, i8* %53, i32 %54)
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* %17, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %43
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %144

61:                                               ; preds = %43
  %62 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %63 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @hex2bin(i32* %64, i8* %65, i32 %66)
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* %17, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %144

73:                                               ; preds = %61
  %74 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %75 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %78 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  store i32* %81, i32** %12, align 8
  %82 = load i32*, i32** %12, align 8
  %83 = load i8*, i8** %13, align 8
  %84 = load i32, i32* %14, align 4
  %85 = mul i32 %84, 2
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %83, i64 %86
  %88 = load i32, i32* @HASH_SIZE, align 4
  %89 = call i32 @hex2bin(i32* %82, i8* %87, i32 %88)
  store i32 %89, i32* %17, align 4
  %90 = load i32, i32* %17, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %73
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %144

95:                                               ; preds = %73
  %96 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %97 = call %struct.key* @request_master_key(%struct.encrypted_key_payload* %96, i32** %11, i64* %15)
  store %struct.key* %97, %struct.key** %8, align 8
  %98 = load %struct.key*, %struct.key** %8, align 8
  %99 = call i64 @IS_ERR(%struct.key* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load %struct.key*, %struct.key** %8, align 8
  %103 = call i32 @PTR_ERR(%struct.key* %102)
  store i32 %103, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %144

104:                                              ; preds = %95
  %105 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = load i32*, i32** %11, align 8
  %108 = load i64, i64* %15, align 8
  %109 = call i32 @datablob_hmac_verify(%struct.encrypted_key_payload* %105, i8* %106, i32* %107, i64 %108)
  store i32 %109, i32* %17, align 4
  %110 = load i32, i32* %17, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %104
  %113 = load i32, i32* %17, align 4
  %114 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %113)
  br label %134

115:                                              ; preds = %104
  %116 = load i32, i32* @ENC_KEY, align 4
  %117 = load i32*, i32** %11, align 8
  %118 = load i64, i64* %15, align 8
  %119 = call i32 @get_derived_key(i32* %22, i32 %116, i32* %117, i64 %118)
  store i32 %119, i32* %17, align 4
  %120 = load i32, i32* %17, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  br label %134

123:                                              ; preds = %115
  %124 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %125 = mul nuw i64 4, %20
  %126 = trunc i64 %125 to i32
  %127 = call i32 @derived_key_decrypt(%struct.encrypted_key_payload* %124, i32* %22, i32 %126)
  store i32 %127, i32* %17, align 4
  %128 = load i32, i32* %17, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %123
  %131 = load i32, i32* %17, align 4
  %132 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %130, %123
  br label %134

134:                                              ; preds = %133, %122, %112
  %135 = load %struct.key*, %struct.key** %8, align 8
  %136 = getelementptr inbounds %struct.key, %struct.key* %135, i32 0, i32 0
  %137 = call i32 @up_read(i32* %136)
  %138 = load %struct.key*, %struct.key** %8, align 8
  %139 = call i32 @key_put(%struct.key* %138)
  %140 = mul nuw i64 4, %20
  %141 = trunc i64 %140 to i32
  %142 = call i32 @memzero_explicit(i32* %22, i32 %141)
  %143 = load i32, i32* %17, align 4
  store i32 %143, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %144

144:                                              ; preds = %134, %101, %92, %70, %58, %40
  %145 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %145)
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @roundup(i32, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @hex2bin(i32*, i8*, i32) #2

declare dso_local %struct.key* @request_master_key(%struct.encrypted_key_payload*, i32**, i64*) #2

declare dso_local i64 @IS_ERR(%struct.key*) #2

declare dso_local i32 @PTR_ERR(%struct.key*) #2

declare dso_local i32 @datablob_hmac_verify(%struct.encrypted_key_payload*, i8*, i32*, i64) #2

declare dso_local i32 @pr_err(i8*, i32) #2

declare dso_local i32 @get_derived_key(i32*, i32, i32*, i64) #2

declare dso_local i32 @derived_key_decrypt(%struct.encrypted_key_payload*, i32*, i32) #2

declare dso_local i32 @up_read(i32*) #2

declare dso_local i32 @key_put(%struct.key*) #2

declare dso_local i32 @memzero_explicit(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
