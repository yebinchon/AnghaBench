; ModuleID = '/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_utf8encode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_utf8encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UTF8_V_MASK = common dso_local global i32 0, align 4
@UTF8_N_BITS = common dso_local global i8 0, align 1
@UTF8_V_SHIFT = common dso_local global i32 0, align 4
@UTF8_2_BITS = common dso_local global i8 0, align 1
@UTF8_3_BITS = common dso_local global i8 0, align 1
@UTF8_4_BITS = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [18 x i8] c"%#x: illegal val\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @utf8encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf8encode(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ult i32 %6, 128
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = trunc i32 %9 to i8
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  store i8 %10, i8* %12, align 1
  store i32 1, i32* %5, align 4
  br label %169

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ult i32 %14, 2048
  br i1 %15, label %16, label %46

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @UTF8_V_MASK, align 4
  %19 = and i32 %17, %18
  %20 = trunc i32 %19 to i8
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  store i8 %20, i8* %22, align 1
  %23 = load i8, i8* @UTF8_N_BITS, align 1
  %24 = sext i8 %23 to i32
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = or i32 %28, %24
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %26, align 1
  %31 = load i32, i32* @UTF8_V_SHIFT, align 4
  %32 = load i32, i32* %4, align 4
  %33 = lshr i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = trunc i32 %34 to i8
  %36 = load i8*, i8** %3, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  store i8 %35, i8* %37, align 1
  %38 = load i8, i8* @UTF8_2_BITS, align 1
  %39 = sext i8 %38 to i32
  %40 = load i8*, i8** %3, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = or i32 %43, %39
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %41, align 1
  store i32 2, i32* %5, align 4
  br label %168

46:                                               ; preds = %13
  %47 = load i32, i32* %4, align 4
  %48 = icmp ult i32 %47, 65536
  br i1 %48, label %49, label %96

49:                                               ; preds = %46
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @UTF8_V_MASK, align 4
  %52 = and i32 %50, %51
  %53 = trunc i32 %52 to i8
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 2
  store i8 %53, i8* %55, align 1
  %56 = load i8, i8* @UTF8_N_BITS, align 1
  %57 = sext i8 %56 to i32
  %58 = load i8*, i8** %3, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = or i32 %61, %57
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %59, align 1
  %64 = load i32, i32* @UTF8_V_SHIFT, align 4
  %65 = load i32, i32* %4, align 4
  %66 = lshr i32 %65, %64
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @UTF8_V_MASK, align 4
  %69 = and i32 %67, %68
  %70 = trunc i32 %69 to i8
  %71 = load i8*, i8** %3, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  store i8 %70, i8* %72, align 1
  %73 = load i8, i8* @UTF8_N_BITS, align 1
  %74 = sext i8 %73 to i32
  %75 = load i8*, i8** %3, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = or i32 %78, %74
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %76, align 1
  %81 = load i32, i32* @UTF8_V_SHIFT, align 4
  %82 = load i32, i32* %4, align 4
  %83 = lshr i32 %82, %81
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = trunc i32 %84 to i8
  %86 = load i8*, i8** %3, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  store i8 %85, i8* %87, align 1
  %88 = load i8, i8* @UTF8_3_BITS, align 1
  %89 = sext i8 %88 to i32
  %90 = load i8*, i8** %3, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 0
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = or i32 %93, %89
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %91, align 1
  store i32 3, i32* %5, align 4
  br label %167

96:                                               ; preds = %46
  %97 = load i32, i32* %4, align 4
  %98 = icmp ult i32 %97, 1114112
  br i1 %98, label %99, label %163

99:                                               ; preds = %96
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @UTF8_V_MASK, align 4
  %102 = and i32 %100, %101
  %103 = trunc i32 %102 to i8
  %104 = load i8*, i8** %3, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 3
  store i8 %103, i8* %105, align 1
  %106 = load i8, i8* @UTF8_N_BITS, align 1
  %107 = sext i8 %106 to i32
  %108 = load i8*, i8** %3, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 3
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = or i32 %111, %107
  %113 = trunc i32 %112 to i8
  store i8 %113, i8* %109, align 1
  %114 = load i32, i32* @UTF8_V_SHIFT, align 4
  %115 = load i32, i32* %4, align 4
  %116 = lshr i32 %115, %114
  store i32 %116, i32* %4, align 4
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @UTF8_V_MASK, align 4
  %119 = and i32 %117, %118
  %120 = trunc i32 %119 to i8
  %121 = load i8*, i8** %3, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 2
  store i8 %120, i8* %122, align 1
  %123 = load i8, i8* @UTF8_N_BITS, align 1
  %124 = sext i8 %123 to i32
  %125 = load i8*, i8** %3, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 2
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = or i32 %128, %124
  %130 = trunc i32 %129 to i8
  store i8 %130, i8* %126, align 1
  %131 = load i32, i32* @UTF8_V_SHIFT, align 4
  %132 = load i32, i32* %4, align 4
  %133 = lshr i32 %132, %131
  store i32 %133, i32* %4, align 4
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* @UTF8_V_MASK, align 4
  %136 = and i32 %134, %135
  %137 = trunc i32 %136 to i8
  %138 = load i8*, i8** %3, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 1
  store i8 %137, i8* %139, align 1
  %140 = load i8, i8* @UTF8_N_BITS, align 1
  %141 = sext i8 %140 to i32
  %142 = load i8*, i8** %3, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 1
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = or i32 %145, %141
  %147 = trunc i32 %146 to i8
  store i8 %147, i8* %143, align 1
  %148 = load i32, i32* @UTF8_V_SHIFT, align 4
  %149 = load i32, i32* %4, align 4
  %150 = lshr i32 %149, %148
  store i32 %150, i32* %4, align 4
  %151 = load i32, i32* %4, align 4
  %152 = trunc i32 %151 to i8
  %153 = load i8*, i8** %3, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 0
  store i8 %152, i8* %154, align 1
  %155 = load i8, i8* @UTF8_4_BITS, align 1
  %156 = sext i8 %155 to i32
  %157 = load i8*, i8** %3, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 0
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = or i32 %160, %156
  %162 = trunc i32 %161 to i8
  store i8 %162, i8* %158, align 1
  store i32 4, i32* %5, align 4
  br label %166

163:                                              ; preds = %96
  %164 = load i32, i32* %4, align 4
  %165 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %164)
  store i32 0, i32* %5, align 4
  br label %166

166:                                              ; preds = %163, %99
  br label %167

167:                                              ; preds = %166, %49
  br label %168

168:                                              ; preds = %167, %16
  br label %169

169:                                              ; preds = %168, %8
  %170 = load i32, i32* %5, align 4
  ret i32 %170
}

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
