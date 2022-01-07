; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_util.c_tomoyo_path_matches_pattern2.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_util.c_tomoyo_path_matches_pattern2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @tomoyo_path_matches_pattern2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_path_matches_pattern2(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %8

8:                                                ; preds = %78, %2
  %9 = load i8*, i8** %4, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br label %18

18:                                               ; preds = %13, %8
  %19 = phi i1 [ false, %8 ], [ %17, %13 ]
  br i1 %19, label %20, label %79

20:                                               ; preds = %18
  %21 = load i8*, i8** %4, align 8
  %22 = call i8* @strchr(i8* %21, i8 signext 47)
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load i8*, i8** %4, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  store i8* %30, i8** %6, align 8
  br label %31

31:                                               ; preds = %25, %20
  %32 = load i8*, i8** %5, align 8
  %33 = call i8* @strchr(i8* %32, i8 signext 47)
  store i8* %33, i8** %7, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @strlen(i8* %38)
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  store i8* %41, i8** %7, align 8
  br label %42

42:                                               ; preds = %36, %31
  %43 = load i8*, i8** %5, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 92
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 123
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %116

54:                                               ; preds = %47, %42
  %55 = load i8*, i8** %4, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @tomoyo_file_matches_pattern(i8* %55, i8* %56, i8* %57, i8* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %178

62:                                               ; preds = %54
  %63 = load i8*, i8** %6, align 8
  store i8* %63, i8** %4, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = load i8, i8* %64, align 1
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i8*, i8** %4, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %4, align 8
  br label %70

70:                                               ; preds = %67, %62
  %71 = load i8*, i8** %7, align 8
  store i8* %71, i8** %5, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = load i8, i8* %72, align 1
  %74 = icmp ne i8 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i8*, i8** %5, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %5, align 8
  br label %78

78:                                               ; preds = %75, %70
  br label %8

79:                                               ; preds = %18
  br label %80

80:                                               ; preds = %101, %79
  %81 = load i8*, i8** %5, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 92
  br i1 %84, label %85, label %99

85:                                               ; preds = %80
  %86 = load i8*, i8** %5, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 42
  br i1 %90, label %97, label %91

91:                                               ; preds = %85
  %92 = load i8*, i8** %5, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 64
  br label %97

97:                                               ; preds = %91, %85
  %98 = phi i1 [ true, %85 ], [ %96, %91 ]
  br label %99

99:                                               ; preds = %97, %80
  %100 = phi i1 [ false, %80 ], [ %98, %97 ]
  br i1 %100, label %101, label %104

101:                                              ; preds = %99
  %102 = load i8*, i8** %5, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 2
  store i8* %103, i8** %5, align 8
  br label %80

104:                                              ; preds = %99
  %105 = load i8*, i8** %4, align 8
  %106 = load i8, i8* %105, align 1
  %107 = icmp ne i8 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %104
  %109 = load i8*, i8** %5, align 8
  %110 = load i8, i8* %109, align 1
  %111 = icmp ne i8 %110, 0
  %112 = xor i1 %111, true
  br label %113

113:                                              ; preds = %108, %104
  %114 = phi i1 [ false, %104 ], [ %112, %108 ]
  %115 = zext i1 %114 to i32
  store i32 %115, i32* %3, align 4
  br label %178

116:                                              ; preds = %53
  %117 = load i8*, i8** %5, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 -1
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp ne i32 %120, 47
  br i1 %121, label %144, label %122

122:                                              ; preds = %116
  %123 = load i8*, i8** %7, align 8
  %124 = load i8*, i8** %5, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 3
  %126 = icmp ule i8* %123, %125
  br i1 %126, label %144, label %127

127:                                              ; preds = %122
  %128 = load i8*, i8** %7, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 47
  br i1 %131, label %144, label %132

132:                                              ; preds = %127
  %133 = load i8*, i8** %7, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 -1
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp ne i32 %136, 125
  br i1 %137, label %144, label %138

138:                                              ; preds = %132
  %139 = load i8*, i8** %7, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 -2
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp ne i32 %142, 92
  br i1 %143, label %144, label %145

144:                                              ; preds = %138, %132, %127, %122, %116
  store i32 0, i32* %3, align 4
  br label %178

145:                                              ; preds = %138
  br label %146

146:                                              ; preds = %174, %145
  %147 = load i8*, i8** %4, align 8
  %148 = load i8*, i8** %6, align 8
  %149 = load i8*, i8** %5, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 2
  %151 = load i8*, i8** %7, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 -2
  %153 = call i32 @tomoyo_file_matches_pattern(i8* %147, i8* %148, i8* %150, i8* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %146
  br label %177

156:                                              ; preds = %146
  %157 = load i8*, i8** %6, align 8
  store i8* %157, i8** %4, align 8
  %158 = load i8*, i8** %4, align 8
  %159 = load i8, i8* %158, align 1
  %160 = icmp ne i8 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %156
  br label %177

162:                                              ; preds = %156
  %163 = load i8*, i8** %4, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %4, align 8
  %165 = load i8*, i8** %4, align 8
  %166 = load i8*, i8** %7, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 1
  %168 = call i32 @tomoyo_path_matches_pattern2(i8* %165, i8* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %162
  store i32 1, i32* %3, align 4
  br label %178

171:                                              ; preds = %162
  %172 = load i8*, i8** %4, align 8
  %173 = call i8* @strchr(i8* %172, i8 signext 47)
  store i8* %173, i8** %6, align 8
  br label %174

174:                                              ; preds = %171
  %175 = load i8*, i8** %6, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %146, label %177

177:                                              ; preds = %174, %161, %155
  store i32 0, i32* %3, align 4
  br label %178

178:                                              ; preds = %177, %170, %144, %113, %61
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @tomoyo_file_matches_pattern(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
