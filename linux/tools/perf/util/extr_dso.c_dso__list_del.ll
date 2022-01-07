; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_dso.c_dso__list_del.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_dso.c_dso__list_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@dso__data_open_cnt = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"DSO data fd counter out of bounds.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dso*)* @dso__list_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dso__list_del(%struct.dso* %0) #0 {
  %2 = alloca %struct.dso*, align 8
  store %struct.dso* %0, %struct.dso** %2, align 8
  %3 = load %struct.dso*, %struct.dso** %2, align 8
  %4 = getelementptr inbounds %struct.dso, %struct.dso* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = call i32 @list_del_init(i32* %5)
  %7 = load i64, i64* @dso__data_open_cnt, align 8
  %8 = icmp sle i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @WARN_ONCE(i32 %9, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %11 = load i64, i64* @dso__data_open_cnt, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, i64* @dso__data_open_cnt, align 8
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
