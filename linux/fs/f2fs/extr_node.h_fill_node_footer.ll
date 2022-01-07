; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.h_fill_node_footer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.h_fill_node_footer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.f2fs_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8* }

@OFFSET_BIT_SHIFT = common dso_local global i32 0, align 4
@OFFSET_BIT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i32, i32, i32, i32)* @fill_node_footer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_node_footer(%struct.page* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.f2fs_node*, align 8
  %12 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.page*, %struct.page** %6, align 8
  %14 = call %struct.f2fs_node* @F2FS_NODE(%struct.page* %13)
  store %struct.f2fs_node* %14, %struct.f2fs_node** %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load %struct.f2fs_node*, %struct.f2fs_node** %11, align 8
  %19 = call i32 @memset(%struct.f2fs_node* %18, i32 0, i32 24)
  br label %26

20:                                               ; preds = %5
  %21 = load %struct.f2fs_node*, %struct.f2fs_node** %11, align 8
  %22 = getelementptr inbounds %struct.f2fs_node, %struct.f2fs_node* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @le32_to_cpu(i8* %24)
  store i32 %25, i32* %12, align 4
  br label %26

26:                                               ; preds = %20, %17
  %27 = load i32, i32* %7, align 4
  %28 = call i8* @cpu_to_le32(i32 %27)
  %29 = load %struct.f2fs_node*, %struct.f2fs_node** %11, align 8
  %30 = getelementptr inbounds %struct.f2fs_node, %struct.f2fs_node* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  store i8* %28, i8** %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i8* @cpu_to_le32(i32 %32)
  %34 = load %struct.f2fs_node*, %struct.f2fs_node** %11, align 8
  %35 = getelementptr inbounds %struct.f2fs_node, %struct.f2fs_node* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i8* %33, i8** %36, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @OFFSET_BIT_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @OFFSET_BIT_MASK, align 4
  %42 = and i32 %40, %41
  %43 = or i32 %39, %42
  %44 = call i8* @cpu_to_le32(i32 %43)
  %45 = load %struct.f2fs_node*, %struct.f2fs_node** %11, align 8
  %46 = getelementptr inbounds %struct.f2fs_node, %struct.f2fs_node* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i8* %44, i8** %47, align 8
  ret void
}

declare dso_local %struct.f2fs_node* @F2FS_NODE(%struct.page*) #1

declare dso_local i32 @memset(%struct.f2fs_node*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
