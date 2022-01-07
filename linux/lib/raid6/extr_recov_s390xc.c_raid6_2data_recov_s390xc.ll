; ModuleID = '/home/carl/AnghaBench/linux/lib/raid6/extr_recov_s390xc.c_raid6_2data_recov_s390xc.c'
source_filename = "/home/carl/AnghaBench/linux/lib/raid6/extr_recov_s390xc.c_raid6_2data_recov_s390xc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i64, i8**)* }

@raid6_empty_zero_page = common dso_local global i64 0, align 8
@raid6_call = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@raid6_gfmul = common dso_local global i64** null, align 8
@raid6_gfexi = common dso_local global i64* null, align 8
@raid6_gfinv = common dso_local global i64* null, align 8
@raid6_gfexp = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i32, i32, i8**)* @raid6_2data_recov_s390xc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid6_2data_recov_s390xc(i32 %0, i64 %1, i32 %2, i32 %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8** %4, i8*** %10, align 8
  %18 = load i8**, i8*** %10, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sub nsw i32 %19, 2
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %18, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = bitcast i8* %23 to i64*
  store i64* %24, i64** %11, align 8
  %25 = load i8**, i8*** %10, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %25, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = bitcast i8* %30 to i64*
  store i64* %31, i64** %12, align 8
  %32 = load i8**, i8*** %10, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = bitcast i8* %36 to i64*
  store i64* %37, i64** %13, align 8
  %38 = load i64, i64* @raid6_empty_zero_page, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = load i8**, i8*** %10, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  store i8* %39, i8** %43, align 8
  %44 = load i64*, i64** %13, align 8
  %45 = bitcast i64* %44 to i8*
  %46 = load i8**, i8*** %10, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sub nsw i32 %47, 2
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %46, i64 %49
  store i8* %45, i8** %50, align 8
  %51 = load i8**, i8*** %10, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = bitcast i8* %55 to i64*
  store i64* %56, i64** %14, align 8
  %57 = load i64, i64* @raid6_empty_zero_page, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = load i8**, i8*** %10, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  store i8* %58, i8** %62, align 8
  %63 = load i64*, i64** %14, align 8
  %64 = bitcast i64* %63 to i8*
  %65 = load i8**, i8*** %10, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %65, i64 %68
  store i8* %64, i8** %69, align 8
  %70 = load i32 (i32, i64, i8**)*, i32 (i32, i64, i8**)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @raid6_call, i32 0, i32 0), align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i64, i64* %7, align 8
  %73 = load i8**, i8*** %10, align 8
  %74 = call i32 %70(i32 %71, i64 %72, i8** %73)
  %75 = load i64*, i64** %13, align 8
  %76 = bitcast i64* %75 to i8*
  %77 = load i8**, i8*** %10, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  store i8* %76, i8** %80, align 8
  %81 = load i64*, i64** %14, align 8
  %82 = bitcast i64* %81 to i8*
  %83 = load i8**, i8*** %10, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  store i8* %82, i8** %86, align 8
  %87 = load i64*, i64** %11, align 8
  %88 = bitcast i64* %87 to i8*
  %89 = load i8**, i8*** %10, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sub nsw i32 %90, 2
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %89, i64 %92
  store i8* %88, i8** %93, align 8
  %94 = load i64*, i64** %12, align 8
  %95 = bitcast i64* %94 to i8*
  %96 = load i8**, i8*** %10, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %96, i64 %99
  store i8* %95, i8** %100, align 8
  %101 = load i64**, i64*** @raid6_gfmul, align 8
  %102 = load i64*, i64** @raid6_gfexi, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %8, align 4
  %105 = sub nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %102, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i64*, i64** %101, i64 %108
  %110 = load i64*, i64** %109, align 8
  store i64* %110, i64** %15, align 8
  %111 = load i64**, i64*** @raid6_gfmul, align 8
  %112 = load i64*, i64** @raid6_gfinv, align 8
  %113 = load i64*, i64** @raid6_gfexp, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = load i64*, i64** @raid6_gfexp, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = xor i64 %117, %122
  %124 = getelementptr inbounds i64, i64* %112, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds i64*, i64** %111, i64 %125
  %127 = load i64*, i64** %126, align 8
  store i64* %127, i64** %16, align 8
  br label %128

128:                                              ; preds = %166, %5
  %129 = load i64, i64* %7, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %180

131:                                              ; preds = %128
  %132 = load i64*, i64** %13, align 8
  %133 = load i64*, i64** %11, align 8
  %134 = call i32 @xor_block(i64* %132, i64* %133)
  %135 = load i64*, i64** %14, align 8
  %136 = load i64*, i64** %12, align 8
  %137 = call i32 @xor_block(i64* %135, i64* %136)
  store i32 0, i32* %17, align 4
  br label %138

138:                                              ; preds = %163, %131
  %139 = load i32, i32* %17, align 4
  %140 = icmp slt i32 %139, 256
  br i1 %140, label %141, label %166

141:                                              ; preds = %138
  %142 = load i64*, i64** %15, align 8
  %143 = load i64*, i64** %13, align 8
  %144 = load i32, i32* %17, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %143, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds i64, i64* %142, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = load i64*, i64** %16, align 8
  %151 = load i64*, i64** %14, align 8
  %152 = load i32, i32* %17, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %151, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds i64, i64* %150, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = xor i64 %149, %157
  %159 = load i64*, i64** %14, align 8
  %160 = load i32, i32* %17, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  store i64 %158, i64* %162, align 8
  br label %163

163:                                              ; preds = %141
  %164 = load i32, i32* %17, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %17, align 4
  br label %138

166:                                              ; preds = %138
  %167 = load i64*, i64** %13, align 8
  %168 = load i64*, i64** %14, align 8
  %169 = call i32 @xor_block(i64* %167, i64* %168)
  %170 = load i64*, i64** %11, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 256
  store i64* %171, i64** %11, align 8
  %172 = load i64*, i64** %12, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 256
  store i64* %173, i64** %12, align 8
  %174 = load i64*, i64** %13, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 256
  store i64* %175, i64** %13, align 8
  %176 = load i64*, i64** %14, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 256
  store i64* %177, i64** %14, align 8
  %178 = load i64, i64* %7, align 8
  %179 = sub i64 %178, 256
  store i64 %179, i64* %7, align 8
  br label %128

180:                                              ; preds = %128
  ret void
}

declare dso_local i32 @xor_block(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
