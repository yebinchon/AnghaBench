; ModuleID = '/home/carl/AnghaBench/linux/tools/firewire/extr_nosy-dump.c_get_bits.c'
source_filename = "/home/carl/AnghaBench/linux/tools/firewire/extr_nosy-dump.c_get_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_packet = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.link_packet*, i32, i32)* @get_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_bits(%struct.link_packet* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.link_packet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.link_packet* %0, %struct.link_packet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.link_packet*, %struct.link_packet** %4, align 8
  %12 = bitcast %struct.link_packet* %11 to i64*
  store i64* %12, i64** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sdiv i32 %13, 32
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 31
  %19 = sub nsw i32 32, %18
  %20 = load i32, i32* %6, align 4
  %21 = sub nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %9, align 8
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 32
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %30

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = shl i32 1, %27
  %29 = sub nsw i32 %28, 1
  br label %30

30:                                               ; preds = %26, %25
  %31 = phi i32 [ -1, %25 ], [ %29, %26 ]
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %10, align 8
  %33 = load i64*, i64** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %9, align 8
  %38 = lshr i64 %36, %37
  %39 = load i64, i64* %10, align 8
  %40 = and i64 %38, %39
  %41 = trunc i64 %40 to i32
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
