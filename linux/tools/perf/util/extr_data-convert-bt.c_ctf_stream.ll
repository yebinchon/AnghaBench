; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_ctf_stream.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_ctf_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctf_stream = type { i32 }
%struct.ctf_writer = type { %struct.ctf_stream** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ctf_stream* (%struct.ctf_writer*, i32)* @ctf_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ctf_stream* @ctf_stream(%struct.ctf_writer* %0, i32 %1) #0 {
  %3 = alloca %struct.ctf_writer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ctf_stream*, align 8
  store %struct.ctf_writer* %0, %struct.ctf_writer** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ctf_writer*, %struct.ctf_writer** %3, align 8
  %7 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %6, i32 0, i32 0
  %8 = load %struct.ctf_stream**, %struct.ctf_stream*** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.ctf_stream*, %struct.ctf_stream** %8, i64 %10
  %12 = load %struct.ctf_stream*, %struct.ctf_stream** %11, align 8
  store %struct.ctf_stream* %12, %struct.ctf_stream** %5, align 8
  %13 = load %struct.ctf_stream*, %struct.ctf_stream** %5, align 8
  %14 = icmp ne %struct.ctf_stream* %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %2
  %16 = load %struct.ctf_writer*, %struct.ctf_writer** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.ctf_stream* @ctf_stream__create(%struct.ctf_writer* %16, i32 %17)
  store %struct.ctf_stream* %18, %struct.ctf_stream** %5, align 8
  %19 = load %struct.ctf_stream*, %struct.ctf_stream** %5, align 8
  %20 = load %struct.ctf_writer*, %struct.ctf_writer** %3, align 8
  %21 = getelementptr inbounds %struct.ctf_writer, %struct.ctf_writer* %20, i32 0, i32 0
  %22 = load %struct.ctf_stream**, %struct.ctf_stream*** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ctf_stream*, %struct.ctf_stream** %22, i64 %24
  store %struct.ctf_stream* %19, %struct.ctf_stream** %25, align 8
  br label %26

26:                                               ; preds = %15, %2
  %27 = load %struct.ctf_stream*, %struct.ctf_stream** %5, align 8
  ret %struct.ctf_stream* %27
}

declare dso_local %struct.ctf_stream* @ctf_stream__create(%struct.ctf_writer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
