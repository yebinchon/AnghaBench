; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_f2fs_grab_cache_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_f2fs_grab_cache_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { i32 }

@CONFIG_F2FS_FAULT_INJECTION = common dso_local global i32 0, align 4
@FGP_LOCK = common dso_local global i32 0, align 4
@FGP_ACCESSED = common dso_local global i32 0, align 4
@FAULT_PAGE_ALLOC = common dso_local global i32 0, align 4
@AOP_FLAG_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.address_space*, i32, i32)* @f2fs_grab_cache_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @f2fs_grab_cache_page(%struct.address_space* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  store %struct.address_space* %0, %struct.address_space** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @CONFIG_F2FS_FAULT_INJECTION, align 4
  %10 = call i64 @IS_ENABLED(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = load %struct.address_space*, %struct.address_space** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @FGP_LOCK, align 4
  %19 = load i32, i32* @FGP_ACCESSED, align 4
  %20 = or i32 %18, %19
  %21 = call %struct.page* @find_get_page_flags(%struct.address_space* %16, i32 %17, i32 %20)
  store %struct.page* %21, %struct.page** %8, align 8
  br label %26

22:                                               ; preds = %12
  %23 = load %struct.address_space*, %struct.address_space** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.page* @find_lock_page(%struct.address_space* %23, i32 %24)
  store %struct.page* %25, %struct.page** %8, align 8
  br label %26

26:                                               ; preds = %22, %15
  %27 = load %struct.page*, %struct.page** %8, align 8
  %28 = icmp ne %struct.page* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load %struct.page*, %struct.page** %8, align 8
  store %struct.page* %30, %struct.page** %4, align 8
  br label %53

31:                                               ; preds = %26
  %32 = load %struct.address_space*, %struct.address_space** %5, align 8
  %33 = call i32 @F2FS_M_SB(%struct.address_space* %32)
  %34 = load i32, i32* @FAULT_PAGE_ALLOC, align 4
  %35 = call i64 @time_to_inject(i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @FAULT_PAGE_ALLOC, align 4
  %39 = call i32 @f2fs_show_injection_info(i32 %38)
  store %struct.page* null, %struct.page** %4, align 8
  br label %53

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %3
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load %struct.address_space*, %struct.address_space** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call %struct.page* @grab_cache_page(%struct.address_space* %45, i32 %46)
  store %struct.page* %47, %struct.page** %4, align 8
  br label %53

48:                                               ; preds = %41
  %49 = load %struct.address_space*, %struct.address_space** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @AOP_FLAG_NOFS, align 4
  %52 = call %struct.page* @grab_cache_page_write_begin(%struct.address_space* %49, i32 %50, i32 %51)
  store %struct.page* %52, %struct.page** %4, align 8
  br label %53

53:                                               ; preds = %48, %44, %37, %29
  %54 = load %struct.page*, %struct.page** %4, align 8
  ret %struct.page* %54
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local %struct.page* @find_get_page_flags(%struct.address_space*, i32, i32) #1

declare dso_local %struct.page* @find_lock_page(%struct.address_space*, i32) #1

declare dso_local i64 @time_to_inject(i32, i32) #1

declare dso_local i32 @F2FS_M_SB(%struct.address_space*) #1

declare dso_local i32 @f2fs_show_injection_info(i32) #1

declare dso_local %struct.page* @grab_cache_page(%struct.address_space*, i32) #1

declare dso_local %struct.page* @grab_cache_page_write_begin(%struct.address_space*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
