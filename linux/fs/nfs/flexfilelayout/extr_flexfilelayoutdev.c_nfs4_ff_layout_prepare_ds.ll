; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayoutdev.c_nfs4_ff_layout_prepare_ds.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayoutdev.c_nfs4_ff_layout_prepare_ds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_pnfs_ds = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.pnfs_layout_segment = type { %struct.TYPE_10__, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.nfs4_ff_layout_mirror = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32, %struct.nfs4_pnfs_ds* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.nfs_server = type { i32 }

@dataserver_timeo = common dso_local global i32 0, align 4
@dataserver_retrans = common dso_local global i32 0, align 4
@NFS4ERR_NXIO = common dso_local global i32 0, align 4
@OP_ILLEGAL = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfs4_pnfs_ds* @nfs4_ff_layout_prepare_ds(%struct.pnfs_layout_segment* %0, %struct.nfs4_ff_layout_mirror* %1, i32 %2) #0 {
  %4 = alloca %struct.pnfs_layout_segment*, align 8
  %5 = alloca %struct.nfs4_ff_layout_mirror*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfs4_pnfs_ds*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.nfs_server*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pnfs_layout_segment* %0, %struct.pnfs_layout_segment** %4, align 8
  store %struct.nfs4_ff_layout_mirror* %1, %struct.nfs4_ff_layout_mirror** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.nfs4_pnfs_ds* null, %struct.nfs4_pnfs_ds** %7, align 8
  %12 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %4, align 8
  %13 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %12, i32 0, i32 1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %8, align 8
  %17 = load %struct.inode*, %struct.inode** %8, align 8
  %18 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %17)
  store %struct.nfs_server* %18, %struct.nfs_server** %9, align 8
  %19 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %4, align 8
  %20 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %19, i32 0, i32 1
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %5, align 8
  %23 = call i32 @ff_layout_init_mirror_ds(%struct.TYPE_11__* %21, %struct.nfs4_ff_layout_mirror* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  br label %115

26:                                               ; preds = %3
  %27 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %5, align 8
  %28 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  %31 = load %struct.nfs4_pnfs_ds*, %struct.nfs4_pnfs_ds** %30, align 8
  store %struct.nfs4_pnfs_ds* %31, %struct.nfs4_pnfs_ds** %7, align 8
  %32 = call i32 (...) @smp_rmb()
  %33 = load %struct.nfs4_pnfs_ds*, %struct.nfs4_pnfs_ds** %7, align 8
  %34 = getelementptr inbounds %struct.nfs4_pnfs_ds, %struct.nfs4_pnfs_ds* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = icmp ne %struct.TYPE_7__* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %146

38:                                               ; preds = %26
  %39 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %40 = load %struct.nfs4_pnfs_ds*, %struct.nfs4_pnfs_ds** %7, align 8
  %41 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %5, align 8
  %42 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %41, i32 0, i32 0
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i32, i32* @dataserver_timeo, align 4
  %46 = load i32, i32* @dataserver_retrans, align 4
  %47 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %5, align 8
  %48 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %47, i32 0, i32 0
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %5, align 8
  %56 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @nfs4_pnfs_ds_connect(%struct.nfs_server* %39, %struct.nfs4_pnfs_ds* %40, i32* %44, i32 %45, i32 %46, i32 %54, i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %114, label %66

66:                                               ; preds = %38
  %67 = load %struct.nfs4_pnfs_ds*, %struct.nfs4_pnfs_ds** %7, align 8
  %68 = getelementptr inbounds %struct.nfs4_pnfs_ds, %struct.nfs4_pnfs_ds* %67, i32 0, i32 0
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @rpc_max_payload(i32 %71)
  %73 = call i32 @nfs_block_size(i32 %72, i32* null)
  store i32 %73, i32* %10, align 4
  %74 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %5, align 8
  %75 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp ugt i32 %81, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %66
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %5, align 8
  %87 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %86, i32 0, i32 0
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  store i32 %85, i32* %92, align 4
  br label %93

93:                                               ; preds = %84, %66
  %94 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %5, align 8
  %95 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %94, i32 0, i32 0
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i64 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp ugt i32 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %93
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %5, align 8
  %107 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %106, i32 0, i32 0
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  store i32 %105, i32* %112, align 4
  br label %113

113:                                              ; preds = %104, %93
  br label %146

114:                                              ; preds = %38
  br label %115

115:                                              ; preds = %114, %25
  %116 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %4, align 8
  %117 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %116, i32 0, i32 1
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = call i32 @FF_LAYOUT_FROM_HDR(%struct.TYPE_11__* %118)
  %120 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %5, align 8
  %121 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %4, align 8
  %122 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %4, align 8
  %126 = getelementptr inbounds %struct.pnfs_layout_segment, %struct.pnfs_layout_segment* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @NFS4ERR_NXIO, align 4
  %130 = load i32, i32* @OP_ILLEGAL, align 4
  %131 = load i32, i32* @GFP_NOIO, align 4
  %132 = call i32 @ff_layout_track_ds_error(i32 %119, %struct.nfs4_ff_layout_mirror* %120, i32 %124, i32 %128, i32 %129, i32 %130, i32 %131)
  %133 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %4, align 8
  %134 = call i32 @ff_layout_send_layouterror(%struct.pnfs_layout_segment* %133)
  %135 = load i32, i32* %6, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %115
  %138 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %4, align 8
  %139 = call i32 @ff_layout_has_available_ds(%struct.pnfs_layout_segment* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %137, %115
  %142 = load %struct.inode*, %struct.inode** %8, align 8
  %143 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %4, align 8
  %144 = call i32 @pnfs_error_mark_layout_for_return(%struct.inode* %142, %struct.pnfs_layout_segment* %143)
  br label %145

145:                                              ; preds = %141, %137
  store %struct.nfs4_pnfs_ds* null, %struct.nfs4_pnfs_ds** %7, align 8
  br label %146

146:                                              ; preds = %145, %113, %37
  %147 = load %struct.nfs4_pnfs_ds*, %struct.nfs4_pnfs_ds** %7, align 8
  ret %struct.nfs4_pnfs_ds* %147
}

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @ff_layout_init_mirror_ds(%struct.TYPE_11__*, %struct.nfs4_ff_layout_mirror*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @nfs4_pnfs_ds_connect(%struct.nfs_server*, %struct.nfs4_pnfs_ds*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @nfs_block_size(i32, i32*) #1

declare dso_local i32 @rpc_max_payload(i32) #1

declare dso_local i32 @ff_layout_track_ds_error(i32, %struct.nfs4_ff_layout_mirror*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FF_LAYOUT_FROM_HDR(%struct.TYPE_11__*) #1

declare dso_local i32 @ff_layout_send_layouterror(%struct.pnfs_layout_segment*) #1

declare dso_local i32 @ff_layout_has_available_ds(%struct.pnfs_layout_segment*) #1

declare dso_local i32 @pnfs_error_mark_layout_for_return(%struct.inode*, %struct.pnfs_layout_segment*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
