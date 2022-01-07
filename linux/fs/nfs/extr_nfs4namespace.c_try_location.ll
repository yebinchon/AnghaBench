; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4namespace.c_try_location.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4namespace.c_try_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type opaque
%struct.nfs_clone_mount = type { i8*, i8*, i32*, i32, i32, i32 }
%struct.nfs4_fs_location = type { i32, %struct.nfs4_string*, i32 }
%struct.nfs4_string = type { i32, i32 }
%struct.net = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IPV6_SCOPE_DELIMITER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@nfs4_referral_fs_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vfsmount* (%struct.nfs_clone_mount*, i8*, i8*, %struct.nfs4_fs_location*)* @try_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vfsmount* @try_location(%struct.nfs_clone_mount* %0, i8* %1, i8* %2, %struct.nfs4_fs_location* %3) #0 {
  %5 = alloca %struct.vfsmount*, align 8
  %6 = alloca %struct.nfs_clone_mount*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.nfs4_fs_location*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.vfsmount*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nfs4_string*, align 8
  store %struct.nfs_clone_mount* %0, %struct.nfs_clone_mount** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.nfs4_fs_location* %3, %struct.nfs4_fs_location** %9, align 8
  store i64 4, i64* %10, align 8
  %17 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %6, align 8
  %18 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.TYPE_2__* @NFS_SB(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.net* @rpc_net_ns(i32 %22)
  store %struct.net* %23, %struct.net** %11, align 8
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  %26 = call i8* @ERR_PTR(i32 %25)
  %27 = bitcast i8* %26 to %struct.vfsmount*
  store %struct.vfsmount* %27, %struct.vfsmount** %12, align 8
  %28 = load %struct.nfs4_fs_location*, %struct.nfs4_fs_location** %9, align 8
  %29 = getelementptr inbounds %struct.nfs4_fs_location, %struct.nfs4_fs_location* %28, i32 0, i32 2
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = call i8* @nfs4_pathname_string(i32* %29, i8* %30, i32 %31)
  store i8* %32, i8** %13, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = call i64 @IS_ERR(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %4
  %37 = load i8*, i8** %13, align 8
  %38 = call i8* @ERR_CAST(i8* %37)
  %39 = bitcast i8* %38 to %struct.vfsmount*
  store %struct.vfsmount* %39, %struct.vfsmount** %5, align 8
  br label %168

40:                                               ; preds = %4
  %41 = load i8*, i8** %13, align 8
  %42 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %6, align 8
  %43 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 -1
  %46 = load i8*, i8** %8, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i32* @kmalloc(i64 4, i32 %51)
  %53 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %6, align 8
  %54 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %53, i32 0, i32 2
  store i32* %52, i32** %54, align 8
  %55 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %6, align 8
  %56 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %40
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  %62 = call i8* @ERR_PTR(i32 %61)
  %63 = bitcast i8* %62 to %struct.vfsmount*
  store %struct.vfsmount* %63, %struct.vfsmount** %5, align 8
  br label %168

64:                                               ; preds = %40
  store i32 0, i32* %15, align 4
  br label %65

65:                                               ; preds = %159, %64
  %66 = load i32, i32* %15, align 4
  %67 = load %struct.nfs4_fs_location*, %struct.nfs4_fs_location** %9, align 8
  %68 = getelementptr inbounds %struct.nfs4_fs_location, %struct.nfs4_fs_location* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ult i32 %66, %69
  br i1 %70, label %71, label %162

71:                                               ; preds = %65
  %72 = load %struct.nfs4_fs_location*, %struct.nfs4_fs_location** %9, align 8
  %73 = getelementptr inbounds %struct.nfs4_fs_location, %struct.nfs4_fs_location* %72, i32 0, i32 1
  %74 = load %struct.nfs4_string*, %struct.nfs4_string** %73, align 8
  %75 = load i32, i32* %15, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %74, i64 %76
  store %struct.nfs4_string* %77, %struct.nfs4_string** %16, align 8
  %78 = load %struct.nfs4_string*, %struct.nfs4_string** %16, align 8
  %79 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ule i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %71
  %83 = load %struct.nfs4_string*, %struct.nfs4_string** %16, align 8
  %84 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp uge i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82, %71
  br label %159

89:                                               ; preds = %82
  %90 = load %struct.nfs4_string*, %struct.nfs4_string** %16, align 8
  %91 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @IPV6_SCOPE_DELIMITER, align 4
  %94 = load %struct.nfs4_string*, %struct.nfs4_string** %16, align 8
  %95 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @memchr(i32 %92, i32 %93, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %89
  br label %159

100:                                              ; preds = %89
  %101 = load %struct.nfs4_string*, %struct.nfs4_string** %16, align 8
  %102 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.nfs4_string*, %struct.nfs4_string** %16, align 8
  %105 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %6, align 8
  %108 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.net*, %struct.net** %11, align 8
  %111 = call i32 @nfs_parse_server_name(i32 %103, i32 %106, i32* %109, i64 4, %struct.net* %110)
  %112 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %6, align 8
  %113 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 4
  %114 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %6, align 8
  %115 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %100
  br label %159

119:                                              ; preds = %100
  %120 = load i8*, i8** %8, align 8
  %121 = load %struct.nfs4_string*, %struct.nfs4_string** %16, align 8
  %122 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.nfs4_string*, %struct.nfs4_string** %16, align 8
  %125 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @memcpy(i8* %120, i32 %123, i32 %126)
  %128 = load i8*, i8** %8, align 8
  %129 = load %struct.nfs4_string*, %struct.nfs4_string** %16, align 8
  %130 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %128, i64 %132
  store i8 0, i8* %133, align 1
  %134 = load i8*, i8** %8, align 8
  %135 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %6, align 8
  %136 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %135, i32 0, i32 1
  store i8* %134, i8** %136, align 8
  %137 = load i8*, i8** %7, align 8
  %138 = load i32, i32* @PAGE_SIZE, align 4
  %139 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %6, align 8
  %140 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %6, align 8
  %143 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @snprintf(i8* %137, i32 %138, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %141, i8* %144)
  %146 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %6, align 8
  %147 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = load i8*, i8** %7, align 8
  %150 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %6, align 8
  %151 = call i8* @vfs_submount(i32 %148, i32* @nfs4_referral_fs_type, i8* %149, %struct.nfs_clone_mount* %150)
  %152 = bitcast i8* %151 to %struct.vfsmount*
  store %struct.vfsmount* %152, %struct.vfsmount** %12, align 8
  %153 = load %struct.vfsmount*, %struct.vfsmount** %12, align 8
  %154 = bitcast %struct.vfsmount* %153 to i8*
  %155 = call i64 @IS_ERR(i8* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %119
  br label %162

158:                                              ; preds = %119
  br label %159

159:                                              ; preds = %158, %118, %99, %88
  %160 = load i32, i32* %15, align 4
  %161 = add i32 %160, 1
  store i32 %161, i32* %15, align 4
  br label %65

162:                                              ; preds = %157, %65
  %163 = load %struct.nfs_clone_mount*, %struct.nfs_clone_mount** %6, align 8
  %164 = getelementptr inbounds %struct.nfs_clone_mount, %struct.nfs_clone_mount* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = call i32 @kfree(i32* %165)
  %167 = load %struct.vfsmount*, %struct.vfsmount** %12, align 8
  store %struct.vfsmount* %167, %struct.vfsmount** %5, align 8
  br label %168

168:                                              ; preds = %162, %59, %36
  %169 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  ret %struct.vfsmount* %169
}

declare dso_local %struct.net* @rpc_net_ns(i32) #1

declare dso_local %struct.TYPE_2__* @NFS_SB(i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @nfs4_pathname_string(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i8* @ERR_CAST(i8*) #1

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i64 @memchr(i32, i32, i32) #1

declare dso_local i32 @nfs_parse_server_name(i32, i32, i32*, i64, %struct.net*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i8* @vfs_submount(i32, i32*, i8*, %struct.nfs_clone_mount*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
