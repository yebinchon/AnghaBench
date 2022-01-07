; ModuleID = '/home/carl/AnghaBench/linux/lib/xz/extr_xz_dec_lzma2.c_rc_read_init.c'
source_filename = "/home/carl/AnghaBench/linux/lib/xz/extr_xz_dec_lzma2.c_rc_read_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dec = type { i64, i32 }
%struct.xz_buf = type { i64, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dec*, %struct.xz_buf*)* @rc_read_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc_read_init(%struct.rc_dec* %0, %struct.xz_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rc_dec*, align 8
  %5 = alloca %struct.xz_buf*, align 8
  store %struct.rc_dec* %0, %struct.rc_dec** %4, align 8
  store %struct.xz_buf* %1, %struct.xz_buf** %5, align 8
  br label %6

6:                                                ; preds = %20, %2
  %7 = load %struct.rc_dec*, %struct.rc_dec** %4, align 8
  %8 = getelementptr inbounds %struct.rc_dec, %struct.rc_dec* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %6
  %12 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %13 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %16 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %42

20:                                               ; preds = %11
  %21 = load %struct.rc_dec*, %struct.rc_dec** %4, align 8
  %22 = getelementptr inbounds %struct.rc_dec, %struct.rc_dec* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = shl i32 %23, 8
  %25 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %26 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %29 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %29, align 8
  %32 = getelementptr inbounds i32, i32* %27, i64 %30
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %24, %33
  %35 = load %struct.rc_dec*, %struct.rc_dec** %4, align 8
  %36 = getelementptr inbounds %struct.rc_dec, %struct.rc_dec* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.rc_dec*, %struct.rc_dec** %4, align 8
  %38 = getelementptr inbounds %struct.rc_dec, %struct.rc_dec* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, -1
  store i64 %40, i64* %38, align 8
  br label %6

41:                                               ; preds = %6
  store i32 1, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %19
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
