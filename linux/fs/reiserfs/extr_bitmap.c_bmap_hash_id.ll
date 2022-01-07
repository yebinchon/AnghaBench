; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_bitmap.c_bmap_hash_id.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_bitmap.c_bmap_hash_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @bmap_hash_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmap_hash_id(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* null, i8** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp sle i32 %8, 2
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %25

11:                                               ; preds = %2
  %12 = bitcast i32* %4 to i8*
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @keyed_hash(i8* %13, i32 4)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.super_block*, %struct.super_block** %3, align 8
  %17 = call i32 @reiserfs_bmap_count(%struct.super_block* %16)
  %18 = zext i32 %17 to i64
  %19 = urem i64 %15, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %11
  store i32 1, i32* %7, align 4
  br label %24

24:                                               ; preds = %23, %11
  br label %25

25:                                               ; preds = %24, %10
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.super_block*, %struct.super_block** %3, align 8
  %28 = call i32 @reiserfs_bmap_count(%struct.super_block* %27)
  %29 = icmp uge i32 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %30, %25
  %32 = load i32, i32* %7, align 4
  ret i32 %32
}

declare dso_local i64 @keyed_hash(i8*, i32) #1

declare dso_local i32 @reiserfs_bmap_count(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
