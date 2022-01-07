; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_compare_mount_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_compare_mount_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, %struct.nfs_server* }
%struct.nfs_server = type { i64, i32, i64, i64, i64, i64, i64, i64, %struct.rpc_clnt* }
%struct.rpc_clnt = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@NFS_MS_MASK = common dso_local global i32 0, align 4
@NFS_MOUNT_CMP_FLAGMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.nfs_server*, i32)* @nfs_compare_mount_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_compare_mount_options(%struct.super_block* %0, %struct.nfs_server* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.nfs_server*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfs_server*, align 8
  %9 = alloca %struct.rpc_clnt*, align 8
  %10 = alloca %struct.rpc_clnt*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.nfs_server* %1, %struct.nfs_server** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = getelementptr inbounds %struct.super_block, %struct.super_block* %11, i32 0, i32 1
  %13 = load %struct.nfs_server*, %struct.nfs_server** %12, align 8
  store %struct.nfs_server* %13, %struct.nfs_server** %8, align 8
  %14 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %15 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %14, i32 0, i32 8
  %16 = load %struct.rpc_clnt*, %struct.rpc_clnt** %15, align 8
  store %struct.rpc_clnt* %16, %struct.rpc_clnt** %9, align 8
  %17 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %18 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %17, i32 0, i32 8
  %19 = load %struct.rpc_clnt*, %struct.rpc_clnt** %18, align 8
  store %struct.rpc_clnt* %19, %struct.rpc_clnt** %10, align 8
  %20 = load %struct.super_block*, %struct.super_block** %5, align 8
  %21 = getelementptr inbounds %struct.super_block, %struct.super_block* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @NFS_MS_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @NFS_MS_MASK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %119

30:                                               ; preds = %3
  %31 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %32 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %35 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %119

39:                                               ; preds = %30
  %40 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %41 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %44 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = xor i32 %42, %45
  %47 = load i32, i32* @NFS_MOUNT_CMP_FLAGMASK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %119

51:                                               ; preds = %39
  %52 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %53 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %56 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %119

60:                                               ; preds = %51
  %61 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %62 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %65 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %119

69:                                               ; preds = %60
  %70 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %71 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %74 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %72, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %119

78:                                               ; preds = %69
  %79 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %80 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %83 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %81, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %119

87:                                               ; preds = %78
  %88 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %89 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %88, i32 0, i32 6
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %92 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %91, i32 0, i32 6
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %90, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  br label %119

96:                                               ; preds = %87
  %97 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %98 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %97, i32 0, i32 7
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %101 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %100, i32 0, i32 7
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %99, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  br label %119

105:                                              ; preds = %96
  %106 = load %struct.rpc_clnt*, %struct.rpc_clnt** %9, align 8
  %107 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.rpc_clnt*, %struct.rpc_clnt** %10, align 8
  %112 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %111, i32 0, i32 0
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %110, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %105
  br label %119

118:                                              ; preds = %105
  store i32 1, i32* %4, align 4
  br label %120

119:                                              ; preds = %117, %104, %95, %86, %77, %68, %59, %50, %38, %29
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %119, %118
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
