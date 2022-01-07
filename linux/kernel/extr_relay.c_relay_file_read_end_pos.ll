; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_relay.c_relay_file_read_end_pos.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_relay.c_relay_file_read_end_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rchan_buf = type { i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.rchan_buf*, i64, i64)* @relay_file_read_end_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @relay_file_read_end_pos(%struct.rchan_buf* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.rchan_buf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.rchan_buf* %0, %struct.rchan_buf** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %13 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %10, align 8
  %17 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %18 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %10, align 8
  %24 = udiv i64 %22, %23
  store i64 %24, i64* %7, align 8
  %25 = load %struct.rchan_buf*, %struct.rchan_buf** %4, align 8
  %26 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %10, align 8
  %33 = urem i64 %31, %32
  %34 = load i64, i64* %6, align 8
  %35 = add i64 %33, %34
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %35, %36
  %38 = load i64, i64* %10, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %3
  %41 = load i64, i64* %7, align 8
  %42 = add i64 %41, 1
  %43 = load i64, i64* %10, align 8
  %44 = mul i64 %42, %43
  store i64 %44, i64* %9, align 8
  br label %49

45:                                               ; preds = %3
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = add i64 %46, %47
  store i64 %48, i64* %9, align 8
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %11, align 8
  %53 = mul i64 %51, %52
  %54 = icmp uge i64 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i64 0, i64* %9, align 8
  br label %56

56:                                               ; preds = %55, %49
  %57 = load i64, i64* %9, align 8
  ret i64 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
