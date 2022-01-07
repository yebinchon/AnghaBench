; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c___symbol__account_cycles.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c___symbol__account_cycles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyc_hist = type { i32, i32, i32, i64, i32, i32, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyc_hist*, i64, i32, i32, i32)* @__symbol__account_cycles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__symbol__account_cycles(%struct.cyc_hist* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cyc_hist*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cyc_hist* %0, %struct.cyc_hist** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load %struct.cyc_hist*, %struct.cyc_hist** %7, align 8
  %13 = load i32, i32* %9, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %12, i64 %14
  %16 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.cyc_hist*, %struct.cyc_hist** %7, align 8
  %21 = load i32, i32* %9, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %20, i64 %22
  %24 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = add i32 %25, %19
  store i32 %26, i32* %24, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.cyc_hist*, %struct.cyc_hist** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %28, i64 %30
  %32 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ugt i32 %27, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %5
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.cyc_hist*, %struct.cyc_hist** %7, align 8
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %37, i64 %39
  %41 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %40, i32 0, i32 0
  store i32 %36, i32* %41, align 8
  br label %42

42:                                               ; preds = %35, %5
  %43 = load %struct.cyc_hist*, %struct.cyc_hist** %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %43, i64 %45
  %47 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %42
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %50
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.cyc_hist*, %struct.cyc_hist** %7, align 8
  %56 = load i32, i32* %9, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %55, i64 %57
  %59 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ult i32 %54, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %53
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.cyc_hist*, %struct.cyc_hist** %7, align 8
  %65 = load i32, i32* %9, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %64, i64 %66
  %68 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %67, i32 0, i32 1
  store i32 %63, i32* %68, align 4
  br label %69

69:                                               ; preds = %62, %53, %50
  br label %77

70:                                               ; preds = %42
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.cyc_hist*, %struct.cyc_hist** %7, align 8
  %73 = load i32, i32* %9, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %72, i64 %74
  %76 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %75, i32 0, i32 1
  store i32 %71, i32* %76, align 4
  br label %77

77:                                               ; preds = %70, %69
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %77
  %81 = load %struct.cyc_hist*, %struct.cyc_hist** %7, align 8
  %82 = load i32, i32* %9, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %81, i64 %83
  %85 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  store i32 0, i32* %6, align 4
  br label %192

89:                                               ; preds = %80, %77
  %90 = load %struct.cyc_hist*, %struct.cyc_hist** %7, align 8
  %91 = load i32, i32* %9, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %90, i64 %92
  %94 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %93, i32 0, i32 6
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %164

97:                                               ; preds = %89
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %149

100:                                              ; preds = %97
  %101 = load %struct.cyc_hist*, %struct.cyc_hist** %7, align 8
  %102 = load i32, i32* %9, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %101, i64 %103
  %105 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %100
  %109 = load %struct.cyc_hist*, %struct.cyc_hist** %7, align 8
  %110 = load i32, i32* %9, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %109, i64 %111
  %113 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %8, align 8
  %116 = icmp sgt i64 %114, %115
  br i1 %116, label %117, label %149

117:                                              ; preds = %108, %100
  %118 = load %struct.cyc_hist*, %struct.cyc_hist** %7, align 8
  %119 = load i32, i32* %9, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %118, i64 %120
  %122 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %121, i32 0, i32 2
  store i32 0, i32* %122, align 8
  %123 = load %struct.cyc_hist*, %struct.cyc_hist** %7, align 8
  %124 = load i32, i32* %9, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %123, i64 %125
  %127 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %126, i32 0, i32 4
  store i32 0, i32* %127, align 8
  %128 = load %struct.cyc_hist*, %struct.cyc_hist** %7, align 8
  %129 = load i32, i32* %9, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %128, i64 %130
  %132 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %131, i32 0, i32 6
  store i64 0, i64* %132, align 8
  %133 = load %struct.cyc_hist*, %struct.cyc_hist** %7, align 8
  %134 = load i32, i32* %9, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %133, i64 %135
  %137 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = icmp slt i32 %138, 65535
  br i1 %139, label %140, label %148

140:                                              ; preds = %117
  %141 = load %struct.cyc_hist*, %struct.cyc_hist** %7, align 8
  %142 = load i32, i32* %9, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %141, i64 %143
  %145 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %140, %117
  br label %163

149:                                              ; preds = %108, %97
  %150 = load i32, i32* %11, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %162

152:                                              ; preds = %149
  %153 = load %struct.cyc_hist*, %struct.cyc_hist** %7, align 8
  %154 = load i32, i32* %9, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %153, i64 %155
  %157 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* %8, align 8
  %160 = icmp slt i64 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %152
  store i32 0, i32* %6, align 4
  br label %192

162:                                              ; preds = %152, %149
  br label %163

163:                                              ; preds = %162, %148
  br label %164

164:                                              ; preds = %163, %89
  %165 = load i32, i32* %11, align 4
  %166 = load %struct.cyc_hist*, %struct.cyc_hist** %7, align 8
  %167 = load i32, i32* %9, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %166, i64 %168
  %170 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %169, i32 0, i32 2
  store i32 %165, i32* %170, align 8
  %171 = load i64, i64* %8, align 8
  %172 = load %struct.cyc_hist*, %struct.cyc_hist** %7, align 8
  %173 = load i32, i32* %9, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %172, i64 %174
  %176 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %175, i32 0, i32 3
  store i64 %171, i64* %176, align 8
  %177 = load i32, i32* %10, align 4
  %178 = load %struct.cyc_hist*, %struct.cyc_hist** %7, align 8
  %179 = load i32, i32* %9, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %178, i64 %180
  %182 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = add i32 %183, %177
  store i32 %184, i32* %182, align 8
  %185 = load %struct.cyc_hist*, %struct.cyc_hist** %7, align 8
  %186 = load i32, i32* %9, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %185, i64 %187
  %189 = getelementptr inbounds %struct.cyc_hist, %struct.cyc_hist* %188, i32 0, i32 6
  %190 = load i64, i64* %189, align 8
  %191 = add nsw i64 %190, 1
  store i64 %191, i64* %189, align 8
  store i32 0, i32* %6, align 4
  br label %192

192:                                              ; preds = %164, %161, %88
  %193 = load i32, i32* %6, align 4
  ret i32 %193
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
