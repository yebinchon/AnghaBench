; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_da_should_update_i_disksize.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_da_should_update_i_disksize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i64 }
%struct.buffer_head = type { %struct.buffer_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i64)* @ext4_da_should_update_i_disksize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_da_should_update_i_disksize(%struct.page* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.page*, %struct.page** %4, align 8
  %11 = getelementptr inbounds %struct.page, %struct.page* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %7, align 8
  %15 = load %struct.page*, %struct.page** %4, align 8
  %16 = call %struct.buffer_head* @page_buffers(%struct.page* %15)
  store %struct.buffer_head* %16, %struct.buffer_head** %6, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.inode*, %struct.inode** %7, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = lshr i64 %17, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %31, %2
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %29 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %28, i32 0, i32 0
  %30 = load %struct.buffer_head*, %struct.buffer_head** %29, align 8
  store %struct.buffer_head* %30, %struct.buffer_head** %6, align 8
  br label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %23

34:                                               ; preds = %23
  %35 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %36 = call i32 @buffer_mapped(%struct.buffer_head* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %40 = call i64 @buffer_delay(%struct.buffer_head* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %44 = call i64 @buffer_unwritten(%struct.buffer_head* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %38, %34
  store i32 0, i32* %3, align 4
  br label %48

47:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %46
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i64 @buffer_delay(%struct.buffer_head*) #1

declare dso_local i64 @buffer_unwritten(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
