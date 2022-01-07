; ModuleID = '/home/carl/AnghaBench/linux/lib/xz/extr_xz_dec_stream.c_index_update.c'
source_filename = "/home/carl/AnghaBench/linux/lib/xz/extr_xz_dec_stream.c_index_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xz_dec = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.xz_buf = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xz_dec*, %struct.xz_buf*)* @index_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @index_update(%struct.xz_dec* %0, %struct.xz_buf* %1) #0 {
  %3 = alloca %struct.xz_dec*, align 8
  %4 = alloca %struct.xz_buf*, align 8
  %5 = alloca i64, align 8
  store %struct.xz_dec* %0, %struct.xz_dec** %3, align 8
  store %struct.xz_buf* %1, %struct.xz_buf** %4, align 8
  %6 = load %struct.xz_buf*, %struct.xz_buf** %4, align 8
  %7 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %10 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = sub i64 %8, %11
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %15 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %17, %13
  store i64 %18, i64* %16, align 8
  %19 = load %struct.xz_buf*, %struct.xz_buf** %4, align 8
  %20 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %23 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %21, %24
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %28 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @xz_crc32(i64 %25, i64 %26, i32 %29)
  %31 = load %struct.xz_dec*, %struct.xz_dec** %3, align 8
  %32 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  ret void
}

declare dso_local i32 @xz_crc32(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
