; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_compare_remount_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_compare_remount_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32, i64, i64, i32, i32, i32, i32, i32, i64, %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i64, i64, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.nfs_parsed_mount_data = type { i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i64, i64, i32 }
%struct.sockaddr = type { i32 }

@NFS_REMOUNT_CMP_FLAGMASK = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@NFS_OPTION_FSCACHE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*, %struct.nfs_parsed_mount_data*)* @nfs_compare_remount_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_compare_remount_data(%struct.nfs_server* %0, %struct.nfs_parsed_mount_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_server*, align 8
  %5 = alloca %struct.nfs_parsed_mount_data*, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %4, align 8
  store %struct.nfs_parsed_mount_data* %1, %struct.nfs_parsed_mount_data** %5, align 8
  %6 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %7 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %10 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = xor i32 %8, %11
  %13 = load i32, i32* @NFS_REMOUNT_CMP_FLAGMASK, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %177, label %16

16:                                               ; preds = %2
  %17 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %18 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %21 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %177, label %24

24:                                               ; preds = %16
  %25 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %26 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %29 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %177, label %32

32:                                               ; preds = %24
  %33 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %34 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %37 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %36, i32 0, i32 9
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %35, %42
  br i1 %43, label %177, label %44

44:                                               ; preds = %32
  %45 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %46 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %49 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %48, i32 0, i32 9
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %47, %52
  br i1 %53, label %177, label %54

54:                                               ; preds = %44
  %55 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %56 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %59 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %58, i32 0, i32 10
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %57, %64
  br i1 %65, label %177, label %66

66:                                               ; preds = %54
  %67 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %68 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %67, i32 0, i32 13
  %69 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %70 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %69, i32 0, i32 10
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @nfs_auth_info_match(i32* %68, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %177

78:                                               ; preds = %66
  %79 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %80 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %83 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @HZ, align 4
  %86 = udiv i32 %84, %85
  %87 = icmp ne i32 %81, %86
  br i1 %87, label %177, label %88

88:                                               ; preds = %78
  %89 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %90 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %93 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @HZ, align 4
  %96 = udiv i32 %94, %95
  %97 = icmp ne i32 %91, %96
  br i1 %97, label %177, label %98

98:                                               ; preds = %88
  %99 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %100 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %103 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @HZ, align 4
  %106 = udiv i32 %104, %105
  %107 = icmp ne i32 %101, %106
  br i1 %107, label %177, label %108

108:                                              ; preds = %98
  %109 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %110 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %109, i32 0, i32 9
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %113 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @HZ, align 4
  %116 = udiv i32 %114, %115
  %117 = icmp ne i32 %111, %116
  br i1 %117, label %177, label %118

118:                                              ; preds = %108
  %119 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %120 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %119, i32 0, i32 10
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %123 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %122, i32 0, i32 10
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = mul i32 10, %128
  %130 = load i32, i32* @HZ, align 4
  %131 = udiv i32 %129, %130
  %132 = icmp ne i32 %121, %131
  br i1 %132, label %177, label %133

133:                                              ; preds = %118
  %134 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %135 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %134, i32 0, i32 11
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @NFS_OPTION_FSCACHE, align 4
  %138 = and i32 %136, %137
  %139 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %140 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %139, i32 0, i32 7
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @NFS_OPTION_FSCACHE, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %138, %143
  br i1 %144, label %177, label %145

145:                                              ; preds = %133
  %146 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %147 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %146, i32 0, i32 12
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %151 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %150, i32 0, i32 8
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %149, %152
  br i1 %153, label %177, label %154

154:                                              ; preds = %145
  %155 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %156 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %155, i32 0, i32 12
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %160 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %159, i32 0, i32 9
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %158, %163
  br i1 %164, label %177, label %165

165:                                              ; preds = %154
  %166 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %167 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %166, i32 0, i32 12
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 2
  %169 = bitcast i32* %168 to %struct.sockaddr*
  %170 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %171 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %170, i32 0, i32 9
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 2
  %174 = bitcast i32* %173 to %struct.sockaddr*
  %175 = call i32 @rpc_cmp_addr(%struct.sockaddr* %169, %struct.sockaddr* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %165, %154, %145, %133, %118, %108, %98, %88, %78, %66, %54, %44, %32, %24, %16, %2
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %3, align 4
  br label %181

180:                                              ; preds = %165
  store i32 0, i32* %3, align 4
  br label %181

181:                                              ; preds = %180, %177
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i32 @nfs_auth_info_match(i32*, i32) #1

declare dso_local i32 @rpc_cmp_addr(%struct.sockaddr*, %struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
