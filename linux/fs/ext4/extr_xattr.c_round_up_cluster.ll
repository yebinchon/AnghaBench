; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_round_up_cluster.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_round_up_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.inode*, i64)* @round_up_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @round_up_cluster(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 1
  %10 = load %struct.super_block*, %struct.super_block** %9, align 8
  store %struct.super_block* %10, %struct.super_block** %5, align 8
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = call %struct.TYPE_2__* @EXT4_SB(%struct.super_block* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %14, %17
  %19 = shl i32 1, %18
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = sub i64 %21, 1
  %23 = xor i64 %22, -1
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* %6, align 8
  %26 = add i64 %24, %25
  %27 = sub i64 %26, 1
  %28 = load i64, i64* %7, align 8
  %29 = and i64 %27, %28
  ret i64 %29
}

declare dso_local %struct.TYPE_2__* @EXT4_SB(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
