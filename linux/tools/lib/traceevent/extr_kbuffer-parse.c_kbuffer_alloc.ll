; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_kbuffer-parse.c_kbuffer_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_kbuffer-parse.c_kbuffer_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kbuffer = type { i32, i32, i32, i32, i32 }

@KBUFFER_FL_LONG_8 = common dso_local global i32 0, align 4
@KBUFFER_FL_BIG_ENDIAN = common dso_local global i32 0, align 4
@KBUFFER_FL_HOST_BIG_ENDIAN = common dso_local global i32 0, align 4
@__read_8_sw = common dso_local global i32 0, align 4
@__read_4_sw = common dso_local global i32 0, align 4
@__read_8 = common dso_local global i32 0, align 4
@__read_4 = common dso_local global i32 0, align 4
@__read_long_8 = common dso_local global i32 0, align 4
@__read_long_4 = common dso_local global i32 0, align 4
@__next_event = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kbuffer* @kbuffer_alloc(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.kbuffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.kbuffer*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %14 [
    i32 129, label %9
    i32 128, label %10
  ]

9:                                                ; preds = %2
  br label %15

10:                                               ; preds = %2
  %11 = load i32, i32* @KBUFFER_FL_LONG_8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %7, align 4
  br label %15

14:                                               ; preds = %2
  store %struct.kbuffer* null, %struct.kbuffer** %3, align 8
  br label %78

15:                                               ; preds = %10, %9
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %22 [
    i32 130, label %17
    i32 131, label %18
  ]

17:                                               ; preds = %15
  br label %23

18:                                               ; preds = %15
  %19 = load i32, i32* @KBUFFER_FL_BIG_ENDIAN, align 4
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  br label %23

22:                                               ; preds = %15
  store %struct.kbuffer* null, %struct.kbuffer** %3, align 8
  br label %78

23:                                               ; preds = %18, %17
  %24 = call %struct.kbuffer* @zmalloc(i32 20)
  store %struct.kbuffer* %24, %struct.kbuffer** %6, align 8
  %25 = load %struct.kbuffer*, %struct.kbuffer** %6, align 8
  %26 = icmp ne %struct.kbuffer* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store %struct.kbuffer* null, %struct.kbuffer** %3, align 8
  br label %78

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.kbuffer*, %struct.kbuffer** %6, align 8
  %31 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = call i64 (...) @host_is_bigendian()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load i32, i32* @KBUFFER_FL_HOST_BIG_ENDIAN, align 4
  %36 = load %struct.kbuffer*, %struct.kbuffer** %6, align 8
  %37 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %34, %28
  %41 = load %struct.kbuffer*, %struct.kbuffer** %6, align 8
  %42 = call i64 @do_swap(%struct.kbuffer* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i32, i32* @__read_8_sw, align 4
  %46 = load %struct.kbuffer*, %struct.kbuffer** %6, align 8
  %47 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @__read_4_sw, align 4
  %49 = load %struct.kbuffer*, %struct.kbuffer** %6, align 8
  %50 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  br label %58

51:                                               ; preds = %40
  %52 = load i32, i32* @__read_8, align 4
  %53 = load %struct.kbuffer*, %struct.kbuffer** %6, align 8
  %54 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @__read_4, align 4
  %56 = load %struct.kbuffer*, %struct.kbuffer** %6, align 8
  %57 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %51, %44
  %59 = load %struct.kbuffer*, %struct.kbuffer** %6, align 8
  %60 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @KBUFFER_FL_LONG_8, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i32, i32* @__read_long_8, align 4
  %67 = load %struct.kbuffer*, %struct.kbuffer** %6, align 8
  %68 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  br label %73

69:                                               ; preds = %58
  %70 = load i32, i32* @__read_long_4, align 4
  %71 = load %struct.kbuffer*, %struct.kbuffer** %6, align 8
  %72 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %69, %65
  %74 = load i32, i32* @__next_event, align 4
  %75 = load %struct.kbuffer*, %struct.kbuffer** %6, align 8
  %76 = getelementptr inbounds %struct.kbuffer, %struct.kbuffer* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.kbuffer*, %struct.kbuffer** %6, align 8
  store %struct.kbuffer* %77, %struct.kbuffer** %3, align 8
  br label %78

78:                                               ; preds = %73, %27, %22, %14
  %79 = load %struct.kbuffer*, %struct.kbuffer** %3, align 8
  ret %struct.kbuffer* %79
}

declare dso_local %struct.kbuffer* @zmalloc(i32) #1

declare dso_local i64 @host_is_bigendian(...) #1

declare dso_local i64 @do_swap(%struct.kbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
