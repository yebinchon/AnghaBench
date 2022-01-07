; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_clear_counters.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_clear_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.msr_counter*, %struct.msr_counter*, %struct.msr_counter* }
%struct.msr_counter = type { %struct.msr_counter* }
%struct.thread_data = type { i32, i64*, i64, i64, i64, i64, i64, i64, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.core_data = type { i64*, i64, i64, i64, i64, i64, i64 }
%struct.pkg_data = type { i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@CPU_IS_FIRST_THREAD_IN_CORE = common dso_local global i32 0, align 4
@CPU_IS_FIRST_CORE_IN_PACKAGE = common dso_local global i32 0, align 4
@BIC_Pkgpc3 = common dso_local global i32 0, align 4
@BIC_Pkgpc6 = common dso_local global i32 0, align 4
@BIC_Pkgpc7 = common dso_local global i32 0, align 4
@sys = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_counters(%struct.thread_data* %0, %struct.core_data* %1, %struct.pkg_data* %2) #0 {
  %4 = alloca %struct.thread_data*, align 8
  %5 = alloca %struct.core_data*, align 8
  %6 = alloca %struct.pkg_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.msr_counter*, align 8
  store %struct.thread_data* %0, %struct.thread_data** %4, align 8
  store %struct.core_data* %1, %struct.core_data** %5, align 8
  store %struct.pkg_data* %2, %struct.pkg_data** %6, align 8
  %9 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %10 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %9, i32 0, i32 10
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %13 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %12, i32 0, i32 10
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %16 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %15, i32 0, i32 9
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %19 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %18, i32 0, i32 9
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %22 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %21, i32 0, i32 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %25 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %24, i32 0, i32 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %28 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %27, i32 0, i32 7
  store i64 0, i64* %28, align 8
  %29 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %30 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %29, i32 0, i32 6
  store i64 0, i64* %30, align 8
  %31 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %32 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %31, i32 0, i32 5
  store i64 0, i64* %32, align 8
  %33 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %34 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %33, i32 0, i32 4
  store i64 0, i64* %34, align 8
  %35 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %36 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %38 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* @CPU_IS_FIRST_THREAD_IN_CORE, align 4
  %40 = load i32, i32* @CPU_IS_FIRST_CORE_IN_PACKAGE, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %43 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.core_data*, %struct.core_data** %5, align 8
  %45 = getelementptr inbounds %struct.core_data, %struct.core_data* %44, i32 0, i32 6
  store i64 0, i64* %45, align 8
  %46 = load %struct.core_data*, %struct.core_data** %5, align 8
  %47 = getelementptr inbounds %struct.core_data, %struct.core_data* %46, i32 0, i32 5
  store i64 0, i64* %47, align 8
  %48 = load %struct.core_data*, %struct.core_data** %5, align 8
  %49 = getelementptr inbounds %struct.core_data, %struct.core_data* %48, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = load %struct.core_data*, %struct.core_data** %5, align 8
  %51 = getelementptr inbounds %struct.core_data, %struct.core_data* %50, i32 0, i32 3
  store i64 0, i64* %51, align 8
  %52 = load %struct.core_data*, %struct.core_data** %5, align 8
  %53 = getelementptr inbounds %struct.core_data, %struct.core_data* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load %struct.core_data*, %struct.core_data** %5, align 8
  %55 = getelementptr inbounds %struct.core_data, %struct.core_data* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %57 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %56, i32 0, i32 22
  store i64 0, i64* %57, align 8
  %58 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %59 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %58, i32 0, i32 21
  store i64 0, i64* %59, align 8
  %60 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %61 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %60, i32 0, i32 20
  store i64 0, i64* %61, align 8
  %62 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %63 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %62, i32 0, i32 19
  store i64 0, i64* %63, align 8
  %64 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %65 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %64, i32 0, i32 18
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* @BIC_Pkgpc3, align 4
  %67 = call i64 @DO_BIC(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %3
  %70 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %71 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %70, i32 0, i32 17
  store i64 0, i64* %71, align 8
  br label %72

72:                                               ; preds = %69, %3
  %73 = load i32, i32* @BIC_Pkgpc6, align 4
  %74 = call i64 @DO_BIC(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %78 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %77, i32 0, i32 16
  store i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %76, %72
  %80 = load i32, i32* @BIC_Pkgpc7, align 4
  %81 = call i64 @DO_BIC(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %85 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %84, i32 0, i32 15
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %83, %79
  %87 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %88 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %87, i32 0, i32 14
  store i64 0, i64* %88, align 8
  %89 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %90 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %89, i32 0, i32 13
  store i64 0, i64* %90, align 8
  %91 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %92 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %91, i32 0, i32 12
  store i64 0, i64* %92, align 8
  %93 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %94 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %93, i32 0, i32 11
  store i64 0, i64* %94, align 8
  %95 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %96 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %95, i32 0, i32 10
  store i64 0, i64* %96, align 8
  %97 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %98 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %97, i32 0, i32 9
  store i64 0, i64* %98, align 8
  %99 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %100 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %99, i32 0, i32 8
  store i64 0, i64* %100, align 8
  %101 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %102 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %101, i32 0, i32 7
  store i64 0, i64* %102, align 8
  %103 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %104 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %103, i32 0, i32 6
  store i64 0, i64* %104, align 8
  %105 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %106 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %105, i32 0, i32 5
  store i64 0, i64* %106, align 8
  %107 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %108 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %107, i32 0, i32 4
  store i64 0, i64* %108, align 8
  %109 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %110 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %109, i32 0, i32 3
  store i64 0, i64* %110, align 8
  %111 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %112 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %111, i32 0, i32 2
  store i64 0, i64* %112, align 8
  %113 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %114 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %113, i32 0, i32 1
  store i64 0, i64* %114, align 8
  store i32 0, i32* %7, align 4
  %115 = load %struct.msr_counter*, %struct.msr_counter** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sys, i32 0, i32 2), align 8
  store %struct.msr_counter* %115, %struct.msr_counter** %8, align 8
  br label %116

116:                                              ; preds = %126, %86
  %117 = load %struct.msr_counter*, %struct.msr_counter** %8, align 8
  %118 = icmp ne %struct.msr_counter* %117, null
  br i1 %118, label %119, label %132

119:                                              ; preds = %116
  %120 = load %struct.thread_data*, %struct.thread_data** %4, align 8
  %121 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %120, i32 0, i32 1
  %122 = load i64*, i64** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  store i64 0, i64* %125, align 8
  br label %126

126:                                              ; preds = %119
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %7, align 4
  %129 = load %struct.msr_counter*, %struct.msr_counter** %8, align 8
  %130 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %129, i32 0, i32 0
  %131 = load %struct.msr_counter*, %struct.msr_counter** %130, align 8
  store %struct.msr_counter* %131, %struct.msr_counter** %8, align 8
  br label %116

132:                                              ; preds = %116
  store i32 0, i32* %7, align 4
  %133 = load %struct.msr_counter*, %struct.msr_counter** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sys, i32 0, i32 1), align 8
  store %struct.msr_counter* %133, %struct.msr_counter** %8, align 8
  br label %134

134:                                              ; preds = %144, %132
  %135 = load %struct.msr_counter*, %struct.msr_counter** %8, align 8
  %136 = icmp ne %struct.msr_counter* %135, null
  br i1 %136, label %137, label %150

137:                                              ; preds = %134
  %138 = load %struct.core_data*, %struct.core_data** %5, align 8
  %139 = getelementptr inbounds %struct.core_data, %struct.core_data* %138, i32 0, i32 0
  %140 = load i64*, i64** %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i64, i64* %140, i64 %142
  store i64 0, i64* %143, align 8
  br label %144

144:                                              ; preds = %137
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %7, align 4
  %147 = load %struct.msr_counter*, %struct.msr_counter** %8, align 8
  %148 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %147, i32 0, i32 0
  %149 = load %struct.msr_counter*, %struct.msr_counter** %148, align 8
  store %struct.msr_counter* %149, %struct.msr_counter** %8, align 8
  br label %134

150:                                              ; preds = %134
  store i32 0, i32* %7, align 4
  %151 = load %struct.msr_counter*, %struct.msr_counter** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sys, i32 0, i32 0), align 8
  store %struct.msr_counter* %151, %struct.msr_counter** %8, align 8
  br label %152

152:                                              ; preds = %162, %150
  %153 = load %struct.msr_counter*, %struct.msr_counter** %8, align 8
  %154 = icmp ne %struct.msr_counter* %153, null
  br i1 %154, label %155, label %168

155:                                              ; preds = %152
  %156 = load %struct.pkg_data*, %struct.pkg_data** %6, align 8
  %157 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %156, i32 0, i32 0
  %158 = load i64*, i64** %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %158, i64 %160
  store i64 0, i64* %161, align 8
  br label %162

162:                                              ; preds = %155
  %163 = load i32, i32* %7, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %7, align 4
  %165 = load %struct.msr_counter*, %struct.msr_counter** %8, align 8
  %166 = getelementptr inbounds %struct.msr_counter, %struct.msr_counter* %165, i32 0, i32 0
  %167 = load %struct.msr_counter*, %struct.msr_counter** %166, align 8
  store %struct.msr_counter* %167, %struct.msr_counter** %8, align 8
  br label %152

168:                                              ; preds = %152
  ret void
}

declare dso_local i64 @DO_BIC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
