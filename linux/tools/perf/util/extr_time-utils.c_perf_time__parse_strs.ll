; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_time-utils.c_perf_time__parse_strs.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_time-utils.c_perf_time__parse_strs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_time_interval = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_time_interval*, i8*, i32)* @perf_time__parse_strs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_time__parse_strs(%struct.perf_time_interval* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_time_interval*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.perf_time_interval* %0, %struct.perf_time_interval** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %8, align 8
  br label %16

16:                                               ; preds = %30, %3
  %17 = load i8*, i8** %8, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load i8*, i8** %8, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 44
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %13, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %13, align 4
  br label %30

30:                                               ; preds = %20
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %8, align 8
  br label %16

33:                                               ; preds = %16
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %153

39:                                               ; preds = %33
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp sgt i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load i8*, i8** %6, align 8
  %46 = call i8* @strdup(i8* %45)
  store i8* %46, i8** %9, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %39
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %153

52:                                               ; preds = %39
  store i32 0, i32* %12, align 4
  %53 = load i8*, i8** %9, align 8
  store i8* %53, i8** %11, align 8
  br label %54

54:                                               ; preds = %106, %52
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %13, align 4
  %57 = sub nsw i32 %56, 1
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %109

59:                                               ; preds = %54
  %60 = load i8*, i8** %11, align 8
  store i8* %60, i8** %10, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = call i64 @strchr(i8* %61, i8 signext 44)
  %63 = add nsw i64 %62, 1
  %64 = call i8* @skip_spaces(i64 %63)
  store i8* %64, i8** %11, align 8
  br label %65

65:                                               ; preds = %87, %59
  %66 = load i8*, i8** %11, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i8*, i8** %11, align 8
  %72 = load i8, i8* %71, align 1
  %73 = call i32 @isspace(i8 signext %72)
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  br label %76

76:                                               ; preds = %70, %65
  %77 = phi i1 [ false, %65 ], [ %75, %70 ]
  br i1 %77, label %78, label %88

78:                                               ; preds = %76
  %79 = load i8*, i8** %11, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %11, align 8
  %81 = load i8, i8* %79, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 44
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %14, align 4
  br label %149

87:                                               ; preds = %78
  br label %65

88:                                               ; preds = %76
  %89 = load i8*, i8** %11, align 8
  %90 = load i8, i8* %89, align 1
  %91 = icmp ne i8 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i8*, i8** %11, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %11, align 8
  store i8 0, i8* %93, align 1
  br label %95

95:                                               ; preds = %92, %88
  %96 = load %struct.perf_time_interval*, %struct.perf_time_interval** %5, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.perf_time_interval, %struct.perf_time_interval* %96, i64 %98
  %100 = load i8*, i8** %10, align 8
  %101 = call i32 @perf_time__parse_str(%struct.perf_time_interval* %99, i8* %100)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  br label %149

105:                                              ; preds = %95
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %12, align 4
  br label %54

109:                                              ; preds = %54
  %110 = load %struct.perf_time_interval*, %struct.perf_time_interval** %5, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.perf_time_interval, %struct.perf_time_interval* %110, i64 %112
  %114 = load i8*, i8** %11, align 8
  %115 = call i32 @perf_time__parse_str(%struct.perf_time_interval* %113, i8* %114)
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %14, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %109
  br label %149

119:                                              ; preds = %109
  store i32 0, i32* %12, align 4
  br label %120

120:                                              ; preds = %144, %119
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %13, align 4
  %123 = sub nsw i32 %122, 1
  %124 = icmp slt i32 %121, %123
  br i1 %124, label %125, label %147

125:                                              ; preds = %120
  %126 = load %struct.perf_time_interval*, %struct.perf_time_interval** %5, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.perf_time_interval, %struct.perf_time_interval* %126, i64 %128
  %130 = getelementptr inbounds %struct.perf_time_interval, %struct.perf_time_interval* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.perf_time_interval*, %struct.perf_time_interval** %5, align 8
  %133 = load i32, i32* %12, align 4
  %134 = add nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.perf_time_interval, %struct.perf_time_interval* %132, i64 %135
  %137 = getelementptr inbounds %struct.perf_time_interval, %struct.perf_time_interval* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp sge i64 %131, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %125
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %14, align 4
  br label %149

143:                                              ; preds = %125
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %12, align 4
  br label %120

147:                                              ; preds = %120
  %148 = load i32, i32* %13, align 4
  store i32 %148, i32* %14, align 4
  br label %149

149:                                              ; preds = %147, %140, %118, %104, %84
  %150 = load i8*, i8** %9, align 8
  %151 = call i32 @free(i8* %150)
  %152 = load i32, i32* %14, align 4
  store i32 %152, i32* %4, align 4
  br label %153

153:                                              ; preds = %149, %49, %36
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @skip_spaces(i64) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i32 @perf_time__parse_str(%struct.perf_time_interval*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
