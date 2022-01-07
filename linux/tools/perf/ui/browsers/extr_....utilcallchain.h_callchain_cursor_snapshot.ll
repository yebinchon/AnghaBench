; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_....utilcallchain.h_callchain_cursor_snapshot.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_....utilcallchain.h_callchain_cursor_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callchain_cursor = type { i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.callchain_cursor*, %struct.callchain_cursor*)* @callchain_cursor_snapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @callchain_cursor_snapshot(%struct.callchain_cursor* %0, %struct.callchain_cursor* %1) #0 {
  %3 = alloca %struct.callchain_cursor*, align 8
  %4 = alloca %struct.callchain_cursor*, align 8
  store %struct.callchain_cursor* %0, %struct.callchain_cursor** %3, align 8
  store %struct.callchain_cursor* %1, %struct.callchain_cursor** %4, align 8
  %5 = load %struct.callchain_cursor*, %struct.callchain_cursor** %3, align 8
  %6 = load %struct.callchain_cursor*, %struct.callchain_cursor** %4, align 8
  %7 = bitcast %struct.callchain_cursor* %5 to i8*
  %8 = bitcast %struct.callchain_cursor* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 24, i1 false)
  %9 = load %struct.callchain_cursor*, %struct.callchain_cursor** %4, align 8
  %10 = getelementptr inbounds %struct.callchain_cursor, %struct.callchain_cursor* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.callchain_cursor*, %struct.callchain_cursor** %3, align 8
  %13 = getelementptr inbounds %struct.callchain_cursor, %struct.callchain_cursor* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 8
  %14 = load %struct.callchain_cursor*, %struct.callchain_cursor** %4, align 8
  %15 = getelementptr inbounds %struct.callchain_cursor, %struct.callchain_cursor* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.callchain_cursor*, %struct.callchain_cursor** %3, align 8
  %18 = getelementptr inbounds %struct.callchain_cursor, %struct.callchain_cursor* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = sub nsw i64 %20, %16
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %18, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
