; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42proc.c_nfs42_proc_clone.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42proc.c_nfs42_proc_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.rpc_message = type { i32* }
%struct.inode = type { i32 }
%struct.nfs_server = type { i32 }
%struct.nfs_lock_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nfs4_exception = type { i64, i32, %struct.inode* }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_CLONE = common dso_local global i64 0, align 8
@NFS_CAP_CLONE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs42_proc_clone(%struct.file* %0, %struct.file* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rpc_message, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.nfs_server*, align 8
  %15 = alloca %struct.nfs_lock_context*, align 8
  %16 = alloca %struct.nfs_lock_context*, align 8
  %17 = alloca %struct.nfs4_exception, align 8
  %18 = alloca %struct.nfs4_exception, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store %struct.file* %1, %struct.file** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %21 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %12, i32 0, i32 0
  %22 = load i32*, i32** @nfs4_procedures, align 8
  %23 = load i64, i64* @NFSPROC4_CLNT_CLONE, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32* %24, i32** %21, align 8
  %25 = load %struct.file*, %struct.file** %7, align 8
  %26 = call %struct.inode* @file_inode(%struct.file* %25)
  store %struct.inode* %26, %struct.inode** %13, align 8
  %27 = load %struct.file*, %struct.file** %7, align 8
  %28 = call %struct.inode* @file_inode(%struct.file* %27)
  %29 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %28)
  store %struct.nfs_server* %29, %struct.nfs_server** %14, align 8
  %30 = bitcast %struct.nfs4_exception* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 24, i1 false)
  %31 = bitcast %struct.nfs4_exception* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 24, i1 false)
  %32 = load %struct.inode*, %struct.inode** %13, align 8
  %33 = load i32, i32* @NFS_CAP_CLONE, align 4
  %34 = call i32 @nfs_server_capable(%struct.inode* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %5
  %37 = load i32, i32* @EOPNOTSUPP, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %135

39:                                               ; preds = %5
  %40 = load %struct.file*, %struct.file** %7, align 8
  %41 = call i32 @nfs_file_open_context(%struct.file* %40)
  %42 = call %struct.nfs_lock_context* @nfs_get_lock_context(i32 %41)
  store %struct.nfs_lock_context* %42, %struct.nfs_lock_context** %15, align 8
  %43 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %15, align 8
  %44 = call i64 @IS_ERR(%struct.nfs_lock_context* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %15, align 8
  %48 = call i32 @PTR_ERR(%struct.nfs_lock_context* %47)
  store i32 %48, i32* %6, align 4
  br label %135

49:                                               ; preds = %39
  %50 = load %struct.file*, %struct.file** %7, align 8
  %51 = call %struct.inode* @file_inode(%struct.file* %50)
  %52 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %17, i32 0, i32 2
  store %struct.inode* %51, %struct.inode** %52, align 8
  %53 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %15, align 8
  %54 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %17, i32 0, i32 1
  store i32 %57, i32* %58, align 8
  %59 = load %struct.file*, %struct.file** %8, align 8
  %60 = call i32 @nfs_file_open_context(%struct.file* %59)
  %61 = call %struct.nfs_lock_context* @nfs_get_lock_context(i32 %60)
  store %struct.nfs_lock_context* %61, %struct.nfs_lock_context** %16, align 8
  %62 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %16, align 8
  %63 = call i64 @IS_ERR(%struct.nfs_lock_context* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %49
  %66 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %16, align 8
  %67 = call i32 @PTR_ERR(%struct.nfs_lock_context* %66)
  store i32 %67, i32* %19, align 4
  br label %131

68:                                               ; preds = %49
  %69 = load %struct.file*, %struct.file** %8, align 8
  %70 = call %struct.inode* @file_inode(%struct.file* %69)
  %71 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %18, i32 0, i32 2
  store %struct.inode* %70, %struct.inode** %71, align 8
  %72 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %16, align 8
  %73 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %18, i32 0, i32 1
  store i32 %76, i32* %77, align 8
  br label %78

78:                                               ; preds = %126, %68
  %79 = load %struct.file*, %struct.file** %7, align 8
  %80 = load %struct.file*, %struct.file** %8, align 8
  %81 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %15, align 8
  %82 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %16, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @_nfs42_proc_clone(%struct.rpc_message* %12, %struct.file* %79, %struct.file* %80, %struct.nfs_lock_context* %81, %struct.nfs_lock_context* %82, i32 %83, i32 %84, i32 %85)
  store i32 %86, i32* %19, align 4
  %87 = load i32, i32* %19, align 4
  %88 = load i32, i32* @ENOTSUPP, align 4
  %89 = sub nsw i32 0, %88
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %96, label %91

91:                                               ; preds = %78
  %92 = load i32, i32* %19, align 4
  %93 = load i32, i32* @EOPNOTSUPP, align 4
  %94 = sub nsw i32 0, %93
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %91, %78
  %97 = load i32, i32* @NFS_CAP_CLONE, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.inode*, %struct.inode** %13, align 8
  %100 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %99)
  %101 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, %98
  store i32 %103, i32* %101, align 4
  %104 = load i32, i32* @EOPNOTSUPP, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %19, align 4
  br label %128

106:                                              ; preds = %91
  %107 = load %struct.nfs_server*, %struct.nfs_server** %14, align 8
  %108 = load i32, i32* %19, align 4
  %109 = call i32 @nfs4_handle_exception(%struct.nfs_server* %107, i32 %108, %struct.nfs4_exception* %17)
  store i32 %109, i32* %20, align 4
  %110 = load %struct.nfs_server*, %struct.nfs_server** %14, align 8
  %111 = load i32, i32* %19, align 4
  %112 = call i32 @nfs4_handle_exception(%struct.nfs_server* %110, i32 %111, %struct.nfs4_exception* %18)
  store i32 %112, i32* %19, align 4
  %113 = load i32, i32* %19, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %106
  %116 = load i32, i32* %20, align 4
  store i32 %116, i32* %19, align 4
  br label %117

117:                                              ; preds = %115, %106
  br label %118

118:                                              ; preds = %117
  %119 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %17, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %18, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br label %126

126:                                              ; preds = %122, %118
  %127 = phi i1 [ true, %118 ], [ %125, %122 ]
  br i1 %127, label %78, label %128

128:                                              ; preds = %126, %96
  %129 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %16, align 8
  %130 = call i32 @nfs_put_lock_context(%struct.nfs_lock_context* %129)
  br label %131

131:                                              ; preds = %128, %65
  %132 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %15, align 8
  %133 = call i32 @nfs_put_lock_context(%struct.nfs_lock_context* %132)
  %134 = load i32, i32* %19, align 4
  store i32 %134, i32* %6, align 4
  br label %135

135:                                              ; preds = %131, %46, %36
  %136 = load i32, i32* %6, align 4
  ret i32 %136
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @nfs_server_capable(%struct.inode*, i32) #1

declare dso_local %struct.nfs_lock_context* @nfs_get_lock_context(i32) #1

declare dso_local i32 @nfs_file_open_context(%struct.file*) #1

declare dso_local i64 @IS_ERR(%struct.nfs_lock_context*) #1

declare dso_local i32 @PTR_ERR(%struct.nfs_lock_context*) #1

declare dso_local i32 @_nfs42_proc_clone(%struct.rpc_message*, %struct.file*, %struct.file*, %struct.nfs_lock_context*, %struct.nfs_lock_context*, i32, i32, i32) #1

declare dso_local i32 @nfs4_handle_exception(%struct.nfs_server*, i32, %struct.nfs4_exception*) #1

declare dso_local i32 @nfs_put_lock_context(%struct.nfs_lock_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
