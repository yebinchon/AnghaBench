; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_digsig.c_digsig_verify.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_digsig.c_digsig_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }
%struct.signature_hdr = type { i64, i64 }
%struct.shash_desc = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SHA1_DIGEST_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PUBKEY_ALGO_RSA = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%llX\00", align 1
@key_type_user = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"key not found, id: %s\0A\00", align 1
@shash = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @digsig_verify(%struct.key* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.key*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.signature_hdr*, align 8
  %14 = alloca %struct.shash_desc*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.key*, align 8
  %18 = alloca [20 x i8], align 16
  %19 = alloca i32, align 4
  %20 = alloca %struct.key*, align 8
  store %struct.key* %0, %struct.key** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %12, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = bitcast i8* %23 to %struct.signature_hdr*
  store %struct.signature_hdr* %24, %struct.signature_hdr** %13, align 8
  store %struct.shash_desc* null, %struct.shash_desc** %14, align 8
  %25 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %15, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %16, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ult i64 %30, 18
  br i1 %31, label %32, label %35

32:                                               ; preds = %5
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %127

35:                                               ; preds = %5
  %36 = load %struct.signature_hdr*, %struct.signature_hdr** %13, align 8
  %37 = getelementptr inbounds %struct.signature_hdr, %struct.signature_hdr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PUBKEY_ALGO_RSA, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @ENOTSUPP, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %127

44:                                               ; preds = %35
  %45 = getelementptr inbounds [20 x i8], [20 x i8]* %18, i64 0, i64 0
  %46 = load %struct.signature_hdr*, %struct.signature_hdr** %13, align 8
  %47 = getelementptr inbounds %struct.signature_hdr, %struct.signature_hdr* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i32*
  %50 = call i32 @__be64_to_cpup(i32* %49)
  %51 = call i32 @sprintf(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load %struct.key*, %struct.key** %7, align 8
  %53 = icmp ne %struct.key* %52, null
  br i1 %53, label %54, label %69

54:                                               ; preds = %44
  %55 = load %struct.key*, %struct.key** %7, align 8
  %56 = call i32 @make_key_ref(%struct.key* %55, i64 1)
  %57 = getelementptr inbounds [20 x i8], [20 x i8]* %18, i64 0, i64 0
  %58 = call %struct.key* @keyring_search(i32 %56, i32* @key_type_user, i8* %57, i32 1)
  store %struct.key* %58, %struct.key** %20, align 8
  %59 = load %struct.key*, %struct.key** %20, align 8
  %60 = call i64 @IS_ERR(%struct.key* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load %struct.key*, %struct.key** %20, align 8
  %64 = call %struct.key* @ERR_CAST(%struct.key* %63)
  store %struct.key* %64, %struct.key** %17, align 8
  br label %68

65:                                               ; preds = %54
  %66 = load %struct.key*, %struct.key** %20, align 8
  %67 = call %struct.key* @key_ref_to_ptr(%struct.key* %66)
  store %struct.key* %67, %struct.key** %17, align 8
  br label %68

68:                                               ; preds = %65, %62
  br label %72

69:                                               ; preds = %44
  %70 = getelementptr inbounds [20 x i8], [20 x i8]* %18, i64 0, i64 0
  %71 = call %struct.key* @request_key(i32* @key_type_user, i8* %70, i32* null)
  store %struct.key* %71, %struct.key** %17, align 8
  br label %72

72:                                               ; preds = %69, %68
  %73 = load %struct.key*, %struct.key** %17, align 8
  %74 = call i64 @IS_ERR(%struct.key* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = getelementptr inbounds [20 x i8], [20 x i8]* %18, i64 0, i64 0
  %78 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %77)
  %79 = load %struct.key*, %struct.key** %17, align 8
  %80 = call i32 @PTR_ERR(%struct.key* %79)
  store i32 %80, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %127

81:                                               ; preds = %72
  %82 = load i32, i32* @shash, align 4
  %83 = call i64 @crypto_shash_descsize(i32 %82)
  %84 = add i64 4, %83
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call %struct.shash_desc* @kzalloc(i64 %84, i32 %85)
  store %struct.shash_desc* %86, %struct.shash_desc** %14, align 8
  %87 = load %struct.shash_desc*, %struct.shash_desc** %14, align 8
  %88 = icmp ne %struct.shash_desc* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %81
  br label %116

90:                                               ; preds = %81
  %91 = load i32, i32* @shash, align 4
  %92 = load %struct.shash_desc*, %struct.shash_desc** %14, align 8
  %93 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load %struct.shash_desc*, %struct.shash_desc** %14, align 8
  %95 = call i32 @crypto_shash_init(%struct.shash_desc* %94)
  %96 = load %struct.shash_desc*, %struct.shash_desc** %14, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @crypto_shash_update(%struct.shash_desc* %96, i8* %97, i32 %98)
  %100 = load %struct.shash_desc*, %struct.shash_desc** %14, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = call i32 @crypto_shash_update(%struct.shash_desc* %100, i8* %101, i32 16)
  %103 = load %struct.shash_desc*, %struct.shash_desc** %14, align 8
  %104 = call i32 @crypto_shash_final(%struct.shash_desc* %103, i8* %28)
  %105 = load %struct.shash_desc*, %struct.shash_desc** %14, align 8
  %106 = call i32 @kfree(%struct.shash_desc* %105)
  %107 = load %struct.key*, %struct.key** %17, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 16
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = sub i64 %111, 16
  %113 = trunc i64 %112 to i32
  %114 = trunc i64 %26 to i32
  %115 = call i32 @digsig_verify_rsa(%struct.key* %107, i8* %109, i32 %113, i8* %28, i32 %114)
  store i32 %115, i32* %12, align 4
  br label %116

116:                                              ; preds = %90, %89
  %117 = load %struct.key*, %struct.key** %17, align 8
  %118 = call i32 @key_put(%struct.key* %117)
  %119 = load i32, i32* %12, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  br label %125

124:                                              ; preds = %116
  br label %125

125:                                              ; preds = %124, %121
  %126 = phi i32 [ %123, %121 ], [ 0, %124 ]
  store i32 %126, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %127

127:                                              ; preds = %125, %76, %41, %32
  %128 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %128)
  %129 = load i32, i32* %6, align 4
  ret i32 %129
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @__be64_to_cpup(i32*) #2

declare dso_local %struct.key* @keyring_search(i32, i32*, i8*, i32) #2

declare dso_local i32 @make_key_ref(%struct.key*, i64) #2

declare dso_local i64 @IS_ERR(%struct.key*) #2

declare dso_local %struct.key* @ERR_CAST(%struct.key*) #2

declare dso_local %struct.key* @key_ref_to_ptr(%struct.key*) #2

declare dso_local %struct.key* @request_key(i32*, i8*, i32*) #2

declare dso_local i32 @pr_err(i8*, i8*) #2

declare dso_local i32 @PTR_ERR(%struct.key*) #2

declare dso_local %struct.shash_desc* @kzalloc(i64, i32) #2

declare dso_local i64 @crypto_shash_descsize(i32) #2

declare dso_local i32 @crypto_shash_init(%struct.shash_desc*) #2

declare dso_local i32 @crypto_shash_update(%struct.shash_desc*, i8*, i32) #2

declare dso_local i32 @crypto_shash_final(%struct.shash_desc*, i8*) #2

declare dso_local i32 @kfree(%struct.shash_desc*) #2

declare dso_local i32 @digsig_verify_rsa(%struct.key*, i8*, i32, i8*, i32) #2

declare dso_local i32 @key_put(%struct.key*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
