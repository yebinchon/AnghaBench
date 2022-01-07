; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_tnum.c_tnum_in.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_tnum.c_tnum_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tnum = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tnum_in(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tnum, align 4
  %5 = alloca %struct.tnum, align 4
  %6 = bitcast %struct.tnum* %4 to i64*
  store i64 %0, i64* %6, align 4
  %7 = bitcast %struct.tnum* %5 to i64*
  store i64 %1, i64* %7, align 4
  %8 = getelementptr inbounds %struct.tnum, %struct.tnum* %5, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.tnum, %struct.tnum* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %9, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.tnum, %struct.tnum* %4, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = xor i32 %18, -1
  %20 = getelementptr inbounds %struct.tnum, %struct.tnum* %5, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %19
  store i32 %22, i32* %20, align 4
  %23 = getelementptr inbounds %struct.tnum, %struct.tnum* %4, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.tnum, %struct.tnum* %5, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %24, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %16, %15
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
