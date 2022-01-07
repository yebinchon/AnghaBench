; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42proc.c_nfs42_proc_copy.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs42proc.c_nfs42_proc_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.nfs_server = type { i32 }
%struct.nfs_lock_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nfs42_copy_args = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.nfs42_copy_res = type { i32 }
%struct.nfs4_exception = type { i32, i32, i32*, i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@NFS4ERR_OFFLOAD_NO_REQS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs42_proc_copy(%struct.file* %0, i32 %1, %struct.file* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.nfs_server*, align 8
  %13 = alloca %struct.nfs_lock_context*, align 8
  %14 = alloca %struct.nfs_lock_context*, align 8
  %15 = alloca %struct.nfs42_copy_args, align 8
  %16 = alloca %struct.nfs42_copy_res, align 4
  %17 = alloca %struct.nfs4_exception, align 8
  %18 = alloca %struct.nfs4_exception, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.file* %2, %struct.file** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %21 = load %struct.file*, %struct.file** %9, align 8
  %22 = call i32 @file_inode(%struct.file* %21)
  %23 = call %struct.nfs_server* @NFS_SERVER(i32 %22)
  store %struct.nfs_server* %23, %struct.nfs_server** %12, align 8
  %24 = getelementptr inbounds %struct.nfs42_copy_args, %struct.nfs42_copy_args* %15, i32 0, i32 0
  %25 = load i64, i64* %11, align 8
  store i64 %25, i64* %24, align 8
  %26 = getelementptr inbounds %struct.nfs42_copy_args, %struct.nfs42_copy_args* %15, i32 0, i32 1
  store i32 0, i32* %26, align 8
  %27 = getelementptr inbounds %struct.nfs42_copy_args, %struct.nfs42_copy_args* %15, i32 0, i32 2
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.nfs42_copy_args, %struct.nfs42_copy_args* %15, i32 0, i32 3
  store i32 0, i32* %28, align 8
  %29 = getelementptr inbounds %struct.nfs42_copy_args, %struct.nfs42_copy_args* %15, i32 0, i32 4
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds %struct.nfs42_copy_args, %struct.nfs42_copy_args* %15, i32 0, i32 5
  %32 = load %struct.file*, %struct.file** %9, align 8
  %33 = call i32 @file_inode(%struct.file* %32)
  %34 = call i32 @NFS_FH(i32 %33)
  store i32 %34, i32* %31, align 8
  %35 = getelementptr inbounds %struct.nfs42_copy_args, %struct.nfs42_copy_args* %15, i32 0, i32 6
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %35, align 4
  %37 = getelementptr inbounds %struct.nfs42_copy_args, %struct.nfs42_copy_args* %15, i32 0, i32 7
  %38 = load %struct.file*, %struct.file** %7, align 8
  %39 = call i32 @file_inode(%struct.file* %38)
  %40 = call i32 @NFS_FH(i32 %39)
  store i32 %40, i32* %37, align 8
  %41 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %17, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %17, i32 0, i32 1
  store i32 0, i32* %42, align 4
  %43 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %17, i32 0, i32 2
  %44 = getelementptr inbounds %struct.nfs42_copy_args, %struct.nfs42_copy_args* %15, i32 0, i32 3
  store i32* %44, i32** %43, align 8
  %45 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %17, i32 0, i32 3
  %46 = load %struct.file*, %struct.file** %7, align 8
  %47 = call i32 @file_inode(%struct.file* %46)
  store i32 %47, i32* %45, align 8
  %48 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %18, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %18, i32 0, i32 1
  store i32 0, i32* %49, align 4
  %50 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %18, i32 0, i32 2
  %51 = getelementptr inbounds %struct.nfs42_copy_args, %struct.nfs42_copy_args* %15, i32 0, i32 2
  store i32* %51, i32** %50, align 8
  %52 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %18, i32 0, i32 3
  %53 = load %struct.file*, %struct.file** %9, align 8
  %54 = call i32 @file_inode(%struct.file* %53)
  store i32 %54, i32* %52, align 8
  %55 = load %struct.file*, %struct.file** %7, align 8
  %56 = call i32 @nfs_file_open_context(%struct.file* %55)
  %57 = call %struct.nfs_lock_context* @nfs_get_lock_context(i32 %56)
  store %struct.nfs_lock_context* %57, %struct.nfs_lock_context** %13, align 8
  %58 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %13, align 8
  %59 = call i64 @IS_ERR(%struct.nfs_lock_context* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %5
  %62 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %13, align 8
  %63 = call i32 @PTR_ERR(%struct.nfs_lock_context* %62)
  store i32 %63, i32* %6, align 4
  br label %160

64:                                               ; preds = %5
  %65 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %13, align 8
  %66 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %17, i32 0, i32 1
  store i32 %69, i32* %70, align 4
  %71 = load %struct.file*, %struct.file** %9, align 8
  %72 = call i32 @nfs_file_open_context(%struct.file* %71)
  %73 = call %struct.nfs_lock_context* @nfs_get_lock_context(i32 %72)
  store %struct.nfs_lock_context* %73, %struct.nfs_lock_context** %14, align 8
  %74 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %14, align 8
  %75 = call i64 @IS_ERR(%struct.nfs_lock_context* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %64
  %78 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %14, align 8
  %79 = call i32 @PTR_ERR(%struct.nfs_lock_context* %78)
  store i32 %79, i32* %19, align 4
  br label %156

80:                                               ; preds = %64
  %81 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %14, align 8
  %82 = getelementptr inbounds %struct.nfs_lock_context, %struct.nfs_lock_context* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %18, i32 0, i32 1
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %151, %80
  %88 = load %struct.file*, %struct.file** %9, align 8
  %89 = call i32 @file_inode(%struct.file* %88)
  %90 = call i32 @inode_lock(i32 %89)
  %91 = load %struct.file*, %struct.file** %7, align 8
  %92 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %13, align 8
  %93 = load %struct.file*, %struct.file** %9, align 8
  %94 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %14, align 8
  %95 = call i32 @_nfs42_proc_copy(%struct.file* %91, %struct.nfs_lock_context* %92, %struct.file* %93, %struct.nfs_lock_context* %94, %struct.nfs42_copy_args* %15, %struct.nfs42_copy_res* %16)
  store i32 %95, i32* %19, align 4
  %96 = load %struct.file*, %struct.file** %9, align 8
  %97 = call i32 @file_inode(%struct.file* %96)
  %98 = call i32 @inode_unlock(i32 %97)
  %99 = load i32, i32* %19, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %87
  br label %153

102:                                              ; preds = %87
  %103 = load i32, i32* %19, align 4
  %104 = load i32, i32* @ENOTSUPP, align 4
  %105 = sub nsw i32 0, %104
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i32, i32* @EOPNOTSUPP, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %19, align 4
  br label %153

110:                                              ; preds = %102
  %111 = load i32, i32* %19, align 4
  %112 = load i32, i32* @EAGAIN, align 4
  %113 = sub nsw i32 0, %112
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %18, i32 0, i32 0
  store i32 1, i32* %116, align 8
  br label %143

117:                                              ; preds = %110
  %118 = load i32, i32* %19, align 4
  %119 = load i32, i32* @NFS4ERR_OFFLOAD_NO_REQS, align 4
  %120 = sub nsw i32 0, %119
  %121 = icmp eq i32 %118, %120
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.nfs42_copy_args, %struct.nfs42_copy_args* %15, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.nfs42_copy_args, %struct.nfs42_copy_args* %15, i32 0, i32 1
  store i32 1, i32* %127, align 8
  %128 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %18, i32 0, i32 0
  store i32 1, i32* %128, align 8
  br label %143

129:                                              ; preds = %122, %117
  br label %130

130:                                              ; preds = %129
  br label %131

131:                                              ; preds = %130
  %132 = load %struct.nfs_server*, %struct.nfs_server** %12, align 8
  %133 = load i32, i32* %19, align 4
  %134 = call i32 @nfs4_handle_exception(%struct.nfs_server* %132, i32 %133, %struct.nfs4_exception* %17)
  store i32 %134, i32* %20, align 4
  %135 = load %struct.nfs_server*, %struct.nfs_server** %12, align 8
  %136 = load i32, i32* %19, align 4
  %137 = call i32 @nfs4_handle_exception(%struct.nfs_server* %135, i32 %136, %struct.nfs4_exception* %18)
  store i32 %137, i32* %19, align 4
  %138 = load i32, i32* %19, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %131
  %141 = load i32, i32* %20, align 4
  store i32 %141, i32* %19, align 4
  br label %142

142:                                              ; preds = %140, %131
  br label %143

143:                                              ; preds = %142, %126, %115
  %144 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %17, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.nfs4_exception, %struct.nfs4_exception* %18, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br label %151

151:                                              ; preds = %147, %143
  %152 = phi i1 [ true, %143 ], [ %150, %147 ]
  br i1 %152, label %87, label %153

153:                                              ; preds = %151, %107, %101
  %154 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %14, align 8
  %155 = call i32 @nfs_put_lock_context(%struct.nfs_lock_context* %154)
  br label %156

156:                                              ; preds = %153, %77
  %157 = load %struct.nfs_lock_context*, %struct.nfs_lock_context** %13, align 8
  %158 = call i32 @nfs_put_lock_context(%struct.nfs_lock_context* %157)
  %159 = load i32, i32* %19, align 4
  store i32 %159, i32* %6, align 4
  br label %160

160:                                              ; preds = %156, %61
  %161 = load i32, i32* %6, align 4
  ret i32 %161
}

declare dso_local %struct.nfs_server* @NFS_SERVER(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

declare dso_local i32 @NFS_FH(i32) #1

declare dso_local %struct.nfs_lock_context* @nfs_get_lock_context(i32) #1

declare dso_local i32 @nfs_file_open_context(%struct.file*) #1

declare dso_local i64 @IS_ERR(%struct.nfs_lock_context*) #1

declare dso_local i32 @PTR_ERR(%struct.nfs_lock_context*) #1

declare dso_local i32 @inode_lock(i32) #1

declare dso_local i32 @_nfs42_proc_copy(%struct.file*, %struct.nfs_lock_context*, %struct.file*, %struct.nfs_lock_context*, %struct.nfs42_copy_args*, %struct.nfs42_copy_res*) #1

declare dso_local i32 @inode_unlock(i32) #1

declare dso_local i32 @nfs4_handle_exception(%struct.nfs_server*, i32, %struct.nfs4_exception*) #1

declare dso_local i32 @nfs_put_lock_context(%struct.nfs_lock_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
