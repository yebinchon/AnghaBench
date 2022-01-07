; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_writev.c_jffs2_flash_direct_writev.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_writev.c_jffs2_flash_direct_writev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32 }
%struct.kvec = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jffs2_flash_direct_writev(%struct.jffs2_sb_info* %0, %struct.kvec* %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.jffs2_sb_info*, align 8
  %8 = alloca %struct.kvec*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %7, align 8
  store %struct.kvec* %1, %struct.kvec** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %13 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %14 = call i32 @jffs2_is_writebuffered(%struct.jffs2_sb_info* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %5
  %17 = call i64 (...) @jffs2_sum_active()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %21 = load %struct.kvec*, %struct.kvec** %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 @jffs2_sum_add_kvec(%struct.jffs2_sb_info* %20, %struct.kvec* %21, i64 %22, i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %6, align 4
  br label %41

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30, %16
  br label %32

32:                                               ; preds = %31, %5
  %33 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %34 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.kvec*, %struct.kvec** %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i64*, i64** %11, align 8
  %40 = call i32 @mtd_writev(i32 %35, %struct.kvec* %36, i64 %37, i64 %38, i64* %39)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %32, %28
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @jffs2_is_writebuffered(%struct.jffs2_sb_info*) #1

declare dso_local i64 @jffs2_sum_active(...) #1

declare dso_local i32 @jffs2_sum_add_kvec(%struct.jffs2_sb_info*, %struct.kvec*, i64, i32) #1

declare dso_local i32 @mtd_writev(i32, %struct.kvec*, i64, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
