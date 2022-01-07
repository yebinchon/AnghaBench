; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_page_async_flush.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_page_async_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { i32 }
%struct.page = type { i32 }
%struct.nfs_page = type { i32 }
%struct.TYPE_2__ = type { i32 }

@PG_CLEAN = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@NFSIOS_WRITEPAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_pageio_descriptor*, %struct.page*)* @nfs_page_async_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_page_async_flush(%struct.nfs_pageio_descriptor* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_pageio_descriptor*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.nfs_page*, align 8
  %7 = alloca i32, align 4
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.page*, %struct.page** %5, align 8
  %9 = call %struct.nfs_page* @nfs_lock_and_join_requests(%struct.page* %8)
  store %struct.nfs_page* %9, %struct.nfs_page** %6, align 8
  %10 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %11 = icmp ne %struct.nfs_page* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %69

13:                                               ; preds = %2
  %14 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %15 = call i32 @PTR_ERR(%struct.nfs_page* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %17 = call i64 @IS_ERR(%struct.nfs_page* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %69

20:                                               ; preds = %13
  %21 = load %struct.page*, %struct.page** %5, align 8
  %22 = call i32 @nfs_set_page_writeback(%struct.page* %21)
  %23 = load i32, i32* @PG_CLEAN, align 4
  %24 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %25 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %24, i32 0, i32 0
  %26 = call i32 @test_bit(i32 %23, i32* %25)
  %27 = call i32 @WARN_ON_ONCE(i32 %26)
  %28 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %29 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @nfs_error_is_fatal_on_server(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  br label %71

35:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  %36 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %37 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %38 = call i32 @nfs_pageio_add_request(%struct.nfs_pageio_descriptor* %36, %struct.nfs_page* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %61, label %40

40:                                               ; preds = %35
  %41 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %42 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @nfs_error_is_fatal(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @nfs_error_is_fatal_on_server(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %71

52:                                               ; preds = %47
  br label %56

53:                                               ; preds = %40
  %54 = load i32, i32* @EAGAIN, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %53, %52
  %57 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %58 = call i32 @nfs_redirty_request(%struct.nfs_page* %57)
  %59 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %4, align 8
  %60 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %59, i32 0, i32 0
  store i32 0, i32* %60, align 4
  br label %68

61:                                               ; preds = %35
  %62 = load %struct.page*, %struct.page** %5, align 8
  %63 = call %struct.TYPE_2__* @page_file_mapping(%struct.page* %62)
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @NFSIOS_WRITEPAGES, align 4
  %67 = call i32 @nfs_add_stats(i32 %65, i32 %66, i32 1)
  br label %68

68:                                               ; preds = %61, %56
  br label %69

69:                                               ; preds = %68, %19, %12
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %3, align 4
  br label %75

71:                                               ; preds = %51, %34
  %72 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @nfs_write_error(%struct.nfs_page* %72, i32 %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %71, %69
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.nfs_page* @nfs_lock_and_join_requests(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.nfs_page*) #1

declare dso_local i64 @IS_ERR(%struct.nfs_page*) #1

declare dso_local i32 @nfs_set_page_writeback(%struct.page*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @nfs_error_is_fatal_on_server(i32) #1

declare dso_local i32 @nfs_pageio_add_request(%struct.nfs_pageio_descriptor*, %struct.nfs_page*) #1

declare dso_local i64 @nfs_error_is_fatal(i32) #1

declare dso_local i32 @nfs_redirty_request(%struct.nfs_page*) #1

declare dso_local i32 @nfs_add_stats(i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @page_file_mapping(%struct.page*) #1

declare dso_local i32 @nfs_write_error(%struct.nfs_page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
