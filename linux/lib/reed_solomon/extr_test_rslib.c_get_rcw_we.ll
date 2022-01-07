; ModuleID = '/home/carl/AnghaBench/linux/lib/reed_solomon/extr_test_rslib.c_get_rcw_we.c'
source_filename = "/home/carl/AnghaBench/linux/lib/reed_solomon/extr_test_rslib.c_get_rcw_we.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rs_control = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.wspace = type { i32*, i32*, i32*, i32* }

@ewsc = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rs_control*, %struct.wspace*, i32, i32, i32)* @get_rcw_we to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_rcw_we(%struct.rs_control* %0, %struct.wspace* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.rs_control*, align 8
  %7 = alloca %struct.wspace*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.rs_control* %0, %struct.rs_control** %6, align 8
  store %struct.wspace* %1, %struct.wspace** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %21 = load %struct.rs_control*, %struct.rs_control** %6, align 8
  %22 = getelementptr inbounds %struct.rs_control, %struct.rs_control* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  %26 = load %struct.wspace*, %struct.wspace** %7, align 8
  %27 = getelementptr inbounds %struct.wspace, %struct.wspace* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %12, align 8
  %29 = load %struct.wspace*, %struct.wspace** %7, align 8
  %30 = getelementptr inbounds %struct.wspace, %struct.wspace* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %13, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %11, align 4
  %34 = sub nsw i32 %32, %33
  store i32 %34, i32* %14, align 4
  %35 = load %struct.rs_control*, %struct.rs_control** %6, align 8
  %36 = getelementptr inbounds %struct.rs_control, %struct.rs_control* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %15, align 4
  %40 = load %struct.wspace*, %struct.wspace** %7, align 8
  %41 = getelementptr inbounds %struct.wspace, %struct.wspace* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %16, align 8
  %43 = load %struct.wspace*, %struct.wspace** %7, align 8
  %44 = getelementptr inbounds %struct.wspace, %struct.wspace* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %17, align 8
  store i32 0, i32* %20, align 4
  br label %46

46:                                               ; preds = %58, %5
  %47 = load i32, i32* %20, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = call i32 (...) @prandom_u32()
  %52 = load i32, i32* %15, align 4
  %53 = and i32 %51, %52
  %54 = load i32*, i32** %16, align 8
  %55 = load i32, i32* %20, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %53, i32* %57, align 4
  br label %58

58:                                               ; preds = %50
  %59 = load i32, i32* %20, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %20, align 4
  br label %46

61:                                               ; preds = %46
  %62 = load i32*, i32** %16, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = trunc i64 %68 to i32
  %70 = call i32 @memset(i32* %65, i32 0, i32 %69)
  %71 = load %struct.rs_control*, %struct.rs_control** %6, align 8
  %72 = load i32*, i32** %16, align 8
  %73 = load i32, i32* %14, align 4
  %74 = load i32*, i32** %16, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = call i32 @encode_rs16(%struct.rs_control* %71, i32* %72, i32 %73, i32* %77, i32 0)
  %79 = load i32*, i32** %17, align 8
  %80 = load i32*, i32** %16, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 4
  %84 = trunc i64 %83 to i32
  %85 = call i32 @memcpy(i32* %79, i32* %80, i32 %84)
  %86 = load i32*, i32** %13, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 4
  %90 = trunc i64 %89 to i32
  %91 = call i32 @memset(i32* %86, i32 0, i32 %90)
  %92 = load i32*, i32** %12, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 4
  %96 = trunc i64 %95 to i32
  %97 = call i32 @memset(i32* %92, i32 0, i32 %96)
  store i32 0, i32* %20, align 4
  br label %98

98:                                               ; preds = %134, %61
  %99 = load i32, i32* %20, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %137

102:                                              ; preds = %98
  br label %103

103:                                              ; preds = %107, %102
  %104 = call i32 (...) @prandom_u32()
  %105 = load i32, i32* %15, align 4
  %106 = and i32 %104, %105
  store i32 %106, i32* %18, align 4
  br label %107

107:                                              ; preds = %103
  %108 = load i32, i32* %18, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %103, label %110

110:                                              ; preds = %107
  br label %111

111:                                              ; preds = %115, %110
  %112 = call i32 (...) @prandom_u32()
  %113 = load i32, i32* %8, align 4
  %114 = srem i32 %112, %113
  store i32 %114, i32* %19, align 4
  br label %115

115:                                              ; preds = %111
  %116 = load i32*, i32** %13, align 8
  %117 = load i32, i32* %19, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %111, label %122

122:                                              ; preds = %115
  %123 = load i32*, i32** %13, align 8
  %124 = load i32, i32* %19, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 1, i32* %126, align 4
  %127 = load i32, i32* %18, align 4
  %128 = load i32*, i32** %17, align 8
  %129 = load i32, i32* %19, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = xor i32 %132, %127
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %122
  %135 = load i32, i32* %20, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %20, align 4
  br label %98

137:                                              ; preds = %98
  store i32 0, i32* %20, align 4
  br label %138

138:                                              ; preds = %194, %137
  %139 = load i32, i32* %20, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %197

142:                                              ; preds = %138
  br label %143

143:                                              ; preds = %147, %142
  %144 = call i32 (...) @prandom_u32()
  %145 = load i32, i32* %8, align 4
  %146 = srem i32 %144, %145
  store i32 %146, i32* %19, align 4
  br label %147

147:                                              ; preds = %143
  %148 = load i32*, i32** %13, align 8
  %149 = load i32, i32* %19, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %143, label %154

154:                                              ; preds = %147
  %155 = load i32, i32* %19, align 4
  %156 = load i32*, i32** %12, align 8
  %157 = load i32, i32* %20, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  store i32 %155, i32* %159, align 4
  %160 = load i64, i64* @ewsc, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %154
  %163 = call i32 (...) @prandom_u32()
  %164 = and i32 %163, 1
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %162
  %167 = load i32*, i32** %13, align 8
  %168 = load i32, i32* %19, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  store i32 2, i32* %170, align 4
  br label %193

171:                                              ; preds = %162, %154
  br label %172

172:                                              ; preds = %176, %171
  %173 = call i32 (...) @prandom_u32()
  %174 = load i32, i32* %15, align 4
  %175 = and i32 %173, %174
  store i32 %175, i32* %18, align 4
  br label %176

176:                                              ; preds = %172
  %177 = load i32, i32* %18, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %172, label %179

179:                                              ; preds = %176
  %180 = load i32*, i32** %13, align 8
  %181 = load i32, i32* %19, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  store i32 1, i32* %183, align 4
  %184 = load i32, i32* %18, align 4
  %185 = load i32*, i32** %17, align 8
  %186 = load i32, i32* %19, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = xor i32 %189, %184
  store i32 %190, i32* %188, align 4
  %191 = load i32, i32* %9, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %9, align 4
  br label %193

193:                                              ; preds = %179, %166
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %20, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %20, align 4
  br label %138

197:                                              ; preds = %138
  %198 = load i32, i32* %9, align 4
  ret i32 %198
}

declare dso_local i32 @prandom_u32(...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @encode_rs16(%struct.rs_control*, i32*, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
