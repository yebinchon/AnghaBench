; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_flattree.c_flat_read_word.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_flattree.c_flat_read_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inbuf = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inbuf*)* @flat_read_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flat_read_word(%struct.inbuf* %0) #0 {
  %2 = alloca %struct.inbuf*, align 8
  %3 = alloca i32, align 4
  store %struct.inbuf* %0, %struct.inbuf** %2, align 8
  %4 = load %struct.inbuf*, %struct.inbuf** %2, align 8
  %5 = getelementptr inbounds %struct.inbuf, %struct.inbuf* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.inbuf*, %struct.inbuf** %2, align 8
  %8 = getelementptr inbounds %struct.inbuf, %struct.inbuf* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = sub nsw i32 %6, %9
  %11 = sext i32 %10 to i64
  %12 = urem i64 %11, 4
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.inbuf*, %struct.inbuf** %2, align 8
  %17 = call i32 @flat_read_chunk(%struct.inbuf* %16, i32* %3, i32 4)
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @fdt32_to_cpu(i32 %18)
  ret i32 %19
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @flat_read_chunk(%struct.inbuf*, i32*, i32) #1

declare dso_local i32 @fdt32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
