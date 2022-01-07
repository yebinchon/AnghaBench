; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4namespace.c_nfs4_try_replacing_one_location.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4namespace.c_nfs4_try_replacing_one_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32 }
%struct.nfs4_fs_location = type { i32, %struct.nfs4_string* }
%struct.nfs4_string = type { i64, i32 }
%struct.net = type { i32 }
%struct.sockaddr = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@IPV6_SCOPE_DELIMITER = common dso_local global i32 0, align 4
@NFS_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*, i8*, i8*, %struct.nfs4_fs_location*)* @nfs4_try_replacing_one_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_try_replacing_one_location(%struct.nfs_server* %0, i8* %1, i8* %2, %struct.nfs4_fs_location* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfs_server*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.nfs4_fs_location*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.nfs4_string*, align 8
  %17 = alloca i8*, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.nfs4_fs_location* %3, %struct.nfs4_fs_location** %9, align 8
  store i64 4, i64* %10, align 8
  %18 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %19 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.net* @rpc_net_ns(i32 %20)
  store %struct.net* %21, %struct.net** %11, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kmalloc(i64 4, i32 %22)
  %24 = bitcast i8* %23 to %struct.sockaddr*
  store %struct.sockaddr* %24, %struct.sockaddr** %12, align 8
  %25 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %26 = icmp eq %struct.sockaddr* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %122

30:                                               ; preds = %4
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %33

33:                                               ; preds = %114, %30
  %34 = load i32, i32* %13, align 4
  %35 = load %struct.nfs4_fs_location*, %struct.nfs4_fs_location** %9, align 8
  %36 = getelementptr inbounds %struct.nfs4_fs_location, %struct.nfs4_fs_location* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %117

39:                                               ; preds = %33
  %40 = load %struct.nfs4_fs_location*, %struct.nfs4_fs_location** %9, align 8
  %41 = getelementptr inbounds %struct.nfs4_fs_location, %struct.nfs4_fs_location* %40, i32 0, i32 1
  %42 = load %struct.nfs4_string*, %struct.nfs4_string** %41, align 8
  %43 = load i32, i32* %13, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %42, i64 %44
  store %struct.nfs4_string* %45, %struct.nfs4_string** %16, align 8
  %46 = load %struct.nfs4_string*, %struct.nfs4_string** %16, align 8
  %47 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sle i64 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %39
  %51 = load %struct.nfs4_string*, %struct.nfs4_string** %16, align 8
  %52 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PAGE_SIZE, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50, %39
  br label %114

57:                                               ; preds = %50
  %58 = load %struct.nfs4_string*, %struct.nfs4_string** %16, align 8
  %59 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @IPV6_SCOPE_DELIMITER, align 4
  %62 = load %struct.nfs4_string*, %struct.nfs4_string** %16, align 8
  %63 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32* @memchr(i32 %60, i32 %61, i64 %64)
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %114

68:                                               ; preds = %57
  %69 = load %struct.nfs4_string*, %struct.nfs4_string** %16, align 8
  %70 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.nfs4_string*, %struct.nfs4_string** %16, align 8
  %73 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %76 = bitcast %struct.sockaddr* %75 to i8*
  %77 = load %struct.net*, %struct.net** %11, align 8
  %78 = call i64 @nfs_parse_server_name(i32 %71, i64 %74, i8* %76, i64 4, %struct.net* %77)
  store i64 %78, i64* %14, align 8
  %79 = load i64, i64* %14, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %68
  br label %114

82:                                               ; preds = %68
  %83 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %84 = bitcast %struct.sockaddr* %83 to i8*
  %85 = load i32, i32* @NFS_PORT, align 4
  %86 = call i32 @rpc_set_port(i8* %84, i32 %85)
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %15, align 4
  %89 = load %struct.nfs4_string*, %struct.nfs4_string** %16, align 8
  %90 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.nfs4_string*, %struct.nfs4_string** %16, align 8
  %93 = getelementptr inbounds %struct.nfs4_string, %struct.nfs4_string* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call i8* @kstrndup(i32 %91, i64 %94, i32 %95)
  store i8* %96, i8** %17, align 8
  %97 = load i8*, i8** %17, align 8
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %82
  br label %117

100:                                              ; preds = %82
  %101 = load %struct.nfs_server*, %struct.nfs_server** %6, align 8
  %102 = load i8*, i8** %17, align 8
  %103 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %104 = bitcast %struct.sockaddr* %103 to i8*
  %105 = load i64, i64* %14, align 8
  %106 = load %struct.net*, %struct.net** %11, align 8
  %107 = call i32 @nfs4_update_server(%struct.nfs_server* %101, i8* %102, i8* %104, i64 %105, %struct.net* %106)
  store i32 %107, i32* %15, align 4
  %108 = load i8*, i8** %17, align 8
  %109 = call i32 @kfree(i8* %108)
  %110 = load i32, i32* %15, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %100
  br label %117

113:                                              ; preds = %100
  br label %114

114:                                              ; preds = %113, %81, %67, %56
  %115 = load i32, i32* %13, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %13, align 4
  br label %33

117:                                              ; preds = %112, %99, %33
  %118 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %119 = bitcast %struct.sockaddr* %118 to i8*
  %120 = call i32 @kfree(i8* %119)
  %121 = load i32, i32* %15, align 4
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %117, %27
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local %struct.net* @rpc_net_ns(i32) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32* @memchr(i32, i32, i64) #1

declare dso_local i64 @nfs_parse_server_name(i32, i64, i8*, i64, %struct.net*) #1

declare dso_local i32 @rpc_set_port(i8*, i32) #1

declare dso_local i8* @kstrndup(i32, i64, i32) #1

declare dso_local i32 @nfs4_update_server(%struct.nfs_server*, i8*, i8*, i64, %struct.net*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
