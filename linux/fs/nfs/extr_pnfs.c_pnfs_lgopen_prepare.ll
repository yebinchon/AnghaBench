; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_lgopen_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_lgopen_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_opendata = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.nfs_open_context = type { i32 }
%struct.nfs_server = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@PNFS_LAYOUTGET_ON_OPEN = common dso_local global i32 0, align 4
@NFS_CAP_LGOPEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pnfs_lgopen_prepare(%struct.nfs4_opendata* %0, %struct.nfs_open_context* %1) #0 {
  %3 = alloca %struct.nfs4_opendata*, align 8
  %4 = alloca %struct.nfs_open_context*, align 8
  %5 = alloca %struct.nfs_server*, align 8
  store %struct.nfs4_opendata* %0, %struct.nfs4_opendata** %3, align 8
  store %struct.nfs_open_context* %1, %struct.nfs_open_context** %4, align 8
  %6 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %7 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.nfs_server* @NFS_SERVER(i32 %10)
  store %struct.nfs_server* %11, %struct.nfs_server** %5, align 8
  %12 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %13 = call i64 @pnfs_enabled_sb(%struct.nfs_server* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %17 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PNFS_LAYOUTGET_ON_OPEN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %15, %2
  br label %48

25:                                               ; preds = %15
  %26 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %27 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @NFS_CAP_LGOPEN, align 4
  %32 = call i32 @nfs_server_capable(i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  br label %48

35:                                               ; preds = %25
  %36 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %37 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %42 = load %struct.nfs_open_context*, %struct.nfs_open_context** %4, align 8
  %43 = call i32 @_lgopen_prepare_attached(%struct.nfs4_opendata* %41, %struct.nfs_open_context* %42)
  br label %48

44:                                               ; preds = %35
  %45 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %46 = load %struct.nfs_open_context*, %struct.nfs_open_context** %4, align 8
  %47 = call i32 @_lgopen_prepare_floating(%struct.nfs4_opendata* %45, %struct.nfs_open_context* %46)
  br label %48

48:                                               ; preds = %24, %34, %44, %40
  ret void
}

declare dso_local %struct.nfs_server* @NFS_SERVER(i32) #1

declare dso_local i64 @pnfs_enabled_sb(%struct.nfs_server*) #1

declare dso_local i32 @nfs_server_capable(i32, i32) #1

declare dso_local i32 @_lgopen_prepare_attached(%struct.nfs4_opendata*, %struct.nfs_open_context*) #1

declare dso_local i32 @_lgopen_prepare_floating(%struct.nfs4_opendata*, %struct.nfs_open_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
