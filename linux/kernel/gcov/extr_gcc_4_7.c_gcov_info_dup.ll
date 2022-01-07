; ModuleID = '/home/carl/AnghaBench/linux/kernel/gcov/extr_gcc_4_7.c_gcov_info_dup.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/gcov/extr_gcc_4_7.c_gcov_info_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcov_info = type { i32, %struct.TYPE_3__**, i32*, i32* }
%struct.TYPE_3__ = type { %struct.gcov_ctr_info* }
%struct.gcov_ctr_info = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gcov_info* @gcov_info_dup(%struct.gcov_info* %0) #0 {
  %2 = alloca %struct.gcov_info*, align 8
  %3 = alloca %struct.gcov_info*, align 8
  %4 = alloca %struct.gcov_info*, align 8
  %5 = alloca %struct.gcov_ctr_info*, align 8
  %6 = alloca %struct.gcov_ctr_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.gcov_info* %0, %struct.gcov_info** %3, align 8
  %12 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.gcov_info* @kmemdup(%struct.gcov_info* %12, i32 32, i32 %13)
  store %struct.gcov_info* %14, %struct.gcov_info** %4, align 8
  %15 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %16 = icmp ne %struct.gcov_info* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store %struct.gcov_info* null, %struct.gcov_info** %2, align 8
  br label %167

18:                                               ; preds = %1
  %19 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %20 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %19, i32 0, i32 3
  store i32* null, i32** %20, align 8
  %21 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %22 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %21, i32 0, i32 2
  store i32* null, i32** %22, align 8
  %23 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %24 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %23, i32 0, i32 1
  store %struct.TYPE_3__** null, %struct.TYPE_3__*** %24, align 8
  %25 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %26 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32* @kstrdup(i32* %27, i32 %28)
  %30 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %31 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %30, i32 0, i32 2
  store i32* %29, i32** %31, align 8
  %32 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %33 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %18
  br label %164

37:                                               ; preds = %18
  %38 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %39 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.TYPE_3__** @kcalloc(i32 %40, i32 8, i32 %41)
  %43 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %44 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %43, i32 0, i32 1
  store %struct.TYPE_3__** %42, %struct.TYPE_3__*** %44, align 8
  %45 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %46 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %46, align 8
  %48 = icmp ne %struct.TYPE_3__** %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %37
  br label %164

50:                                               ; preds = %37
  %51 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %52 = call i32 @num_counter_active(%struct.gcov_info* %51)
  store i32 %52, i32* %7, align 4
  store i64 4, i64* %10, align 8
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = mul i64 8, %54
  %56 = load i64, i64* %10, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %10, align 8
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %159, %50
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %61 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ult i32 %59, %62
  br i1 %63, label %64, label %162

64:                                               ; preds = %58
  %65 = load i64, i64* %10, align 8
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call %struct.TYPE_3__* @kzalloc(i64 %65, i32 %66)
  %68 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %69 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %70, i64 %72
  store %struct.TYPE_3__* %67, %struct.TYPE_3__** %73, align 8
  %74 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %75 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %74, i32 0, i32 1
  %76 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %76, i64 %78
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = icmp ne %struct.TYPE_3__* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %64
  br label %164

83:                                               ; preds = %64
  %84 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %85 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %84, i32 0, i32 1
  %86 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %86, i64 %88
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %92 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %91, i32 0, i32 1
  %93 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %93, i64 %95
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = bitcast %struct.TYPE_3__* %90 to i8*
  %99 = bitcast %struct.TYPE_3__* %97 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %98, i8* align 8 %99, i64 8, i1 false)
  %100 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %101 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %100, i32 0, i32 1
  %102 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %102, i64 %104
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %107, align 8
  store %struct.gcov_ctr_info* %108, %struct.gcov_ctr_info** %6, align 8
  %109 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %110 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %109, i32 0, i32 1
  %111 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %111, i64 %113
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %116, align 8
  store %struct.gcov_ctr_info* %117, %struct.gcov_ctr_info** %5, align 8
  store i32 0, i32* %9, align 4
  br label %118

118:                                              ; preds = %155, %83
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp ult i32 %119, %120
  br i1 %121, label %122, label %158

122:                                              ; preds = %118
  %123 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %6, align 8
  %124 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = mul i64 4, %126
  store i64 %127, i64* %11, align 8
  %128 = load i64, i64* %11, align 8
  %129 = call i32 @vmalloc(i64 %128)
  %130 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %5, align 8
  %131 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %5, align 8
  %133 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %122
  br label %164

137:                                              ; preds = %122
  %138 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %6, align 8
  %139 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %5, align 8
  %142 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 4
  %143 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %5, align 8
  %144 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %6, align 8
  %147 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i64, i64* %11, align 8
  %150 = call i32 @memcpy(i32 %145, i32 %148, i64 %149)
  %151 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %6, align 8
  %152 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %151, i32 1
  store %struct.gcov_ctr_info* %152, %struct.gcov_ctr_info** %6, align 8
  %153 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %5, align 8
  %154 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %153, i32 1
  store %struct.gcov_ctr_info* %154, %struct.gcov_ctr_info** %5, align 8
  br label %155

155:                                              ; preds = %137
  %156 = load i32, i32* %9, align 4
  %157 = add i32 %156, 1
  store i32 %157, i32* %9, align 4
  br label %118

158:                                              ; preds = %118
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %8, align 4
  %161 = add i32 %160, 1
  store i32 %161, i32* %8, align 4
  br label %58

162:                                              ; preds = %58
  %163 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  store %struct.gcov_info* %163, %struct.gcov_info** %2, align 8
  br label %167

164:                                              ; preds = %136, %82, %49, %36
  %165 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %166 = call i32 @gcov_info_free(%struct.gcov_info* %165)
  store %struct.gcov_info* null, %struct.gcov_info** %2, align 8
  br label %167

167:                                              ; preds = %164, %162, %17
  %168 = load %struct.gcov_info*, %struct.gcov_info** %2, align 8
  ret %struct.gcov_info* %168
}

declare dso_local %struct.gcov_info* @kmemdup(%struct.gcov_info*, i32, i32) #1

declare dso_local i32* @kstrdup(i32*, i32) #1

declare dso_local %struct.TYPE_3__** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @num_counter_active(%struct.gcov_info*) #1

declare dso_local %struct.TYPE_3__* @kzalloc(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vmalloc(i64) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @gcov_info_free(%struct.gcov_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
