; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/lib/extr_cpumap.c_perf_cpu_map__new.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/lib/extr_cpumap.c_perf_cpu_map__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_cpu_map = type { i32 }

@INT_MAX = common dso_local global i64 0, align 8
@MAX_NR_CPUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"Perf can support %d CPUs. Consider raising MAX_NR_CPUS\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.perf_cpu_map* @perf_cpu_map__new(i8* %0) #0 {
  %2 = alloca %struct.perf_cpu_map*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.perf_cpu_map*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.perf_cpu_map* null, %struct.perf_cpu_map** %4, align 8
  store i64 0, i64* %6, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %9, align 4
  store i32* null, i32** %10, align 8
  store i32 0, i32* %12, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = call %struct.perf_cpu_map* (...) @cpu_map__read_all_cpu_map()
  store %struct.perf_cpu_map* %16, %struct.perf_cpu_map** %2, align 8
  br label %182

17:                                               ; preds = %1
  %18 = load i8*, i8** %3, align 8
  %19 = load i8, i8* %18, align 1
  %20 = call i64 @isdigit(i8 signext %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load i8*, i8** %3, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %180

28:                                               ; preds = %22, %17
  br label %29

29:                                               ; preds = %157, %28
  %30 = load i8*, i8** %3, align 8
  %31 = load i8, i8* %30, align 1
  %32 = call i64 @isdigit(i8 signext %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %159

34:                                               ; preds = %29
  store i8* null, i8** %7, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = call i64 @strtoul(i8* %35, i8** %7, i32 0)
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @INT_MAX, align 8
  %39 = icmp uge i64 %37, %38
  br i1 %39, label %55, label %40

40:                                               ; preds = %34
  %41 = load i8*, i8** %7, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load i8*, i8** %7, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 44
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i8*, i8** %7, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 45
  br i1 %54, label %55, label %56

55:                                               ; preds = %50, %34
  br label %177

56:                                               ; preds = %50, %45, %40
  %57 = load i8*, i8** %7, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 45
  br i1 %60, label %61, label %86

61:                                               ; preds = %56
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %7, align 8
  store i8* %63, i8** %3, align 8
  store i8* null, i8** %7, align 8
  %64 = load i8*, i8** %3, align 8
  %65 = call i64 @strtoul(i8* %64, i8** %7, i32 0)
  store i64 %65, i64* %6, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* @INT_MAX, align 8
  %68 = icmp uge i64 %66, %67
  br i1 %68, label %79, label %69

69:                                               ; preds = %61
  %70 = load i8*, i8** %7, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i8*, i8** %7, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 44
  br i1 %78, label %79, label %80

79:                                               ; preds = %74, %61
  br label %177

80:                                               ; preds = %74, %69
  %81 = load i64, i64* %6, align 8
  %82 = load i64, i64* %5, align 8
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %177

85:                                               ; preds = %80
  br label %88

86:                                               ; preds = %56
  %87 = load i64, i64* %5, align 8
  store i64 %87, i64* %6, align 8
  br label %88

88:                                               ; preds = %86, %85
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* @MAX_NR_CPUS, align 8
  %91 = icmp uge i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i64, i64* @MAX_NR_CPUS, align 8
  %94 = call i32 @WARN_ONCE(i32 %92, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %93)
  br label %95

95:                                               ; preds = %147, %88
  %96 = load i64, i64* %5, align 8
  %97 = load i64, i64* %6, align 8
  %98 = icmp ule i64 %96, %97
  br i1 %98, label %99, label %150

99:                                               ; preds = %95
  store i32 0, i32* %8, align 4
  br label %100

100:                                              ; preds = %115, %99
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %118

104:                                              ; preds = %100
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i64, i64* %5, align 8
  %111 = trunc i64 %110 to i32
  %112 = icmp eq i32 %109, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %104
  br label %177

114:                                              ; preds = %104
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %100

118:                                              ; preds = %100
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %139

122:                                              ; preds = %118
  %123 = load i64, i64* @MAX_NR_CPUS, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = add i64 %125, %123
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %12, align 4
  %128 = load i32*, i32** %10, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = mul i64 %130, 4
  %132 = trunc i64 %131 to i32
  %133 = call i32* @realloc(i32* %128, i32 %132)
  store i32* %133, i32** %11, align 8
  %134 = load i32*, i32** %11, align 8
  %135 = icmp eq i32* %134, null
  br i1 %135, label %136, label %137

136:                                              ; preds = %122
  br label %177

137:                                              ; preds = %122
  %138 = load i32*, i32** %11, align 8
  store i32* %138, i32** %10, align 8
  br label %139

139:                                              ; preds = %137, %118
  %140 = load i64, i64* %5, align 8
  %141 = trunc i64 %140 to i32
  %142 = load i32*, i32** %10, align 8
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %9, align 4
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i32, i32* %142, i64 %145
  store i32 %141, i32* %146, align 4
  br label %147

147:                                              ; preds = %139
  %148 = load i64, i64* %5, align 8
  %149 = add i64 %148, 1
  store i64 %149, i64* %5, align 8
  br label %95

150:                                              ; preds = %95
  %151 = load i8*, i8** %7, align 8
  %152 = load i8, i8* %151, align 1
  %153 = icmp ne i8 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = load i8*, i8** %7, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %7, align 8
  br label %157

157:                                              ; preds = %154, %150
  %158 = load i8*, i8** %7, align 8
  store i8* %158, i8** %3, align 8
  br label %29

159:                                              ; preds = %29
  %160 = load i32, i32* %9, align 4
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load i32, i32* %9, align 4
  %164 = load i32*, i32** %10, align 8
  %165 = call %struct.perf_cpu_map* @cpu_map__trim_new(i32 %163, i32* %164)
  store %struct.perf_cpu_map* %165, %struct.perf_cpu_map** %4, align 8
  br label %176

166:                                              ; preds = %159
  %167 = load i8*, i8** %3, align 8
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = call %struct.perf_cpu_map* (...) @cpu_map__default_new()
  store %struct.perf_cpu_map* %172, %struct.perf_cpu_map** %4, align 8
  br label %175

173:                                              ; preds = %166
  %174 = call %struct.perf_cpu_map* (...) @perf_cpu_map__dummy_new()
  store %struct.perf_cpu_map* %174, %struct.perf_cpu_map** %4, align 8
  br label %175

175:                                              ; preds = %173, %171
  br label %176

176:                                              ; preds = %175, %162
  br label %177

177:                                              ; preds = %176, %136, %113, %84, %79, %55
  %178 = load i32*, i32** %10, align 8
  %179 = call i32 @free(i32* %178)
  br label %180

180:                                              ; preds = %177, %27
  %181 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %4, align 8
  store %struct.perf_cpu_map* %181, %struct.perf_cpu_map** %2, align 8
  br label %182

182:                                              ; preds = %180, %15
  %183 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %2, align 8
  ret %struct.perf_cpu_map* %183
}

declare dso_local %struct.perf_cpu_map* @cpu_map__read_all_cpu_map(...) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i64) #1

declare dso_local i32* @realloc(i32*, i32) #1

declare dso_local %struct.perf_cpu_map* @cpu_map__trim_new(i32, i32*) #1

declare dso_local %struct.perf_cpu_map* @cpu_map__default_new(...) #1

declare dso_local %struct.perf_cpu_map* @perf_cpu_map__dummy_new(...) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
