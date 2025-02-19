; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_metapage.c_force_metapage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_metapage.c_force_metapage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.metapage = type { i32, i32, %struct.page* }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"force_metapage: mp = 0x%p\00", align 1
@META_forcewrite = common dso_local global i32 0, align 4
@META_sync = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"write_one_page() failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @force_metapage(%struct.metapage* %0) #0 {
  %2 = alloca %struct.metapage*, align 8
  %3 = alloca %struct.page*, align 8
  store %struct.metapage* %0, %struct.metapage** %2, align 8
  %4 = load %struct.metapage*, %struct.metapage** %2, align 8
  %5 = getelementptr inbounds %struct.metapage, %struct.metapage* %4, i32 0, i32 2
  %6 = load %struct.page*, %struct.page** %5, align 8
  store %struct.page* %6, %struct.page** %3, align 8
  %7 = load %struct.metapage*, %struct.metapage** %2, align 8
  %8 = call i32 @jfs_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.metapage* %7)
  %9 = load i32, i32* @META_forcewrite, align 4
  %10 = load %struct.metapage*, %struct.metapage** %2, align 8
  %11 = getelementptr inbounds %struct.metapage, %struct.metapage* %10, i32 0, i32 0
  %12 = call i32 @set_bit(i32 %9, i32* %11)
  %13 = load i32, i32* @META_sync, align 4
  %14 = load %struct.metapage*, %struct.metapage** %2, align 8
  %15 = getelementptr inbounds %struct.metapage, %struct.metapage* %14, i32 0, i32 0
  %16 = call i32 @clear_bit(i32 %13, i32* %15)
  %17 = load %struct.page*, %struct.page** %3, align 8
  %18 = call i32 @get_page(%struct.page* %17)
  %19 = load %struct.page*, %struct.page** %3, align 8
  %20 = call i32 @lock_page(%struct.page* %19)
  %21 = load %struct.page*, %struct.page** %3, align 8
  %22 = call i32 @set_page_dirty(%struct.page* %21)
  %23 = load %struct.page*, %struct.page** %3, align 8
  %24 = call i64 @write_one_page(%struct.page* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.metapage*, %struct.metapage** %2, align 8
  %28 = getelementptr inbounds %struct.metapage, %struct.metapage* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @jfs_error(i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %26, %1
  %32 = load i32, i32* @META_forcewrite, align 4
  %33 = load %struct.metapage*, %struct.metapage** %2, align 8
  %34 = getelementptr inbounds %struct.metapage, %struct.metapage* %33, i32 0, i32 0
  %35 = call i32 @clear_bit(i32 %32, i32* %34)
  %36 = load %struct.page*, %struct.page** %3, align 8
  %37 = call i32 @put_page(%struct.page* %36)
  ret void
}

declare dso_local i32 @jfs_info(i8*, %struct.metapage*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i64 @write_one_page(%struct.page*) #1

declare dso_local i32 @jfs_error(i32, i8*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
