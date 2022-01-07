; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_cache.c_qword_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_cache.c_qword_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qword_get(i8** %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %20, %3
  %16 = load i8*, i8** %8, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 32
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %8, align 8
  br label %15

23:                                               ; preds = %15
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 92
  br i1 %28, label %29, label %72

29:                                               ; preds = %23
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 120
  br i1 %34, label %35, label %72

35:                                               ; preds = %29
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  store i8* %37, i8** %8, align 8
  br label %38

38:                                               ; preds = %59, %35
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %7, align 4
  %41 = sub nsw i32 %40, 1
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %71

43:                                               ; preds = %38
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = call i32 @hex_to_bin(i8 signext %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %71

51:                                               ; preds = %43
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = call i32 @hex_to_bin(i8 signext %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %71

59:                                               ; preds = %51
  %60 = load i32, i32* %10, align 4
  %61 = shl i32 %60, 4
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %61, %62
  %64 = trunc i32 %63 to i8
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %6, align 8
  store i8 %64, i8* %65, align 1
  %67 = load i8*, i8** %8, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 2
  store i8* %68, i8** %8, align 8
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %38

71:                                               ; preds = %58, %50, %38
  br label %164

72:                                               ; preds = %29, %23
  br label %73

73:                                               ; preds = %162, %72
  %74 = load i8*, i8** %8, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 32
  br i1 %77, label %78, label %93

78:                                               ; preds = %73
  %79 = load i8*, i8** %8, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 10
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = load i8*, i8** %8, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %7, align 4
  %91 = sub nsw i32 %90, 1
  %92 = icmp slt i32 %89, %91
  br label %93

93:                                               ; preds = %88, %83, %78, %73
  %94 = phi i1 [ false, %83 ], [ false, %78 ], [ false, %73 ], [ %92, %88 ]
  br i1 %94, label %95, label %163

95:                                               ; preds = %93
  %96 = load i8*, i8** %8, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 92
  br i1 %99, label %100, label %154

100:                                              ; preds = %95
  %101 = load i8*, i8** %8, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = load i8, i8* %102, align 1
  %104 = call i64 @isodigit(i8 signext %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %154

106:                                              ; preds = %100
  %107 = load i8*, i8** %8, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp sle i32 %110, 51
  br i1 %111, label %112, label %154

112:                                              ; preds = %106
  %113 = load i8*, i8** %8, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 2
  %115 = load i8, i8* %114, align 1
  %116 = call i64 @isodigit(i8 signext %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %154

118:                                              ; preds = %112
  %119 = load i8*, i8** %8, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 3
  %121 = load i8, i8* %120, align 1
  %122 = call i64 @isodigit(i8 signext %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %154

124:                                              ; preds = %118
  %125 = load i8*, i8** %8, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %8, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = sub nsw i32 %128, 48
  store i32 %129, i32* %12, align 4
  %130 = load i8*, i8** %8, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %8, align 8
  %132 = load i32, i32* %12, align 4
  %133 = shl i32 %132, 3
  %134 = load i8*, i8** %8, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %8, align 8
  %136 = load i8, i8* %134, align 1
  %137 = sext i8 %136 to i32
  %138 = sub nsw i32 %137, 48
  %139 = or i32 %133, %138
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %12, align 4
  %141 = shl i32 %140, 3
  %142 = load i8*, i8** %8, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %8, align 8
  %144 = load i8, i8* %142, align 1
  %145 = sext i8 %144 to i32
  %146 = sub nsw i32 %145, 48
  %147 = or i32 %141, %146
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %12, align 4
  %149 = trunc i32 %148 to i8
  %150 = load i8*, i8** %6, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %6, align 8
  store i8 %149, i8* %150, align 1
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %9, align 4
  br label %162

154:                                              ; preds = %118, %112, %106, %100, %95
  %155 = load i8*, i8** %8, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %8, align 8
  %157 = load i8, i8* %155, align 1
  %158 = load i8*, i8** %6, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %6, align 8
  store i8 %157, i8* %158, align 1
  %160 = load i32, i32* %9, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %9, align 4
  br label %162

162:                                              ; preds = %154, %124
  br label %73

163:                                              ; preds = %93
  br label %164

164:                                              ; preds = %163, %71
  %165 = load i8*, i8** %8, align 8
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp ne i32 %167, 32
  br i1 %168, label %169, label %180

169:                                              ; preds = %164
  %170 = load i8*, i8** %8, align 8
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp ne i32 %172, 10
  br i1 %173, label %174, label %180

174:                                              ; preds = %169
  %175 = load i8*, i8** %8, align 8
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  store i32 -1, i32* %4, align 4
  br label %194

180:                                              ; preds = %174, %169, %164
  br label %181

181:                                              ; preds = %186, %180
  %182 = load i8*, i8** %8, align 8
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %184, 32
  br i1 %185, label %186, label %189

186:                                              ; preds = %181
  %187 = load i8*, i8** %8, align 8
  %188 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %188, i8** %8, align 8
  br label %181

189:                                              ; preds = %181
  %190 = load i8*, i8** %8, align 8
  %191 = load i8**, i8*** %5, align 8
  store i8* %190, i8** %191, align 8
  %192 = load i8*, i8** %6, align 8
  store i8 0, i8* %192, align 1
  %193 = load i32, i32* %9, align 4
  store i32 %193, i32* %4, align 4
  br label %194

194:                                              ; preds = %189, %179
  %195 = load i32, i32* %4, align 4
  ret i32 %195
}

declare dso_local i32 @hex_to_bin(i8 signext) #1

declare dso_local i64 @isodigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
