; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_dedup_compact_types.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_dedup_compact_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_dedup = type { i64*, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i8*, i8**, i64, i8*, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.btf_type = type opaque

@BTF_UNPROCESSED_ID = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btf_dedup*)* @btf_dedup_compact_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btf_dedup_compact_types(%struct.btf_dedup* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btf_dedup*, align 8
  %4 = alloca %struct.btf_type**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.btf_dedup* %0, %struct.btf_dedup** %3, align 8
  store i64 1, i64* %5, align 8
  %10 = load %struct.btf_dedup*, %struct.btf_dedup** %3, align 8
  %11 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  store i64 0, i64* %13, align 8
  store i32 1, i32* %8, align 4
  br label %14

14:                                               ; preds = %30, %1
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.btf_dedup*, %struct.btf_dedup** %3, align 8
  %17 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sle i32 %15, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %14
  %23 = load i64, i64* @BTF_UNPROCESSED_ID, align 8
  %24 = load %struct.btf_dedup*, %struct.btf_dedup** %3, align 8
  %25 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  store i64 %23, i64* %29, align 8
  br label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %14

33:                                               ; preds = %14
  %34 = load %struct.btf_dedup*, %struct.btf_dedup** %3, align 8
  %35 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.btf_dedup*, %struct.btf_dedup** %3, align 8
  %40 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 7
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %38, i64 %46
  store i8* %47, i8** %6, align 8
  %48 = load i8*, i8** %6, align 8
  store i8* %48, i8** %7, align 8
  store i32 1, i32* %8, align 4
  br label %49

49:                                               ; preds = %119, %33
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.btf_dedup*, %struct.btf_dedup** %3, align 8
  %52 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sle i32 %50, %55
  br i1 %56, label %57, label %122

57:                                               ; preds = %49
  %58 = load %struct.btf_dedup*, %struct.btf_dedup** %3, align 8
  %59 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %119

68:                                               ; preds = %57
  %69 = load %struct.btf_dedup*, %struct.btf_dedup** %3, align 8
  %70 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i8**, i8*** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @btf_type_size(i8* %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %68
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %2, align 4
  br label %240

83:                                               ; preds = %68
  %84 = load i8*, i8** %7, align 8
  %85 = load %struct.btf_dedup*, %struct.btf_dedup** %3, align 8
  %86 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %85, i32 0, i32 2
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i8**, i8*** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @memmove(i8* %84, i8* %93, i32 %94)
  %96 = load i64, i64* %5, align 8
  %97 = load %struct.btf_dedup*, %struct.btf_dedup** %3, align 8
  %98 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  store i64 %96, i64* %102, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = bitcast i8* %103 to %struct.btf_type*
  %105 = bitcast %struct.btf_type* %104 to i8*
  %106 = load %struct.btf_dedup*, %struct.btf_dedup** %3, align 8
  %107 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %106, i32 0, i32 2
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i8**, i8*** %109, align 8
  %111 = load i64, i64* %5, align 8
  %112 = getelementptr inbounds i8*, i8** %110, i64 %111
  store i8* %105, i8** %112, align 8
  %113 = load i32, i32* %9, align 4
  %114 = load i8*, i8** %7, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8* %116, i8** %7, align 8
  %117 = load i64, i64* %5, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %5, align 8
  br label %119

119:                                              ; preds = %83, %67
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %8, align 4
  br label %49

122:                                              ; preds = %49
  %123 = load i64, i64* %5, align 8
  %124 = sub i64 %123, 1
  %125 = trunc i64 %124 to i32
  %126 = load %struct.btf_dedup*, %struct.btf_dedup** %3, align 8
  %127 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %126, i32 0, i32 2
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  store i32 %125, i32* %129, align 8
  %130 = load %struct.btf_dedup*, %struct.btf_dedup** %3, align 8
  %131 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %130, i32 0, i32 2
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = load %struct.btf_dedup*, %struct.btf_dedup** %3, align 8
  %137 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %136, i32 0, i32 2
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 3
  store i64 %135, i64* %139, align 8
  %140 = load i8*, i8** %7, align 8
  %141 = load i8*, i8** %6, align 8
  %142 = ptrtoint i8* %140 to i64
  %143 = ptrtoint i8* %141 to i64
  %144 = sub i64 %142, %143
  %145 = trunc i64 %144 to i32
  %146 = load %struct.btf_dedup*, %struct.btf_dedup** %3, align 8
  %147 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %146, i32 0, i32 2
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 7
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  store i32 %145, i32* %151, align 4
  %152 = load %struct.btf_dedup*, %struct.btf_dedup** %3, align 8
  %153 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %152, i32 0, i32 2
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 2
  %156 = load i8**, i8*** %155, align 8
  %157 = load %struct.btf_dedup*, %struct.btf_dedup** %3, align 8
  %158 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %157, i32 0, i32 2
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 1, %161
  %163 = sext i32 %162 to i64
  %164 = mul i64 %163, 8
  %165 = trunc i64 %164 to i32
  %166 = call i8** @realloc(i8** %156, i32 %165)
  %167 = bitcast i8** %166 to %struct.btf_type**
  store %struct.btf_type** %167, %struct.btf_type*** %4, align 8
  %168 = load %struct.btf_type**, %struct.btf_type*** %4, align 8
  %169 = icmp ne %struct.btf_type** %168, null
  br i1 %169, label %173, label %170

170:                                              ; preds = %122
  %171 = load i32, i32* @ENOMEM, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %2, align 4
  br label %240

173:                                              ; preds = %122
  %174 = load %struct.btf_type**, %struct.btf_type*** %4, align 8
  %175 = bitcast %struct.btf_type** %174 to i8**
  %176 = load %struct.btf_dedup*, %struct.btf_dedup** %3, align 8
  %177 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %176, i32 0, i32 2
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 2
  store i8** %175, i8*** %179, align 8
  %180 = load i8*, i8** %7, align 8
  %181 = load %struct.btf_dedup*, %struct.btf_dedup** %3, align 8
  %182 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %181, i32 0, i32 2
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 1
  %185 = load i8*, i8** %184, align 8
  %186 = ptrtoint i8* %180 to i64
  %187 = ptrtoint i8* %185 to i64
  %188 = sub i64 %186, %187
  %189 = trunc i64 %188 to i32
  %190 = load %struct.btf_dedup*, %struct.btf_dedup** %3, align 8
  %191 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %190, i32 0, i32 2
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 7
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 2
  store i32 %189, i32* %195, align 4
  %196 = load i8*, i8** %7, align 8
  %197 = load %struct.btf_dedup*, %struct.btf_dedup** %3, align 8
  %198 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %197, i32 0, i32 2
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 4
  %201 = load i8*, i8** %200, align 8
  %202 = load %struct.btf_dedup*, %struct.btf_dedup** %3, align 8
  %203 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %202, i32 0, i32 2
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 7
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @memmove(i8* %196, i8* %201, i32 %208)
  %210 = load i8*, i8** %7, align 8
  %211 = load %struct.btf_dedup*, %struct.btf_dedup** %3, align 8
  %212 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %211, i32 0, i32 2
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 4
  store i8* %210, i8** %214, align 8
  %215 = load %struct.btf_dedup*, %struct.btf_dedup** %3, align 8
  %216 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %215, i32 0, i32 2
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 7
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = load i8*, i8** %7, align 8
  %223 = sext i32 %221 to i64
  %224 = getelementptr inbounds i8, i8* %222, i64 %223
  store i8* %224, i8** %7, align 8
  %225 = load i8*, i8** %7, align 8
  %226 = load %struct.btf_dedup*, %struct.btf_dedup** %3, align 8
  %227 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %226, i32 0, i32 2
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 6
  %230 = load i64, i64* %229, align 8
  %231 = inttoptr i64 %230 to i8*
  %232 = ptrtoint i8* %225 to i64
  %233 = ptrtoint i8* %231 to i64
  %234 = sub i64 %232, %233
  %235 = trunc i64 %234 to i32
  %236 = load %struct.btf_dedup*, %struct.btf_dedup** %3, align 8
  %237 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %236, i32 0, i32 2
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 5
  store i32 %235, i32* %239, align 8
  store i32 0, i32* %2, align 4
  br label %240

240:                                              ; preds = %173, %170, %81
  %241 = load i32, i32* %2, align 4
  ret i32 %241
}

declare dso_local i32 @btf_type_size(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i8** @realloc(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
