; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_filemap.c_grab_cache_page_write_begin.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_filemap.c_grab_cache_page_write_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { i32 }

@FGP_LOCK = common dso_local global i32 0, align 4
@FGP_WRITE = common dso_local global i32 0, align 4
@FGP_CREAT = common dso_local global i32 0, align 4
@AOP_FLAG_NOFS = common dso_local global i32 0, align 4
@FGP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @grab_cache_page_write_begin(%struct.address_space* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @FGP_LOCK, align 4
  %10 = load i32, i32* @FGP_WRITE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @FGP_CREAT, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @AOP_FLAG_NOFS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32, i32* @FGP_NOFS, align 4
  %20 = load i32, i32* %8, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %18, %3
  %23 = load %struct.address_space*, %struct.address_space** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.address_space*, %struct.address_space** %4, align 8
  %27 = call i32 @mapping_gfp_mask(%struct.address_space* %26)
  %28 = call %struct.page* @pagecache_get_page(%struct.address_space* %23, i32 %24, i32 %25, i32 %27)
  store %struct.page* %28, %struct.page** %7, align 8
  %29 = load %struct.page*, %struct.page** %7, align 8
  %30 = icmp ne %struct.page* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load %struct.page*, %struct.page** %7, align 8
  %33 = call i32 @wait_for_stable_page(%struct.page* %32)
  br label %34

34:                                               ; preds = %31, %22
  %35 = load %struct.page*, %struct.page** %7, align 8
  ret %struct.page* %35
}

declare dso_local %struct.page* @pagecache_get_page(%struct.address_space*, i32, i32, i32) #1

declare dso_local i32 @mapping_gfp_mask(%struct.address_space*) #1

declare dso_local i32 @wait_for_stable_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
