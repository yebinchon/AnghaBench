; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.h_set_nid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.h_set_nid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.f2fs_node = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8** }
%struct.TYPE_3__ = type { i8** }

@NODE = common dso_local global i32 0, align 4
@NODE_DIR1_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i32, i32, i32)* @set_nid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_nid(%struct.page* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.f2fs_node*, align 8
  store %struct.page* %0, %struct.page** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.page*, %struct.page** %5, align 8
  %11 = call %struct.f2fs_node* @F2FS_NODE(%struct.page* %10)
  store %struct.f2fs_node* %11, %struct.f2fs_node** %9, align 8
  %12 = load %struct.page*, %struct.page** %5, align 8
  %13 = load i32, i32* @NODE, align 4
  %14 = call i32 @f2fs_wait_on_page_writeback(%struct.page* %12, i32 %13, i32 1, i32 1)
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = call i8* @cpu_to_le32(i32 %18)
  %20 = load %struct.f2fs_node*, %struct.f2fs_node** %9, align 8
  %21 = getelementptr inbounds %struct.f2fs_node, %struct.f2fs_node* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i8**, i8*** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @NODE_DIR1_BLOCK, align 4
  %26 = sub nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %23, i64 %27
  store i8* %19, i8** %28, align 8
  br label %39

29:                                               ; preds = %4
  %30 = load i32, i32* %7, align 4
  %31 = call i8* @cpu_to_le32(i32 %30)
  %32 = load %struct.f2fs_node*, %struct.f2fs_node** %9, align 8
  %33 = getelementptr inbounds %struct.f2fs_node, %struct.f2fs_node* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i8**, i8*** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  store i8* %31, i8** %38, align 8
  br label %39

39:                                               ; preds = %29, %17
  %40 = load %struct.page*, %struct.page** %5, align 8
  %41 = call i32 @set_page_dirty(%struct.page* %40)
  ret i32 %41
}

declare dso_local %struct.f2fs_node* @F2FS_NODE(%struct.page*) #1

declare dso_local i32 @f2fs_wait_on_page_writeback(%struct.page*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
