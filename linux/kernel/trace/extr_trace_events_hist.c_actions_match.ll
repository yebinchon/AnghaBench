; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_actions_match.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_actions_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_trigger_data = type { i32, %struct.action_data** }
%struct.action_data = type { i64, i64, i32, i8**, i8*, i8*, %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8*, i8* }

@HANDLER_ONMATCH = common dso_local global i64 0, align 8
@HANDLER_ONMAX = common dso_local global i64 0, align 8
@HANDLER_ONCHANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_trigger_data*, %struct.hist_trigger_data*)* @actions_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @actions_match(%struct.hist_trigger_data* %0, %struct.hist_trigger_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hist_trigger_data*, align 8
  %5 = alloca %struct.hist_trigger_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.action_data*, align 8
  %9 = alloca %struct.action_data*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %4, align 8
  store %struct.hist_trigger_data* %1, %struct.hist_trigger_data** %5, align 8
  %12 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %4, align 8
  %13 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %5, align 8
  %16 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %191

20:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %187, %20
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %4, align 8
  %24 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %190

27:                                               ; preds = %21
  %28 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %4, align 8
  %29 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %28, i32 0, i32 1
  %30 = load %struct.action_data**, %struct.action_data*** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.action_data*, %struct.action_data** %30, i64 %32
  %34 = load %struct.action_data*, %struct.action_data** %33, align 8
  store %struct.action_data* %34, %struct.action_data** %8, align 8
  %35 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %5, align 8
  %36 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %35, i32 0, i32 1
  %37 = load %struct.action_data**, %struct.action_data*** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.action_data*, %struct.action_data** %37, i64 %39
  %41 = load %struct.action_data*, %struct.action_data** %40, align 8
  store %struct.action_data* %41, %struct.action_data** %9, align 8
  %42 = load %struct.action_data*, %struct.action_data** %8, align 8
  %43 = getelementptr inbounds %struct.action_data, %struct.action_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.action_data*, %struct.action_data** %9, align 8
  %46 = getelementptr inbounds %struct.action_data, %struct.action_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %191

50:                                               ; preds = %27
  %51 = load %struct.action_data*, %struct.action_data** %8, align 8
  %52 = getelementptr inbounds %struct.action_data, %struct.action_data* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.action_data*, %struct.action_data** %9, align 8
  %55 = getelementptr inbounds %struct.action_data, %struct.action_data* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %191

59:                                               ; preds = %50
  %60 = load %struct.action_data*, %struct.action_data** %8, align 8
  %61 = getelementptr inbounds %struct.action_data, %struct.action_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.action_data*, %struct.action_data** %9, align 8
  %64 = getelementptr inbounds %struct.action_data, %struct.action_data* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %191

68:                                               ; preds = %59
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %94, %68
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.action_data*, %struct.action_data** %8, align 8
  %72 = getelementptr inbounds %struct.action_data, %struct.action_data* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp ult i32 %70, %73
  br i1 %74, label %75, label %97

75:                                               ; preds = %69
  %76 = load %struct.action_data*, %struct.action_data** %8, align 8
  %77 = getelementptr inbounds %struct.action_data, %struct.action_data* %76, i32 0, i32 3
  %78 = load i8**, i8*** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.action_data*, %struct.action_data** %9, align 8
  %84 = getelementptr inbounds %struct.action_data, %struct.action_data* %83, i32 0, i32 3
  %85 = load i8**, i8*** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @strcmp(i8* %82, i8* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %191

93:                                               ; preds = %75
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %7, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %69

97:                                               ; preds = %69
  %98 = load %struct.action_data*, %struct.action_data** %8, align 8
  %99 = getelementptr inbounds %struct.action_data, %struct.action_data* %98, i32 0, i32 8
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load %struct.action_data*, %struct.action_data** %8, align 8
  %104 = getelementptr inbounds %struct.action_data, %struct.action_data* %103, i32 0, i32 4
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** %10, align 8
  br label %110

106:                                              ; preds = %97
  %107 = load %struct.action_data*, %struct.action_data** %8, align 8
  %108 = getelementptr inbounds %struct.action_data, %struct.action_data* %107, i32 0, i32 5
  %109 = load i8*, i8** %108, align 8
  store i8* %109, i8** %10, align 8
  br label %110

110:                                              ; preds = %106, %102
  %111 = load %struct.action_data*, %struct.action_data** %9, align 8
  %112 = getelementptr inbounds %struct.action_data, %struct.action_data* %111, i32 0, i32 8
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load %struct.action_data*, %struct.action_data** %9, align 8
  %117 = getelementptr inbounds %struct.action_data, %struct.action_data* %116, i32 0, i32 4
  %118 = load i8*, i8** %117, align 8
  store i8* %118, i8** %11, align 8
  br label %123

119:                                              ; preds = %110
  %120 = load %struct.action_data*, %struct.action_data** %9, align 8
  %121 = getelementptr inbounds %struct.action_data, %struct.action_data* %120, i32 0, i32 5
  %122 = load i8*, i8** %121, align 8
  store i8* %122, i8** %11, align 8
  br label %123

123:                                              ; preds = %119, %115
  %124 = load i8*, i8** %10, align 8
  %125 = load i8*, i8** %11, align 8
  %126 = call i64 @strcmp(i8* %124, i8* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  store i32 0, i32* %3, align 4
  br label %191

129:                                              ; preds = %123
  %130 = load %struct.action_data*, %struct.action_data** %8, align 8
  %131 = getelementptr inbounds %struct.action_data, %struct.action_data* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @HANDLER_ONMATCH, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %160

135:                                              ; preds = %129
  %136 = load %struct.action_data*, %struct.action_data** %8, align 8
  %137 = getelementptr inbounds %struct.action_data, %struct.action_data* %136, i32 0, i32 7
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.action_data*, %struct.action_data** %9, align 8
  %141 = getelementptr inbounds %struct.action_data, %struct.action_data* %140, i32 0, i32 7
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = call i64 @strcmp(i8* %139, i8* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %135
  store i32 0, i32* %3, align 4
  br label %191

147:                                              ; preds = %135
  %148 = load %struct.action_data*, %struct.action_data** %8, align 8
  %149 = getelementptr inbounds %struct.action_data, %struct.action_data* %148, i32 0, i32 7
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 1
  %151 = load i8*, i8** %150, align 8
  %152 = load %struct.action_data*, %struct.action_data** %9, align 8
  %153 = getelementptr inbounds %struct.action_data, %struct.action_data* %152, i32 0, i32 7
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = call i64 @strcmp(i8* %151, i8* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %147
  store i32 0, i32* %3, align 4
  br label %191

159:                                              ; preds = %147
  br label %186

160:                                              ; preds = %129
  %161 = load %struct.action_data*, %struct.action_data** %8, align 8
  %162 = getelementptr inbounds %struct.action_data, %struct.action_data* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @HANDLER_ONMAX, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %172, label %166

166:                                              ; preds = %160
  %167 = load %struct.action_data*, %struct.action_data** %8, align 8
  %168 = getelementptr inbounds %struct.action_data, %struct.action_data* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @HANDLER_ONCHANGE, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %185

172:                                              ; preds = %166, %160
  %173 = load %struct.action_data*, %struct.action_data** %8, align 8
  %174 = getelementptr inbounds %struct.action_data, %struct.action_data* %173, i32 0, i32 6
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = load %struct.action_data*, %struct.action_data** %9, align 8
  %178 = getelementptr inbounds %struct.action_data, %struct.action_data* %177, i32 0, i32 6
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = call i64 @strcmp(i8* %176, i8* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %172
  store i32 0, i32* %3, align 4
  br label %191

184:                                              ; preds = %172
  br label %185

185:                                              ; preds = %184, %166
  br label %186

186:                                              ; preds = %185, %159
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %6, align 4
  %189 = add i32 %188, 1
  store i32 %189, i32* %6, align 4
  br label %21

190:                                              ; preds = %21
  store i32 1, i32* %3, align 4
  br label %191

191:                                              ; preds = %190, %183, %158, %146, %128, %92, %67, %58, %49, %19
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
