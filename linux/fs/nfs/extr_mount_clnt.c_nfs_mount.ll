; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_mount_clnt.c_nfs_mount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_mount_clnt.c_nfs_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_mount_request = type { i32*, i8*, i64, i32*, i64, i32, i32, i32, i32, i32, i32 }
%struct.mountres = type { i32*, i32, i32*, i32 }
%struct.rpc_message = type { i32*, %struct.mountres*, i32 }
%struct.rpc_create_args = type { i8*, i64, i32, i32, i32, i32*, i32, i32, i32, i32 }
%struct.rpc_clnt = type { i32* }

@RPC_AUTH_UNIX = common dso_local global i32 0, align 4
@mnt_program = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"NFS: sending MNT request for %s:%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@MNTPATHLEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@RPC_CLNT_CREATE_NONPRIVPORT = common dso_local global i32 0, align 4
@NFS_MNT3_VERSION = common dso_local global i64 0, align 8
@MOUNTPROC3_MNT = common dso_local global i64 0, align 8
@MOUNTPROC_MNT = common dso_local global i64 0, align 8
@RPC_TASK_SOFT = common dso_local global i32 0, align 4
@RPC_TASK_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"NFS: MNT request succeeded\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"NFS: Faking up auth_flavs list\0A\00", align 1
@RPC_AUTH_NULL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"NFS: failed to create MNT RPC client, status=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"NFS: MNT request failed, status=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"NFS: MNT server returned result %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_mount(%struct.nfs_mount_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs_mount_request*, align 8
  %4 = alloca %struct.mountres, align 8
  %5 = alloca %struct.rpc_message, align 8
  %6 = alloca %struct.rpc_create_args, align 8
  %7 = alloca %struct.rpc_clnt*, align 8
  %8 = alloca i32, align 4
  store %struct.nfs_mount_request* %0, %struct.nfs_mount_request** %3, align 8
  %9 = getelementptr inbounds %struct.mountres, %struct.mountres* %4, i32 0, i32 0
  %10 = load %struct.nfs_mount_request*, %struct.nfs_mount_request** %3, align 8
  %11 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %9, align 8
  %13 = getelementptr inbounds %struct.mountres, %struct.mountres* %4, i32 0, i32 1
  store i32 0, i32* %13, align 8
  %14 = getelementptr inbounds %struct.mountres, %struct.mountres* %4, i32 0, i32 2
  %15 = load %struct.nfs_mount_request*, %struct.nfs_mount_request** %3, align 8
  %16 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %14, align 8
  %18 = getelementptr inbounds %struct.mountres, %struct.mountres* %4, i32 0, i32 3
  %19 = load %struct.nfs_mount_request*, %struct.nfs_mount_request** %3, align 8
  %20 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %19, i32 0, i32 10
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %18, align 8
  %22 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %5, i32 0, i32 0
  store i32* null, i32** %22, align 8
  %23 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %5, i32 0, i32 1
  store %struct.mountres* %4, %struct.mountres** %23, align 8
  %24 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %5, i32 0, i32 2
  %25 = load %struct.nfs_mount_request*, %struct.nfs_mount_request** %3, align 8
  %26 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %24, align 8
  %28 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 0
  %29 = load %struct.nfs_mount_request*, %struct.nfs_mount_request** %3, align 8
  %30 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %28, align 8
  %32 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 1
  %33 = load %struct.nfs_mount_request*, %struct.nfs_mount_request** %3, align 8
  %34 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %32, align 8
  %36 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 2
  store i32 0, i32* %36, align 8
  %37 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 3
  %38 = call i32 (...) @current_cred()
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 4
  %40 = load i32, i32* @RPC_AUTH_UNIX, align 4
  store i32 %40, i32* %39, align 8
  %41 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 5
  store i32* @mnt_program, i32** %41, align 8
  %42 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 6
  %43 = load %struct.nfs_mount_request*, %struct.nfs_mount_request** %3, align 8
  %44 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %42, align 8
  %46 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 7
  %47 = load %struct.nfs_mount_request*, %struct.nfs_mount_request** %3, align 8
  %48 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %46, align 4
  %50 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 8
  %51 = load %struct.nfs_mount_request*, %struct.nfs_mount_request** %3, align 8
  %52 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %50, align 8
  %54 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 9
  %55 = load %struct.nfs_mount_request*, %struct.nfs_mount_request** %3, align 8
  %56 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %55, i32 0, i32 9
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %54, align 4
  %58 = load %struct.nfs_mount_request*, %struct.nfs_mount_request** %3, align 8
  %59 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %1
  %63 = load %struct.nfs_mount_request*, %struct.nfs_mount_request** %3, align 8
  %64 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  br label %67

66:                                               ; preds = %1
  br label %67

67:                                               ; preds = %66, %62
  %68 = phi i8* [ %65, %62 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %66 ]
  %69 = load %struct.nfs_mount_request*, %struct.nfs_mount_request** %3, align 8
  %70 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %68, i32 %71)
  %73 = load %struct.nfs_mount_request*, %struct.nfs_mount_request** %3, align 8
  %74 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @strlen(i32 %75)
  %77 = load i64, i64* @MNTPATHLEN, align 8
  %78 = icmp sgt i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %67
  %80 = load i32, i32* @ENAMETOOLONG, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %174

82:                                               ; preds = %67
  %83 = load %struct.nfs_mount_request*, %struct.nfs_mount_request** %3, align 8
  %84 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load i32, i32* @RPC_CLNT_CREATE_NONPRIVPORT, align 4
  %89 = getelementptr inbounds %struct.rpc_create_args, %struct.rpc_create_args* %6, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %88
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %87, %82
  %93 = call %struct.rpc_clnt* @rpc_create(%struct.rpc_create_args* %6)
  store %struct.rpc_clnt* %93, %struct.rpc_clnt** %7, align 8
  %94 = load %struct.rpc_clnt*, %struct.rpc_clnt** %7, align 8
  %95 = call i64 @IS_ERR(%struct.rpc_clnt* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %160

98:                                               ; preds = %92
  %99 = load %struct.nfs_mount_request*, %struct.nfs_mount_request** %3, align 8
  %100 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @NFS_MNT3_VERSION, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %98
  %105 = load %struct.rpc_clnt*, %struct.rpc_clnt** %7, align 8
  %106 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* @MOUNTPROC3_MNT, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %5, i32 0, i32 0
  store i32* %109, i32** %110, align 8
  br label %118

111:                                              ; preds = %98
  %112 = load %struct.rpc_clnt*, %struct.rpc_clnt** %7, align 8
  %113 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* @MOUNTPROC_MNT, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %5, i32 0, i32 0
  store i32* %116, i32** %117, align 8
  br label %118

118:                                              ; preds = %111, %104
  %119 = load %struct.rpc_clnt*, %struct.rpc_clnt** %7, align 8
  %120 = load i32, i32* @RPC_TASK_SOFT, align 4
  %121 = load i32, i32* @RPC_TASK_TIMEOUT, align 4
  %122 = or i32 %120, %121
  %123 = call i32 @rpc_call_sync(%struct.rpc_clnt* %119, %struct.rpc_message* %5, i32 %122)
  store i32 %123, i32* %8, align 4
  %124 = load %struct.rpc_clnt*, %struct.rpc_clnt** %7, align 8
  %125 = call i32 @rpc_shutdown_client(%struct.rpc_clnt* %124)
  %126 = load i32, i32* %8, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %118
  br label %165

129:                                              ; preds = %118
  %130 = getelementptr inbounds %struct.mountres, %struct.mountres* %4, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  br label %168

134:                                              ; preds = %129
  %135 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  %136 = load %struct.nfs_mount_request*, %struct.nfs_mount_request** %3, align 8
  %137 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @NFS_MNT3_VERSION, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %147, label %141

141:                                              ; preds = %134
  %142 = load %struct.nfs_mount_request*, %struct.nfs_mount_request** %3, align 8
  %143 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %141, %134
  %148 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %149 = load i32, i32* @RPC_AUTH_NULL, align 4
  %150 = load %struct.nfs_mount_request*, %struct.nfs_mount_request** %3, align 8
  %151 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  store i32 %149, i32* %153, align 4
  %154 = load %struct.nfs_mount_request*, %struct.nfs_mount_request** %3, align 8
  %155 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  store i32 1, i32* %156, align 4
  br label %157

157:                                              ; preds = %147, %141
  br label %158

158:                                              ; preds = %168, %165, %160, %157
  %159 = load i32, i32* %8, align 4
  store i32 %159, i32* %2, align 4
  br label %174

160:                                              ; preds = %97
  %161 = load %struct.rpc_clnt*, %struct.rpc_clnt** %7, align 8
  %162 = call i32 @PTR_ERR(%struct.rpc_clnt* %161)
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* %8, align 4
  %164 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %163)
  br label %158

165:                                              ; preds = %128
  %166 = load i32, i32* %8, align 4
  %167 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %166)
  br label %158

168:                                              ; preds = %133
  %169 = getelementptr inbounds %struct.mountres, %struct.mountres* %4, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %170)
  %172 = getelementptr inbounds %struct.mountres, %struct.mountres* %4, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  store i32 %173, i32* %8, align 4
  br label %158

174:                                              ; preds = %158, %79
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local i32 @current_cred(...) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local %struct.rpc_clnt* @rpc_create(%struct.rpc_create_args*) #1

declare dso_local i64 @IS_ERR(%struct.rpc_clnt*) #1

declare dso_local i32 @rpc_call_sync(%struct.rpc_clnt*, %struct.rpc_message*, i32) #1

declare dso_local i32 @rpc_shutdown_client(%struct.rpc_clnt*) #1

declare dso_local i32 @PTR_ERR(%struct.rpc_clnt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
