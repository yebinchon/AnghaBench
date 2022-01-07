; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_mem-events.c_c2c_add_stats.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_mem-events.c_c2c_add_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2c_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c2c_add_stats(%struct.c2c_stats* %0, %struct.c2c_stats* %1) #0 {
  %3 = alloca %struct.c2c_stats*, align 8
  %4 = alloca %struct.c2c_stats*, align 8
  store %struct.c2c_stats* %0, %struct.c2c_stats** %3, align 8
  store %struct.c2c_stats* %1, %struct.c2c_stats** %4, align 8
  %5 = load %struct.c2c_stats*, %struct.c2c_stats** %4, align 8
  %6 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %5, i32 0, i32 25
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.c2c_stats*, %struct.c2c_stats** %3, align 8
  %9 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %8, i32 0, i32 25
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, %7
  store i64 %11, i64* %9, align 8
  %12 = load %struct.c2c_stats*, %struct.c2c_stats** %4, align 8
  %13 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %12, i32 0, i32 24
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.c2c_stats*, %struct.c2c_stats** %3, align 8
  %16 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %15, i32 0, i32 24
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, %14
  store i64 %18, i64* %16, align 8
  %19 = load %struct.c2c_stats*, %struct.c2c_stats** %4, align 8
  %20 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %19, i32 0, i32 23
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.c2c_stats*, %struct.c2c_stats** %3, align 8
  %23 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %22, i32 0, i32 23
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, %21
  store i64 %25, i64* %23, align 8
  %26 = load %struct.c2c_stats*, %struct.c2c_stats** %4, align 8
  %27 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %26, i32 0, i32 22
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.c2c_stats*, %struct.c2c_stats** %3, align 8
  %30 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %29, i32 0, i32 22
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, %28
  store i64 %32, i64* %30, align 8
  %33 = load %struct.c2c_stats*, %struct.c2c_stats** %4, align 8
  %34 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %33, i32 0, i32 21
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.c2c_stats*, %struct.c2c_stats** %3, align 8
  %37 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %36, i32 0, i32 21
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, %35
  store i64 %39, i64* %37, align 8
  %40 = load %struct.c2c_stats*, %struct.c2c_stats** %4, align 8
  %41 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %40, i32 0, i32 20
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.c2c_stats*, %struct.c2c_stats** %3, align 8
  %44 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %43, i32 0, i32 20
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load %struct.c2c_stats*, %struct.c2c_stats** %4, align 8
  %48 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %47, i32 0, i32 19
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.c2c_stats*, %struct.c2c_stats** %3, align 8
  %51 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %50, i32 0, i32 19
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, %49
  store i64 %53, i64* %51, align 8
  %54 = load %struct.c2c_stats*, %struct.c2c_stats** %4, align 8
  %55 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %54, i32 0, i32 18
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.c2c_stats*, %struct.c2c_stats** %3, align 8
  %58 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %57, i32 0, i32 18
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, %56
  store i64 %60, i64* %58, align 8
  %61 = load %struct.c2c_stats*, %struct.c2c_stats** %4, align 8
  %62 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %61, i32 0, i32 17
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.c2c_stats*, %struct.c2c_stats** %3, align 8
  %65 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %64, i32 0, i32 17
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, %63
  store i64 %67, i64* %65, align 8
  %68 = load %struct.c2c_stats*, %struct.c2c_stats** %4, align 8
  %69 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %68, i32 0, i32 16
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.c2c_stats*, %struct.c2c_stats** %3, align 8
  %72 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %71, i32 0, i32 16
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, %70
  store i64 %74, i64* %72, align 8
  %75 = load %struct.c2c_stats*, %struct.c2c_stats** %4, align 8
  %76 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %75, i32 0, i32 15
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.c2c_stats*, %struct.c2c_stats** %3, align 8
  %79 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %78, i32 0, i32 15
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, %77
  store i64 %81, i64* %79, align 8
  %82 = load %struct.c2c_stats*, %struct.c2c_stats** %4, align 8
  %83 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %82, i32 0, i32 14
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.c2c_stats*, %struct.c2c_stats** %3, align 8
  %86 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %85, i32 0, i32 14
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, %84
  store i64 %88, i64* %86, align 8
  %89 = load %struct.c2c_stats*, %struct.c2c_stats** %4, align 8
  %90 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %89, i32 0, i32 13
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.c2c_stats*, %struct.c2c_stats** %3, align 8
  %93 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %92, i32 0, i32 13
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, %91
  store i64 %95, i64* %93, align 8
  %96 = load %struct.c2c_stats*, %struct.c2c_stats** %4, align 8
  %97 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %96, i32 0, i32 12
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.c2c_stats*, %struct.c2c_stats** %3, align 8
  %100 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %99, i32 0, i32 12
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, %98
  store i64 %102, i64* %100, align 8
  %103 = load %struct.c2c_stats*, %struct.c2c_stats** %4, align 8
  %104 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %103, i32 0, i32 11
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.c2c_stats*, %struct.c2c_stats** %3, align 8
  %107 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %106, i32 0, i32 11
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, %105
  store i64 %109, i64* %107, align 8
  %110 = load %struct.c2c_stats*, %struct.c2c_stats** %4, align 8
  %111 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %110, i32 0, i32 10
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.c2c_stats*, %struct.c2c_stats** %3, align 8
  %114 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %113, i32 0, i32 10
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %115, %112
  store i64 %116, i64* %114, align 8
  %117 = load %struct.c2c_stats*, %struct.c2c_stats** %4, align 8
  %118 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %117, i32 0, i32 9
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.c2c_stats*, %struct.c2c_stats** %3, align 8
  %121 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %120, i32 0, i32 9
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, %119
  store i64 %123, i64* %121, align 8
  %124 = load %struct.c2c_stats*, %struct.c2c_stats** %4, align 8
  %125 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %124, i32 0, i32 8
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.c2c_stats*, %struct.c2c_stats** %3, align 8
  %128 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %127, i32 0, i32 8
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, %126
  store i64 %130, i64* %128, align 8
  %131 = load %struct.c2c_stats*, %struct.c2c_stats** %4, align 8
  %132 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %131, i32 0, i32 7
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.c2c_stats*, %struct.c2c_stats** %3, align 8
  %135 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %134, i32 0, i32 7
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, %133
  store i64 %137, i64* %135, align 8
  %138 = load %struct.c2c_stats*, %struct.c2c_stats** %4, align 8
  %139 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %138, i32 0, i32 6
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.c2c_stats*, %struct.c2c_stats** %3, align 8
  %142 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %141, i32 0, i32 6
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %143, %140
  store i64 %144, i64* %142, align 8
  %145 = load %struct.c2c_stats*, %struct.c2c_stats** %4, align 8
  %146 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %145, i32 0, i32 5
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.c2c_stats*, %struct.c2c_stats** %3, align 8
  %149 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %148, i32 0, i32 5
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, %147
  store i64 %151, i64* %149, align 8
  %152 = load %struct.c2c_stats*, %struct.c2c_stats** %4, align 8
  %153 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %152, i32 0, i32 4
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.c2c_stats*, %struct.c2c_stats** %3, align 8
  %156 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %155, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = add nsw i64 %157, %154
  store i64 %158, i64* %156, align 8
  %159 = load %struct.c2c_stats*, %struct.c2c_stats** %4, align 8
  %160 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.c2c_stats*, %struct.c2c_stats** %3, align 8
  %163 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %164, %161
  store i64 %165, i64* %163, align 8
  %166 = load %struct.c2c_stats*, %struct.c2c_stats** %4, align 8
  %167 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.c2c_stats*, %struct.c2c_stats** %3, align 8
  %170 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %171, %168
  store i64 %172, i64* %170, align 8
  %173 = load %struct.c2c_stats*, %struct.c2c_stats** %4, align 8
  %174 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.c2c_stats*, %struct.c2c_stats** %3, align 8
  %177 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = add nsw i64 %178, %175
  store i64 %179, i64* %177, align 8
  %180 = load %struct.c2c_stats*, %struct.c2c_stats** %4, align 8
  %181 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.c2c_stats*, %struct.c2c_stats** %3, align 8
  %184 = getelementptr inbounds %struct.c2c_stats, %struct.c2c_stats* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %185, %182
  store i64 %186, i64* %184, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
