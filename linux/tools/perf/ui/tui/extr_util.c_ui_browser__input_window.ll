; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/tui/extr_util.c_ui_browser__input_window.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/tui/extr_util.c_ui_browser__input_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ui_browser__input_window.buf = internal global [50 x i8] zeroinitializer, align 16
@ui__lock = common dso_local global i32 0, align 4
@SLtt_Screen_Rows = common dso_local global i32 0, align 4
@SLtt_Screen_Cols = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@K_TIMER = common dso_local global i32 0, align 4
@K_ENTER = common dso_local global i32 0, align 4
@K_ESC = common dso_local global i32 0, align 4
@K_BKSPC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"maximum size of symbol name reached!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ui_browser__input_window(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 60, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %19 = load i8*, i8** %7, align 8
  store i8* %19, i8** %17, align 8
  br label %20

20:                                               ; preds = %5, %48
  %21 = load i8*, i8** %17, align 8
  %22 = call i8* @strchr(i8* %21, i8 signext 10)
  store i8* %22, i8** %18, align 8
  %23 = load i8*, i8** %18, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i8*, i8** %17, align 8
  %27 = call i8* @strchr(i8* %26, i8 signext 0)
  store i8* %27, i8** %18, align 8
  br label %28

28:                                               ; preds = %25, %20
  %29 = load i8*, i8** %18, align 8
  %30 = load i8*, i8** %17, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %15, align 4
  br label %40

40:                                               ; preds = %38, %28
  %41 = load i32, i32* %16, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %16, align 4
  %43 = load i8*, i8** %18, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %51

48:                                               ; preds = %40
  %49 = load i8*, i8** %18, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  store i8* %50, i8** %17, align 8
  br label %20

51:                                               ; preds = %47
  %52 = call i32 @pthread_mutex_lock(i32* @ui__lock)
  %53 = load i32, i32* %15, align 4
  %54 = add nsw i32 %53, 2
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %16, align 4
  %56 = add nsw i32 %55, 8
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* @SLtt_Screen_Rows, align 4
  %58 = sdiv i32 %57, 2
  %59 = load i32, i32* %16, align 4
  %60 = sdiv i32 %59, 2
  %61 = sub nsw i32 %58, %60
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* @SLtt_Screen_Cols, align 4
  %63 = sdiv i32 %62, 2
  %64 = load i32, i32* %15, align 4
  %65 = sdiv i32 %64, 2
  %66 = sub nsw i32 %63, %65
  store i32 %66, i32* %11, align 4
  %67 = call i32 @SLsmg_set_color(i32 0)
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @SLsmg_draw_box(i32 %68, i32 %69, i32 %71, i32 %72)
  %74 = load i8*, i8** %6, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %51
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  %80 = call i32 @SLsmg_gotorc(i32 %77, i32 %79)
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @SLsmg_write_string(i8* %81)
  br label %83

83:                                               ; preds = %76, %51
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @SLsmg_gotorc(i32 %85, i32 %86)
  %88 = load i32, i32* %16, align 4
  %89 = sub nsw i32 %88, 7
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %15, align 4
  %91 = sub nsw i32 %90, 2
  store i32 %91, i32* %15, align 4
  %92 = load i8*, i8** %7, align 8
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %15, align 4
  %97 = call i32 @SLsmg_write_wrapped_string(i8* %92, i32 %93, i32 %94, i32 %95, i32 %96, i32 1)
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %12, align 4
  store i32 5, i32* %13, align 4
  br label %101

101:                                              ; preds = %105, %83
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %13, align 4
  %104 = icmp ne i32 %102, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %101
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %106, %107
  %109 = sub nsw i32 %108, 1
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @SLsmg_gotorc(i32 %109, i32 %110)
  %112 = load i32, i32* %15, align 4
  %113 = call i32 @SLsmg_write_nstring(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %112)
  br label %101

114:                                              ; preds = %101
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  %119 = load i32, i32* %15, align 4
  %120 = sub nsw i32 %119, 2
  %121 = call i32 @SLsmg_draw_box(i32 %115, i32 %118, i32 3, i32 %120)
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 3
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @SLsmg_gotorc(i32 %123, i32 %124)
  %126 = load i8*, i8** %9, align 8
  %127 = load i32, i32* %15, align 4
  %128 = call i32 @SLsmg_write_nstring(i8* %126, i32 %127)
  %129 = call i32 (...) @SLsmg_refresh()
  %130 = call i32 @pthread_mutex_unlock(i32* @ui__lock)
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, 2
  store i32 %132, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %133 = load i32, i32* %10, align 4
  %134 = call i32 @ui__getch(i32 %133)
  store i32 %134, i32* %14, align 4
  br label %135

135:                                              ; preds = %191, %114
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* @K_TIMER, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %147

139:                                              ; preds = %135
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* @K_ENTER, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = load i32, i32* %14, align 4
  %145 = load i32, i32* @K_ESC, align 4
  %146 = icmp ne i32 %144, %145
  br label %147

147:                                              ; preds = %143, %139, %135
  %148 = phi i1 [ false, %139 ], [ false, %135 ], [ %146, %143 ]
  br i1 %148, label %149, label %194

149:                                              ; preds = %147
  %150 = call i32 @pthread_mutex_lock(i32* @ui__lock)
  %151 = load i32, i32* %14, align 4
  %152 = load i32, i32* @K_BKSPC, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %167

154:                                              ; preds = %149
  %155 = load i32, i32* %13, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = call i32 @pthread_mutex_unlock(i32* @ui__lock)
  br label %191

159:                                              ; preds = %154
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* %13, align 4
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %13, align 4
  %164 = add nsw i32 %161, %163
  %165 = call i32 @SLsmg_gotorc(i32 %160, i32 %164)
  %166 = call i32 @SLsmg_write_char(i32 32)
  br label %181

167:                                              ; preds = %149
  %168 = load i32, i32* %14, align 4
  %169 = trunc i32 %168 to i8
  %170 = load i32, i32* %13, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [50 x i8], [50 x i8]* @ui_browser__input_window.buf, i64 0, i64 %171
  store i8 %169, i8* %172, align 1
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* %13, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %13, align 4
  %177 = add nsw i32 %174, %175
  %178 = call i32 @SLsmg_gotorc(i32 %173, i32 %177)
  %179 = load i32, i32* %14, align 4
  %180 = call i32 @SLsmg_write_char(i32 %179)
  br label %181

181:                                              ; preds = %167, %159
  %182 = call i32 (...) @SLsmg_refresh()
  %183 = call i32 @pthread_mutex_unlock(i32* @ui__lock)
  %184 = load i32, i32* %13, align 4
  %185 = sext i32 %184 to i64
  %186 = icmp eq i64 %185, 49
  br i1 %186, label %187, label %190

187:                                              ; preds = %181
  %188 = call i32 @ui_helpline__push(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %189 = load i32, i32* @K_ENTER, align 4
  store i32 %189, i32* %14, align 4
  br label %194

190:                                              ; preds = %181
  br label %191

191:                                              ; preds = %190, %157
  %192 = load i32, i32* %10, align 4
  %193 = call i32 @ui__getch(i32 %192)
  store i32 %193, i32* %14, align 4
  br label %135

194:                                              ; preds = %187, %147
  %195 = load i32, i32* %13, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [50 x i8], [50 x i8]* @ui_browser__input_window.buf, i64 0, i64 %196
  store i8 0, i8* %197, align 1
  %198 = load i8*, i8** %8, align 8
  %199 = load i32, i32* %13, align 4
  %200 = add nsw i32 %199, 1
  %201 = call i32 @strncpy(i8* %198, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @ui_browser__input_window.buf, i64 0, i64 0), i32 %200)
  %202 = load i32, i32* %14, align 4
  ret i32 %202
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @SLsmg_set_color(i32) #1

declare dso_local i32 @SLsmg_draw_box(i32, i32, i32, i32) #1

declare dso_local i32 @SLsmg_gotorc(i32, i32) #1

declare dso_local i32 @SLsmg_write_string(i8*) #1

declare dso_local i32 @SLsmg_write_wrapped_string(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SLsmg_write_nstring(i8*, i32) #1

declare dso_local i32 @SLsmg_refresh(...) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @ui__getch(i32) #1

declare dso_local i32 @SLsmg_write_char(i32) #1

declare dso_local i32 @ui_helpline__push(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
