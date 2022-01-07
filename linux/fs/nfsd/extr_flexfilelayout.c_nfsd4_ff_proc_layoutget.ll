; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_flexfilelayout.c_nfsd4_ff_proc_layoutget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_flexfilelayout.c_nfsd4_ff_proc_layoutget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.svc_fh = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.nfsd4_layoutget = type { %struct.pnfs_ff_layout*, %struct.nfsd4_layout_seg }
%struct.pnfs_ff_layout = type { i32, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.nfsd4_layout_seg = type { i64, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@FF_FLAGS_NO_LAYOUTCOMMIT = common dso_local global i32 0, align 4
@FF_FLAGS_NO_IO_THRU_MDS = common dso_local global i32 0, align 4
@FF_FLAGS_NO_READ_IO = common dso_local global i32 0, align 4
@IOMODE_READ = common dso_local global i64 0, align 8
@init_user_ns = common dso_local global i32 0, align 4
@NFS4_MAX_UINT64 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"GET: 0x%llx:0x%llx %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.svc_fh*, %struct.nfsd4_layoutget*)* @nfsd4_ff_proc_layoutget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_ff_proc_layoutget(%struct.inode* %0, %struct.svc_fh* %1, %struct.nfsd4_layoutget* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.svc_fh*, align 8
  %7 = alloca %struct.nfsd4_layoutget*, align 8
  %8 = alloca %struct.nfsd4_layout_seg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.pnfs_ff_layout*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %6, align 8
  store %struct.nfsd4_layoutget* %2, %struct.nfsd4_layoutget** %7, align 8
  %13 = load %struct.nfsd4_layoutget*, %struct.nfsd4_layoutget** %7, align 8
  %14 = getelementptr inbounds %struct.nfsd4_layoutget, %struct.nfsd4_layoutget* %13, i32 0, i32 1
  store %struct.nfsd4_layout_seg* %14, %struct.nfsd4_layout_seg** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.pnfs_ff_layout* @kzalloc(i32 24, i32 %17)
  store %struct.pnfs_ff_layout* %18, %struct.pnfs_ff_layout** %12, align 8
  %19 = load %struct.pnfs_ff_layout*, %struct.pnfs_ff_layout** %12, align 8
  %20 = icmp ne %struct.pnfs_ff_layout* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %103

22:                                               ; preds = %3
  %23 = load %struct.pnfs_ff_layout*, %struct.pnfs_ff_layout** %12, align 8
  %24 = load %struct.nfsd4_layoutget*, %struct.nfsd4_layoutget** %7, align 8
  %25 = getelementptr inbounds %struct.nfsd4_layoutget, %struct.nfsd4_layoutget* %24, i32 0, i32 0
  store %struct.pnfs_ff_layout* %23, %struct.pnfs_ff_layout** %25, align 8
  %26 = load i32, i32* @FF_FLAGS_NO_LAYOUTCOMMIT, align 4
  %27 = load i32, i32* @FF_FLAGS_NO_IO_THRU_MDS, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @FF_FLAGS_NO_READ_IO, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.pnfs_ff_layout*, %struct.pnfs_ff_layout** %12, align 8
  %32 = getelementptr inbounds %struct.pnfs_ff_layout, %struct.pnfs_ff_layout* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %8, align 8
  %34 = getelementptr inbounds %struct.nfsd4_layout_seg, %struct.nfsd4_layout_seg* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @IOMODE_READ, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %22
  %39 = load %struct.inode*, %struct.inode** %5, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @from_kuid(i32* @init_user_ns, i32 %41)
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call i32 @make_kuid(i32* @init_user_ns, i64 %44)
  %46 = load %struct.pnfs_ff_layout*, %struct.pnfs_ff_layout** %12, align 8
  %47 = getelementptr inbounds %struct.pnfs_ff_layout, %struct.pnfs_ff_layout* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  br label %54

48:                                               ; preds = %22
  %49 = load %struct.inode*, %struct.inode** %5, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.pnfs_ff_layout*, %struct.pnfs_ff_layout** %12, align 8
  %53 = getelementptr inbounds %struct.pnfs_ff_layout, %struct.pnfs_ff_layout* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %48, %38
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.pnfs_ff_layout*, %struct.pnfs_ff_layout** %12, align 8
  %59 = getelementptr inbounds %struct.pnfs_ff_layout, %struct.pnfs_ff_layout* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.pnfs_ff_layout*, %struct.pnfs_ff_layout** %12, align 8
  %61 = getelementptr inbounds %struct.pnfs_ff_layout, %struct.pnfs_ff_layout* %60, i32 0, i32 2
  %62 = load %struct.svc_fh*, %struct.svc_fh** %6, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @nfsd4_set_deviceid(i32* %61, %struct.svc_fh* %62, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %54
  br label %103

68:                                               ; preds = %54
  %69 = load %struct.svc_fh*, %struct.svc_fh** %6, align 8
  %70 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.pnfs_ff_layout*, %struct.pnfs_ff_layout** %12, align 8
  %74 = getelementptr inbounds %struct.pnfs_ff_layout, %struct.pnfs_ff_layout* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 4
  %76 = load %struct.pnfs_ff_layout*, %struct.pnfs_ff_layout** %12, align 8
  %77 = getelementptr inbounds %struct.pnfs_ff_layout, %struct.pnfs_ff_layout* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.svc_fh*, %struct.svc_fh** %6, align 8
  %81 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load %struct.pnfs_ff_layout*, %struct.pnfs_ff_layout** %12, align 8
  %84 = getelementptr inbounds %struct.pnfs_ff_layout, %struct.pnfs_ff_layout* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @memcpy(i32 %79, i32* %82, i32 %86)
  %88 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %8, align 8
  %89 = getelementptr inbounds %struct.nfsd4_layout_seg, %struct.nfsd4_layout_seg* %88, i32 0, i32 2
  store i64 0, i64* %89, align 8
  %90 = load i64, i64* @NFS4_MAX_UINT64, align 8
  %91 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %8, align 8
  %92 = getelementptr inbounds %struct.nfsd4_layout_seg, %struct.nfsd4_layout_seg* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  %93 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %8, align 8
  %94 = getelementptr inbounds %struct.nfsd4_layout_seg, %struct.nfsd4_layout_seg* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %8, align 8
  %97 = getelementptr inbounds %struct.nfsd4_layout_seg, %struct.nfsd4_layout_seg* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %8, align 8
  %100 = getelementptr inbounds %struct.nfsd4_layout_seg, %struct.nfsd4_layout_seg* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %95, i64 %98, i64 %101)
  store i32 0, i32* %4, align 4
  br label %108

103:                                              ; preds = %67, %21
  %104 = load %struct.nfsd4_layout_seg*, %struct.nfsd4_layout_seg** %8, align 8
  %105 = getelementptr inbounds %struct.nfsd4_layout_seg, %struct.nfsd4_layout_seg* %104, i32 0, i32 1
  store i64 0, i64* %105, align 8
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @nfserrno(i32 %106)
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %103, %68
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local %struct.pnfs_ff_layout* @kzalloc(i32, i32) #1

declare dso_local i64 @from_kuid(i32*, i32) #1

declare dso_local i32 @make_kuid(i32*, i64) #1

declare dso_local i32 @nfsd4_set_deviceid(i32*, %struct.svc_fh*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @dprintk(i8*, i64, i64, i64) #1

declare dso_local i32 @nfserrno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
