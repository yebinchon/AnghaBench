; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_cache.c_content_open.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_cache.c_content_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.seq_file* }
%struct.seq_file = type { %struct.cache_detail* }
%struct.cache_detail = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@cache_content_op = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*, %struct.cache_detail*)* @content_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @content_open(%struct.inode* %0, %struct.file* %1, %struct.cache_detail* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.cache_detail*, align 8
  %8 = alloca %struct.seq_file*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store %struct.cache_detail* %2, %struct.cache_detail** %7, align 8
  %10 = load %struct.cache_detail*, %struct.cache_detail** %7, align 8
  %11 = icmp ne %struct.cache_detail* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.cache_detail*, %struct.cache_detail** %7, align 8
  %14 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @try_module_get(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12, %3
  %19 = load i32, i32* @EACCES, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %39

21:                                               ; preds = %12
  %22 = load %struct.file*, %struct.file** %6, align 8
  %23 = call i32 @seq_open(%struct.file* %22, i32* @cache_content_op)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.cache_detail*, %struct.cache_detail** %7, align 8
  %28 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @module_put(i32 %29)
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %39

32:                                               ; preds = %21
  %33 = load %struct.file*, %struct.file** %6, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 0
  %35 = load %struct.seq_file*, %struct.seq_file** %34, align 8
  store %struct.seq_file* %35, %struct.seq_file** %8, align 8
  %36 = load %struct.cache_detail*, %struct.cache_detail** %7, align 8
  %37 = load %struct.seq_file*, %struct.seq_file** %8, align 8
  %38 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %37, i32 0, i32 0
  store %struct.cache_detail* %36, %struct.cache_detail** %38, align 8
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %32, %26, %18
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @seq_open(%struct.file*, i32*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
