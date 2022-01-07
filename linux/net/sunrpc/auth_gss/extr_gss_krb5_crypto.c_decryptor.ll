; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_krb5_crypto.c_decryptor.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_krb5_crypto.c_decryptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32, i64 }
%struct.decryptor_desc = type { i32, i32, i32*, i32, i32 }
%struct.crypto_sync_skcipher = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scatterlist*, i8*)* @decryptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decryptor(%struct.scatterlist* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scatterlist*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.decryptor_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_sync_skcipher*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.scatterlist* %0, %struct.scatterlist** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.decryptor_desc*
  store %struct.decryptor_desc* %12, %struct.decryptor_desc** %6, align 8
  %13 = load %struct.decryptor_desc*, %struct.decryptor_desc** %6, align 8
  %14 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %17 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %15, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.decryptor_desc*, %struct.decryptor_desc** %6, align 8
  %21 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.crypto_sync_skcipher* @crypto_sync_skcipher_reqtfm(i32 %22)
  store %struct.crypto_sync_skcipher* %23, %struct.crypto_sync_skcipher** %8, align 8
  %24 = load %struct.decryptor_desc*, %struct.decryptor_desc** %6, align 8
  %25 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 3
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.decryptor_desc*, %struct.decryptor_desc** %6, align 8
  %31 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.decryptor_desc*, %struct.decryptor_desc** %6, align 8
  %34 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  %38 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %39 = call i32 @sg_page(%struct.scatterlist* %38)
  %40 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %41 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %44 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @sg_set_page(i32* %37, i32 %39, i32 %42, i64 %45)
  %47 = load %struct.decryptor_desc*, %struct.decryptor_desc** %6, align 8
  %48 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %52 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.decryptor_desc*, %struct.decryptor_desc** %6, align 8
  %55 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %8, align 8
  %60 = call i32 @crypto_sync_skcipher_blocksize(%struct.crypto_sync_skcipher* %59)
  %61 = sub nsw i32 %60, 1
  %62 = and i32 %58, %61
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %7, align 4
  %65 = sub nsw i32 %64, %63
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %140

69:                                               ; preds = %2
  %70 = load %struct.decryptor_desc*, %struct.decryptor_desc** %6, align 8
  %71 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.decryptor_desc*, %struct.decryptor_desc** %6, align 8
  %74 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %72, i64 %77
  %79 = call i32 @sg_mark_end(i32* %78)
  %80 = load %struct.decryptor_desc*, %struct.decryptor_desc** %6, align 8
  %81 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.decryptor_desc*, %struct.decryptor_desc** %6, align 8
  %84 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.decryptor_desc*, %struct.decryptor_desc** %6, align 8
  %87 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.decryptor_desc*, %struct.decryptor_desc** %6, align 8
  %91 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @skcipher_request_set_crypt(i32 %82, i32* %85, i32* %88, i32 %89, i32 %92)
  %94 = load %struct.decryptor_desc*, %struct.decryptor_desc** %6, align 8
  %95 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @crypto_skcipher_decrypt(i32 %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %69
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %3, align 4
  br label %140

102:                                              ; preds = %69
  %103 = load %struct.decryptor_desc*, %struct.decryptor_desc** %6, align 8
  %104 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @sg_init_table(i32* %105, i32 4)
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %134

109:                                              ; preds = %102
  %110 = load %struct.decryptor_desc*, %struct.decryptor_desc** %6, align 8
  %111 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %115 = call i32 @sg_page(%struct.scatterlist* %114)
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %118 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %121 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %119, %123
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = sub nsw i64 %124, %126
  %128 = call i32 @sg_set_page(i32* %113, i32 %115, i32 %116, i64 %127)
  %129 = load %struct.decryptor_desc*, %struct.decryptor_desc** %6, align 8
  %130 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %129, i32 0, i32 1
  store i32 1, i32* %130, align 4
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.decryptor_desc*, %struct.decryptor_desc** %6, align 8
  %133 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  br label %139

134:                                              ; preds = %102
  %135 = load %struct.decryptor_desc*, %struct.decryptor_desc** %6, align 8
  %136 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %135, i32 0, i32 1
  store i32 0, i32* %136, align 4
  %137 = load %struct.decryptor_desc*, %struct.decryptor_desc** %6, align 8
  %138 = getelementptr inbounds %struct.decryptor_desc, %struct.decryptor_desc* %137, i32 0, i32 0
  store i32 0, i32* %138, align 8
  br label %139

139:                                              ; preds = %134, %109
  store i32 0, i32* %3, align 4
  br label %140

140:                                              ; preds = %139, %100, %68
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local %struct.crypto_sync_skcipher* @crypto_sync_skcipher_reqtfm(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @sg_set_page(i32*, i32, i32, i64) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @crypto_sync_skcipher_blocksize(%struct.crypto_sync_skcipher*) #1

declare dso_local i32 @sg_mark_end(i32*) #1

declare dso_local i32 @skcipher_request_set_crypt(i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @crypto_skcipher_decrypt(i32) #1

declare dso_local i32 @sg_init_table(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
