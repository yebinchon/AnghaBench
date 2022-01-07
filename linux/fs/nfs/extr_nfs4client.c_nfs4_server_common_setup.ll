; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4client.c_nfs4_server_common_setup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4client.c_nfs4_server_common_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32, i64, i32, i32, %struct.TYPE_10__, i32, %struct.TYPE_9__*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fattr = type { i32 }

@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFS_MOUNT_NORDIRPLUS = common dso_local global i32 0, align 4
@NFS_CAP_READDIRPLUS = common dso_local global i32 0, align 4
@nfs4_disable_idmapping = common dso_local global i64 0, align 8
@RPC_AUTH_UNIX = common dso_local global i64 0, align 8
@NFS_CAP_UIDGID_NOMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Server FSID: %llx:%llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Pseudo-fs root FH\00", align 1
@NFS4_MAXNAMLEN = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@nfs4_destroy_server = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*, %struct.nfs_fh*, i32)* @nfs4_server_common_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_server_common_setup(%struct.nfs_server* %0, %struct.nfs_fh* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfs_server*, align 8
  %6 = alloca %struct.nfs_fh*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfs_fattr*, align 8
  %9 = alloca i32, align 4
  store %struct.nfs_server* %0, %struct.nfs_server** %5, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %11 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %10, i32 0, i32 7
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %13 = call i64 @is_ds_only_client(%struct.TYPE_11__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EPROTONOSUPPORT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %134

18:                                               ; preds = %3
  %19 = call %struct.nfs_fattr* (...) @nfs_alloc_fattr()
  store %struct.nfs_fattr* %19, %struct.nfs_fattr** %8, align 8
  %20 = load %struct.nfs_fattr*, %struct.nfs_fattr** %8, align 8
  %21 = icmp eq %struct.nfs_fattr* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %134

25:                                               ; preds = %18
  %26 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %27 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %26, i32 0, i32 7
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = call i32 @nfs4_init_session(%struct.TYPE_11__* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %130

33:                                               ; preds = %25
  %34 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %35 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %34, i32 0, i32 7
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %42 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %46 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @NFS_MOUNT_NORDIRPLUS, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %33
  %52 = load i32, i32* @NFS_CAP_READDIRPLUS, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %55 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %51, %33
  %59 = load i64, i64* @nfs4_disable_idmapping, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %58
  %62 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %63 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %62, i32 0, i32 6
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @RPC_AUTH_UNIX, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %61
  %72 = load i32, i32* @NFS_CAP_UIDGID_NOMAP, align 4
  %73 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %74 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %71, %61, %58
  %78 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %79 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @nfs4_get_rootfh(%struct.nfs_server* %78, %struct.nfs_fh* %79, i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %130

85:                                               ; preds = %77
  %86 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %87 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %91 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %89, i64 %93)
  %95 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  %96 = call i32 @nfs_display_fhandle(%struct.nfs_fh* %95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %97 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %98 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  %99 = load %struct.nfs_fattr*, %struct.nfs_fattr** %8, align 8
  %100 = call i32 @nfs_probe_fsinfo(%struct.nfs_server* %97, %struct.nfs_fh* %98, %struct.nfs_fattr* %99)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %85
  br label %130

104:                                              ; preds = %85
  %105 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %106 = call i32 @nfs4_session_limit_rwsize(%struct.nfs_server* %105)
  %107 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %108 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %117, label %111

111:                                              ; preds = %104
  %112 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %113 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @NFS4_MAXNAMLEN, align 8
  %116 = icmp sgt i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %111, %104
  %118 = load i64, i64* @NFS4_MAXNAMLEN, align 8
  %119 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %120 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %119, i32 0, i32 1
  store i64 %118, i64* %120, align 8
  br label %121

121:                                              ; preds = %117, %111
  %122 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %123 = call i32 @nfs_server_insert_lists(%struct.nfs_server* %122)
  %124 = load i32, i32* @jiffies, align 4
  %125 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %126 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @nfs4_destroy_server, align 4
  %128 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %129 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  br label %130

130:                                              ; preds = %121, %103, %84, %32
  %131 = load %struct.nfs_fattr*, %struct.nfs_fattr** %8, align 8
  %132 = call i32 @nfs_free_fattr(%struct.nfs_fattr* %131)
  %133 = load i32, i32* %9, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %130, %22, %15
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i64 @is_ds_only_client(%struct.TYPE_11__*) #1

declare dso_local %struct.nfs_fattr* @nfs_alloc_fattr(...) #1

declare dso_local i32 @nfs4_init_session(%struct.TYPE_11__*) #1

declare dso_local i32 @nfs4_get_rootfh(%struct.nfs_server*, %struct.nfs_fh*, i32) #1

declare dso_local i32 @dprintk(i8*, i64, i64) #1

declare dso_local i32 @nfs_display_fhandle(%struct.nfs_fh*, i8*) #1

declare dso_local i32 @nfs_probe_fsinfo(%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fattr*) #1

declare dso_local i32 @nfs4_session_limit_rwsize(%struct.nfs_server*) #1

declare dso_local i32 @nfs_server_insert_lists(%struct.nfs_server*) #1

declare dso_local i32 @nfs_free_fattr(%struct.nfs_fattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
