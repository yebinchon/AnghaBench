; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_page_descs_length_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_page_descs_length_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_page_desc = type { i64, i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_page_desc*, i32, i32)* @fuse_page_descs_length_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_page_descs_length_init(%struct.fuse_page_desc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fuse_page_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fuse_page_desc* %0, %struct.fuse_page_desc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  store i32 %8, i32* %7, align 4
  br label %9

9:                                                ; preds = %29, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = add i32 %11, %12
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %9
  %16 = load i64, i64* @PAGE_SIZE, align 8
  %17 = load %struct.fuse_page_desc*, %struct.fuse_page_desc** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.fuse_page_desc, %struct.fuse_page_desc* %17, i64 %19
  %21 = getelementptr inbounds %struct.fuse_page_desc, %struct.fuse_page_desc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %16, %22
  %24 = load %struct.fuse_page_desc*, %struct.fuse_page_desc** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.fuse_page_desc, %struct.fuse_page_desc* %24, i64 %26
  %28 = getelementptr inbounds %struct.fuse_page_desc, %struct.fuse_page_desc* %27, i32 0, i32 1
  store i64 %23, i64* %28, align 8
  br label %29

29:                                               ; preds = %15
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %9

32:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
