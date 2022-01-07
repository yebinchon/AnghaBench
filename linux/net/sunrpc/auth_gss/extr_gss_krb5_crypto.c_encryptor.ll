; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_krb5_crypto.c_encryptor.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_krb5_crypto.c_encryptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32, i64 }
%struct.encryptor_desc = type { i32, i32, i32, i32*, i32*, i32, i32, %struct.page**, %struct.xdr_buf* }
%struct.page = type { i32 }
%struct.xdr_buf = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_sync_skcipher = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scatterlist*, i8*)* @encryptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encryptor(%struct.scatterlist* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scatterlist*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.encryptor_desc*, align 8
  %7 = alloca %struct.xdr_buf*, align 8
  %8 = alloca %struct.crypto_sync_skcipher*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.scatterlist* %0, %struct.scatterlist** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.encryptor_desc*
  store %struct.encryptor_desc* %16, %struct.encryptor_desc** %6, align 8
  %17 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %18 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %17, i32 0, i32 8
  %19 = load %struct.xdr_buf*, %struct.xdr_buf** %18, align 8
  store %struct.xdr_buf* %19, %struct.xdr_buf** %7, align 8
  %20 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %21 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.crypto_sync_skcipher* @crypto_sync_skcipher_reqtfm(i32 %22)
  store %struct.crypto_sync_skcipher* %23, %struct.crypto_sync_skcipher** %8, align 8
  %24 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %25 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %28 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %26, %29
  store i32 %30, i32* %10, align 4
  %31 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %32 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 3
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %38 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %41 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %39, %45
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %2
  %50 = load i32, i32* %13, align 4
  %51 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %52 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %49
  %56 = load i32, i32* %13, align 4
  %57 = load %struct.xdr_buf*, %struct.xdr_buf** %7, align 8
  %58 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %56, %59
  %61 = load i32, i32* @PAGE_SHIFT, align 4
  %62 = ashr i32 %60, %61
  store i32 %62, i32* %14, align 4
  %63 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %64 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %63, i32 0, i32 7
  %65 = load %struct.page**, %struct.page*** %64, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.page*, %struct.page** %65, i64 %67
  %69 = load %struct.page*, %struct.page** %68, align 8
  store %struct.page* %69, %struct.page** %9, align 8
  br label %73

70:                                               ; preds = %49, %2
  %71 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %72 = call %struct.page* @sg_page(%struct.scatterlist* %71)
  store %struct.page* %72, %struct.page** %9, align 8
  br label %73

73:                                               ; preds = %70, %55
  %74 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %75 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %78 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  %82 = load %struct.page*, %struct.page** %9, align 8
  %83 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %84 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %87 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @sg_set_page(i32* %81, %struct.page* %82, i32 %85, i64 %88)
  %90 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %91 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %94 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %92, i64 %96
  %98 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %99 = call %struct.page* @sg_page(%struct.scatterlist* %98)
  %100 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %101 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %104 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @sg_set_page(i32* %97, %struct.page* %99, i32 %102, i64 %105)
  %107 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %108 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  %111 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %112 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %115 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, %113
  store i32 %117, i32* %115, align 8
  %118 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %119 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %122 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, %120
  store i32 %124, i32* %122, align 8
  %125 = load i32, i32* %10, align 4
  %126 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %8, align 8
  %127 = call i32 @crypto_sync_skcipher_blocksize(%struct.crypto_sync_skcipher* %126)
  %128 = sub nsw i32 %127, 1
  %129 = and i32 %125, %128
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %10, align 4
  %132 = sub nsw i32 %131, %130
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %73
  store i32 0, i32* %3, align 4
  br label %236

136:                                              ; preds = %73
  %137 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %138 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %137, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %141 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = sub nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %139, i64 %144
  %146 = call i32 @sg_mark_end(i32* %145)
  %147 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %148 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %147, i32 0, i32 4
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %151 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = sub nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %149, i64 %154
  %156 = call i32 @sg_mark_end(i32* %155)
  %157 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %158 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %161 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %160, i32 0, i32 3
  %162 = load i32*, i32** %161, align 8
  %163 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %164 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %163, i32 0, i32 4
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %10, align 4
  %167 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %168 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @skcipher_request_set_crypt(i32 %159, i32* %162, i32* %165, i32 %166, i32 %169)
  %171 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %172 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @crypto_skcipher_encrypt(i32 %173)
  store i32 %174, i32* %12, align 4
  %175 = load i32, i32* %12, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %136
  %178 = load i32, i32* %12, align 4
  store i32 %178, i32* %3, align 4
  br label %236

179:                                              ; preds = %136
  %180 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %181 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %180, i32 0, i32 3
  %182 = load i32*, i32** %181, align 8
  %183 = call i32 @sg_init_table(i32* %182, i32 4)
  %184 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %185 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %184, i32 0, i32 4
  %186 = load i32*, i32** %185, align 8
  %187 = call i32 @sg_init_table(i32* %186, i32 4)
  %188 = load i32, i32* %11, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %230

190:                                              ; preds = %179
  %191 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %192 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %191, i32 0, i32 4
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  %195 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %196 = call %struct.page* @sg_page(%struct.scatterlist* %195)
  %197 = load i32, i32* %11, align 4
  %198 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %199 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %202 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = sext i32 %203 to i64
  %205 = add nsw i64 %200, %204
  %206 = load i32, i32* %11, align 4
  %207 = sext i32 %206 to i64
  %208 = sub nsw i64 %205, %207
  %209 = call i32 @sg_set_page(i32* %194, %struct.page* %196, i32 %197, i64 %208)
  %210 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %211 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %210, i32 0, i32 4
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %216 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %215, i32 0, i32 3
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  store i32 %214, i32* %218, align 4
  %219 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %220 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %219, i32 0, i32 3
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 0
  %223 = load %struct.page*, %struct.page** %9, align 8
  %224 = call i32 @sg_assign_page(i32* %222, %struct.page* %223)
  %225 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %226 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %225, i32 0, i32 1
  store i32 1, i32* %226, align 4
  %227 = load i32, i32* %11, align 4
  %228 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %229 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %228, i32 0, i32 0
  store i32 %227, i32* %229, align 8
  br label %235

230:                                              ; preds = %179
  %231 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %232 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %231, i32 0, i32 1
  store i32 0, i32* %232, align 4
  %233 = load %struct.encryptor_desc*, %struct.encryptor_desc** %6, align 8
  %234 = getelementptr inbounds %struct.encryptor_desc, %struct.encryptor_desc* %233, i32 0, i32 0
  store i32 0, i32* %234, align 8
  br label %235

235:                                              ; preds = %230, %190
  store i32 0, i32* %3, align 4
  br label %236

236:                                              ; preds = %235, %177, %135
  %237 = load i32, i32* %3, align 4
  ret i32 %237
}

declare dso_local %struct.crypto_sync_skcipher* @crypto_sync_skcipher_reqtfm(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.page* @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @sg_set_page(i32*, %struct.page*, i32, i64) #1

declare dso_local i32 @crypto_sync_skcipher_blocksize(%struct.crypto_sync_skcipher*) #1

declare dso_local i32 @sg_mark_end(i32*) #1

declare dso_local i32 @skcipher_request_set_crypt(i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @crypto_skcipher_encrypt(i32) #1

declare dso_local i32 @sg_init_table(i32*, i32) #1

declare dso_local i32 @sg_assign_page(i32*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
