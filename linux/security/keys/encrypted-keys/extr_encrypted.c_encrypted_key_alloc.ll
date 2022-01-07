; ModuleID = '/home/carl/AnghaBench/linux/security/keys/encrypted-keys/extr_encrypted.c_encrypted_key_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/encrypted-keys/extr_encrypted.c_encrypted_key_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encrypted_key_payload = type { i16, i16, i16 }
%struct.key = type { i32 }

@MIN_DATA_SIZE = common dso_local global i64 0, align 8
@MAX_DATA_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@key_format_default = common dso_local global i8* null, align 8
@key_format_ecryptfs = common dso_local global i32 0, align 4
@ECRYPTFS_MAX_KEY_BYTES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [73 x i8] c"encrypted_key: keylen for the ecryptfs format must be equal to %d bytes\0A\00", align 1
@key_format_enc32 = common dso_local global i32 0, align 4
@KEY_ENC32_PAYLOAD_LEN = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [55 x i8] c"encrypted_key: enc32 key payload incorrect length: %d\0A\00", align 1
@blksize = common dso_local global i32 0, align 4
@ivsize = common dso_local global i32 0, align 4
@HASH_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.encrypted_key_payload* (%struct.key*, i8*, i8*, i8*)* @encrypted_key_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.encrypted_key_payload* @encrypted_key_alloc(%struct.key* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.encrypted_key_payload*, align 8
  %6 = alloca %struct.key*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.encrypted_key_payload*, align 8
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.key* %0, %struct.key** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.encrypted_key_payload* null, %struct.encrypted_key_payload** %10, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 @kstrtol(i8* %18, i32 10, i64* %16)
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* %17, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %4
  %23 = load i64, i64* %16, align 8
  %24 = load i64, i64* @MIN_DATA_SIZE, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %16, align 8
  %28 = load i64, i64* @MAX_DATA_SIZE, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26, %22, %4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.encrypted_key_payload* @ERR_PTR(i32 %32)
  store %struct.encrypted_key_payload* %33, %struct.encrypted_key_payload** %5, align 8
  br label %154

34:                                               ; preds = %26
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i8*, i8** @key_format_default, align 8
  %39 = call i32 @strlen(i8* %38)
  br label %43

40:                                               ; preds = %34
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @strlen(i8* %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi i32 [ %39, %37 ], [ %42, %40 ]
  store i32 %44, i32* %15, align 4
  %45 = load i64, i64* %16, align 8
  %46 = trunc i64 %45 to i16
  store i16 %46, i16* %12, align 2
  %47 = load i16, i16* %12, align 2
  store i16 %47, i16* %13, align 2
  %48 = load i8*, i8** %7, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %89

50:                                               ; preds = %43
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* @key_format_ecryptfs, align 4
  %53 = call i32 @strcmp(i8* %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %69, label %55

55:                                               ; preds = %50
  %56 = load i64, i64* %16, align 8
  %57 = load i64, i64* @ECRYPTFS_MAX_KEY_BYTES, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i64, i64* @ECRYPTFS_MAX_KEY_BYTES, align 8
  %61 = trunc i64 %60 to i16
  %62 = call i32 @pr_err(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i16 zeroext %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  %65 = call %struct.encrypted_key_payload* @ERR_PTR(i32 %64)
  store %struct.encrypted_key_payload* %65, %struct.encrypted_key_payload** %5, align 8
  br label %154

66:                                               ; preds = %55
  %67 = load i64, i64* @ECRYPTFS_MAX_KEY_BYTES, align 8
  %68 = trunc i64 %67 to i16
  store i16 %68, i16* %12, align 2
  store i16 4, i16* %13, align 2
  br label %88

69:                                               ; preds = %50
  %70 = load i8*, i8** %7, align 8
  %71 = load i32, i32* @key_format_enc32, align 4
  %72 = call i32 @strcmp(i8* %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %87, label %74

74:                                               ; preds = %69
  %75 = load i16, i16* %12, align 2
  %76 = zext i16 %75 to i32
  %77 = load i16, i16* @KEY_ENC32_PAYLOAD_LEN, align 2
  %78 = zext i16 %77 to i32
  %79 = icmp ne i32 %76, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load i16, i16* %12, align 2
  %82 = call i32 @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  %85 = call %struct.encrypted_key_payload* @ERR_PTR(i32 %84)
  store %struct.encrypted_key_payload* %85, %struct.encrypted_key_payload** %5, align 8
  br label %154

86:                                               ; preds = %74
  br label %87

87:                                               ; preds = %86, %69
  br label %88

88:                                               ; preds = %87, %66
  br label %89

89:                                               ; preds = %88, %43
  %90 = load i16, i16* %12, align 2
  %91 = load i32, i32* @blksize, align 4
  %92 = call i32 @roundup(i16 zeroext %90, i32 %91)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %15, align 4
  %94 = add i32 %93, 1
  %95 = load i8*, i8** %8, align 8
  %96 = call i32 @strlen(i8* %95)
  %97 = add i32 %94, %96
  %98 = add i32 %97, 1
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 @strlen(i8* %99)
  %101 = add i32 %98, %100
  %102 = add i32 %101, 1
  %103 = load i32, i32* @ivsize, align 4
  %104 = add i32 %102, %103
  %105 = add i32 %104, 1
  %106 = load i32, i32* %14, align 4
  %107 = add i32 %105, %106
  %108 = trunc i32 %107 to i16
  store i16 %108, i16* %11, align 2
  %109 = load %struct.key*, %struct.key** %6, align 8
  %110 = load i16, i16* %13, align 2
  %111 = zext i16 %110 to i32
  %112 = load i16, i16* %11, align 2
  %113 = zext i16 %112 to i32
  %114 = add nsw i32 %111, %113
  %115 = sext i32 %114 to i64
  %116 = load i64, i64* @HASH_SIZE, align 8
  %117 = add nsw i64 %115, %116
  %118 = add nsw i64 %117, 1
  %119 = call i32 @key_payload_reserve(%struct.key* %109, i64 %118)
  store i32 %119, i32* %17, align 4
  %120 = load i32, i32* %17, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %89
  %123 = load i32, i32* %17, align 4
  %124 = call %struct.encrypted_key_payload* @ERR_PTR(i32 %123)
  store %struct.encrypted_key_payload* %124, %struct.encrypted_key_payload** %5, align 8
  br label %154

125:                                              ; preds = %89
  %126 = load i16, i16* %13, align 2
  %127 = zext i16 %126 to i64
  %128 = add i64 6, %127
  %129 = load i16, i16* %11, align 2
  %130 = zext i16 %129 to i64
  %131 = add i64 %128, %130
  %132 = load i64, i64* @HASH_SIZE, align 8
  %133 = add i64 %131, %132
  %134 = add i64 %133, 1
  %135 = load i32, i32* @GFP_KERNEL, align 4
  %136 = call %struct.encrypted_key_payload* @kzalloc(i64 %134, i32 %135)
  store %struct.encrypted_key_payload* %136, %struct.encrypted_key_payload** %10, align 8
  %137 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %10, align 8
  %138 = icmp ne %struct.encrypted_key_payload* %137, null
  br i1 %138, label %143, label %139

139:                                              ; preds = %125
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  %142 = call %struct.encrypted_key_payload* @ERR_PTR(i32 %141)
  store %struct.encrypted_key_payload* %142, %struct.encrypted_key_payload** %5, align 8
  br label %154

143:                                              ; preds = %125
  %144 = load i16, i16* %13, align 2
  %145 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %10, align 8
  %146 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %145, i32 0, i32 0
  store i16 %144, i16* %146, align 2
  %147 = load i16, i16* %12, align 2
  %148 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %10, align 8
  %149 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %148, i32 0, i32 1
  store i16 %147, i16* %149, align 2
  %150 = load i16, i16* %11, align 2
  %151 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %10, align 8
  %152 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %151, i32 0, i32 2
  store i16 %150, i16* %152, align 2
  %153 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %10, align 8
  store %struct.encrypted_key_payload* %153, %struct.encrypted_key_payload** %5, align 8
  br label %154

154:                                              ; preds = %143, %139, %122, %80, %59, %30
  %155 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  ret %struct.encrypted_key_payload* %155
}

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local %struct.encrypted_key_payload* @ERR_PTR(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i16 zeroext) #1

declare dso_local i32 @roundup(i16 zeroext, i32) #1

declare dso_local i32 @key_payload_reserve(%struct.key*, i64) #1

declare dso_local %struct.encrypted_key_payload* @kzalloc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
