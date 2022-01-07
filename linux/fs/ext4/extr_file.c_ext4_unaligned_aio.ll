; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_file.c_ext4_unaligned_aio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_file.c_ext4_unaligned_aio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.iov_iter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.iov_iter*, i64)* @ext4_unaligned_aio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_unaligned_aio(%struct.inode* %0, %struct.iov_iter* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.iov_iter*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load %struct.super_block*, %struct.super_block** %11, align 8
  store %struct.super_block* %12, %struct.super_block** %8, align 8
  %13 = load %struct.super_block*, %struct.super_block** %8, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %9, align 4
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = call i32 @i_size_read(%struct.inode* %18)
  %20 = load %struct.super_block*, %struct.super_block** %8, align 8
  %21 = getelementptr inbounds %struct.super_block, %struct.super_block* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @ALIGN(i32 %19, i32 %22)
  %24 = icmp sge i64 %17, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %37

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %29 = call i64 @iov_iter_alignment(%struct.iov_iter* %28)
  %30 = or i64 %27, %29
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = and i64 %30, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32 1, i32* %4, align 4
  br label %37

36:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %35, %25
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i64 @iov_iter_alignment(%struct.iov_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
