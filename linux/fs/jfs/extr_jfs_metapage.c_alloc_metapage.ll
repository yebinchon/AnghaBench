; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_metapage.c_alloc_metapage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_metapage.c_alloc_metapage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.metapage = type { i32, i32*, i64, i32*, i64, i64 }

@metapage_mempool = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.metapage* (i32)* @alloc_metapage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.metapage* @alloc_metapage(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.metapage*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @metapage_mempool, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.metapage* @mempool_alloc(i32 %4, i32 %5)
  store %struct.metapage* %6, %struct.metapage** %3, align 8
  %7 = load %struct.metapage*, %struct.metapage** %3, align 8
  %8 = icmp ne %struct.metapage* %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load %struct.metapage*, %struct.metapage** %3, align 8
  %11 = getelementptr inbounds %struct.metapage, %struct.metapage* %10, i32 0, i32 5
  store i64 0, i64* %11, align 8
  %12 = load %struct.metapage*, %struct.metapage** %3, align 8
  %13 = getelementptr inbounds %struct.metapage, %struct.metapage* %12, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = load %struct.metapage*, %struct.metapage** %3, align 8
  %15 = getelementptr inbounds %struct.metapage, %struct.metapage* %14, i32 0, i32 3
  store i32* null, i32** %15, align 8
  %16 = load %struct.metapage*, %struct.metapage** %3, align 8
  %17 = getelementptr inbounds %struct.metapage, %struct.metapage* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load %struct.metapage*, %struct.metapage** %3, align 8
  %19 = getelementptr inbounds %struct.metapage, %struct.metapage* %18, i32 0, i32 1
  store i32* null, i32** %19, align 8
  %20 = load %struct.metapage*, %struct.metapage** %3, align 8
  %21 = getelementptr inbounds %struct.metapage, %struct.metapage* %20, i32 0, i32 0
  %22 = call i32 @init_waitqueue_head(i32* %21)
  br label %23

23:                                               ; preds = %9, %1
  %24 = load %struct.metapage*, %struct.metapage** %3, align 8
  ret %struct.metapage* %24
}

declare dso_local %struct.metapage* @mempool_alloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
