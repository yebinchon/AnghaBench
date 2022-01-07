; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_genelf_debug.c_get_special_opcode.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_genelf_debug.c_get_special_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i32 }
%struct.debug_entry = type { i32, i64 }

@default_debug_line_header = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.debug_entry*, i32, i64)* @get_special_opcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_special_opcode(%struct.debug_entry* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.debug_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.debug_entry* %0, %struct.debug_entry** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load %struct.debug_entry*, %struct.debug_entry** %5, align 8
  %12 = getelementptr inbounds %struct.debug_entry, %struct.debug_entry* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sub i32 %13, %14
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_debug_line_header, i32 0, i32 0), align 8
  %17 = sub i32 %15, %16
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_debug_line_header, i32 0, i32 1), align 4
  %20 = icmp uge i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %54

22:                                               ; preds = %3
  %23 = load %struct.debug_entry*, %struct.debug_entry** %5, align 8
  %24 = getelementptr inbounds %struct.debug_entry, %struct.debug_entry* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = sub i64 %25, %26
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_debug_line_header, i32 0, i32 2), align 8
  %29 = udiv i64 %27, %28
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_debug_line_header, i32 0, i32 1), align 4
  %32 = udiv i32 256, %31
  %33 = zext i32 %32 to i64
  %34 = icmp ule i64 %30, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %22
  %36 = load i32, i32* %8, align 4
  %37 = zext i32 %36 to i64
  %38 = load i64, i64* %9, align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_debug_line_header, i32 0, i32 1), align 4
  %40 = zext i32 %39 to i64
  %41 = mul i64 %38, %40
  %42 = add i64 %37, %41
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @default_debug_line_header, i32 0, i32 3), align 8
  %44 = zext i32 %43 to i64
  %45 = add i64 %42, %44
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %10, align 8
  %47 = icmp ule i64 %46, 255
  br i1 %47, label %48, label %50

48:                                               ; preds = %35
  %49 = load i64, i64* %10, align 8
  br label %51

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i64 [ %49, %48 ], [ 0, %50 ]
  store i64 %52, i64* %4, align 8
  br label %54

53:                                               ; preds = %22
  store i64 0, i64* %4, align 8
  br label %54

54:                                               ; preds = %53, %51, %21
  %55 = load i64, i64* %4, align 8
  ret i64 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
