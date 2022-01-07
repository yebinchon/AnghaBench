; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_socklib.c_xdr_partial_copy_from_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_socklib.c_xdr_partial_copy_from_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_buf = type { i32, i32, %struct.TYPE_4__*, i64, %struct.TYPE_3__*, %struct.page** }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.page = type { i32 }
%struct.xdr_skb_reader = type { i32 }
%struct.xdr_skb_reader.0 = type opaque

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@XDRBUF_SPARSE_PAGES = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.xdr_buf*, i32, %struct.xdr_skb_reader*, i64 (%struct.xdr_skb_reader.0*, i8*, i32)*)* @xdr_partial_copy_from_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xdr_partial_copy_from_skb(%struct.xdr_buf* %0, i32 %1, %struct.xdr_skb_reader* %2, i64 (%struct.xdr_skb_reader.0*, i8*, i32)* %3) #0 {
  %5 = alloca %struct.xdr_buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xdr_skb_reader*, align 8
  %8 = alloca i64 (%struct.xdr_skb_reader.0*, i8*, i32)*, align 8
  %9 = alloca %struct.page**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store %struct.xdr_buf* %0, %struct.xdr_buf** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.xdr_skb_reader* %2, %struct.xdr_skb_reader** %7, align 8
  store i64 (%struct.xdr_skb_reader.0*, i8*, i32)* %3, i64 (%struct.xdr_skb_reader.0*, i8*, i32)** %8, align 8
  %15 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %16 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %15, i32 0, i32 5
  %17 = load %struct.page**, %struct.page*** %16, align 8
  store %struct.page** %17, %struct.page*** %9, align 8
  %18 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %19 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %21 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %22 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %21, i32 0, i32 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %63

30:                                               ; preds = %4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %10, align 4
  %33 = sub i32 %32, %31
  store i32 %33, i32* %10, align 4
  %34 = load i64 (%struct.xdr_skb_reader.0*, i8*, i32)*, i64 (%struct.xdr_skb_reader.0*, i8*, i32)** %8, align 8
  %35 = load %struct.xdr_skb_reader*, %struct.xdr_skb_reader** %7, align 8
  %36 = bitcast %struct.xdr_skb_reader* %35 to %struct.xdr_skb_reader.0*
  %37 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %38 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %37, i32 0, i32 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = load i32, i32* %6, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i32, i32* %10, align 4
  %48 = call i64 %34(%struct.xdr_skb_reader.0* %36, i8* %46, i32 %47)
  store i64 %48, i64* %13, align 8
  %49 = load i64, i64* %13, align 8
  %50 = load i64, i64* %12, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %12, align 8
  %52 = load i64, i64* %13, align 8
  %53 = load i32, i32* %10, align 4
  %54 = zext i32 %53 to i64
  %55 = icmp ne i64 %52, %54
  br i1 %55, label %61, label %56

56:                                               ; preds = %30
  %57 = load %struct.xdr_skb_reader*, %struct.xdr_skb_reader** %7, align 8
  %58 = getelementptr inbounds %struct.xdr_skb_reader, %struct.xdr_skb_reader* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56, %30
  br label %244

62:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %67

63:                                               ; preds = %4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %6, align 4
  %66 = sub i32 %65, %64
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %63, %62
  %68 = load i32, i32* %11, align 4
  %69 = icmp eq i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %213

74:                                               ; preds = %67
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp uge i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %6, align 4
  %84 = sub i32 %83, %82
  store i32 %84, i32* %6, align 4
  br label %213

85:                                               ; preds = %74
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %85
  %89 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %90 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %114

93:                                               ; preds = %88, %85
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %11, align 4
  %96 = sub i32 %95, %94
  store i32 %96, i32* %11, align 4
  %97 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %98 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = zext i32 %100 to i64
  %102 = add nsw i64 %101, %99
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @PAGE_SHIFT, align 4
  %106 = lshr i32 %104, %105
  %107 = load %struct.page**, %struct.page*** %9, align 8
  %108 = zext i32 %106 to i64
  %109 = getelementptr inbounds %struct.page*, %struct.page** %107, i64 %108
  store %struct.page** %109, %struct.page*** %9, align 8
  %110 = load i32, i32* @PAGE_MASK, align 4
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %6, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %93, %88
  br label %115

115:                                              ; preds = %207, %114
  %116 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %117 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @XDRBUF_SPARSE_PAGES, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %146

122:                                              ; preds = %115
  %123 = load %struct.page**, %struct.page*** %9, align 8
  %124 = load %struct.page*, %struct.page** %123, align 8
  %125 = icmp eq %struct.page* %124, null
  br i1 %125, label %126, label %146

126:                                              ; preds = %122
  %127 = load i32, i32* @GFP_NOWAIT, align 4
  %128 = load i32, i32* @__GFP_NOWARN, align 4
  %129 = or i32 %127, %128
  %130 = call %struct.page* @alloc_page(i32 %129)
  %131 = load %struct.page**, %struct.page*** %9, align 8
  store %struct.page* %130, %struct.page** %131, align 8
  %132 = load %struct.page**, %struct.page*** %9, align 8
  %133 = load %struct.page*, %struct.page** %132, align 8
  %134 = icmp eq %struct.page* %133, null
  %135 = zext i1 %134 to i32
  %136 = call i64 @unlikely(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %126
  %139 = load i64, i64* %12, align 8
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load i64, i64* @ENOMEM, align 8
  %143 = sub i64 0, %142
  store i64 %143, i64* %12, align 8
  br label %144

144:                                              ; preds = %141, %138
  br label %244

145:                                              ; preds = %126
  br label %146

146:                                              ; preds = %145, %122, %115
  %147 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %147, i32* %10, align 4
  %148 = load %struct.page**, %struct.page*** %9, align 8
  %149 = load %struct.page*, %struct.page** %148, align 8
  %150 = call i8* @kmap_atomic(%struct.page* %149)
  store i8* %150, i8** %14, align 8
  %151 = load i32, i32* %6, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %172

153:                                              ; preds = %146
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* %10, align 4
  %156 = sub i32 %155, %154
  store i32 %156, i32* %10, align 4
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* %10, align 4
  %159 = icmp ult i32 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %153
  %161 = load i32, i32* %11, align 4
  store i32 %161, i32* %10, align 4
  br label %162

162:                                              ; preds = %160, %153
  %163 = load i64 (%struct.xdr_skb_reader.0*, i8*, i32)*, i64 (%struct.xdr_skb_reader.0*, i8*, i32)** %8, align 8
  %164 = load %struct.xdr_skb_reader*, %struct.xdr_skb_reader** %7, align 8
  %165 = bitcast %struct.xdr_skb_reader* %164 to %struct.xdr_skb_reader.0*
  %166 = load i8*, i8** %14, align 8
  %167 = load i32, i32* %6, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  %170 = load i32, i32* %10, align 4
  %171 = call i64 %163(%struct.xdr_skb_reader.0* %165, i8* %169, i32 %170)
  store i64 %171, i64* %13, align 8
  store i32 0, i32* %6, align 4
  br label %185

172:                                              ; preds = %146
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* %10, align 4
  %175 = icmp ult i32 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %172
  %177 = load i32, i32* %11, align 4
  store i32 %177, i32* %10, align 4
  br label %178

178:                                              ; preds = %176, %172
  %179 = load i64 (%struct.xdr_skb_reader.0*, i8*, i32)*, i64 (%struct.xdr_skb_reader.0*, i8*, i32)** %8, align 8
  %180 = load %struct.xdr_skb_reader*, %struct.xdr_skb_reader** %7, align 8
  %181 = bitcast %struct.xdr_skb_reader* %180 to %struct.xdr_skb_reader.0*
  %182 = load i8*, i8** %14, align 8
  %183 = load i32, i32* %10, align 4
  %184 = call i64 %179(%struct.xdr_skb_reader.0* %181, i8* %182, i32 %183)
  store i64 %184, i64* %13, align 8
  br label %185

185:                                              ; preds = %178, %162
  %186 = load %struct.page**, %struct.page*** %9, align 8
  %187 = load %struct.page*, %struct.page** %186, align 8
  %188 = call i32 @flush_dcache_page(%struct.page* %187)
  %189 = load i8*, i8** %14, align 8
  %190 = call i32 @kunmap_atomic(i8* %189)
  %191 = load i64, i64* %13, align 8
  %192 = load i64, i64* %12, align 8
  %193 = add i64 %192, %191
  store i64 %193, i64* %12, align 8
  %194 = load i64, i64* %13, align 8
  %195 = load i32, i32* %10, align 4
  %196 = zext i32 %195 to i64
  %197 = icmp ne i64 %194, %196
  br i1 %197, label %203, label %198

198:                                              ; preds = %185
  %199 = load %struct.xdr_skb_reader*, %struct.xdr_skb_reader** %7, align 8
  %200 = getelementptr inbounds %struct.xdr_skb_reader, %struct.xdr_skb_reader* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %198, %185
  br label %244

204:                                              ; preds = %198
  %205 = load %struct.page**, %struct.page*** %9, align 8
  %206 = getelementptr inbounds %struct.page*, %struct.page** %205, i32 1
  store %struct.page** %206, %struct.page*** %9, align 8
  br label %207

207:                                              ; preds = %204
  %208 = load i32, i32* %10, align 4
  %209 = load i32, i32* %11, align 4
  %210 = sub i32 %209, %208
  store i32 %210, i32* %11, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %115, label %212

212:                                              ; preds = %207
  br label %213

213:                                              ; preds = %212, %81, %73
  %214 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %215 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %214, i32 0, i32 2
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i64 0
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  store i32 %219, i32* %10, align 4
  %220 = load i32, i32* %6, align 4
  %221 = load i32, i32* %10, align 4
  %222 = icmp ult i32 %220, %221
  br i1 %222, label %223, label %243

223:                                              ; preds = %213
  %224 = load i64 (%struct.xdr_skb_reader.0*, i8*, i32)*, i64 (%struct.xdr_skb_reader.0*, i8*, i32)** %8, align 8
  %225 = load %struct.xdr_skb_reader*, %struct.xdr_skb_reader** %7, align 8
  %226 = bitcast %struct.xdr_skb_reader* %225 to %struct.xdr_skb_reader.0*
  %227 = load %struct.xdr_buf*, %struct.xdr_buf** %5, align 8
  %228 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %227, i32 0, i32 2
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i64 0
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = inttoptr i64 %232 to i8*
  %234 = load i32, i32* %6, align 4
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds i8, i8* %233, i64 %235
  %237 = load i32, i32* %10, align 4
  %238 = load i32, i32* %6, align 4
  %239 = sub i32 %237, %238
  %240 = call i64 %224(%struct.xdr_skb_reader.0* %226, i8* %236, i32 %239)
  %241 = load i64, i64* %12, align 8
  %242 = add i64 %241, %240
  store i64 %242, i64* %12, align 8
  br label %243

243:                                              ; preds = %223, %213
  br label %244

244:                                              ; preds = %243, %203, %144, %61
  %245 = load i64, i64* %12, align 8
  ret i64 %245
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
