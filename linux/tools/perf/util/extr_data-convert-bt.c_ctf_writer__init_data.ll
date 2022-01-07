; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_ctf_writer__init_data.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_ctf_writer__init_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctf_writer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Failed to create data types.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctf_writer*)* @ctf_writer__init_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctf_writer__init_data(%struct.ctf_writer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctf_writer*, align 8
  store %struct.ctf_writer* %0, %struct.ctf_writer** %3, align 8
  br label %4

4:                                                ; preds = %1
  %5 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @create_int_type to i32 (i32, i32, i32, ...)*)(i32 64, i32 1, i32 0)
  %6 = load %struct.ctf_writer*, %struct.ctf_writer** %3, align 8
  %7 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 6
  store i32 %5, i32* %8, align 4
  %9 = load %struct.ctf_writer*, %struct.ctf_writer** %3, align 8
  %10 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  br label %93

15:                                               ; preds = %4
  br label %16

16:                                               ; preds = %15
  br label %17

17:                                               ; preds = %16
  %18 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @create_int_type to i32 (i32, i32, i32, ...)*)(i32 64, i32 0, i32 0)
  %19 = load %struct.ctf_writer*, %struct.ctf_writer** %3, align 8
  %20 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 5
  store i32 %18, i32* %21, align 8
  %22 = load %struct.ctf_writer*, %struct.ctf_writer** %3, align 8
  %23 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %17
  br label %93

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28
  br label %30

30:                                               ; preds = %29
  %31 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @create_int_type to i32 (i32, i32, i32, ...)*)(i32 32, i32 1, i32 0)
  %32 = load %struct.ctf_writer*, %struct.ctf_writer** %3, align 8
  %33 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 4
  store i32 %31, i32* %34, align 4
  %35 = load %struct.ctf_writer*, %struct.ctf_writer** %3, align 8
  %36 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %30
  br label %93

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %42
  %44 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @create_int_type to i32 (i32, i32, i32, ...)*)(i32 32, i32 0, i32 0)
  %45 = load %struct.ctf_writer*, %struct.ctf_writer** %3, align 8
  %46 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  store i32 %44, i32* %47, align 8
  %48 = load %struct.ctf_writer*, %struct.ctf_writer** %3, align 8
  %49 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %43
  br label %93

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55
  %57 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @create_int_type to i32 (i32, i32, i32, ...)*)(i32 32, i32 0, i32 1)
  %58 = load %struct.ctf_writer*, %struct.ctf_writer** %3, align 8
  %59 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 4
  %61 = load %struct.ctf_writer*, %struct.ctf_writer** %3, align 8
  %62 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %56
  br label %93

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68
  %70 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @create_int_type to i32 (i32, i32, i32, ...)*)(i32 64, i32 0, i32 1)
  %71 = load %struct.ctf_writer*, %struct.ctf_writer** %3, align 8
  %72 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 8
  %74 = load %struct.ctf_writer*, %struct.ctf_writer** %3, align 8
  %75 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %69
  br label %93

80:                                               ; preds = %69
  br label %81

81:                                               ; preds = %80
  %82 = call i64 (...) @bt_ctf_field_type_string_create()
  %83 = load %struct.ctf_writer*, %struct.ctf_writer** %3, align 8
  %84 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i64 %82, i64* %85, align 8
  %86 = load %struct.ctf_writer*, %struct.ctf_writer** %3, align 8
  %87 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  store i32 0, i32* %2, align 4
  br label %97

92:                                               ; preds = %81
  br label %93

93:                                               ; preds = %92, %79, %66, %53, %40, %27, %14
  %94 = load %struct.ctf_writer*, %struct.ctf_writer** %3, align 8
  %95 = call i32 @ctf_writer__cleanup_data(%struct.ctf_writer* %94)
  %96 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %97

97:                                               ; preds = %93, %91
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @create_int_type(...) #1

declare dso_local i64 @bt_ctf_field_type_string_create(...) #1

declare dso_local i32 @ctf_writer__cleanup_data(%struct.ctf_writer*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
