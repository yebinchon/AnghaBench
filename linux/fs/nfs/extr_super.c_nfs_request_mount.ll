; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_request_mount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_request_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_parsed_mount_data = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i64, i32, i32, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32, i64, i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_mount_request = type { i32, i32*, i64, i64, %struct.sockaddr*, i32, i32, i32*, %struct.nfs_fh*, i32, i32 }
%struct.sockaddr = type { i32 }

@NFS_MOUNT_NORESVPORT = common dso_local global i32 0, align 4
@NFS_MNT3_VERSION = common dso_local global i64 0, align 8
@NFS_MNT_VERSION = common dso_local global i64 0, align 8
@AF_UNSPEC = common dso_local global i64 0, align 8
@MOUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"NFS: unable to mount server %s, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_parsed_mount_data*, %struct.nfs_fh*, i32*, i32*)* @nfs_request_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_request_mount(%struct.nfs_parsed_mount_data* %0, %struct.nfs_fh* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfs_parsed_mount_data*, align 8
  %7 = alloca %struct.nfs_fh*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nfs_mount_request, align 8
  %11 = alloca i32, align 4
  store %struct.nfs_parsed_mount_data* %0, %struct.nfs_parsed_mount_data** %6, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %10, i32 0, i32 0
  %13 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %6, align 8
  %14 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @NFS_MOUNT_NORESVPORT, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %12, align 8
  %18 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %10, i32 0, i32 1
  %19 = load i32*, i32** %9, align 8
  store i32* %19, i32** %18, align 8
  %20 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %10, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %10, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %10, i32 0, i32 4
  %23 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %6, align 8
  %24 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  %26 = bitcast %struct.TYPE_4__* %25 to %struct.sockaddr*
  store %struct.sockaddr* %26, %struct.sockaddr** %22, align 8
  %27 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %10, i32 0, i32 5
  store i32 0, i32* %27, align 8
  %28 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %10, i32 0, i32 6
  %29 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %6, align 8
  %30 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %28, align 4
  %32 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %10, i32 0, i32 7
  %33 = load i32*, i32** %8, align 8
  store i32* %33, i32** %32, align 8
  %34 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %10, i32 0, i32 8
  %35 = load %struct.nfs_fh*, %struct.nfs_fh** %7, align 8
  store %struct.nfs_fh* %35, %struct.nfs_fh** %34, align 8
  %36 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %10, i32 0, i32 9
  %37 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %6, align 8
  %38 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %36, align 8
  %41 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %10, i32 0, i32 10
  %42 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %6, align 8
  %43 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %41, align 4
  %46 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %6, align 8
  %47 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %4
  %52 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %6, align 8
  %53 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %55 [
    i32 2, label %60
  ]

55:                                               ; preds = %51
  %56 = load i64, i64* @NFS_MNT3_VERSION, align 8
  %57 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %6, align 8
  %58 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i64 %56, i64* %59, align 8
  br label %65

60:                                               ; preds = %51
  %61 = load i64, i64* @NFS_MNT_VERSION, align 8
  %62 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %6, align 8
  %63 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i64 %61, i64* %64, align 8
  br label %65

65:                                               ; preds = %60, %55
  br label %66

66:                                               ; preds = %65, %4
  %67 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %6, align 8
  %68 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %10, i32 0, i32 2
  store i64 %70, i64* %71, align 8
  %72 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %6, align 8
  %73 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %66
  %78 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %6, align 8
  %79 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %10, i32 0, i32 3
  store i64 %81, i64* %82, align 8
  br label %89

83:                                               ; preds = %66
  %84 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %6, align 8
  %85 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %10, i32 0, i32 3
  store i64 %87, i64* %88, align 8
  br label %89

89:                                               ; preds = %83, %77
  %90 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %6, align 8
  %91 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @AF_UNSPEC, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %115

97:                                               ; preds = %89
  %98 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %10, i32 0, i32 4
  %99 = load %struct.sockaddr*, %struct.sockaddr** %98, align 8
  %100 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %6, align 8
  %101 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %6, align 8
  %104 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @memcpy(%struct.sockaddr* %99, i32* %102, i32 %106)
  %108 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %6, align 8
  %109 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %6, align 8
  %113 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  store i32 %111, i32* %114, align 4
  br label %115

115:                                              ; preds = %97, %89
  %116 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %6, align 8
  %117 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %10, i32 0, i32 5
  store i32 %119, i32* %120, align 8
  %121 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %10, i32 0, i32 4
  %122 = load %struct.sockaddr*, %struct.sockaddr** %121, align 8
  %123 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %6, align 8
  %124 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = call i32 @nfs_set_port(%struct.sockaddr* %122, i32* %125, i32 0)
  %127 = call i32 @nfs_mount(%struct.nfs_mount_request* %10)
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %115
  %131 = load i32, i32* @MOUNT, align 4
  %132 = getelementptr inbounds %struct.nfs_mount_request, %struct.nfs_mount_request* %10, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @dfprintk(i32 %131, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %133, i32 %134)
  %136 = load i32, i32* %11, align 4
  store i32 %136, i32* %5, align 4
  br label %138

137:                                              ; preds = %115
  store i32 0, i32* %5, align 4
  br label %138

138:                                              ; preds = %137, %130
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i32 @memcpy(%struct.sockaddr*, i32*, i32) #1

declare dso_local i32 @nfs_set_port(%struct.sockaddr*, i32*, i32) #1

declare dso_local i32 @nfs_mount(%struct.nfs_mount_request*) #1

declare dso_local i32 @dfprintk(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
