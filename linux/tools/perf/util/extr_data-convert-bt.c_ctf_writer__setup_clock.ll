; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_ctf_writer__setup_clock.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_ctf_writer__setup_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctf_writer = type { %struct.bt_ctf_clock* }
%struct.bt_ctf_clock = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"perf clock\00", align 1
@frequency = common dso_local global i32 0, align 4
@is_absolute = common dso_local global i32 0, align 4
@offset = common dso_local global i32 0, align 4
@offset_s = common dso_local global i32 0, align 4
@precision = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctf_writer*)* @ctf_writer__setup_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctf_writer__setup_clock(%struct.ctf_writer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctf_writer*, align 8
  %4 = alloca %struct.bt_ctf_clock*, align 8
  store %struct.ctf_writer* %0, %struct.ctf_writer** %3, align 8
  %5 = load %struct.ctf_writer*, %struct.ctf_writer** %3, align 8
  %6 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %5, i32 0, i32 0
  %7 = load %struct.bt_ctf_clock*, %struct.bt_ctf_clock** %6, align 8
  store %struct.bt_ctf_clock* %7, %struct.bt_ctf_clock** %4, align 8
  %8 = load %struct.bt_ctf_clock*, %struct.bt_ctf_clock** %4, align 8
  %9 = call i32 @bt_ctf_clock_set_description(%struct.bt_ctf_clock* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %1
  %11 = load %struct.bt_ctf_clock*, %struct.bt_ctf_clock** %4, align 8
  %12 = call i32 (%struct.bt_ctf_clock*, i32, ...) bitcast (i32 (...)* @bt_ctf_clock_set_frequency to i32 (%struct.bt_ctf_clock*, i32, ...)*)(%struct.bt_ctf_clock* %11, i32 1000000000)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 -1, i32* %2, align 4
  br label %45

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %15
  br label %17

17:                                               ; preds = %16
  %18 = load %struct.bt_ctf_clock*, %struct.bt_ctf_clock** %4, align 8
  %19 = call i32 (%struct.bt_ctf_clock*, i32, ...) bitcast (i32 (...)* @bt_ctf_clock_set_offset_s to i32 (%struct.bt_ctf_clock*, i32, ...)*)(%struct.bt_ctf_clock* %18, i32 0)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 -1, i32* %2, align 4
  br label %45

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.bt_ctf_clock*, %struct.bt_ctf_clock** %4, align 8
  %26 = call i32 (%struct.bt_ctf_clock*, i32, ...) bitcast (i32 (...)* @bt_ctf_clock_set_offset to i32 (%struct.bt_ctf_clock*, i32, ...)*)(%struct.bt_ctf_clock* %25, i32 0)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 -1, i32* %2, align 4
  br label %45

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %29
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.bt_ctf_clock*, %struct.bt_ctf_clock** %4, align 8
  %33 = call i32 (%struct.bt_ctf_clock*, i32, ...) bitcast (i32 (...)* @bt_ctf_clock_set_precision to i32 (%struct.bt_ctf_clock*, i32, ...)*)(%struct.bt_ctf_clock* %32, i32 10)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 -1, i32* %2, align 4
  br label %45

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.bt_ctf_clock*, %struct.bt_ctf_clock** %4, align 8
  %40 = call i32 (%struct.bt_ctf_clock*, i32, ...) bitcast (i32 (...)* @bt_ctf_clock_set_is_absolute to i32 (%struct.bt_ctf_clock*, i32, ...)*)(%struct.bt_ctf_clock* %39, i32 0)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 -1, i32* %2, align 4
  br label %45

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %42, %35, %28, %21, %14
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @bt_ctf_clock_set_description(%struct.bt_ctf_clock*, i8*) #1

declare dso_local i32 @bt_ctf_clock_set_frequency(...) #1

declare dso_local i32 @bt_ctf_clock_set_offset_s(...) #1

declare dso_local i32 @bt_ctf_clock_set_offset(...) #1

declare dso_local i32 @bt_ctf_clock_set_precision(...) #1

declare dso_local i32 @bt_ctf_clock_set_is_absolute(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
