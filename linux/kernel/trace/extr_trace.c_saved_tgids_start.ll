; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_saved_tgids_start.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_saved_tgids_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@tgid_map = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.seq_file*, i64*)* @saved_tgids_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @saved_tgids_start(%struct.seq_file* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 0, i64* %7, align 8
  %8 = load i32*, i32** @tgid_map, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %30

11:                                               ; preds = %2
  %12 = load i32*, i32** @tgid_map, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = bitcast i32* %13 to i8*
  store i8* %14, i8** %6, align 8
  br label %15

15:                                               ; preds = %27, %11
  %16 = load i64, i64* %7, align 8
  %17 = load i64*, i64** %5, align 8
  %18 = load i64, i64* %17, align 8
  %19 = icmp sle i64 %16, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i8* @saved_tgids_next(%struct.seq_file* %21, i8* %22, i64* %7)
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store i8* null, i8** %3, align 8
  br label %30

27:                                               ; preds = %20
  br label %15

28:                                               ; preds = %15
  %29 = load i8*, i8** %6, align 8
  store i8* %29, i8** %3, align 8
  br label %30

30:                                               ; preds = %28, %26, %10
  %31 = load i8*, i8** %3, align 8
  ret i8* %31
}

declare dso_local i8* @saved_tgids_next(%struct.seq_file*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
