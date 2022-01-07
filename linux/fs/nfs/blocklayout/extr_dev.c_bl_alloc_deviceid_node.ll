; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_dev.c_bl_alloc_deviceid_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_dev.c_bl_alloc_deviceid_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_deviceid_node = type { i32 }
%struct.nfs_server = type { i32 }
%struct.pnfs_device = type { i32, i32, i32 }
%struct.pnfs_block_volume = type { i32 }
%struct.pnfs_block_dev = type { %struct.nfs4_deviceid_node }
%struct.xdr_stream = type { i32 }
%struct.xdr_buf = type { i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfs4_deviceid_node* @bl_alloc_deviceid_node(%struct.nfs_server* %0, %struct.pnfs_device* %1, i32 %2) #0 {
  %4 = alloca %struct.nfs_server*, align 8
  %5 = alloca %struct.pnfs_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfs4_deviceid_node*, align 8
  %8 = alloca %struct.pnfs_block_volume*, align 8
  %9 = alloca %struct.pnfs_block_dev*, align 8
  %10 = alloca %struct.xdr_stream, align 4
  %11 = alloca %struct.xdr_buf, align 4
  %12 = alloca %struct.page*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %4, align 8
  store %struct.pnfs_device* %1, %struct.pnfs_device** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.nfs4_deviceid_node* null, %struct.nfs4_deviceid_node** %7, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.page* @alloc_page(i32 %17)
  store %struct.page* %18, %struct.page** %12, align 8
  %19 = load %struct.page*, %struct.page** %12, align 8
  %20 = icmp ne %struct.page* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %100

22:                                               ; preds = %3
  %23 = load %struct.pnfs_device*, %struct.pnfs_device** %5, align 8
  %24 = getelementptr inbounds %struct.pnfs_device, %struct.pnfs_device* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pnfs_device*, %struct.pnfs_device** %5, align 8
  %27 = getelementptr inbounds %struct.pnfs_device, %struct.pnfs_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @xdr_init_decode_pages(%struct.xdr_stream* %10, %struct.xdr_buf* %11, i32 %25, i32 %28)
  %30 = load %struct.page*, %struct.page** %12, align 8
  %31 = call i32 @page_address(%struct.page* %30)
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = call i32 @xdr_set_scratch_buffer(%struct.xdr_stream* %10, i32 %31, i32 %32)
  %34 = call i32* @xdr_inline_decode(%struct.xdr_stream* %10, i32 4)
  store i32* %34, i32** %16, align 8
  %35 = load i32*, i32** %16, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %22
  br label %97

38:                                               ; preds = %22
  %39 = load i32*, i32** %16, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %16, align 8
  %41 = ptrtoint i32* %39 to i32
  %42 = call i32 @be32_to_cpup(i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call %struct.pnfs_block_volume* @kcalloc(i32 %43, i32 4, i32 %44)
  store %struct.pnfs_block_volume* %45, %struct.pnfs_block_volume** %8, align 8
  %46 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %8, align 8
  %47 = icmp ne %struct.pnfs_block_volume* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %38
  br label %97

49:                                               ; preds = %38
  store i32 0, i32* %15, align 4
  br label %50

50:                                               ; preds = %64, %49
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %50
  %55 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %8, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.pnfs_block_volume, %struct.pnfs_block_volume* %55, i64 %57
  %59 = call i32 @nfs4_block_decode_volume(%struct.xdr_stream* %10, %struct.pnfs_block_volume* %58)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %94

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %15, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %15, align 4
  br label %50

67:                                               ; preds = %50
  %68 = load i32, i32* %6, align 4
  %69 = call %struct.pnfs_block_dev* @kzalloc(i32 4, i32 %68)
  store %struct.pnfs_block_dev* %69, %struct.pnfs_block_dev** %9, align 8
  %70 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %9, align 8
  %71 = icmp ne %struct.pnfs_block_dev* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  br label %94

73:                                               ; preds = %67
  %74 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %75 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %9, align 8
  %76 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %8, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sub nsw i32 %77, 1
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @bl_parse_deviceid(%struct.nfs_server* %74, %struct.pnfs_block_dev* %75, %struct.pnfs_block_volume* %76, i32 %78, i32 %79)
  store i32 %80, i32* %14, align 4
  %81 = load %struct.pnfs_block_dev*, %struct.pnfs_block_dev** %9, align 8
  %82 = getelementptr inbounds %struct.pnfs_block_dev, %struct.pnfs_block_dev* %81, i32 0, i32 0
  store %struct.nfs4_deviceid_node* %82, %struct.nfs4_deviceid_node** %7, align 8
  %83 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %7, align 8
  %84 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %85 = load %struct.pnfs_device*, %struct.pnfs_device** %5, align 8
  %86 = getelementptr inbounds %struct.pnfs_device, %struct.pnfs_device* %85, i32 0, i32 0
  %87 = call i32 @nfs4_init_deviceid_node(%struct.nfs4_deviceid_node* %83, %struct.nfs_server* %84, i32* %86)
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %73
  %91 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %7, align 8
  %92 = call i32 @nfs4_mark_deviceid_unavailable(%struct.nfs4_deviceid_node* %91)
  br label %93

93:                                               ; preds = %90, %73
  br label %94

94:                                               ; preds = %93, %72, %62
  %95 = load %struct.pnfs_block_volume*, %struct.pnfs_block_volume** %8, align 8
  %96 = call i32 @kfree(%struct.pnfs_block_volume* %95)
  br label %97

97:                                               ; preds = %94, %48, %37
  %98 = load %struct.page*, %struct.page** %12, align 8
  %99 = call i32 @__free_page(%struct.page* %98)
  br label %100

100:                                              ; preds = %97, %21
  %101 = load %struct.nfs4_deviceid_node*, %struct.nfs4_deviceid_node** %7, align 8
  ret %struct.nfs4_deviceid_node* %101
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @xdr_init_decode_pages(%struct.xdr_stream*, %struct.xdr_buf*, i32, i32) #1

declare dso_local i32 @xdr_set_scratch_buffer(%struct.xdr_stream*, i32, i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i32 @be32_to_cpup(i32) #1

declare dso_local %struct.pnfs_block_volume* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @nfs4_block_decode_volume(%struct.xdr_stream*, %struct.pnfs_block_volume*) #1

declare dso_local %struct.pnfs_block_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @bl_parse_deviceid(%struct.nfs_server*, %struct.pnfs_block_dev*, %struct.pnfs_block_volume*, i32, i32) #1

declare dso_local i32 @nfs4_init_deviceid_node(%struct.nfs4_deviceid_node*, %struct.nfs_server*, i32*) #1

declare dso_local i32 @nfs4_mark_deviceid_unavailable(%struct.nfs4_deviceid_node*) #1

declare dso_local i32 @kfree(%struct.pnfs_block_volume*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
