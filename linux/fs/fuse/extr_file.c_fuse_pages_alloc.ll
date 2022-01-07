; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_pages_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_pages_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.fuse_page_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page** (i32, i32, %struct.fuse_page_desc**)* @fuse_pages_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page** @fuse_pages_alloc(i32 %0, i32 %1, %struct.fuse_page_desc** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.fuse_page_desc**, align 8
  %7 = alloca %struct.page**, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.fuse_page_desc** %2, %struct.fuse_page_desc*** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = zext i32 %8 to i64
  %10 = mul i64 %9, 12
  %11 = trunc i64 %10 to i32
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.page** @kzalloc(i32 %11, i32 %12)
  store %struct.page** %13, %struct.page*** %7, align 8
  %14 = load %struct.page**, %struct.page*** %7, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.page*, %struct.page** %14, i64 %16
  %18 = bitcast %struct.page** %17 to i8*
  %19 = bitcast i8* %18 to %struct.fuse_page_desc*
  %20 = load %struct.fuse_page_desc**, %struct.fuse_page_desc*** %6, align 8
  store %struct.fuse_page_desc* %19, %struct.fuse_page_desc** %20, align 8
  %21 = load %struct.page**, %struct.page*** %7, align 8
  ret %struct.page** %21
}

declare dso_local %struct.page** @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
