; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_set_queue_limits.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_set_queue_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_link = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TIPC_MAX_PUBL = common dso_local global i32 0, align 4
@ITEM_SIZE = common dso_local global i32 0, align 4
@u16 = common dso_local global i32 0, align 4
@TIPC_LOW_IMPORTANCE = common dso_local global i64 0, align 8
@TIPC_MEDIUM_IMPORTANCE = common dso_local global i64 0, align 8
@TIPC_HIGH_IMPORTANCE = common dso_local global i64 0, align 8
@TIPC_CRITICAL_IMPORTANCE = common dso_local global i64 0, align 8
@TIPC_SYSTEM_IMPORTANCE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_link_set_queue_limits(%struct.tipc_link* %0, i32 %1) #0 {
  %3 = alloca %struct.tipc_link*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tipc_link* %0, %struct.tipc_link** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @TIPC_MAX_PUBL, align 4
  %7 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %8 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @ITEM_SIZE, align 4
  %11 = sdiv i32 %9, %10
  %12 = sdiv i32 %6, %11
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %15 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @u16, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i8* @max_t(i32 %16, i32 50, i32 %17)
  %19 = ptrtoint i8* %18 to i32
  %20 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %21 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i64, i64* @TIPC_LOW_IMPORTANCE, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %19, i32* %25, align 4
  %26 = load i32, i32* @u16, align 4
  %27 = load i32, i32* %4, align 4
  %28 = mul nsw i32 %27, 2
  %29 = call i8* @max_t(i32 %26, i32 100, i32 %28)
  %30 = ptrtoint i8* %29 to i32
  %31 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %32 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i64, i64* @TIPC_MEDIUM_IMPORTANCE, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %30, i32* %36, align 4
  %37 = load i32, i32* @u16, align 4
  %38 = load i32, i32* %4, align 4
  %39 = mul nsw i32 %38, 3
  %40 = call i8* @max_t(i32 %37, i32 150, i32 %39)
  %41 = ptrtoint i8* %40 to i32
  %42 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %43 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i64, i64* @TIPC_HIGH_IMPORTANCE, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %41, i32* %47, align 4
  %48 = load i32, i32* @u16, align 4
  %49 = load i32, i32* %4, align 4
  %50 = mul nsw i32 %49, 4
  %51 = call i8* @max_t(i32 %48, i32 200, i32 %50)
  %52 = ptrtoint i8* %51 to i32
  %53 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %54 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i64, i64* @TIPC_CRITICAL_IMPORTANCE, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %52, i32* %58, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.tipc_link*, %struct.tipc_link** %3, align 8
  %61 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i64, i64* @TIPC_SYSTEM_IMPORTANCE, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 %59, i32* %65, align 4
  ret void
}

declare dso_local i8* @max_t(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
