; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_unwind_entry.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_unwind_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.unwind_entry = type { i32*, i32, i32 }
%struct.callchain_cursor = type { i32 }

@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.unwind_entry*, i8*)* @unwind_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unwind_entry(%struct.unwind_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.unwind_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.callchain_cursor*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.unwind_entry* %0, %struct.unwind_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.callchain_cursor*
  store %struct.callchain_cursor* %10, %struct.callchain_cursor** %6, align 8
  store i8* null, i8** %7, align 8
  %11 = load %struct.unwind_entry*, %struct.unwind_entry** %4, align 8
  %12 = getelementptr inbounds %struct.unwind_entry, %struct.unwind_entry* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.unwind_entry*, %struct.unwind_entry** %4, align 8
  %18 = getelementptr inbounds %struct.unwind_entry, %struct.unwind_entry* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %70

22:                                               ; preds = %16, %2
  %23 = load %struct.callchain_cursor*, %struct.callchain_cursor** %6, align 8
  %24 = load %struct.unwind_entry*, %struct.unwind_entry** %4, align 8
  %25 = getelementptr inbounds %struct.unwind_entry, %struct.unwind_entry* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.unwind_entry*, %struct.unwind_entry** %4, align 8
  %28 = getelementptr inbounds %struct.unwind_entry, %struct.unwind_entry* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.unwind_entry*, %struct.unwind_entry** %4, align 8
  %31 = getelementptr inbounds %struct.unwind_entry, %struct.unwind_entry* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @append_inlines(%struct.callchain_cursor* %23, i32 %26, i32* %29, i32 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %70

36:                                               ; preds = %22
  %37 = load %struct.unwind_entry*, %struct.unwind_entry** %4, align 8
  %38 = getelementptr inbounds %struct.unwind_entry, %struct.unwind_entry* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.unwind_entry*, %struct.unwind_entry** %4, align 8
  %43 = getelementptr inbounds %struct.unwind_entry, %struct.unwind_entry* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.unwind_entry*, %struct.unwind_entry** %4, align 8
  %46 = getelementptr inbounds %struct.unwind_entry, %struct.unwind_entry* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @map__map_ip(i32 %44, i32 %47)
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %41, %36
  %50 = load %struct.unwind_entry*, %struct.unwind_entry** %4, align 8
  %51 = getelementptr inbounds %struct.unwind_entry, %struct.unwind_entry* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.unwind_entry*, %struct.unwind_entry** %4, align 8
  %54 = getelementptr inbounds %struct.unwind_entry, %struct.unwind_entry* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i8* @callchain_srcline(i32 %52, i32* %55, i32 %56)
  store i8* %57, i8** %7, align 8
  %58 = load %struct.callchain_cursor*, %struct.callchain_cursor** %6, align 8
  %59 = load %struct.unwind_entry*, %struct.unwind_entry** %4, align 8
  %60 = getelementptr inbounds %struct.unwind_entry, %struct.unwind_entry* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.unwind_entry*, %struct.unwind_entry** %4, align 8
  %63 = getelementptr inbounds %struct.unwind_entry, %struct.unwind_entry* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.unwind_entry*, %struct.unwind_entry** %4, align 8
  %66 = getelementptr inbounds %struct.unwind_entry, %struct.unwind_entry* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @callchain_cursor_append(%struct.callchain_cursor* %58, i32 %61, i32 %64, i32* %67, i32 0, i32* null, i32 0, i32 0, i32 0, i8* %68)
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %49, %35, %21
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @append_inlines(%struct.callchain_cursor*, i32, i32*, i32) #1

declare dso_local i32 @map__map_ip(i32, i32) #1

declare dso_local i8* @callchain_srcline(i32, i32*, i32) #1

declare dso_local i32 @callchain_cursor_append(%struct.callchain_cursor*, i32, i32, i32*, i32, i32*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
