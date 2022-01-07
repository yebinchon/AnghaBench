; ModuleID = '/home/carl/AnghaBench/linux/lib/842/extr_842_compress.c_add_bits.c'
source_filename = "/home/carl/AnghaBench/linux/lib/842/extr_842_compress.c_add_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw842_param = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [17 x i8] c"add %u bits %lx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@bmask = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sw842_param*, i32, i32)* @add_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_bits(%struct.sw842_param* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sw842_param*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.sw842_param* %0, %struct.sw842_param** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.sw842_param*, %struct.sw842_param** %5, align 8
  %14 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @round_up(i32 %19, i32 8)
  %21 = load i32, i32* %9, align 4
  %22 = sub nsw i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load %struct.sw842_param*, %struct.sw842_param** %5, align 8
  %24 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %12, align 8
  %26 = load i32, i32* %7, align 4
  %27 = trunc i32 %26 to i8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8 zeroext %27, i64 %29)
  %31 = load i32, i32* %7, align 4
  %32 = icmp sgt i32 %31, 64
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %224

36:                                               ; preds = %3
  %37 = load i32, i32* %9, align 4
  %38 = icmp sgt i32 %37, 64
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.sw842_param*, %struct.sw842_param** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @__split_add_bits(%struct.sw842_param* %40, i32 %41, i32 %42, i32 32)
  store i32 %43, i32* %4, align 4
  br label %224

44:                                               ; preds = %36
  %45 = load %struct.sw842_param*, %struct.sw842_param** %5, align 8
  %46 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %47, 8
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load i32, i32* %9, align 4
  %51 = icmp sgt i32 %50, 32
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = icmp sle i32 %53, 56
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.sw842_param*, %struct.sw842_param** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @__split_add_bits(%struct.sw842_param* %56, i32 %57, i32 %58, i32 16)
  store i32 %59, i32* %4, align 4
  br label %224

60:                                               ; preds = %52, %49, %44
  %61 = load %struct.sw842_param*, %struct.sw842_param** %5, align 8
  %62 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %63, 4
  br i1 %64, label %65, label %76

65:                                               ; preds = %60
  %66 = load i32, i32* %9, align 4
  %67 = icmp sgt i32 %66, 16
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load i32, i32* %9, align 4
  %70 = icmp sle i32 %69, 24
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load %struct.sw842_param*, %struct.sw842_param** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @__split_add_bits(%struct.sw842_param* %72, i32 %73, i32 %74, i32 8)
  store i32 %75, i32* %4, align 4
  br label %224

76:                                               ; preds = %68, %65, %60
  br label %77

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @DIV_ROUND_UP(i32 %79, i32 8)
  %81 = load %struct.sw842_param*, %struct.sw842_param** %5, align 8
  %82 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp sgt i32 %80, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load i32, i32* @ENOSPC, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %224

88:                                               ; preds = %78
  %89 = load i32*, i32** %12, align 8
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** @bmask, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %90, %95
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %6, align 4
  %99 = shl i32 %98, %97
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp sle i32 %100, 8
  br i1 %101, label %102, label %107

102:                                              ; preds = %88
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %6, align 4
  %105 = or i32 %103, %104
  %106 = load i32*, i32** %12, align 8
  store i32 %105, i32* %106, align 4
  br label %191

107:                                              ; preds = %88
  %108 = load i32, i32* %9, align 4
  %109 = icmp sle i32 %108, 16
  br i1 %109, label %110, label %118

110:                                              ; preds = %107
  %111 = load i32, i32* %11, align 4
  %112 = shl i32 %111, 8
  %113 = load i32, i32* %6, align 4
  %114 = or i32 %112, %113
  %115 = call i32 @cpu_to_be16(i32 %114)
  %116 = load i32*, i32** %12, align 8
  %117 = call i32 @put_unaligned(i32 %115, i32* %116)
  br label %190

118:                                              ; preds = %107
  %119 = load i32, i32* %9, align 4
  %120 = icmp sle i32 %119, 24
  br i1 %120, label %121, label %130

121:                                              ; preds = %118
  %122 = load i32, i32* %11, align 4
  %123 = shl i32 %122, 24
  %124 = load i32, i32* %6, align 4
  %125 = shl i32 %124, 8
  %126 = or i32 %123, %125
  %127 = call i32 @cpu_to_be32(i32 %126)
  %128 = load i32*, i32** %12, align 8
  %129 = call i32 @put_unaligned(i32 %127, i32* %128)
  br label %189

130:                                              ; preds = %118
  %131 = load i32, i32* %9, align 4
  %132 = icmp sle i32 %131, 32
  br i1 %132, label %133, label %141

133:                                              ; preds = %130
  %134 = load i32, i32* %11, align 4
  %135 = shl i32 %134, 24
  %136 = load i32, i32* %6, align 4
  %137 = or i32 %135, %136
  %138 = call i32 @cpu_to_be32(i32 %137)
  %139 = load i32*, i32** %12, align 8
  %140 = call i32 @put_unaligned(i32 %138, i32* %139)
  br label %188

141:                                              ; preds = %130
  %142 = load i32, i32* %9, align 4
  %143 = icmp sle i32 %142, 40
  br i1 %143, label %144, label %153

144:                                              ; preds = %141
  %145 = load i32, i32* %11, align 4
  %146 = shl i32 %145, 56
  %147 = load i32, i32* %6, align 4
  %148 = shl i32 %147, 24
  %149 = or i32 %146, %148
  %150 = call i32 @cpu_to_be64(i32 %149)
  %151 = load i32*, i32** %12, align 8
  %152 = call i32 @put_unaligned(i32 %150, i32* %151)
  br label %187

153:                                              ; preds = %141
  %154 = load i32, i32* %9, align 4
  %155 = icmp sle i32 %154, 48
  br i1 %155, label %156, label %165

156:                                              ; preds = %153
  %157 = load i32, i32* %11, align 4
  %158 = shl i32 %157, 56
  %159 = load i32, i32* %6, align 4
  %160 = shl i32 %159, 16
  %161 = or i32 %158, %160
  %162 = call i32 @cpu_to_be64(i32 %161)
  %163 = load i32*, i32** %12, align 8
  %164 = call i32 @put_unaligned(i32 %162, i32* %163)
  br label %186

165:                                              ; preds = %153
  %166 = load i32, i32* %9, align 4
  %167 = icmp sle i32 %166, 56
  br i1 %167, label %168, label %177

168:                                              ; preds = %165
  %169 = load i32, i32* %11, align 4
  %170 = shl i32 %169, 56
  %171 = load i32, i32* %6, align 4
  %172 = shl i32 %171, 8
  %173 = or i32 %170, %172
  %174 = call i32 @cpu_to_be64(i32 %173)
  %175 = load i32*, i32** %12, align 8
  %176 = call i32 @put_unaligned(i32 %174, i32* %175)
  br label %185

177:                                              ; preds = %165
  %178 = load i32, i32* %11, align 4
  %179 = shl i32 %178, 56
  %180 = load i32, i32* %6, align 4
  %181 = or i32 %179, %180
  %182 = call i32 @cpu_to_be64(i32 %181)
  %183 = load i32*, i32** %12, align 8
  %184 = call i32 @put_unaligned(i32 %182, i32* %183)
  br label %185

185:                                              ; preds = %177, %168
  br label %186

186:                                              ; preds = %185, %156
  br label %187

187:                                              ; preds = %186, %144
  br label %188

188:                                              ; preds = %187, %133
  br label %189

189:                                              ; preds = %188, %121
  br label %190

190:                                              ; preds = %189, %110
  br label %191

191:                                              ; preds = %190, %102
  %192 = load i32, i32* %7, align 4
  %193 = load %struct.sw842_param*, %struct.sw842_param** %5, align 8
  %194 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = add nsw i32 %195, %192
  store i32 %196, i32* %194, align 8
  %197 = load %struct.sw842_param*, %struct.sw842_param** %5, align 8
  %198 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp sgt i32 %199, 7
  br i1 %200, label %201, label %223

201:                                              ; preds = %191
  %202 = load %struct.sw842_param*, %struct.sw842_param** %5, align 8
  %203 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = sdiv i32 %204, 8
  %206 = load %struct.sw842_param*, %struct.sw842_param** %5, align 8
  %207 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %206, i32 0, i32 1
  %208 = load i32*, i32** %207, align 8
  %209 = sext i32 %205 to i64
  %210 = getelementptr inbounds i32, i32* %208, i64 %209
  store i32* %210, i32** %207, align 8
  %211 = load %struct.sw842_param*, %struct.sw842_param** %5, align 8
  %212 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = sdiv i32 %213, 8
  %215 = load %struct.sw842_param*, %struct.sw842_param** %5, align 8
  %216 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = sub nsw i32 %217, %214
  store i32 %218, i32* %216, align 8
  %219 = load %struct.sw842_param*, %struct.sw842_param** %5, align 8
  %220 = getelementptr inbounds %struct.sw842_param, %struct.sw842_param* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = srem i32 %221, 8
  store i32 %222, i32* %220, align 8
  br label %223

223:                                              ; preds = %201, %191
  store i32 0, i32* %4, align 4
  br label %224

224:                                              ; preds = %223, %85, %71, %55, %39, %33
  %225 = load i32, i32* %4, align 4
  ret i32 %225
}

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i8 zeroext, i64) #1

declare dso_local i32 @__split_add_bits(%struct.sw842_param*, i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @put_unaligned(i32, i32*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
