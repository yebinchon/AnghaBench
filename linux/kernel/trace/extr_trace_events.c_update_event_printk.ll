; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c_update_event_printk.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c_update_event_printk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_event_call = type { i8* }
%struct.trace_eval_map = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_event_call*, %struct.trace_eval_map*)* @update_event_printk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_event_printk(%struct.trace_event_call* %0, %struct.trace_eval_map* %1) #0 {
  %3 = alloca %struct.trace_event_call*, align 8
  %4 = alloca %struct.trace_eval_map*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.trace_event_call* %0, %struct.trace_event_call** %3, align 8
  store %struct.trace_eval_map* %1, %struct.trace_eval_map** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.trace_eval_map*, %struct.trace_eval_map** %4, align 8
  %9 = getelementptr inbounds %struct.trace_eval_map, %struct.trace_eval_map* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @strlen(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.trace_event_call*, %struct.trace_event_call** %3, align 8
  %13 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %5, align 8
  br label %15

15:                                               ; preds = %167, %2
  %16 = load i8*, i8** %5, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %19, label %170

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 92
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %170

31:                                               ; preds = %24
  br label %167

32:                                               ; preds = %19
  %33 = load i8*, i8** %5, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 34
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = xor i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %167

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %167

44:                                               ; preds = %40
  %45 = load i8*, i8** %5, align 8
  %46 = load i8, i8* %45, align 1
  %47 = call i64 @isdigit(i8 signext %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %53, %49
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %5, align 8
  br label %53

53:                                               ; preds = %50
  %54 = load i8*, i8** %5, align 8
  %55 = load i8, i8* %54, align 1
  %56 = call i64 @isalnum(i8 signext %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %50, label %58

58:                                               ; preds = %53
  %59 = load i8*, i8** %5, align 8
  %60 = load i8, i8* %59, align 1
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  br label %170

63:                                               ; preds = %58
  br label %167

64:                                               ; preds = %44
  %65 = load i8*, i8** %5, align 8
  %66 = load i8, i8* %65, align 1
  %67 = call i64 @isalpha(i8 signext %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load i8*, i8** %5, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 95
  br i1 %73, label %74, label %166

74:                                               ; preds = %69, %64
  %75 = load %struct.trace_eval_map*, %struct.trace_eval_map** %4, align 8
  %76 = getelementptr inbounds %struct.trace_eval_map, %struct.trace_eval_map* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i8*, i8** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i64 @strncmp(i32 %77, i8* %78, i32 %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %111

82:                                               ; preds = %74
  %83 = load i8*, i8** %5, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = call i64 @isalnum(i8 signext %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %111, label %90

90:                                               ; preds = %82
  %91 = load i8*, i8** %5, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 95
  br i1 %97, label %98, label %111

98:                                               ; preds = %90
  %99 = load i8*, i8** %5, align 8
  %100 = load %struct.trace_eval_map*, %struct.trace_eval_map** %4, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i8* @eval_replace(i8* %99, %struct.trace_eval_map* %100, i32 %101)
  store i8* %102, i8** %5, align 8
  %103 = load i8*, i8** %5, align 8
  %104 = icmp ne i8* %103, null
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = call i64 @WARN_ON_ONCE(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %98
  br label %170

110:                                              ; preds = %98
  br label %167

111:                                              ; preds = %90, %82, %74
  br label %112

112:                                              ; preds = %164, %111
  br label %113

113:                                              ; preds = %126, %112
  %114 = load i8*, i8** %5, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %5, align 8
  br label %116

116:                                              ; preds = %113
  %117 = load i8*, i8** %5, align 8
  %118 = load i8, i8* %117, align 1
  %119 = call i64 @isalnum(i8 signext %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %116
  %122 = load i8*, i8** %5, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 95
  br label %126

126:                                              ; preds = %121, %116
  %127 = phi i1 [ true, %116 ], [ %125, %121 ]
  br i1 %127, label %113, label %128

128:                                              ; preds = %126
  %129 = load i8*, i8** %5, align 8
  %130 = load i8, i8* %129, align 1
  %131 = icmp ne i8 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %128
  br label %170

133:                                              ; preds = %128
  %134 = load i8*, i8** %5, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 46
  br i1 %137, label %150, label %138

138:                                              ; preds = %133
  %139 = load i8*, i8** %5, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 0
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 45
  br i1 %143, label %144, label %165

144:                                              ; preds = %138
  %145 = load i8*, i8** %5, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 1
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 62
  br i1 %149, label %150, label %165

150:                                              ; preds = %144, %133
  %151 = load i8*, i8** %5, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 46
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i32 1, i32 2
  %157 = load i8*, i8** %5, align 8
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i8, i8* %157, i64 %158
  store i8* %159, i8** %5, align 8
  %160 = load i8*, i8** %5, align 8
  %161 = load i8, i8* %160, align 1
  %162 = icmp ne i8 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %150
  br label %170

164:                                              ; preds = %150
  br label %112

165:                                              ; preds = %144, %138
  br label %167

166:                                              ; preds = %69
  br label %167

167:                                              ; preds = %166, %165, %110, %63, %43, %37, %31
  %168 = load i8*, i8** %5, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %5, align 8
  br label %15

170:                                              ; preds = %109, %163, %132, %62, %30, %15
  ret void
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i64 @isalnum(i8 signext) #1

declare dso_local i64 @isalpha(i8 signext) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i8* @eval_replace(i8*, %struct.trace_eval_map*, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
