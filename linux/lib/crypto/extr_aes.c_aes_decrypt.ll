; ModuleID = '/home/carl/AnghaBench/linux/lib/crypto/extr_aes.c_aes_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/lib/crypto/extr_aes.c_aes_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aes_ctx = type { i32*, i32 }

@aes_inv_sbox = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aes_decrypt(%struct.crypto_aes_ctx* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.crypto_aes_ctx*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  store %struct.crypto_aes_ctx* %0, %struct.crypto_aes_ctx** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 4
  store i32* %15, i32** %7, align 8
  %16 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = sdiv i32 %18, 4
  %20 = add nsw i32 6, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @get_unaligned_le32(i32* %26)
  %28 = xor i32 %25, %27
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 %28, i32* %29, align 16
  %30 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %4, align 8
  %31 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  %37 = call i32 @get_unaligned_le32(i32* %36)
  %38 = xor i32 %34, %37
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 %38, i32* %39, align 4
  %40 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %4, align 8
  %41 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 8
  %47 = call i32 @get_unaligned_le32(i32* %46)
  %48 = xor i32 %44, %47
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  store i32 %48, i32* %49, align 8
  %50 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %4, align 8
  %51 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 12
  %57 = call i32 @get_unaligned_le32(i32* %56)
  %58 = xor i32 %54, %57
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  store i32 %58, i32* %59, align 4
  %60 = load i32*, i32** @aes_inv_sbox, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** @aes_inv_sbox, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 64
  %65 = load i32, i32* %64, align 4
  %66 = xor i32 %62, %65
  %67 = load i32*, i32** @aes_inv_sbox, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 129
  %69 = load i32, i32* %68, align 4
  %70 = xor i32 %66, %69
  %71 = load i32*, i32** @aes_inv_sbox, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 200
  %73 = load i32, i32* %72, align 4
  %74 = xor i32 %70, %73
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %76 = load i32, i32* %75, align 16
  %77 = xor i32 %76, %74
  store i32 %77, i32* %75, align 16
  %78 = load i32*, i32** @aes_inv_sbox, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 16
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** @aes_inv_sbox, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 83
  %83 = load i32, i32* %82, align 4
  %84 = xor i32 %80, %83
  %85 = load i32*, i32** @aes_inv_sbox, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 150
  %87 = load i32, i32* %86, align 4
  %88 = xor i32 %84, %87
  %89 = load i32*, i32** @aes_inv_sbox, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 212
  %91 = load i32, i32* %90, align 4
  %92 = xor i32 %88, %91
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = xor i32 %94, %92
  store i32 %95, i32* %93, align 4
  %96 = load i32*, i32** @aes_inv_sbox, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 32
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** @aes_inv_sbox, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 96
  %101 = load i32, i32* %100, align 4
  %102 = xor i32 %98, %101
  %103 = load i32*, i32** @aes_inv_sbox, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 160
  %105 = load i32, i32* %104, align 4
  %106 = xor i32 %102, %105
  %107 = load i32*, i32** @aes_inv_sbox, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 236
  %109 = load i32, i32* %108, align 4
  %110 = xor i32 %106, %109
  %111 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %112 = load i32, i32* %111, align 8
  %113 = xor i32 %112, %110
  store i32 %113, i32* %111, align 8
  %114 = load i32*, i32** @aes_inv_sbox, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 48
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** @aes_inv_sbox, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 112
  %119 = load i32, i32* %118, align 4
  %120 = xor i32 %116, %119
  %121 = load i32*, i32** @aes_inv_sbox, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 187
  %123 = load i32, i32* %122, align 4
  %124 = xor i32 %120, %123
  %125 = load i32*, i32** @aes_inv_sbox, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 247
  %127 = load i32, i32* %126, align 4
  %128 = xor i32 %124, %127
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %130 = load i32, i32* %129, align 4
  %131 = xor i32 %130, %128
  store i32 %131, i32* %129, align 4
  store i32 0, i32* %11, align 4
  br label %132

132:                                              ; preds = %203, %3
  %133 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %134 = call i32 @inv_subshift(i32* %133, i32 0)
  %135 = call i32 @inv_mix_columns(i32 %134)
  %136 = load i32*, i32** %7, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = xor i32 %135, %138
  %140 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 %139, i32* %140, align 16
  %141 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %142 = call i32 @inv_subshift(i32* %141, i32 1)
  %143 = call i32 @inv_mix_columns(i32 %142)
  %144 = load i32*, i32** %7, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = xor i32 %143, %146
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  store i32 %147, i32* %148, align 4
  %149 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %150 = call i32 @inv_subshift(i32* %149, i32 2)
  %151 = call i32 @inv_mix_columns(i32 %150)
  %152 = load i32*, i32** %7, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 2
  %154 = load i32, i32* %153, align 4
  %155 = xor i32 %151, %154
  %156 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  store i32 %155, i32* %156, align 8
  %157 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %158 = call i32 @inv_subshift(i32* %157, i32 3)
  %159 = call i32 @inv_mix_columns(i32 %158)
  %160 = load i32*, i32** %7, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 3
  %162 = load i32, i32* %161, align 4
  %163 = xor i32 %159, %162
  %164 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  store i32 %163, i32* %164, align 4
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* %8, align 4
  %167 = sub nsw i32 %166, 2
  %168 = icmp eq i32 %165, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %132
  br label %208

170:                                              ; preds = %132
  %171 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %172 = call i32 @inv_subshift(i32* %171, i32 0)
  %173 = call i32 @inv_mix_columns(i32 %172)
  %174 = load i32*, i32** %7, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 4
  %176 = load i32, i32* %175, align 4
  %177 = xor i32 %173, %176
  %178 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 %177, i32* %178, align 16
  %179 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %180 = call i32 @inv_subshift(i32* %179, i32 1)
  %181 = call i32 @inv_mix_columns(i32 %180)
  %182 = load i32*, i32** %7, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 5
  %184 = load i32, i32* %183, align 4
  %185 = xor i32 %181, %184
  %186 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 %185, i32* %186, align 4
  %187 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %188 = call i32 @inv_subshift(i32* %187, i32 2)
  %189 = call i32 @inv_mix_columns(i32 %188)
  %190 = load i32*, i32** %7, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 6
  %192 = load i32, i32* %191, align 4
  %193 = xor i32 %189, %192
  %194 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  store i32 %193, i32* %194, align 8
  %195 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %196 = call i32 @inv_subshift(i32* %195, i32 3)
  %197 = call i32 @inv_mix_columns(i32 %196)
  %198 = load i32*, i32** %7, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 7
  %200 = load i32, i32* %199, align 4
  %201 = xor i32 %197, %200
  %202 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  store i32 %201, i32* %202, align 4
  br label %203

203:                                              ; preds = %170
  %204 = load i32, i32* %11, align 4
  %205 = add nsw i32 %204, 2
  store i32 %205, i32* %11, align 4
  %206 = load i32*, i32** %7, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 8
  store i32* %207, i32** %7, align 8
  br label %132

208:                                              ; preds = %169
  %209 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %210 = call i32 @inv_subshift(i32* %209, i32 0)
  %211 = load i32*, i32** %7, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 4
  %213 = load i32, i32* %212, align 4
  %214 = xor i32 %210, %213
  %215 = load i32*, i32** %5, align 8
  %216 = call i32 @put_unaligned_le32(i32 %214, i32* %215)
  %217 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %218 = call i32 @inv_subshift(i32* %217, i32 1)
  %219 = load i32*, i32** %7, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 5
  %221 = load i32, i32* %220, align 4
  %222 = xor i32 %218, %221
  %223 = load i32*, i32** %5, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 4
  %225 = call i32 @put_unaligned_le32(i32 %222, i32* %224)
  %226 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %227 = call i32 @inv_subshift(i32* %226, i32 2)
  %228 = load i32*, i32** %7, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 6
  %230 = load i32, i32* %229, align 4
  %231 = xor i32 %227, %230
  %232 = load i32*, i32** %5, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 8
  %234 = call i32 @put_unaligned_le32(i32 %231, i32* %233)
  %235 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %236 = call i32 @inv_subshift(i32* %235, i32 3)
  %237 = load i32*, i32** %7, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 7
  %239 = load i32, i32* %238, align 4
  %240 = xor i32 %236, %239
  %241 = load i32*, i32** %5, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 12
  %243 = call i32 @put_unaligned_le32(i32 %240, i32* %242)
  ret void
}

declare dso_local i32 @get_unaligned_le32(i32*) #1

declare dso_local i32 @inv_mix_columns(i32) #1

declare dso_local i32 @inv_subshift(i32*, i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
