; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_strbuf.h_strbuf_avail.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_strbuf.h_strbuf_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.strbuf*)* @strbuf_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @strbuf_avail(%struct.strbuf* %0) #0 {
  %2 = alloca %struct.strbuf*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %2, align 8
  %3 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %4 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %9 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %12 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %10, %13
  %15 = sub nsw i64 %14, 1
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %7
  %18 = phi i64 [ %15, %7 ], [ 0, %16 ]
  ret i64 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
