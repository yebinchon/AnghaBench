; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_cmdline_slot_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_cmdline_slot_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_cmdline = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmdline_slot_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmdline_slot_cmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tep_cmdline*, align 8
  %7 = alloca %struct.tep_cmdline*, align 8
  %8 = alloca %struct.tep_cmdline*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.tep_cmdline*
  store %struct.tep_cmdline* %10, %struct.tep_cmdline** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.tep_cmdline*
  store %struct.tep_cmdline* %12, %struct.tep_cmdline** %7, align 8
  %13 = load %struct.tep_cmdline*, %struct.tep_cmdline** %7, align 8
  %14 = getelementptr inbounds %struct.tep_cmdline, %struct.tep_cmdline* %13, i64 1
  store %struct.tep_cmdline* %14, %struct.tep_cmdline** %8, align 8
  %15 = load %struct.tep_cmdline*, %struct.tep_cmdline** %6, align 8
  %16 = getelementptr inbounds %struct.tep_cmdline, %struct.tep_cmdline* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.tep_cmdline*, %struct.tep_cmdline** %7, align 8
  %19 = getelementptr inbounds %struct.tep_cmdline, %struct.tep_cmdline* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %42

23:                                               ; preds = %2
  %24 = load %struct.tep_cmdline*, %struct.tep_cmdline** %6, align 8
  %25 = getelementptr inbounds %struct.tep_cmdline, %struct.tep_cmdline* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.tep_cmdline*, %struct.tep_cmdline** %7, align 8
  %28 = getelementptr inbounds %struct.tep_cmdline, %struct.tep_cmdline* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %26, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %23
  %32 = load %struct.tep_cmdline*, %struct.tep_cmdline** %6, align 8
  %33 = getelementptr inbounds %struct.tep_cmdline, %struct.tep_cmdline* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.tep_cmdline*, %struct.tep_cmdline** %8, align 8
  %36 = getelementptr inbounds %struct.tep_cmdline, %struct.tep_cmdline* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sle i64 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %42

40:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %42

41:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %40, %39, %22
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
