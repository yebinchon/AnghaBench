; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_seq_read.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_seq_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skb_seq_state = type { i32, i32, i32, i64, %struct.TYPE_6__*, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_6__*, i32* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_6__*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skb_seq_read(i32 %0, i32** %1, %struct.skb_seq_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.skb_seq_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32** %1, i32*** %6, align 8
  store %struct.skb_seq_state* %2, %struct.skb_seq_state** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %13 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add i32 %11, %14
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %18 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp uge i32 %16, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %3
  %25 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %26 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %25, i32 0, i32 6
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %31 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %30, i32 0, i32 6
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @kunmap_atomic(i32* %32)
  %34 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %35 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %34, i32 0, i32 6
  store i32* null, i32** %35, align 8
  br label %36

36:                                               ; preds = %29, %24
  store i32 0, i32* %4, align 4
  br label %232

37:                                               ; preds = %3
  br label %38

38:                                               ; preds = %220, %202, %37
  %39 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %40 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %39, i32 0, i32 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = call i32 @skb_headlen(%struct.TYPE_6__* %41)
  %43 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %44 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = add i32 %42, %45
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %72

50:                                               ; preds = %38
  %51 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %52 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %51, i32 0, i32 6
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %72, label %55

55:                                               ; preds = %50
  %56 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %57 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %56, i32 0, i32 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %63 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = sub i32 %61, %64
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %60, i64 %66
  %68 = load i32**, i32*** %6, align 8
  store i32* %67, i32** %68, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = sub i32 %69, %70
  store i32 %71, i32* %4, align 4
  br label %232

72:                                               ; preds = %50, %38
  %73 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %74 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %72
  %78 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %79 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %78, i32 0, i32 6
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %91, label %82

82:                                               ; preds = %77
  %83 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %84 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %83, i32 0, i32 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = call i32 @skb_headlen(%struct.TYPE_6__* %85)
  %87 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %88 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = add i32 %89, %86
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %82, %77, %72
  br label %92

92:                                               ; preds = %165, %91
  %93 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %94 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %97 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %96, i32 0, i32 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = call %struct.TYPE_5__* @skb_shinfo(%struct.TYPE_6__* %98)
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ult i64 %95, %101
  br i1 %102, label %103, label %176

103:                                              ; preds = %92
  %104 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %105 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %104, i32 0, i32 4
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = call %struct.TYPE_5__* @skb_shinfo(%struct.TYPE_6__* %106)
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %111 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  store i32* %113, i32** %10, align 8
  %114 = load i32*, i32** %10, align 8
  %115 = call i32 @skb_frag_size(i32* %114)
  %116 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %117 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = add i32 %115, %118
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp ult i32 %120, %121
  br i1 %122, label %123, label %153

123:                                              ; preds = %103
  %124 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %125 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %124, i32 0, i32 6
  %126 = load i32*, i32** %125, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %134, label %128

128:                                              ; preds = %123
  %129 = load i32*, i32** %10, align 8
  %130 = call i32 @skb_frag_page(i32* %129)
  %131 = call i32* @kmap_atomic(i32 %130)
  %132 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %133 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %132, i32 0, i32 6
  store i32* %131, i32** %133, align 8
  br label %134

134:                                              ; preds = %128, %123
  %135 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %136 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %135, i32 0, i32 6
  %137 = load i32*, i32** %136, align 8
  %138 = load i32*, i32** %10, align 8
  %139 = call i32 @skb_frag_off(i32* %138)
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %137, i64 %140
  %142 = load i32, i32* %9, align 4
  %143 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %144 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = sub i32 %142, %145
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %141, i64 %147
  %149 = load i32**, i32*** %6, align 8
  store i32* %148, i32** %149, align 8
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* %9, align 4
  %152 = sub i32 %150, %151
  store i32 %152, i32* %4, align 4
  br label %232

153:                                              ; preds = %103
  %154 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %155 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %154, i32 0, i32 6
  %156 = load i32*, i32** %155, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %165

158:                                              ; preds = %153
  %159 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %160 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %159, i32 0, i32 6
  %161 = load i32*, i32** %160, align 8
  %162 = call i32 @kunmap_atomic(i32* %161)
  %163 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %164 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %163, i32 0, i32 6
  store i32* null, i32** %164, align 8
  br label %165

165:                                              ; preds = %158, %153
  %166 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %167 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %167, align 8
  %170 = load i32*, i32** %10, align 8
  %171 = call i32 @skb_frag_size(i32* %170)
  %172 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %173 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = add i32 %174, %171
  store i32 %175, i32* %173, align 8
  br label %92

176:                                              ; preds = %92
  %177 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %178 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %177, i32 0, i32 6
  %179 = load i32*, i32** %178, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %188

181:                                              ; preds = %176
  %182 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %183 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %182, i32 0, i32 6
  %184 = load i32*, i32** %183, align 8
  %185 = call i32 @kunmap_atomic(i32* %184)
  %186 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %187 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %186, i32 0, i32 6
  store i32* null, i32** %187, align 8
  br label %188

188:                                              ; preds = %181, %176
  %189 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %190 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %189, i32 0, i32 5
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %190, align 8
  %192 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %193 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %192, i32 0, i32 4
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %193, align 8
  %195 = icmp eq %struct.TYPE_6__* %191, %194
  br i1 %195, label %196, label %213

196:                                              ; preds = %188
  %197 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %198 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %197, i32 0, i32 5
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = call i64 @skb_has_frag_list(%struct.TYPE_6__* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %213

202:                                              ; preds = %196
  %203 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %204 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %203, i32 0, i32 5
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %204, align 8
  %206 = call %struct.TYPE_5__* @skb_shinfo(%struct.TYPE_6__* %205)
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %207, align 8
  %209 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %210 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %209, i32 0, i32 4
  store %struct.TYPE_6__* %208, %struct.TYPE_6__** %210, align 8
  %211 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %212 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %211, i32 0, i32 3
  store i64 0, i64* %212, align 8
  br label %38

213:                                              ; preds = %196, %188
  %214 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %215 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %214, i32 0, i32 4
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %217, align 8
  %219 = icmp ne %struct.TYPE_6__* %218, null
  br i1 %219, label %220, label %230

220:                                              ; preds = %213
  %221 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %222 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %221, i32 0, i32 4
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %224, align 8
  %226 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %227 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %226, i32 0, i32 4
  store %struct.TYPE_6__* %225, %struct.TYPE_6__** %227, align 8
  %228 = load %struct.skb_seq_state*, %struct.skb_seq_state** %7, align 8
  %229 = getelementptr inbounds %struct.skb_seq_state, %struct.skb_seq_state* %228, i32 0, i32 3
  store i64 0, i64* %229, align 8
  br label %38

230:                                              ; preds = %213
  br label %231

231:                                              ; preds = %230
  store i32 0, i32* %4, align 4
  br label %232

232:                                              ; preds = %231, %134, %55, %36
  %233 = load i32, i32* %4, align 4
  ret i32 %233
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kunmap_atomic(i32*) #1

declare dso_local i32 @skb_headlen(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_5__* @skb_shinfo(%struct.TYPE_6__*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32* @kmap_atomic(i32) #1

declare dso_local i32 @skb_frag_page(i32*) #1

declare dso_local i32 @skb_frag_off(i32*) #1

declare dso_local i64 @skb_has_frag_list(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
