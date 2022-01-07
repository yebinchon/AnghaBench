; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/lxdialog/extr_util.c_draw_box.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/lxdialog/extr_util.c_draw_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACS_ULCORNER = common dso_local global i8 0, align 1
@ACS_LLCORNER = common dso_local global i8 0, align 1
@ACS_URCORNER = common dso_local global i8 0, align 1
@ACS_LRCORNER = common dso_local global i8 0, align 1
@ACS_HLINE = common dso_local global i8 0, align 1
@ACS_VLINE = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @draw_box(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8 signext %5, i8 signext %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8 %5, i8* %13, align 1
  store i8 %6, i8* %14, align 1
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @wattrset(i32* %17, i32 0)
  store i32 0, i32* %15, align 4
  br label %19

19:                                               ; preds = %173, %7
  %20 = load i32, i32* %15, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %176

23:                                               ; preds = %19
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %15, align 4
  %27 = add nsw i32 %25, %26
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @wmove(i32* %24, i32 %27, i32 %28)
  store i32 0, i32* %16, align 4
  br label %30

30:                                               ; preds = %169, %23
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %172

34:                                               ; preds = %30
  %35 = load i32, i32* %15, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %16, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %37
  %41 = load i32*, i32** %8, align 8
  %42 = load i8, i8* %14, align 1
  %43 = sext i8 %42 to i32
  %44 = load i8, i8* @ACS_ULCORNER, align 1
  %45 = sext i8 %44 to i32
  %46 = or i32 %43, %45
  %47 = trunc i32 %46 to i8
  %48 = call i32 @waddch(i32* %41, i8 signext %47)
  br label %168

49:                                               ; preds = %37, %34
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %11, align 4
  %52 = sub nsw i32 %51, 1
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %49
  %55 = load i32, i32* %16, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %54
  %58 = load i32*, i32** %8, align 8
  %59 = load i8, i8* %14, align 1
  %60 = sext i8 %59 to i32
  %61 = load i8, i8* @ACS_LLCORNER, align 1
  %62 = sext i8 %61 to i32
  %63 = or i32 %60, %62
  %64 = trunc i32 %63 to i8
  %65 = call i32 @waddch(i32* %58, i8 signext %64)
  br label %167

66:                                               ; preds = %54, %49
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %83, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* %12, align 4
  %72 = sub nsw i32 %71, 1
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load i32*, i32** %8, align 8
  %76 = load i8, i8* %13, align 1
  %77 = sext i8 %76 to i32
  %78 = load i8, i8* @ACS_URCORNER, align 1
  %79 = sext i8 %78 to i32
  %80 = or i32 %77, %79
  %81 = trunc i32 %80 to i8
  %82 = call i32 @waddch(i32* %75, i8 signext %81)
  br label %166

83:                                               ; preds = %69, %66
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %11, align 4
  %86 = sub nsw i32 %85, 1
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %83
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %12, align 4
  %91 = sub nsw i32 %90, 1
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %88
  %94 = load i32*, i32** %8, align 8
  %95 = load i8, i8* %13, align 1
  %96 = sext i8 %95 to i32
  %97 = load i8, i8* @ACS_LRCORNER, align 1
  %98 = sext i8 %97 to i32
  %99 = or i32 %96, %98
  %100 = trunc i32 %99 to i8
  %101 = call i32 @waddch(i32* %94, i8 signext %100)
  br label %165

102:                                              ; preds = %88, %83
  %103 = load i32, i32* %15, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %114, label %105

105:                                              ; preds = %102
  %106 = load i32*, i32** %8, align 8
  %107 = load i8, i8* %14, align 1
  %108 = sext i8 %107 to i32
  %109 = load i8, i8* @ACS_HLINE, align 1
  %110 = sext i8 %109 to i32
  %111 = or i32 %108, %110
  %112 = trunc i32 %111 to i8
  %113 = call i32 @waddch(i32* %106, i8 signext %112)
  br label %164

114:                                              ; preds = %102
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %11, align 4
  %117 = sub nsw i32 %116, 1
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %114
  %120 = load i32*, i32** %8, align 8
  %121 = load i8, i8* %13, align 1
  %122 = sext i8 %121 to i32
  %123 = load i8, i8* @ACS_HLINE, align 1
  %124 = sext i8 %123 to i32
  %125 = or i32 %122, %124
  %126 = trunc i32 %125 to i8
  %127 = call i32 @waddch(i32* %120, i8 signext %126)
  br label %163

128:                                              ; preds = %114
  %129 = load i32, i32* %16, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %140, label %131

131:                                              ; preds = %128
  %132 = load i32*, i32** %8, align 8
  %133 = load i8, i8* %14, align 1
  %134 = sext i8 %133 to i32
  %135 = load i8, i8* @ACS_VLINE, align 1
  %136 = sext i8 %135 to i32
  %137 = or i32 %134, %136
  %138 = trunc i32 %137 to i8
  %139 = call i32 @waddch(i32* %132, i8 signext %138)
  br label %162

140:                                              ; preds = %128
  %141 = load i32, i32* %16, align 4
  %142 = load i32, i32* %12, align 4
  %143 = sub nsw i32 %142, 1
  %144 = icmp eq i32 %141, %143
  br i1 %144, label %145, label %154

145:                                              ; preds = %140
  %146 = load i32*, i32** %8, align 8
  %147 = load i8, i8* %13, align 1
  %148 = sext i8 %147 to i32
  %149 = load i8, i8* @ACS_VLINE, align 1
  %150 = sext i8 %149 to i32
  %151 = or i32 %148, %150
  %152 = trunc i32 %151 to i8
  %153 = call i32 @waddch(i32* %146, i8 signext %152)
  br label %161

154:                                              ; preds = %140
  %155 = load i32*, i32** %8, align 8
  %156 = load i8, i8* %13, align 1
  %157 = sext i8 %156 to i32
  %158 = or i32 %157, 32
  %159 = trunc i32 %158 to i8
  %160 = call i32 @waddch(i32* %155, i8 signext %159)
  br label %161

161:                                              ; preds = %154, %145
  br label %162

162:                                              ; preds = %161, %131
  br label %163

163:                                              ; preds = %162, %119
  br label %164

164:                                              ; preds = %163, %105
  br label %165

165:                                              ; preds = %164, %93
  br label %166

166:                                              ; preds = %165, %74
  br label %167

167:                                              ; preds = %166, %57
  br label %168

168:                                              ; preds = %167, %40
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %16, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %16, align 4
  br label %30

172:                                              ; preds = %30
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %15, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %15, align 4
  br label %19

176:                                              ; preds = %19
  ret void
}

declare dso_local i32 @wattrset(i32*, i32) #1

declare dso_local i32 @wmove(i32*, i32, i32) #1

declare dso_local i32 @waddch(i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
