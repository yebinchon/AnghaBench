; ModuleID = '/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_utf8nlookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_utf8nlookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i32 }

@utf8data = common dso_local global i32* null, align 8
@OFFLEN = common dso_local global i32 0, align 4
@OFFLEN_SHIFT = common dso_local global i32 0, align 4
@NEXTBYTE = common dso_local global i32 0, align 4
@BITNUM = common dso_local global i32 0, align 4
@RIGHTNODE = common dso_local global i32 0, align 4
@RIGHTPATH = common dso_local global i32 0, align 4
@TRIENODE = common dso_local global i32 0, align 4
@LEFTNODE = common dso_local global i32 0, align 4
@DECOMPOSE = common dso_local global i64 0, align 8
@HANGUL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.tree*, i8*, i8*, i64)* @utf8nlookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @utf8nlookup(%struct.tree* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.tree*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.tree* %0, %struct.tree** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.tree*, %struct.tree** %6, align 8
  %16 = icmp ne %struct.tree* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %161

18:                                               ; preds = %4
  %19 = load i64, i64* %9, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32* null, i32** %5, align 8
  br label %161

22:                                               ; preds = %18
  store i32 1, i32* %14, align 4
  %23 = load i32*, i32** @utf8data, align 8
  %24 = load %struct.tree*, %struct.tree** %6, align 8
  %25 = getelementptr inbounds %struct.tree, %struct.tree* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %23, i64 %27
  store i32* %28, i32** %10, align 8
  br label %29

29:                                               ; preds = %141, %22
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %142

32:                                               ; preds = %29
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @OFFLEN, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @OFFLEN_SHIFT, align 4
  %38 = ashr i32 %36, %37
  store i32 %38, i32* %11, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @NEXTBYTE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %32
  %45 = load i64, i64* %9, align 8
  %46 = add i64 %45, -1
  store i64 %46, i64* %9, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32* null, i32** %5, align 8
  br label %161

49:                                               ; preds = %44
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %8, align 8
  br label %52

52:                                               ; preds = %49, %32
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @BITNUM, align 4
  %56 = and i32 %54, %55
  %57 = shl i32 1, %56
  store i32 %57, i32* %13, align 4
  %58 = load i8*, i8** %8, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = load i32, i32* %13, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %112

64:                                               ; preds = %52
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %96

67:                                               ; preds = %64
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @RIGHTNODE, align 4
  %71 = and i32 %69, %70
  store i32 %71, i32* %14, align 4
  %72 = load i32*, i32** %10, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %81, %67
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %77
  %82 = load i32, i32* %12, align 4
  %83 = shl i32 %82, 8
  store i32 %83, i32* %12, align 4
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %12, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %12, align 4
  br label %77

91:                                               ; preds = %77
  %92 = load i32, i32* %12, align 4
  %93 = load i32*, i32** %10, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32* %95, i32** %10, align 8
  br label %111

96:                                               ; preds = %64
  %97 = load i32*, i32** %10, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @RIGHTPATH, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %96
  %103 = load i32*, i32** %10, align 8
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @TRIENODE, align 4
  %106 = and i32 %104, %105
  store i32 %106, i32* %14, align 4
  %107 = load i32*, i32** %10, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %10, align 8
  br label %110

109:                                              ; preds = %96
  store i32* null, i32** %5, align 8
  br label %161

110:                                              ; preds = %102
  br label %111

111:                                              ; preds = %110, %91
  br label %141

112:                                              ; preds = %52
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %112
  %116 = load i32*, i32** %10, align 8
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @LEFTNODE, align 4
  %119 = and i32 %117, %118
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 1
  %122 = load i32*, i32** %10, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  store i32* %124, i32** %10, align 8
  br label %140

125:                                              ; preds = %112
  %126 = load i32*, i32** %10, align 8
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @RIGHTPATH, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  store i32* null, i32** %5, align 8
  br label %161

132:                                              ; preds = %125
  %133 = load i32*, i32** %10, align 8
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @TRIENODE, align 4
  %136 = and i32 %134, %135
  store i32 %136, i32* %14, align 4
  %137 = load i32*, i32** %10, align 8
  %138 = getelementptr inbounds i32, i32* %137, i32 1
  store i32* %138, i32** %10, align 8
  br label %139

139:                                              ; preds = %132
  br label %140

140:                                              ; preds = %139, %115
  br label %141

141:                                              ; preds = %140, %111
  br label %29

142:                                              ; preds = %29
  %143 = load i32*, i32** %10, align 8
  %144 = call i64 @LEAF_CCC(i32* %143)
  %145 = load i64, i64* @DECOMPOSE, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %159

147:                                              ; preds = %142
  %148 = load i32*, i32** %10, align 8
  %149 = call i64* @LEAF_STR(i32* %148)
  %150 = getelementptr inbounds i64, i64* %149, i64 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @HANGUL, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %159

154:                                              ; preds = %147
  %155 = load i8*, i8** %8, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 -2
  %157 = load i8*, i8** %7, align 8
  %158 = call i32* @utf8hangul(i8* %156, i8* %157)
  store i32* %158, i32** %10, align 8
  br label %159

159:                                              ; preds = %154, %147, %142
  %160 = load i32*, i32** %10, align 8
  store i32* %160, i32** %5, align 8
  br label %161

161:                                              ; preds = %159, %131, %109, %48, %21, %17
  %162 = load i32*, i32** %5, align 8
  ret i32* %162
}

declare dso_local i64 @LEAF_CCC(i32*) #1

declare dso_local i64* @LEAF_STR(i32*) #1

declare dso_local i32* @utf8hangul(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
