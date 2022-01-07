; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_pg_init_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_pg_init_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { i32, i64, i64, i32*, i32, %struct.nfs_pgio_mirror* }
%struct.nfs_pgio_mirror = type { i32 }
%struct.nfs_page = type { i32 }
%struct.nfs4_ff_layout_mirror = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.nfs4_pnfs_ds = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@NFS_MOUNT_SOFT = common dso_local global i32 0, align 4
@NFS_MOUNT_SOFTERR = common dso_local global i32 0, align 4
@io_maxretrans = common dso_local global i64 0, align 8
@NFS4_MAX_UINT64 = common dso_local global i32 0, align 4
@IOMODE_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_pageio_descriptor*, %struct.nfs_page*)* @ff_layout_pg_init_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ff_layout_pg_init_read(%struct.nfs_pageio_descriptor* %0, %struct.nfs_page* %1) #0 {
  %3 = alloca %struct.nfs_pageio_descriptor*, align 8
  %4 = alloca %struct.nfs_page*, align 8
  %5 = alloca %struct.nfs_pgio_mirror*, align 8
  %6 = alloca %struct.nfs4_ff_layout_mirror*, align 8
  %7 = alloca %struct.nfs4_pnfs_ds*, align 8
  %8 = alloca i32, align 4
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %3, align 8
  store %struct.nfs_page* %1, %struct.nfs_page** %4, align 8
  br label %9

9:                                                ; preds = %56, %2
  %10 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %11 = call i32 @pnfs_generic_pg_check_layout(%struct.nfs_pageio_descriptor* %10)
  %12 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %13 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %9
  %17 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %18 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %19 = call i32 @ff_layout_pg_get_read(%struct.nfs_pageio_descriptor* %17, %struct.nfs_page* %18, i32 0)
  %20 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %21 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  br label %103

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25, %9
  %27 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %28 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = call i64 @ff_layout_avoid_read_on_rw(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %34 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %35 = call i32 @ff_layout_pg_get_read(%struct.nfs_pageio_descriptor* %33, %struct.nfs_page* %34, i32 1)
  %36 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %37 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  br label %103

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %26
  %43 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %44 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = call %struct.nfs4_pnfs_ds* @ff_layout_choose_best_ds_for_read(i32* %45, i32 0, i32* %8)
  store %struct.nfs4_pnfs_ds* %46, %struct.nfs4_pnfs_ds** %7, align 8
  %47 = load %struct.nfs4_pnfs_ds*, %struct.nfs4_pnfs_ds** %7, align 8
  %48 = icmp ne %struct.nfs4_pnfs_ds* %47, null
  br i1 %48, label %64, label %49

49:                                               ; preds = %42
  %50 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %51 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @ff_layout_no_fallback_to_mds(i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  br label %110

56:                                               ; preds = %49
  %57 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %58 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @pnfs_put_lseg(i32* %59)
  %61 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %62 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %61, i32 0, i32 3
  store i32* null, i32** %62, align 8
  %63 = call i32 @ssleep(i32 1)
  br label %9

64:                                               ; preds = %42
  %65 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %66 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call %struct.nfs4_ff_layout_mirror* @FF_LAYOUT_COMP(i32* %67, i32 %68)
  store %struct.nfs4_ff_layout_mirror* %69, %struct.nfs4_ff_layout_mirror** %6, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %72 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %74 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %73, i32 0, i32 5
  %75 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %74, align 8
  %76 = getelementptr inbounds %struct.nfs_pgio_mirror, %struct.nfs_pgio_mirror* %75, i64 0
  store %struct.nfs_pgio_mirror* %76, %struct.nfs_pgio_mirror** %5, align 8
  %77 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %6, align 8
  %78 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %5, align 8
  %86 = getelementptr inbounds %struct.nfs_pgio_mirror, %struct.nfs_pgio_mirror* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %88 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = call %struct.TYPE_7__* @NFS_SERVER(i32 %89)
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @NFS_MOUNT_SOFT, align 4
  %94 = load i32, i32* @NFS_MOUNT_SOFTERR, align 4
  %95 = or i32 %93, %94
  %96 = and i32 %92, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %64
  %99 = load i64, i64* @io_maxretrans, align 8
  %100 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %101 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %98, %64
  br label %136

103:                                              ; preds = %40, %24
  %104 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %105 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %136

109:                                              ; preds = %103
  br label %110

110:                                              ; preds = %109, %55
  %111 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %112 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @NFS4_MAX_UINT64, align 4
  %115 = load i32, i32* @IOMODE_READ, align 4
  %116 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %117 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = call %struct.TYPE_8__* @NFS_I(i32 %118)
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %123 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @trace_pnfs_mds_fallback_pg_init_read(i32 %113, i32 0, i32 %114, i32 %115, i32 %121, i32* %124)
  %126 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %127 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @pnfs_put_lseg(i32* %128)
  %130 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %131 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %130, i32 0, i32 3
  store i32* null, i32** %131, align 8
  %132 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %133 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %132, i32 0, i32 2
  store i64 0, i64* %133, align 8
  %134 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %135 = call i32 @nfs_pageio_reset_read_mds(%struct.nfs_pageio_descriptor* %134)
  br label %136

136:                                              ; preds = %110, %108, %102
  ret void
}

declare dso_local i32 @pnfs_generic_pg_check_layout(%struct.nfs_pageio_descriptor*) #1

declare dso_local i32 @ff_layout_pg_get_read(%struct.nfs_pageio_descriptor*, %struct.nfs_page*, i32) #1

declare dso_local i64 @ff_layout_avoid_read_on_rw(i32*) #1

declare dso_local %struct.nfs4_pnfs_ds* @ff_layout_choose_best_ds_for_read(i32*, i32, i32*) #1

declare dso_local i32 @ff_layout_no_fallback_to_mds(i32*) #1

declare dso_local i32 @pnfs_put_lseg(i32*) #1

declare dso_local i32 @ssleep(i32) #1

declare dso_local %struct.nfs4_ff_layout_mirror* @FF_LAYOUT_COMP(i32*, i32) #1

declare dso_local %struct.TYPE_7__* @NFS_SERVER(i32) #1

declare dso_local i32 @trace_pnfs_mds_fallback_pg_init_read(i32, i32, i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_8__* @NFS_I(i32) #1

declare dso_local i32 @nfs_pageio_reset_read_mds(%struct.nfs_pageio_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
