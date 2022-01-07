; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_bpf_rand.h_bpf_semi_rand_get.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_bpf_rand.h_bpf_semi_rand_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @bpf_semi_rand_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_semi_rand_get() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @rand()
  %3 = srem i32 %2, 39
  switch i32 %3, label %185 [
    i32 0, label %4
    i32 1, label %9
    i32 2, label %14
    i32 3, label %19
    i32 4, label %24
    i32 5, label %29
    i32 6, label %34
    i32 7, label %39
    i32 8, label %44
    i32 9, label %49
    i32 10, label %54
    i32 11, label %59
    i32 12, label %64
    i32 13, label %69
    i32 14, label %74
    i32 15, label %79
    i32 16, label %84
    i32 17, label %89
    i32 18, label %94
    i32 19, label %99
    i32 20, label %104
    i32 21, label %109
    i32 22, label %117
    i32 23, label %125
    i32 24, label %132
    i32 25, label %139
    i32 26, label %146
    i32 27, label %153
    i32 28, label %154
    i32 29, label %155
    i32 30, label %156
    i32 31, label %157
    i32 32, label %161
    i32 33, label %165
    i32 34, label %169
    i32 35, label %173
    i32 36, label %177
    i32 37, label %181
  ]

4:                                                ; preds = %0
  %5 = call i32 @bpf_rand_u8(i32 0)
  %6 = sext i32 %5 to i64
  %7 = or i64 1095216660480, %6
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %1, align 4
  br label %187

9:                                                ; preds = %0
  %10 = call i32 @bpf_rand_u16(i32 0)
  %11 = sext i32 %10 to i64
  %12 = or i64 -4294967296, %11
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %1, align 4
  br label %187

14:                                               ; preds = %0
  %15 = call i32 @bpf_rand_u16(i32 0)
  %16 = sext i32 %15 to i64
  %17 = or i64 4294901760, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %1, align 4
  br label %187

19:                                               ; preds = %0
  %20 = call i32 @bpf_rand_u32(i32 0)
  %21 = sext i32 %20 to i64
  %22 = or i64 -9223372036854775808, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %1, align 4
  br label %187

24:                                               ; preds = %0
  %25 = call i32 @bpf_rand_u32(i32 0)
  %26 = sext i32 %25 to i64
  %27 = or i64 4026531840, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %1, align 4
  br label %187

29:                                               ; preds = %0
  %30 = call i32 @bpf_rand_u24(i32 0)
  %31 = sext i32 %30 to i64
  %32 = or i64 4294967296, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %1, align 4
  br label %187

34:                                               ; preds = %0
  %35 = call i32 @bpf_rand_u32(i32 0)
  %36 = sext i32 %35 to i64
  %37 = or i64 -9218886029413449728, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %1, align 4
  br label %187

39:                                               ; preds = %0
  %40 = call i32 @bpf_rand_u32(i32 0)
  %41 = sext i32 %40 to i64
  %42 = or i64 9223372032559808512, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %1, align 4
  br label %187

44:                                               ; preds = %0
  %45 = call i32 @bpf_rand_u32(i32 24)
  %46 = sext i32 %45 to i64
  %47 = xor i64 -256, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %1, align 4
  br label %187

49:                                               ; preds = %0
  %50 = call i32 @bpf_rand_u8(i32 0)
  %51 = sext i32 %50 to i64
  %52 = or i64 -256, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %1, align 4
  br label %187

54:                                               ; preds = %0
  %55 = call i32 @bpf_rand_u32(i32 0)
  %56 = sext i32 %55 to i64
  %57 = or i64 268435456, %56
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %1, align 4
  br label %187

59:                                               ; preds = %0
  %60 = call i32 @bpf_rand_u8(i32 0)
  %61 = sext i32 %60 to i64
  %62 = or i64 -1152921504606846976, %61
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %1, align 4
  br label %187

64:                                               ; preds = %0
  %65 = call i32 @bpf_rand_u8(i32 8)
  %66 = sext i32 %65 to i64
  %67 = or i64 263882790666240, %66
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %1, align 4
  br label %187

69:                                               ; preds = %0
  %70 = call i32 @bpf_rand_u8(i32 16)
  %71 = sext i32 %70 to i64
  %72 = or i64 251658240, %71
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %1, align 4
  br label %187

74:                                               ; preds = %0
  %75 = call i32 @bpf_rand_u8(i32 32)
  %76 = sext i32 %75 to i64
  %77 = or i64 3840, %76
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %1, align 4
  br label %187

79:                                               ; preds = %0
  %80 = call i32 @bpf_rand_u8(i32 48)
  %81 = sext i32 %80 to i64
  %82 = or i64 72040001851887360, %81
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %1, align 4
  br label %187

84:                                               ; preds = %0
  %85 = call i32 @bpf_rand_u32(i32 1)
  %86 = sext i32 %85 to i64
  %87 = xor i64 140737488355327, %86
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %1, align 4
  br label %187

89:                                               ; preds = %0
  %90 = call i32 @bpf_rand_u8(i32 4)
  %91 = sext i32 %90 to i64
  %92 = or i64 -140737488355328, %91
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %1, align 4
  br label %187

94:                                               ; preds = %0
  %95 = call i32 @bpf_rand_u8(i32 20)
  %96 = sext i32 %95 to i64
  %97 = or i64 -140737488355328, %96
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %1, align 4
  br label %187

99:                                               ; preds = %0
  %100 = call i32 @bpf_rand_u32(i32 0)
  %101 = sext i32 %100 to i64
  %102 = or i64 -274877382656, %101
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %1, align 4
  br label %187

104:                                              ; preds = %0
  %105 = call i32 @bpf_rand_u32(i32 0)
  %106 = sext i32 %105 to i64
  %107 = or i64 -274945015808, %106
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %1, align 4
  br label %187

109:                                              ; preds = %0
  %110 = call i32 @bpf_rand_u8(i32 55)
  %111 = sext i32 %110 to i64
  %112 = or i64 0, %111
  %113 = call i32 @bpf_rand_u32(i32 20)
  %114 = sext i32 %113 to i64
  %115 = or i64 %112, %114
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %1, align 4
  br label %187

117:                                              ; preds = %0
  %118 = call i32 @bpf_rand_u8(i32 3)
  %119 = sext i32 %118 to i64
  %120 = xor i64 -1, %119
  %121 = call i32 @bpf_rand_u32(i32 40)
  %122 = sext i32 %121 to i64
  %123 = xor i64 %120, %122
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %1, align 4
  br label %187

125:                                              ; preds = %0
  %126 = call i32 @bpf_rand_u8(i32 0)
  %127 = srem i32 %126, 64
  %128 = call i32 @bpf_rand_u8(i32 %127)
  %129 = sext i32 %128 to i64
  %130 = or i64 0, %129
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %1, align 4
  br label %187

132:                                              ; preds = %0
  %133 = call i32 @bpf_rand_u8(i32 0)
  %134 = srem i32 %133, 64
  %135 = call i32 @bpf_rand_u16(i32 %134)
  %136 = sext i32 %135 to i64
  %137 = or i64 0, %136
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %1, align 4
  br label %187

139:                                              ; preds = %0
  %140 = call i32 @bpf_rand_u8(i32 0)
  %141 = srem i32 %140, 64
  %142 = call i32 @bpf_rand_u8(i32 %141)
  %143 = sext i32 %142 to i64
  %144 = xor i64 -1, %143
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %1, align 4
  br label %187

146:                                              ; preds = %0
  %147 = call i32 @bpf_rand_u8(i32 0)
  %148 = srem i32 %147, 64
  %149 = call i32 @bpf_rand_u40(i32 %148)
  %150 = sext i32 %149 to i64
  %151 = xor i64 -1, %150
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %1, align 4
  br label %187

153:                                              ; preds = %0
  store i32 0, i32* %1, align 4
  br label %187

154:                                              ; preds = %0
  store i32 0, i32* %1, align 4
  br label %187

155:                                              ; preds = %0
  store i32 0, i32* %1, align 4
  br label %187

156:                                              ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %187

157:                                              ; preds = %0
  %158 = call i32 @bpf_rand_u8(i32 0)
  %159 = srem i32 %158, 64
  %160 = call i32 @bpf_rand_u16(i32 %159)
  store i32 %160, i32* %1, align 4
  br label %187

161:                                              ; preds = %0
  %162 = call i32 @bpf_rand_u8(i32 0)
  %163 = srem i32 %162, 64
  %164 = call i32 @bpf_rand_u24(i32 %163)
  store i32 %164, i32* %1, align 4
  br label %187

165:                                              ; preds = %0
  %166 = call i32 @bpf_rand_u8(i32 0)
  %167 = srem i32 %166, 64
  %168 = call i32 @bpf_rand_u32(i32 %167)
  store i32 %168, i32* %1, align 4
  br label %187

169:                                              ; preds = %0
  %170 = call i32 @bpf_rand_u8(i32 0)
  %171 = srem i32 %170, 64
  %172 = call i32 @bpf_rand_u40(i32 %171)
  store i32 %172, i32* %1, align 4
  br label %187

173:                                              ; preds = %0
  %174 = call i32 @bpf_rand_u8(i32 0)
  %175 = srem i32 %174, 64
  %176 = call i32 @bpf_rand_u48(i32 %175)
  store i32 %176, i32* %1, align 4
  br label %187

177:                                              ; preds = %0
  %178 = call i32 @bpf_rand_u8(i32 0)
  %179 = srem i32 %178, 64
  %180 = call i32 @bpf_rand_u56(i32 %179)
  store i32 %180, i32* %1, align 4
  br label %187

181:                                              ; preds = %0
  %182 = call i32 @bpf_rand_u8(i32 0)
  %183 = srem i32 %182, 64
  %184 = call i32 @bpf_rand_u64(i32 %183)
  store i32 %184, i32* %1, align 4
  br label %187

185:                                              ; preds = %0
  %186 = call i32 @bpf_rand_u64(i32 0)
  store i32 %186, i32* %1, align 4
  br label %187

187:                                              ; preds = %185, %181, %177, %173, %169, %165, %161, %157, %156, %155, %154, %153, %146, %139, %132, %125, %117, %109, %104, %99, %94, %89, %84, %79, %74, %69, %64, %59, %54, %49, %44, %39, %34, %29, %24, %19, %14, %9, %4
  %188 = load i32, i32* %1, align 4
  ret i32 %188
}

declare dso_local i32 @rand(...) #1

declare dso_local i32 @bpf_rand_u8(i32) #1

declare dso_local i32 @bpf_rand_u16(i32) #1

declare dso_local i32 @bpf_rand_u32(i32) #1

declare dso_local i32 @bpf_rand_u24(i32) #1

declare dso_local i32 @bpf_rand_u40(i32) #1

declare dso_local i32 @bpf_rand_u48(i32) #1

declare dso_local i32 @bpf_rand_u56(i32) #1

declare dso_local i32 @bpf_rand_u64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
