; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_fill_callchain_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_fill_callchain_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addr_location = type { i8, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }
%struct.callchain_cursor_node = type { i32, i32, i32*, %struct.TYPE_3__* }

@PERF_RECORD_MISC_KERNEL = common dso_local global i32 0, align 4
@PERF_RECORD_MISC_GUEST_KERNEL = common dso_local global i32 0, align 4
@PERF_RECORD_MISC_USER = common dso_local global i32 0, align 4
@perf_guest = common dso_local global i64 0, align 8
@PERF_RECORD_MISC_GUEST_USER = common dso_local global i32 0, align 4
@PERF_RECORD_MISC_HYPERVISOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fill_callchain_info(%struct.addr_location* %0, %struct.callchain_cursor_node* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.addr_location*, align 8
  %6 = alloca %struct.callchain_cursor_node*, align 8
  %7 = alloca i32, align 4
  store %struct.addr_location* %0, %struct.addr_location** %5, align 8
  store %struct.callchain_cursor_node* %1, %struct.callchain_cursor_node** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %6, align 8
  %9 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %8, i32 0, i32 3
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %12 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %11, i32 0, i32 3
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %12, align 8
  %13 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %6, align 8
  %14 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %17 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %16, i32 0, i32 4
  store i32* %15, i32** %17, align 8
  %18 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %6, align 8
  %19 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %22 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 4
  %23 = load %struct.callchain_cursor_node*, %struct.callchain_cursor_node** %6, align 8
  %24 = getelementptr inbounds %struct.callchain_cursor_node, %struct.callchain_cursor_node* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %27 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %29 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %3
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %104

36:                                               ; preds = %32
  %37 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %38 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %37, i32 0, i32 3
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = icmp eq %struct.TYPE_3__* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %103

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %3
  %44 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %45 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %44, i32 0, i32 3
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %50 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = icmp eq i32* %48, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %43
  %55 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %56 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = call i64 @machine__is_host(%struct.TYPE_4__* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load i32, i32* @PERF_RECORD_MISC_KERNEL, align 4
  %62 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %63 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %65 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %64, i32 0, i32 0
  store i8 107, i8* %65, align 8
  br label %72

66:                                               ; preds = %54
  %67 = load i32, i32* @PERF_RECORD_MISC_GUEST_KERNEL, align 4
  %68 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %69 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %71 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %70, i32 0, i32 0
  store i8 103, i8* %71, align 8
  br label %72

72:                                               ; preds = %66, %60
  br label %102

73:                                               ; preds = %43
  %74 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %75 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %74, i32 0, i32 2
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = call i64 @machine__is_host(%struct.TYPE_4__* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load i32, i32* @PERF_RECORD_MISC_USER, align 4
  %81 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %82 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %84 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %83, i32 0, i32 0
  store i8 46, i8* %84, align 8
  br label %101

85:                                               ; preds = %73
  %86 = load i64, i64* @perf_guest, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load i32, i32* @PERF_RECORD_MISC_GUEST_USER, align 4
  %90 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %91 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %93 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %92, i32 0, i32 0
  store i8 117, i8* %93, align 8
  br label %100

94:                                               ; preds = %85
  %95 = load i32, i32* @PERF_RECORD_MISC_HYPERVISOR, align 4
  %96 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %97 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.addr_location*, %struct.addr_location** %5, align 8
  %99 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %98, i32 0, i32 0
  store i8 72, i8* %99, align 8
  br label %100

100:                                              ; preds = %94, %88
  br label %101

101:                                              ; preds = %100, %79
  br label %102

102:                                              ; preds = %101, %72
  br label %103

103:                                              ; preds = %102, %41
  store i32 1, i32* %4, align 4
  br label %104

104:                                              ; preds = %103, %35
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i64 @machine__is_host(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
