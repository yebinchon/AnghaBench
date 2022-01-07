; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xdr.c_xdr_shrink_bufhead.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xdr.c_xdr_shrink_bufhead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_buf = type { i32, i64, i64, i64, i32, %struct.kvec*, %struct.kvec* }
%struct.kvec = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_buf*, i64)* @xdr_shrink_bufhead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdr_shrink_bufhead(%struct.xdr_buf* %0, i64 %1) #0 {
  %3 = alloca %struct.xdr_buf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.kvec*, align 8
  %6 = alloca %struct.kvec*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.xdr_buf* %0, %struct.xdr_buf** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %12 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %15 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %14, i32 0, i32 6
  %16 = load %struct.kvec*, %struct.kvec** %15, align 8
  store %struct.kvec* %16, %struct.kvec** %6, align 8
  %17 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %18 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %17, i32 0, i32 5
  %19 = load %struct.kvec*, %struct.kvec** %18, align 8
  store %struct.kvec* %19, %struct.kvec** %5, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.kvec*, %struct.kvec** %5, align 8
  %22 = getelementptr inbounds %struct.kvec, %struct.kvec* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ugt i64 %20, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON_ONCE(i32 %25)
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.kvec*, %struct.kvec** %5, align 8
  %29 = getelementptr inbounds %struct.kvec, %struct.kvec* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ugt i64 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load %struct.kvec*, %struct.kvec** %5, align 8
  %34 = getelementptr inbounds %struct.kvec, %struct.kvec* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %4, align 8
  br label %36

36:                                               ; preds = %32, %2
  %37 = load %struct.kvec*, %struct.kvec** %6, align 8
  %38 = getelementptr inbounds %struct.kvec, %struct.kvec* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %175

41:                                               ; preds = %36
  %42 = load %struct.kvec*, %struct.kvec** %6, align 8
  %43 = getelementptr inbounds %struct.kvec, %struct.kvec* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %4, align 8
  %46 = icmp ugt i64 %44, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %41
  %48 = load %struct.kvec*, %struct.kvec** %6, align 8
  %49 = getelementptr inbounds %struct.kvec, %struct.kvec* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %4, align 8
  %52 = sub i64 %50, %51
  store i64 %52, i64* %7, align 8
  %53 = load %struct.kvec*, %struct.kvec** %6, align 8
  %54 = getelementptr inbounds %struct.kvec, %struct.kvec* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = load i64, i64* %4, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = load %struct.kvec*, %struct.kvec** %6, align 8
  %60 = getelementptr inbounds %struct.kvec, %struct.kvec* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @memmove(i8* %58, i64 %61, i64 %62)
  %64 = load i64, i64* %7, align 8
  %65 = load i32, i32* %10, align 4
  %66 = zext i32 %65 to i64
  %67 = add i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %47, %41
  %70 = load i64, i64* %4, align 8
  store i64 %70, i64* %7, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load i32, i32* %9, align 4
  %73 = zext i32 %72 to i64
  %74 = icmp ugt i64 %71, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32, i32* %9, align 4
  %77 = zext i32 %76 to i64
  store i64 %77, i64* %7, align 8
  br label %78

78:                                               ; preds = %75, %69
  %79 = load i64, i64* %4, align 8
  %80 = load i64, i64* %7, align 8
  %81 = sub i64 %79, %80
  store i64 %81, i64* %8, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load %struct.kvec*, %struct.kvec** %6, align 8
  %84 = getelementptr inbounds %struct.kvec, %struct.kvec* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp uge i64 %82, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  store i64 0, i64* %7, align 8
  br label %103

88:                                               ; preds = %78
  %89 = load i64, i64* %7, align 8
  %90 = load %struct.kvec*, %struct.kvec** %6, align 8
  %91 = getelementptr inbounds %struct.kvec, %struct.kvec* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %8, align 8
  %94 = sub i64 %92, %93
  %95 = icmp ugt i64 %89, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %88
  %97 = load %struct.kvec*, %struct.kvec** %6, align 8
  %98 = getelementptr inbounds %struct.kvec, %struct.kvec* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %8, align 8
  %101 = sub i64 %99, %100
  store i64 %101, i64* %7, align 8
  br label %102

102:                                              ; preds = %96, %88
  br label %103

103:                                              ; preds = %102, %87
  %104 = load i64, i64* %7, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %133

106:                                              ; preds = %103
  %107 = load %struct.kvec*, %struct.kvec** %6, align 8
  %108 = getelementptr inbounds %struct.kvec, %struct.kvec* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to i8*
  %111 = load i64, i64* %8, align 8
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  %113 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %114 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %117 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = zext i32 %119 to i64
  %121 = add nsw i64 %118, %120
  %122 = load i64, i64* %8, align 8
  %123 = add i64 %121, %122
  %124 = load i64, i64* %4, align 8
  %125 = sub i64 %123, %124
  %126 = load i64, i64* %7, align 8
  %127 = call i32 @_copy_from_pages(i8* %112, i32 %115, i64 %125, i64 %126)
  %128 = load i64, i64* %7, align 8
  %129 = load i32, i32* %10, align 4
  %130 = zext i32 %129 to i64
  %131 = add i64 %130, %128
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %106, %103
  %134 = load i64, i64* %4, align 8
  %135 = load i32, i32* %9, align 4
  %136 = zext i32 %135 to i64
  %137 = icmp ugt i64 %134, %136
  br i1 %137, label %138, label %174

138:                                              ; preds = %133
  %139 = load i64, i64* %4, align 8
  %140 = load i32, i32* %9, align 4
  %141 = zext i32 %140 to i64
  %142 = sub i64 %139, %141
  store i64 %142, i64* %7, align 8
  store i64 %142, i64* %8, align 8
  %143 = load i64, i64* %7, align 8
  %144 = load %struct.kvec*, %struct.kvec** %6, align 8
  %145 = getelementptr inbounds %struct.kvec, %struct.kvec* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ugt i64 %143, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %138
  %149 = load %struct.kvec*, %struct.kvec** %6, align 8
  %150 = getelementptr inbounds %struct.kvec, %struct.kvec* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %7, align 8
  br label %152

152:                                              ; preds = %148, %138
  %153 = load %struct.kvec*, %struct.kvec** %6, align 8
  %154 = getelementptr inbounds %struct.kvec, %struct.kvec* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.kvec*, %struct.kvec** %5, align 8
  %157 = getelementptr inbounds %struct.kvec, %struct.kvec* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = inttoptr i64 %158 to i8*
  %160 = load %struct.kvec*, %struct.kvec** %5, align 8
  %161 = getelementptr inbounds %struct.kvec, %struct.kvec* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds i8, i8* %159, i64 %162
  %164 = load i64, i64* %8, align 8
  %165 = sub i64 0, %164
  %166 = getelementptr inbounds i8, i8* %163, i64 %165
  %167 = load i64, i64* %7, align 8
  %168 = call i32 @memcpy(i64 %155, i8* %166, i64 %167)
  %169 = load i64, i64* %7, align 8
  %170 = load i32, i32* %10, align 4
  %171 = zext i32 %170 to i64
  %172 = add i64 %171, %169
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %10, align 4
  br label %174

174:                                              ; preds = %152, %133
  br label %175

175:                                              ; preds = %174, %36
  %176 = load i32, i32* %9, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %235

178:                                              ; preds = %175
  %179 = load i32, i32* %9, align 4
  %180 = zext i32 %179 to i64
  %181 = load i64, i64* %4, align 8
  %182 = icmp ugt i64 %180, %181
  br i1 %182, label %183, label %201

183:                                              ; preds = %178
  %184 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %185 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %188 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* %4, align 8
  %191 = add i64 %189, %190
  %192 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %193 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = load i32, i32* %9, align 4
  %196 = zext i32 %195 to i64
  %197 = load i64, i64* %4, align 8
  %198 = sub i64 %196, %197
  %199 = trunc i64 %198 to i32
  %200 = call i32 @_shift_data_right_pages(i32 %186, i64 %191, i64 %194, i32 %199)
  br label %201

201:                                              ; preds = %183, %178
  %202 = load i64, i64* %4, align 8
  store i64 %202, i64* %7, align 8
  %203 = load i64, i64* %4, align 8
  %204 = load i32, i32* %9, align 4
  %205 = zext i32 %204 to i64
  %206 = icmp ugt i64 %203, %205
  br i1 %206, label %207, label %210

207:                                              ; preds = %201
  %208 = load i32, i32* %9, align 4
  %209 = zext i32 %208 to i64
  store i64 %209, i64* %7, align 8
  br label %210

210:                                              ; preds = %207, %201
  %211 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %212 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %215 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.kvec*, %struct.kvec** %5, align 8
  %218 = getelementptr inbounds %struct.kvec, %struct.kvec* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = inttoptr i64 %219 to i8*
  %221 = load %struct.kvec*, %struct.kvec** %5, align 8
  %222 = getelementptr inbounds %struct.kvec, %struct.kvec* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = getelementptr inbounds i8, i8* %220, i64 %223
  %225 = load i64, i64* %4, align 8
  %226 = sub i64 0, %225
  %227 = getelementptr inbounds i8, i8* %224, i64 %226
  %228 = load i64, i64* %7, align 8
  %229 = call i32 @_copy_to_pages(i32 %213, i64 %216, i8* %227, i64 %228)
  %230 = load i64, i64* %7, align 8
  %231 = load i32, i32* %10, align 4
  %232 = zext i32 %231 to i64
  %233 = add i64 %232, %230
  %234 = trunc i64 %233 to i32
  store i32 %234, i32* %10, align 4
  br label %235

235:                                              ; preds = %210, %175
  %236 = load i64, i64* %4, align 8
  %237 = load %struct.kvec*, %struct.kvec** %5, align 8
  %238 = getelementptr inbounds %struct.kvec, %struct.kvec* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = sub i64 %239, %236
  store i64 %240, i64* %238, align 8
  %241 = load i64, i64* %4, align 8
  %242 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %243 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = sub i64 %244, %241
  store i64 %245, i64* %243, align 8
  %246 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %247 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %250 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = icmp sgt i64 %248, %251
  br i1 %252, label %253, label %259

253:                                              ; preds = %235
  %254 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %255 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %258 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %257, i32 0, i32 2
  store i64 %256, i64* %258, align 8
  br label %259

259:                                              ; preds = %253, %235
  %260 = load i32, i32* %10, align 4
  ret i32 %260
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @memmove(i8*, i64, i64) #1

declare dso_local i32 @_copy_from_pages(i8*, i32, i64, i64) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @_shift_data_right_pages(i32, i64, i64, i32) #1

declare dso_local i32 @_copy_to_pages(i32, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
