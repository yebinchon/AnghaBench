; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_filter.c_calc_stack.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_filter.c_calc_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOO_MANY_CLOSE = common dso_local global i32 0, align 4
@MISSING_QUOTE = common dso_local global i32 0, align 4
@TOO_MANY_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i32*)* @calc_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_stack(i8* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %18 = load i32*, i32** %9, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %19

19:                                               ; preds = %107, %4
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %16, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %110

26:                                               ; preds = %19
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %16, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = call i64 @isspace(i8 signext %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %107

35:                                               ; preds = %26
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %16, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = load i32, i32* %15, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i32 0, i32* %15, align 4
  br label %48

48:                                               ; preds = %47, %38
  br label %107

49:                                               ; preds = %35
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* %16, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  switch i32 %55, label %100 [
    i32 39, label %56
    i32 34, label %56
    i32 124, label %64
    i32 38, label %64
    i32 40, label %81
    i32 41, label %90
  ]

56:                                               ; preds = %49, %49
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* %16, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %16, align 4
  store i32 %63, i32* %13, align 4
  br label %100

64:                                               ; preds = %49, %49
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* %16, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = load i8*, i8** %6, align 8
  %73 = load i32, i32* %16, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %71, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %64
  br label %100

80:                                               ; preds = %64
  store i32 0, i32* %10, align 4
  br label %107

81:                                               ; preds = %49
  store i32 0, i32* %10, align 4
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %14, align 4
  br label %89

89:                                               ; preds = %87, %81
  br label %107

90:                                               ; preds = %49
  store i32 0, i32* %10, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i32, i32* %16, align 4
  %95 = load i32*, i32** %9, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* @TOO_MANY_CLOSE, align 4
  store i32 %96, i32* %5, align 4
  br label %181

97:                                               ; preds = %90
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %12, align 4
  br label %107

100:                                              ; preds = %49, %79, %56
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %11, align 4
  store i32 1, i32* %10, align 4
  br label %106

106:                                              ; preds = %103, %100
  br label %107

107:                                              ; preds = %106, %97, %89, %80, %48, %34
  %108 = load i32, i32* %16, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %16, align 4
  br label %19

110:                                              ; preds = %19
  %111 = load i32, i32* %15, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i32, i32* %13, align 4
  %115 = load i32*, i32** %9, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* @MISSING_QUOTE, align 4
  store i32 %116, i32* %5, align 4
  br label %181

117:                                              ; preds = %110
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 1
  br i1 %119, label %120, label %176

120:                                              ; preds = %117
  %121 = load i32, i32* %12, align 4
  store i32 %121, i32* %17, align 4
  %122 = load i32, i32* %16, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %16, align 4
  br label %124

124:                                              ; preds = %170, %120
  %125 = load i32, i32* %16, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %173

127:                                              ; preds = %124
  %128 = load i32, i32* %15, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %127
  %131 = load i8*, i8** %6, align 8
  %132 = load i32, i32* %16, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = load i32, i32* %15, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %130
  store i32 0, i32* %15, align 4
  br label %140

140:                                              ; preds = %139, %130
  br label %170

141:                                              ; preds = %127
  %142 = load i8*, i8** %6, align 8
  %143 = load i32, i32* %16, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  switch i32 %147, label %169 [
    i32 40, label %148
    i32 41, label %159
    i32 39, label %162
    i32 34, label %162
  ]

148:                                              ; preds = %141
  %149 = load i32, i32* %17, align 4
  %150 = load i32, i32* %12, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %148
  %153 = load i32, i32* %16, align 4
  %154 = load i32*, i32** %9, align 8
  store i32 %153, i32* %154, align 4
  %155 = load i32, i32* @TOO_MANY_OPEN, align 4
  store i32 %155, i32* %5, align 4
  br label %181

156:                                              ; preds = %148
  %157 = load i32, i32* %17, align 4
  %158 = add nsw i32 %157, -1
  store i32 %158, i32* %17, align 4
  br label %169

159:                                              ; preds = %141
  %160 = load i32, i32* %17, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %17, align 4
  br label %169

162:                                              ; preds = %141, %141
  %163 = load i8*, i8** %6, align 8
  %164 = load i32, i32* %16, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %163, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  store i32 %168, i32* %15, align 4
  br label %169

169:                                              ; preds = %141, %162, %159, %156
  br label %170

170:                                              ; preds = %169, %140
  %171 = load i32, i32* %16, align 4
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %16, align 4
  br label %124

173:                                              ; preds = %124
  %174 = load i32*, i32** %9, align 8
  store i32 0, i32* %174, align 4
  %175 = load i32, i32* @TOO_MANY_OPEN, align 4
  store i32 %175, i32* %5, align 4
  br label %181

176:                                              ; preds = %117
  %177 = load i32, i32* %14, align 4
  %178 = load i32*, i32** %7, align 8
  store i32 %177, i32* %178, align 4
  %179 = load i32, i32* %11, align 4
  %180 = load i32*, i32** %8, align 8
  store i32 %179, i32* %180, align 4
  store i32 0, i32* %5, align 4
  br label %181

181:                                              ; preds = %176, %173, %152, %113, %93
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

declare dso_local i64 @isspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
