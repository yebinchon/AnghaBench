; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_lops.c_gfs2_get_log_desc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_lops.c_gfs2_get_log_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_log_descriptor = type { i64, i8*, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8* }

@gfs2_page_pool = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@GFS2_MAGIC = common dso_local global i32 0, align 4
@GFS2_METATYPE_LD = common dso_local global i32 0, align 4
@GFS2_FORMAT_LD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.gfs2_sbd*, i32, i32, i32)* @gfs2_get_log_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @gfs2_get_log_desc(%struct.gfs2_sbd* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.gfs2_log_descriptor*, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @gfs2_page_pool, align 4
  %12 = load i32, i32* @GFP_NOIO, align 4
  %13 = call %struct.page* @mempool_alloc(i32 %11, i32 %12)
  store %struct.page* %13, %struct.page** %9, align 8
  %14 = load %struct.page*, %struct.page** %9, align 8
  %15 = call %struct.gfs2_log_descriptor* @page_address(%struct.page* %14)
  store %struct.gfs2_log_descriptor* %15, %struct.gfs2_log_descriptor** %10, align 8
  %16 = load %struct.gfs2_log_descriptor*, %struct.gfs2_log_descriptor** %10, align 8
  %17 = call i32 @clear_page(%struct.gfs2_log_descriptor* %16)
  %18 = load i32, i32* @GFS2_MAGIC, align 4
  %19 = call i8* @cpu_to_be32(i32 %18)
  %20 = load %struct.gfs2_log_descriptor*, %struct.gfs2_log_descriptor** %10, align 8
  %21 = getelementptr inbounds %struct.gfs2_log_descriptor, %struct.gfs2_log_descriptor* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store i8* %19, i8** %22, align 8
  %23 = load i32, i32* @GFS2_METATYPE_LD, align 4
  %24 = call i8* @cpu_to_be32(i32 %23)
  %25 = load %struct.gfs2_log_descriptor*, %struct.gfs2_log_descriptor** %10, align 8
  %26 = getelementptr inbounds %struct.gfs2_log_descriptor, %struct.gfs2_log_descriptor* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i8* %24, i8** %27, align 8
  %28 = load i32, i32* @GFS2_FORMAT_LD, align 4
  %29 = call i8* @cpu_to_be32(i32 %28)
  %30 = load %struct.gfs2_log_descriptor*, %struct.gfs2_log_descriptor** %10, align 8
  %31 = getelementptr inbounds %struct.gfs2_log_descriptor, %struct.gfs2_log_descriptor* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i8* %29, i8** %32, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i8* @cpu_to_be32(i32 %33)
  %35 = load %struct.gfs2_log_descriptor*, %struct.gfs2_log_descriptor** %10, align 8
  %36 = getelementptr inbounds %struct.gfs2_log_descriptor, %struct.gfs2_log_descriptor* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i8* @cpu_to_be32(i32 %37)
  %39 = load %struct.gfs2_log_descriptor*, %struct.gfs2_log_descriptor** %10, align 8
  %40 = getelementptr inbounds %struct.gfs2_log_descriptor, %struct.gfs2_log_descriptor* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i8* @cpu_to_be32(i32 %41)
  %43 = load %struct.gfs2_log_descriptor*, %struct.gfs2_log_descriptor** %10, align 8
  %44 = getelementptr inbounds %struct.gfs2_log_descriptor, %struct.gfs2_log_descriptor* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.gfs2_log_descriptor*, %struct.gfs2_log_descriptor** %10, align 8
  %46 = getelementptr inbounds %struct.gfs2_log_descriptor, %struct.gfs2_log_descriptor* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.page*, %struct.page** %9, align 8
  ret %struct.page* %47
}

declare dso_local %struct.page* @mempool_alloc(i32, i32) #1

declare dso_local %struct.gfs2_log_descriptor* @page_address(%struct.page*) #1

declare dso_local i32 @clear_page(%struct.gfs2_log_descriptor*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
