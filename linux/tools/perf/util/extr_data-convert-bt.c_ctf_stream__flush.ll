; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_ctf_stream__flush.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_ctf_stream__flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctf_stream = type { i64, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"CTF stream %d flush failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Flush stream for cpu %d (%u samples)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctf_stream*)* @ctf_stream__flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctf_stream__flush(%struct.ctf_stream* %0) #0 {
  %2 = alloca %struct.ctf_stream*, align 8
  %3 = alloca i32, align 4
  store %struct.ctf_stream* %0, %struct.ctf_stream** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ctf_stream*, %struct.ctf_stream** %2, align 8
  %5 = icmp ne %struct.ctf_stream* %4, null
  br i1 %5, label %6, label %28

6:                                                ; preds = %1
  %7 = load %struct.ctf_stream*, %struct.ctf_stream** %2, align 8
  %8 = getelementptr inbounds %struct.ctf_stream, %struct.ctf_stream* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @bt_ctf_stream_flush(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %6
  %14 = load %struct.ctf_stream*, %struct.ctf_stream** %2, align 8
  %15 = getelementptr inbounds %struct.ctf_stream, %struct.ctf_stream* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %13, %6
  %19 = load %struct.ctf_stream*, %struct.ctf_stream** %2, align 8
  %20 = getelementptr inbounds %struct.ctf_stream, %struct.ctf_stream* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ctf_stream*, %struct.ctf_stream** %2, align 8
  %23 = getelementptr inbounds %struct.ctf_stream, %struct.ctf_stream* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @pr(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %21, i64 %24)
  %26 = load %struct.ctf_stream*, %struct.ctf_stream** %2, align 8
  %27 = getelementptr inbounds %struct.ctf_stream, %struct.ctf_stream* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %18, %1
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @bt_ctf_stream_flush(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @pr(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
