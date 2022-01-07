; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_pg_init_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_pg_init_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { i32, i64, i32*, i32, %struct.nfs_pgio_mirror*, i32, i32 }
%struct.nfs_pgio_mirror = type { i32 }
%struct.nfs_page = type { i32 }
%struct.nfs4_ff_layout_mirror = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.nfs_commit_info = type { i32 }
%struct.nfs4_pnfs_ds = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@NFS4_MAX_UINT64 = common dso_local global i32 0, align 4
@IOMODE_RW = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@NFS_MOUNT_SOFT = common dso_local global i32 0, align 4
@NFS_MOUNT_SOFTERR = common dso_local global i32 0, align 4
@io_maxretrans = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_pageio_descriptor*, %struct.nfs_page*)* @ff_layout_pg_init_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ff_layout_pg_init_write(%struct.nfs_pageio_descriptor* %0, %struct.nfs_page* %1) #0 {
  %3 = alloca %struct.nfs_pageio_descriptor*, align 8
  %4 = alloca %struct.nfs_page*, align 8
  %5 = alloca %struct.nfs4_ff_layout_mirror*, align 8
  %6 = alloca %struct.nfs_pgio_mirror*, align 8
  %7 = alloca %struct.nfs_commit_info, align 4
  %8 = alloca %struct.nfs4_pnfs_ds*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %3, align 8
  store %struct.nfs_page* %1, %struct.nfs_page** %4, align 8
  br label %11

11:                                               ; preds = %107, %2
  %12 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %13 = call i32 @pnfs_generic_pg_check_layout(%struct.nfs_pageio_descriptor* %12)
  %14 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %15 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %45, label %18

18:                                               ; preds = %11
  %19 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %20 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %23 = call i32 @nfs_req_openctx(%struct.nfs_page* %22)
  %24 = load i32, i32* @NFS4_MAX_UINT64, align 4
  %25 = load i32, i32* @IOMODE_RW, align 4
  %26 = load i32, i32* @GFP_NOFS, align 4
  %27 = call i32* @pnfs_update_layout(i32 %21, i32 %23, i32 0, i32 %24, i32 %25, i32 0, i32 %26)
  %28 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %29 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %28, i32 0, i32 2
  store i32* %27, i32** %29, align 8
  %30 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %31 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = call i64 @IS_ERR(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %18
  %36 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %37 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @PTR_ERR(i32* %38)
  %40 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %41 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %43 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %42, i32 0, i32 2
  store i32* null, i32** %43, align 8
  br label %178

44:                                               ; preds = %18
  br label %45

45:                                               ; preds = %44, %11
  %46 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %47 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %152

51:                                               ; preds = %45
  %52 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %53 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %56 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @nfs_init_cinfo(%struct.nfs_commit_info* %7, i32 %54, i32 %57)
  %59 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %60 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* @GFP_NOFS, align 4
  %63 = call i32 @ff_layout_alloc_commit_info(i32* %61, %struct.nfs_commit_info* %7, i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %51
  br label %152

67:                                               ; preds = %51
  %68 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %69 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %72 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @FF_LAYOUT_MIRROR_COUNT(i32* %73)
  %75 = icmp ne i32 %70, %74
  %76 = zext i1 %75 to i32
  %77 = call i64 @WARN_ON_ONCE(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %67
  br label %152

80:                                               ; preds = %67
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %132, %80
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %84 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %135

87:                                               ; preds = %81
  %88 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %89 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call %struct.nfs4_ff_layout_mirror* @FF_LAYOUT_COMP(i32* %90, i32 %91)
  store %struct.nfs4_ff_layout_mirror* %92, %struct.nfs4_ff_layout_mirror** %5, align 8
  %93 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %94 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %5, align 8
  %97 = call %struct.nfs4_pnfs_ds* @nfs4_ff_layout_prepare_ds(i32* %95, %struct.nfs4_ff_layout_mirror* %96, i32 1)
  store %struct.nfs4_pnfs_ds* %97, %struct.nfs4_pnfs_ds** %8, align 8
  %98 = load %struct.nfs4_pnfs_ds*, %struct.nfs4_pnfs_ds** %8, align 8
  %99 = icmp ne %struct.nfs4_pnfs_ds* %98, null
  br i1 %99, label %115, label %100

100:                                              ; preds = %87
  %101 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %102 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @ff_layout_no_fallback_to_mds(i32* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %100
  br label %152

107:                                              ; preds = %100
  %108 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %109 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @pnfs_put_lseg(i32* %110)
  %112 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %113 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %112, i32 0, i32 2
  store i32* null, i32** %113, align 8
  %114 = call i32 @ssleep(i32 1)
  br label %11

115:                                              ; preds = %87
  %116 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %117 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %116, i32 0, i32 4
  %118 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.nfs_pgio_mirror, %struct.nfs_pgio_mirror* %118, i64 %120
  store %struct.nfs_pgio_mirror* %121, %struct.nfs_pgio_mirror** %6, align 8
  %122 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %5, align 8
  %123 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %122, i32 0, i32 0
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i64 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.nfs_pgio_mirror*, %struct.nfs_pgio_mirror** %6, align 8
  %131 = getelementptr inbounds %struct.nfs_pgio_mirror, %struct.nfs_pgio_mirror* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 4
  br label %132

132:                                              ; preds = %115
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %9, align 4
  br label %81

135:                                              ; preds = %81
  %136 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %137 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = call %struct.TYPE_7__* @NFS_SERVER(i32 %138)
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @NFS_MOUNT_SOFT, align 4
  %143 = load i32, i32* @NFS_MOUNT_SOFTERR, align 4
  %144 = or i32 %142, %143
  %145 = and i32 %141, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %135
  %148 = load i64, i64* @io_maxretrans, align 8
  %149 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %150 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %149, i32 0, i32 1
  store i64 %148, i64* %150, align 8
  br label %151

151:                                              ; preds = %147, %135
  br label %178

152:                                              ; preds = %106, %79, %66, %50
  %153 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %154 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @NFS4_MAX_UINT64, align 4
  %157 = load i32, i32* @IOMODE_RW, align 4
  %158 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %159 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = call %struct.TYPE_8__* @NFS_I(i32 %160)
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %165 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @trace_pnfs_mds_fallback_pg_init_write(i32 %155, i32 0, i32 %156, i32 %157, i32 %163, i32* %166)
  %168 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %169 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  %171 = call i32 @pnfs_put_lseg(i32* %170)
  %172 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %173 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %172, i32 0, i32 2
  store i32* null, i32** %173, align 8
  %174 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %175 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %174, i32 0, i32 1
  store i64 0, i64* %175, align 8
  %176 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %177 = call i32 @nfs_pageio_reset_write_mds(%struct.nfs_pageio_descriptor* %176)
  br label %178

178:                                              ; preds = %152, %151, %35
  ret void
}

declare dso_local i32 @pnfs_generic_pg_check_layout(%struct.nfs_pageio_descriptor*) #1

declare dso_local i32* @pnfs_update_layout(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nfs_req_openctx(%struct.nfs_page*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @nfs_init_cinfo(%struct.nfs_commit_info*, i32, i32) #1

declare dso_local i32 @ff_layout_alloc_commit_info(i32*, %struct.nfs_commit_info*, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @FF_LAYOUT_MIRROR_COUNT(i32*) #1

declare dso_local %struct.nfs4_ff_layout_mirror* @FF_LAYOUT_COMP(i32*, i32) #1

declare dso_local %struct.nfs4_pnfs_ds* @nfs4_ff_layout_prepare_ds(i32*, %struct.nfs4_ff_layout_mirror*, i32) #1

declare dso_local i32 @ff_layout_no_fallback_to_mds(i32*) #1

declare dso_local i32 @pnfs_put_lseg(i32*) #1

declare dso_local i32 @ssleep(i32) #1

declare dso_local %struct.TYPE_7__* @NFS_SERVER(i32) #1

declare dso_local i32 @trace_pnfs_mds_fallback_pg_init_write(i32, i32, i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_8__* @NFS_I(i32) #1

declare dso_local i32 @nfs_pageio_reset_write_mds(%struct.nfs_pageio_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
