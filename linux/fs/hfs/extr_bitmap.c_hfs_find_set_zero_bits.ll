; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_bitmap.c_hfs_find_set_zero_bits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_bitmap.c_hfs_find_set_zero_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*)* @hfs_find_set_zero_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfs_find_set_zero_bits(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %5, align 4
  br label %213

24:                                               ; preds = %4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sdiv i32 %26, 32
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  store i32* %29, i32** %10, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 31
  %33 = sdiv i32 %32, 32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  store i32* %35, i32** %11, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = xor i32 %38, -1
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %24
  %42 = load i32, i32* %16, align 4
  %43 = call i32 @be32_to_cpu(i32 %42)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %8, align 4
  %45 = srem i32 %44, 32
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  %47 = lshr i32 -2147483648, %46
  store i32 %47, i32* %12, align 4
  br label %48

48:                                               ; preds = %58, %41
  %49 = load i32, i32* %17, align 4
  %50 = icmp slt i32 %49, 32
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %12, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %98

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %12, align 4
  %60 = ashr i32 %59, 1
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %17, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %17, align 4
  br label %48

63:                                               ; preds = %48
  br label %64

64:                                               ; preds = %63, %24
  br label %65

65:                                               ; preds = %95, %64
  %66 = load i32*, i32** %10, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %10, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = icmp ult i32* %67, %68
  br i1 %69, label %70, label %96

70:                                               ; preds = %65
  %71 = load i32*, i32** %10, align 8
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = xor i32 %73, -1
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %70
  %77 = load i32, i32* %16, align 4
  %78 = call i32 @be32_to_cpu(i32 %77)
  store i32 %78, i32* %15, align 4
  store i32 -2147483648, i32* %12, align 4
  store i32 0, i32* %17, align 4
  br label %79

79:                                               ; preds = %89, %76
  %80 = load i32, i32* %17, align 4
  %81 = icmp slt i32 %80, 32
  br i1 %81, label %82, label %94

82:                                               ; preds = %79
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %12, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  br label %98

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %12, align 4
  %91 = ashr i32 %90, 1
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %17, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %17, align 4
  br label %79

94:                                               ; preds = %79
  br label %95

95:                                               ; preds = %94, %70
  br label %65

96:                                               ; preds = %65
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %5, align 4
  br label %213

98:                                               ; preds = %87, %56
  %99 = load i32*, i32** %10, align 8
  %100 = load i32*, i32** %6, align 8
  %101 = ptrtoint i32* %99 to i64
  %102 = ptrtoint i32* %100 to i64
  %103 = sub i64 %101, %102
  %104 = sdiv exact i64 %103, 4
  %105 = mul nsw i64 %104, 32
  %106 = load i32, i32* %17, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %105, %107
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp sge i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %98
  %114 = load i32, i32* %13, align 4
  store i32 %114, i32* %5, align 4
  br label %213

115:                                              ; preds = %98
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %13, align 4
  %118 = sub nsw i32 %116, %117
  %119 = load i32, i32* %14, align 4
  %120 = call i32 @min(i32 %118, i32 %119)
  store i32 %120, i32* %14, align 4
  br label %121

121:                                              ; preds = %115, %141
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %15, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %15, align 4
  %125 = load i32, i32* %17, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %17, align 4
  %127 = icmp sge i32 %126, 32
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  br label %142

129:                                              ; preds = %121
  %130 = load i32, i32* %12, align 4
  %131 = ashr i32 %130, 1
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %14, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %14, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %129
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* %12, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %135, %129
  br label %192

141:                                              ; preds = %135
  br label %121

142:                                              ; preds = %128
  %143 = load i32, i32* %14, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %14, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %142
  br label %192

147:                                              ; preds = %142
  %148 = load i32, i32* %15, align 4
  %149 = call i8* @cpu_to_be32(i32 %148)
  %150 = ptrtoint i8* %149 to i32
  %151 = load i32*, i32** %10, align 8
  %152 = getelementptr inbounds i32, i32* %151, i32 1
  store i32* %152, i32** %10, align 8
  store i32 %150, i32* %151, align 4
  br label %153

153:                                              ; preds = %147, %164
  %154 = load i32*, i32** %10, align 8
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @be32_to_cpu(i32 %155)
  store i32 %156, i32* %15, align 4
  %157 = load i32, i32* %14, align 4
  %158 = icmp slt i32 %157, 32
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  br label %171

160:                                              ; preds = %153
  %161 = load i32, i32* %15, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  store i32 32, i32* %14, align 4
  br label %171

164:                                              ; preds = %160
  %165 = call i8* @cpu_to_be32(i32 -1)
  %166 = ptrtoint i8* %165 to i32
  %167 = load i32*, i32** %10, align 8
  %168 = getelementptr inbounds i32, i32* %167, i32 1
  store i32* %168, i32** %10, align 8
  store i32 %166, i32* %167, align 4
  %169 = load i32, i32* %14, align 4
  %170 = sub nsw i32 %169, 32
  store i32 %170, i32* %14, align 4
  br label %153

171:                                              ; preds = %163, %159
  store i32 -2147483648, i32* %12, align 4
  store i32 0, i32* %17, align 4
  br label %172

172:                                              ; preds = %188, %171
  %173 = load i32, i32* %17, align 4
  %174 = load i32, i32* %14, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %191

176:                                              ; preds = %172
  %177 = load i32, i32* %15, align 4
  %178 = load i32, i32* %12, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %176
  br label %191

182:                                              ; preds = %176
  %183 = load i32, i32* %12, align 4
  %184 = load i32, i32* %15, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %15, align 4
  %186 = load i32, i32* %12, align 4
  %187 = ashr i32 %186, 1
  store i32 %187, i32* %12, align 4
  br label %188

188:                                              ; preds = %182
  %189 = load i32, i32* %17, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %17, align 4
  br label %172

191:                                              ; preds = %181, %172
  br label %192

192:                                              ; preds = %191, %146, %140
  %193 = load i32, i32* %15, align 4
  %194 = call i8* @cpu_to_be32(i32 %193)
  %195 = ptrtoint i8* %194 to i32
  %196 = load i32*, i32** %10, align 8
  store i32 %195, i32* %196, align 4
  %197 = load i32*, i32** %10, align 8
  %198 = load i32*, i32** %6, align 8
  %199 = ptrtoint i32* %197 to i64
  %200 = ptrtoint i32* %198 to i64
  %201 = sub i64 %199, %200
  %202 = sdiv exact i64 %201, 4
  %203 = mul nsw i64 %202, 32
  %204 = load i32, i32* %17, align 4
  %205 = sext i32 %204 to i64
  %206 = add nsw i64 %203, %205
  %207 = load i32, i32* %13, align 4
  %208 = sext i32 %207 to i64
  %209 = sub nsw i64 %206, %208
  %210 = trunc i64 %209 to i32
  %211 = load i32*, i32** %9, align 8
  store i32 %210, i32* %211, align 4
  %212 = load i32, i32* %13, align 4
  store i32 %212, i32* %5, align 4
  br label %213

213:                                              ; preds = %192, %113, %96, %22
  %214 = load i32, i32* %5, align 4
  ret i32 %214
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
