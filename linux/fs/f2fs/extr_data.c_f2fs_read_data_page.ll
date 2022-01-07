; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_read_data_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_read_data_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.page = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_3__ = type { %struct.inode* }

@EAGAIN = common dso_local global i32 0, align 4
@DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.page*)* @f2fs_read_data_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_read_data_page(%struct.file* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %7 = load %struct.page*, %struct.page** %4, align 8
  %8 = call %struct.TYPE_3__* @page_file_mapping(%struct.page* %7)
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %10, %struct.inode** %5, align 8
  %11 = load i32, i32* @EAGAIN, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %6, align 4
  %13 = load %struct.page*, %struct.page** %4, align 8
  %14 = load i32, i32* @DATA, align 4
  %15 = call i32 @trace_f2fs_readpage(%struct.page* %13, i32 %14)
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = call i64 @f2fs_has_inline_data(%struct.inode* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = load %struct.page*, %struct.page** %4, align 8
  %22 = call i32 @f2fs_read_inline_data(%struct.inode* %20, %struct.page* %21)
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %19, %2
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @EAGAIN, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.page*, %struct.page** %4, align 8
  %30 = call %struct.TYPE_3__* @page_file_mapping(%struct.page* %29)
  %31 = load %struct.page*, %struct.page** %4, align 8
  %32 = call i32 @f2fs_mpage_readpages(%struct.TYPE_3__* %30, i32* null, %struct.page* %31, i32 1, i32 0)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %28, %23
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local %struct.TYPE_3__* @page_file_mapping(%struct.page*) #1

declare dso_local i32 @trace_f2fs_readpage(%struct.page*, i32) #1

declare dso_local i64 @f2fs_has_inline_data(%struct.inode*) #1

declare dso_local i32 @f2fs_read_inline_data(%struct.inode*, %struct.page*) #1

declare dso_local i32 @f2fs_mpage_readpages(%struct.TYPE_3__*, i32*, %struct.page*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
