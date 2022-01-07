; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_op_to_str.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_op_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_event_filter = type { i32 }
%struct.tep_filter_arg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"(%s) %s (%s)\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%s(%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.tep_event_filter*, %struct.tep_filter_arg*)* @op_to_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @op_to_str(%struct.tep_event_filter* %0, %struct.tep_filter_arg* %1) #0 {
  %3 = alloca %struct.tep_event_filter*, align 8
  %4 = alloca %struct.tep_filter_arg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tep_event_filter* %0, %struct.tep_event_filter** %3, align 8
  store %struct.tep_filter_arg* %1, %struct.tep_filter_arg** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %12 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %4, align 8
  %13 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %183 [
    i32 130, label %16
    i32 128, label %17
    i32 129, label %149
  ]

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %17

17:                                               ; preds = %2, %16
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %21

21:                                               ; preds = %20, %17
  %22 = load %struct.tep_event_filter*, %struct.tep_event_filter** %3, align 8
  %23 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %4, align 8
  %24 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @arg_to_str(%struct.tep_event_filter* %22, i32 %26)
  store i8* %27, i8** %6, align 8
  %28 = load %struct.tep_event_filter*, %struct.tep_event_filter** %3, align 8
  %29 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %4, align 8
  %30 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @arg_to_str(%struct.tep_event_filter* %28, i32 %32)
  store i8* %33, i8** %7, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %21
  %37 = load i8*, i8** %7, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %36, %21
  br label %184

40:                                               ; preds = %36
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 1, i32* %9, align 4
  br label %51

45:                                               ; preds = %40
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %49, %45
  br label %51

51:                                               ; preds = %50, %44
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 1, i32* %10, align 4
  br label %62

56:                                               ; preds = %51
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %60, %56
  br label %62

62:                                               ; preds = %61, %55
  %63 = load i32, i32* %9, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %119

65:                                               ; preds = %62
  %66 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %4, align 8
  %67 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 130
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %71, %65
  %75 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %4, align 8
  %76 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 128
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80, %71
  %84 = load i8*, i8** %6, align 8
  store i8* %84, i8** %5, align 8
  store i8* null, i8** %6, align 8
  br label %184

85:                                               ; preds = %80, %74
  %86 = load i32, i32* %10, align 4
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %118

88:                                               ; preds = %85
  store i32 0, i32* %11, align 4
  %89 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %4, align 8
  %90 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  switch i32 %92, label %111 [
    i32 130, label %93
    i32 128, label %102
  ]

93:                                               ; preds = %88
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br label %99

99:                                               ; preds = %96, %93
  %100 = phi i1 [ false, %93 ], [ %98, %96 ]
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %11, align 4
  br label %112

102:                                              ; preds = %88
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br label %108

108:                                              ; preds = %105, %102
  %109 = phi i1 [ true, %102 ], [ %107, %105 ]
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %11, align 4
  br label %112

111:                                              ; preds = %88
  br label %112

112:                                              ; preds = %111, %108, %99
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %117 = call i32 (i8**, i8*, ...) @asprintf(i8** %5, i8* %116)
  br label %184

118:                                              ; preds = %85
  br label %119

119:                                              ; preds = %118, %62
  %120 = load i32, i32* %10, align 4
  %121 = icmp sge i32 %120, 0
  br i1 %121, label %122, label %144

122:                                              ; preds = %119
  %123 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %4, align 8
  %124 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 130
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %128, %122
  %132 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %4, align 8
  %133 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 128
  br i1 %136, label %137, label %142

137:                                              ; preds = %131
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %137, %128
  %141 = load i8*, i8** %7, align 8
  store i8* %141, i8** %5, align 8
  store i8* null, i8** %7, align 8
  br label %184

142:                                              ; preds = %137, %131
  %143 = load i8*, i8** %6, align 8
  store i8* %143, i8** %5, align 8
  store i8* null, i8** %6, align 8
  br label %184

144:                                              ; preds = %119
  %145 = load i8*, i8** %6, align 8
  %146 = load i8*, i8** %8, align 8
  %147 = load i8*, i8** %7, align 8
  %148 = call i32 (i8**, i8*, ...) @asprintf(i8** %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %145, i8* %146, i8* %147)
  br label %184

149:                                              ; preds = %2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  %150 = load %struct.tep_event_filter*, %struct.tep_event_filter** %3, align 8
  %151 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %4, align 8
  %152 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i8* @arg_to_str(%struct.tep_event_filter* %150, i32 %154)
  store i8* %155, i8** %7, align 8
  %156 = load i8*, i8** %7, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %159, label %158

158:                                              ; preds = %149
  br label %184

159:                                              ; preds = %149
  %160 = load i8*, i8** %7, align 8
  %161 = call i32 @strcmp(i8* %160, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  store i32 1, i32* %10, align 4
  br label %170

164:                                              ; preds = %159
  %165 = load i8*, i8** %7, align 8
  %166 = call i32 @strcmp(i8* %165, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  store i32 0, i32* %10, align 4
  br label %169

169:                                              ; preds = %168, %164
  br label %170

170:                                              ; preds = %169, %163
  %171 = load i32, i32* %10, align 4
  %172 = icmp sge i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %170
  %174 = load i32, i32* %10, align 4
  %175 = icmp ne i32 %174, 0
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %178 = call i32 (i8**, i8*, ...) @asprintf(i8** %5, i8* %177)
  br label %184

179:                                              ; preds = %170
  %180 = load i8*, i8** %8, align 8
  %181 = load i8*, i8** %7, align 8
  %182 = call i32 (i8**, i8*, ...) @asprintf(i8** %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %180, i8* %181)
  br label %184

183:                                              ; preds = %2
  br label %184

184:                                              ; preds = %183, %179, %173, %158, %144, %142, %140, %112, %83, %39
  %185 = load i8*, i8** %6, align 8
  %186 = call i32 @free(i8* %185)
  %187 = load i8*, i8** %7, align 8
  %188 = call i32 @free(i8* %187)
  %189 = load i8*, i8** %5, align 8
  ret i8* %189
}

declare dso_local i8* @arg_to_str(%struct.tep_event_filter*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
