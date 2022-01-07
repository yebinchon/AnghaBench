; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_cuse.c_cuse_send_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_cuse.c_cuse_send_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cuse_conn = type { %struct.fuse_conn }
%struct.fuse_conn = type { i32 }
%struct.page = type { i32 }
%struct.cuse_init_args = type { %struct.TYPE_8__, %struct.page*, i32, %struct.TYPE_7__, %struct.fuse_args_pages }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.fuse_args_pages = type { i32, %struct.TYPE_10__, %struct.TYPE_8__*, %struct.page** }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }

@CUSE_INIT_INFO_MAX = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@FUSE_KERNEL_VERSION = common dso_local global i32 0, align 4
@FUSE_KERNEL_MINOR_VERSION = common dso_local global i32 0, align 4
@CUSE_UNRESTRICTED_IOCTL = common dso_local global i32 0, align 4
@CUSE_INIT = common dso_local global i32 0, align 4
@cuse_process_init_reply = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cuse_conn*)* @cuse_send_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cuse_send_init(%struct.cuse_conn* %0) #0 {
  %2 = alloca %struct.cuse_conn*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.fuse_conn*, align 8
  %6 = alloca %struct.cuse_init_args*, align 8
  %7 = alloca %struct.fuse_args_pages*, align 8
  store %struct.cuse_conn* %0, %struct.cuse_conn** %2, align 8
  %8 = load %struct.cuse_conn*, %struct.cuse_conn** %2, align 8
  %9 = getelementptr inbounds %struct.cuse_conn, %struct.cuse_conn* %8, i32 0, i32 0
  store %struct.fuse_conn* %9, %struct.fuse_conn** %5, align 8
  %10 = load i32, i32* @CUSE_INIT_INFO_MAX, align 4
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = icmp sgt i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUILD_BUG_ON(i32 %13)
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = load i32, i32* @__GFP_ZERO, align 4
  %19 = or i32 %17, %18
  %20 = call %struct.page* @alloc_page(i32 %19)
  store %struct.page* %20, %struct.page** %4, align 8
  %21 = load %struct.page*, %struct.page** %4, align 8
  %22 = icmp ne %struct.page* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %139

24:                                               ; preds = %1
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.cuse_init_args* @kzalloc(i32 104, i32 %25)
  store %struct.cuse_init_args* %26, %struct.cuse_init_args** %6, align 8
  %27 = load %struct.cuse_init_args*, %struct.cuse_init_args** %6, align 8
  %28 = icmp ne %struct.cuse_init_args* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %135

30:                                               ; preds = %24
  %31 = load %struct.cuse_init_args*, %struct.cuse_init_args** %6, align 8
  %32 = getelementptr inbounds %struct.cuse_init_args, %struct.cuse_init_args* %31, i32 0, i32 4
  store %struct.fuse_args_pages* %32, %struct.fuse_args_pages** %7, align 8
  %33 = load i32, i32* @FUSE_KERNEL_VERSION, align 4
  %34 = load %struct.cuse_init_args*, %struct.cuse_init_args** %6, align 8
  %35 = getelementptr inbounds %struct.cuse_init_args, %struct.cuse_init_args* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @FUSE_KERNEL_MINOR_VERSION, align 4
  %38 = load %struct.cuse_init_args*, %struct.cuse_init_args** %6, align 8
  %39 = getelementptr inbounds %struct.cuse_init_args, %struct.cuse_init_args* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @CUSE_UNRESTRICTED_IOCTL, align 4
  %42 = load %struct.cuse_init_args*, %struct.cuse_init_args** %6, align 8
  %43 = getelementptr inbounds %struct.cuse_init_args, %struct.cuse_init_args* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %41
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* @CUSE_INIT, align 4
  %48 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %49 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 7
  store i32 %47, i32* %50, align 8
  %51 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %52 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %55 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 6
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i32 12, i32* %59, align 8
  %60 = load %struct.cuse_init_args*, %struct.cuse_init_args** %6, align 8
  %61 = getelementptr inbounds %struct.cuse_init_args, %struct.cuse_init_args* %60, i32 0, i32 3
  %62 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %63 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 6
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store %struct.TYPE_7__* %61, %struct.TYPE_7__** %67, align 8
  %68 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %69 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  store i32 2, i32* %70, align 4
  %71 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %72 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 5
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  store i32 4, i32* %76, align 8
  %77 = load %struct.cuse_init_args*, %struct.cuse_init_args** %6, align 8
  %78 = getelementptr inbounds %struct.cuse_init_args, %struct.cuse_init_args* %77, i32 0, i32 2
  %79 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %80 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 5
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  store i32* %78, i32** %84, align 8
  %85 = load i32, i32* @CUSE_INIT_INFO_MAX, align 4
  %86 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %87 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 5
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i64 1
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  store i32 %85, i32* %91, align 8
  %92 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %93 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  store i32 1, i32* %94, align 8
  %95 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %96 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 3
  store i32 1, i32* %97, align 4
  %98 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %99 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load %struct.cuse_init_args*, %struct.cuse_init_args** %6, align 8
  %101 = getelementptr inbounds %struct.cuse_init_args, %struct.cuse_init_args* %100, i32 0, i32 1
  %102 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %103 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %102, i32 0, i32 3
  store %struct.page** %101, %struct.page*** %103, align 8
  %104 = load %struct.cuse_init_args*, %struct.cuse_init_args** %6, align 8
  %105 = getelementptr inbounds %struct.cuse_init_args, %struct.cuse_init_args* %104, i32 0, i32 0
  %106 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %107 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %106, i32 0, i32 2
  store %struct.TYPE_8__* %105, %struct.TYPE_8__** %107, align 8
  %108 = load %struct.page*, %struct.page** %4, align 8
  %109 = load %struct.cuse_init_args*, %struct.cuse_init_args** %6, align 8
  %110 = getelementptr inbounds %struct.cuse_init_args, %struct.cuse_init_args* %109, i32 0, i32 1
  store %struct.page* %108, %struct.page** %110, align 8
  %111 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %112 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 5
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i64 1
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.cuse_init_args*, %struct.cuse_init_args** %6, align 8
  %119 = getelementptr inbounds %struct.cuse_init_args, %struct.cuse_init_args* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  store i32 %117, i32* %120, align 8
  %121 = load i32, i32* @cuse_process_init_reply, align 4
  %122 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %123 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 4
  store i32 %121, i32* %124, align 8
  %125 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %126 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %7, align 8
  %127 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %126, i32 0, i32 1
  %128 = load i32, i32* @GFP_KERNEL, align 4
  %129 = call i32 @fuse_simple_background(%struct.fuse_conn* %125, %struct.TYPE_10__* %127, i32 %128)
  store i32 %129, i32* %3, align 4
  %130 = load i32, i32* %3, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %30
  %133 = load %struct.cuse_init_args*, %struct.cuse_init_args** %6, align 8
  %134 = call i32 @kfree(%struct.cuse_init_args* %133)
  br label %135

135:                                              ; preds = %132, %29
  %136 = load %struct.page*, %struct.page** %4, align 8
  %137 = call i32 @__free_page(%struct.page* %136)
  br label %138

138:                                              ; preds = %135, %30
  br label %139

139:                                              ; preds = %138, %23
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local %struct.cuse_init_args* @kzalloc(i32, i32) #1

declare dso_local i32 @fuse_simple_background(%struct.fuse_conn*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @kfree(%struct.cuse_init_args*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
