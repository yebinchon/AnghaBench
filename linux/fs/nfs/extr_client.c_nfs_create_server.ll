; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_client.c_nfs_create_server.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_client.c_nfs_create_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i64, i32, %struct.TYPE_10__, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.nfs_mount_info = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.nfs_subversion = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.nfs_server*, i32, %struct.nfs_fattr*, i32*, i32*)* }
%struct.nfs_fattr = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@NFS3_MAXNAMLEN = common dso_local global i64 0, align 8
@NFS_MOUNT_NORDIRPLUS = common dso_local global i32 0, align 4
@NFS_CAP_READDIRPLUS = common dso_local global i32 0, align 4
@NFS2_MAXNAMLEN = common dso_local global i64 0, align 8
@NFS_ATTR_FATTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"nfs_create_server: getattr error = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Server FSID: %llx:%llx\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfs_server* @nfs_create_server(%struct.nfs_mount_info* %0, %struct.nfs_subversion* %1) #0 {
  %3 = alloca %struct.nfs_server*, align 8
  %4 = alloca %struct.nfs_mount_info*, align 8
  %5 = alloca %struct.nfs_subversion*, align 8
  %6 = alloca %struct.nfs_server*, align 8
  %7 = alloca %struct.nfs_fattr*, align 8
  %8 = alloca i32, align 4
  store %struct.nfs_mount_info* %0, %struct.nfs_mount_info** %4, align 8
  store %struct.nfs_subversion* %1, %struct.nfs_subversion** %5, align 8
  %9 = call %struct.nfs_server* (...) @nfs_alloc_server()
  store %struct.nfs_server* %9, %struct.nfs_server** %6, align 8
  %10 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %11 = icmp ne %struct.nfs_server* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.nfs_server* @ERR_PTR(i32 %14)
  store %struct.nfs_server* %15, %struct.nfs_server** %3, align 8
  br label %160

16:                                               ; preds = %2
  %17 = call i32 (...) @current_cred()
  %18 = call i32 @get_cred(i32 %17)
  %19 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %20 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %8, align 4
  %23 = call %struct.nfs_fattr* (...) @nfs_alloc_fattr()
  store %struct.nfs_fattr* %23, %struct.nfs_fattr** %7, align 8
  %24 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %25 = icmp eq %struct.nfs_fattr* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %153

27:                                               ; preds = %16
  %28 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %29 = load %struct.nfs_mount_info*, %struct.nfs_mount_info** %4, align 8
  %30 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %29, i32 0, i32 1
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = load %struct.nfs_subversion*, %struct.nfs_subversion** %5, align 8
  %33 = call i32 @nfs_init_server(%struct.nfs_server* %28, %struct.TYPE_9__* %31, %struct.nfs_subversion* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %153

37:                                               ; preds = %27
  %38 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %39 = load %struct.nfs_mount_info*, %struct.nfs_mount_info** %4, align 8
  %40 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %43 = call i32 @nfs_probe_fsinfo(%struct.nfs_server* %38, i32 %41, %struct.nfs_fattr* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %153

47:                                               ; preds = %37
  %48 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %49 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %48, i32 0, i32 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %56, label %87

56:                                               ; preds = %47
  %57 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %58 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %56
  %62 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %63 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @NFS3_MAXNAMLEN, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61, %56
  %68 = load i64, i64* @NFS3_MAXNAMLEN, align 8
  %69 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %70 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %67, %61
  %72 = load %struct.nfs_mount_info*, %struct.nfs_mount_info** %4, align 8
  %73 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %72, i32 0, i32 1
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @NFS_MOUNT_NORDIRPLUS, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %71
  %81 = load i32, i32* @NFS_CAP_READDIRPLUS, align 4
  %82 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %83 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %80, %71
  br label %103

87:                                               ; preds = %47
  %88 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %89 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %87
  %93 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %94 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @NFS2_MAXNAMLEN, align 8
  %97 = icmp sgt i64 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %92, %87
  %99 = load i64, i64* @NFS2_MAXNAMLEN, align 8
  %100 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %101 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %98, %92
  br label %103

103:                                              ; preds = %102, %86
  %104 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %105 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @NFS_ATTR_FATTR, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %130, label %110

110:                                              ; preds = %103
  %111 = load %struct.nfs_subversion*, %struct.nfs_subversion** %5, align 8
  %112 = getelementptr inbounds %struct.nfs_subversion, %struct.nfs_subversion* %111, i32 0, i32 0
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32 (%struct.nfs_server*, i32, %struct.nfs_fattr*, i32*, i32*)*, i32 (%struct.nfs_server*, i32, %struct.nfs_fattr*, i32*, i32*)** %114, align 8
  %116 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %117 = load %struct.nfs_mount_info*, %struct.nfs_mount_info** %4, align 8
  %118 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %121 = call i32 %115(%struct.nfs_server* %116, i32 %119, %struct.nfs_fattr* %120, i32* null, i32* null)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %110
  %125 = load i32, i32* %8, align 4
  %126 = sub nsw i32 0, %125
  %127 = sext i32 %126 to i64
  %128 = call i32 (i8*, i64, ...) @dprintk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %127)
  br label %153

129:                                              ; preds = %110
  br label %130

130:                                              ; preds = %129, %103
  %131 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %132 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %131, i32 0, i32 2
  %133 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %134 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %133, i32 0, i32 1
  %135 = call i32 @memcpy(%struct.TYPE_10__* %132, i32* %134, i32 16)
  %136 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %137 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %141 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = call i32 (i8*, i64, ...) @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %139, i64 %143)
  %145 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %146 = call i32 @nfs_server_insert_lists(%struct.nfs_server* %145)
  %147 = load i32, i32* @jiffies, align 4
  %148 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %149 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 8
  %150 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %151 = call i32 @nfs_free_fattr(%struct.nfs_fattr* %150)
  %152 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  store %struct.nfs_server* %152, %struct.nfs_server** %3, align 8
  br label %160

153:                                              ; preds = %124, %46, %36, %26
  %154 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %155 = call i32 @nfs_free_fattr(%struct.nfs_fattr* %154)
  %156 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %157 = call i32 @nfs_free_server(%struct.nfs_server* %156)
  %158 = load i32, i32* %8, align 4
  %159 = call %struct.nfs_server* @ERR_PTR(i32 %158)
  store %struct.nfs_server* %159, %struct.nfs_server** %3, align 8
  br label %160

160:                                              ; preds = %153, %130, %12
  %161 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  ret %struct.nfs_server* %161
}

declare dso_local %struct.nfs_server* @nfs_alloc_server(...) #1

declare dso_local %struct.nfs_server* @ERR_PTR(i32) #1

declare dso_local i32 @get_cred(i32) #1

declare dso_local i32 @current_cred(...) #1

declare dso_local %struct.nfs_fattr* @nfs_alloc_fattr(...) #1

declare dso_local i32 @nfs_init_server(%struct.nfs_server*, %struct.TYPE_9__*, %struct.nfs_subversion*) #1

declare dso_local i32 @nfs_probe_fsinfo(%struct.nfs_server*, i32, %struct.nfs_fattr*) #1

declare dso_local i32 @dprintk(i8*, i64, ...) #1

declare dso_local i32 @memcpy(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @nfs_server_insert_lists(%struct.nfs_server*) #1

declare dso_local i32 @nfs_free_fattr(%struct.nfs_fattr*) #1

declare dso_local i32 @nfs_free_server(%struct.nfs_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
