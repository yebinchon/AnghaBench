; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_remount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_remount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.super_block = type { %struct.nfs_server* }
%struct.nfs_server = type { i32, i32, i32, i32, i32, %struct.TYPE_14__*, i32, %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.nfs_parsed_mount_data = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_15__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.nfs_mount_data = type { i32 }
%struct.nfs4_mount_data = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_16__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@NFS_MOUNT_NOAC = common dso_local global i32 0, align 4
@SB_SYNCHRONOUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_remount(%struct.super_block* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfs_server*, align 8
  %10 = alloca %struct.nfs_parsed_mount_data*, align 8
  %11 = alloca %struct.nfs_mount_data*, align 8
  %12 = alloca %struct.nfs4_mount_data*, align 8
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 0
  %16 = load %struct.nfs_server*, %struct.nfs_server** %15, align 8
  store %struct.nfs_server* %16, %struct.nfs_server** %9, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.nfs_mount_data*
  store %struct.nfs_mount_data* %18, %struct.nfs_mount_data** %11, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.nfs4_mount_data*
  store %struct.nfs4_mount_data* %20, %struct.nfs4_mount_data** %12, align 8
  %21 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %22 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %21, i32 0, i32 5
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  %28 = load %struct.super_block*, %struct.super_block** %5, align 8
  %29 = call i32 @sync_filesystem(%struct.super_block* %28)
  %30 = load i32, i32* %13, align 4
  %31 = icmp eq i32 %30, 4
  br i1 %31, label %32, label %40

32:                                               ; preds = %3
  %33 = load %struct.nfs4_mount_data*, %struct.nfs4_mount_data** %12, align 8
  %34 = icmp ne %struct.nfs4_mount_data* %33, null
  br i1 %34, label %35, label %56

35:                                               ; preds = %32
  %36 = load %struct.nfs4_mount_data*, %struct.nfs4_mount_data** %12, align 8
  %37 = getelementptr inbounds %struct.nfs4_mount_data, %struct.nfs4_mount_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %56, label %40

40:                                               ; preds = %35, %3
  %41 = load i32, i32* %13, align 4
  %42 = icmp sle i32 %41, 3
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = load %struct.nfs_mount_data*, %struct.nfs_mount_data** %11, align 8
  %45 = icmp ne %struct.nfs_mount_data* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load %struct.nfs_mount_data*, %struct.nfs_mount_data** %11, align 8
  %48 = getelementptr inbounds %struct.nfs_mount_data, %struct.nfs_mount_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %49, 1
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.nfs_mount_data*, %struct.nfs_mount_data** %11, align 8
  %53 = getelementptr inbounds %struct.nfs_mount_data, %struct.nfs_mount_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp sle i32 %54, 6
  br i1 %55, label %56, label %57

56:                                               ; preds = %51, %43, %35, %32
  store i32 0, i32* %4, align 4
  br label %218

57:                                               ; preds = %51, %46, %40
  %58 = call %struct.nfs_parsed_mount_data* (...) @nfs_alloc_parsed_mount_data()
  store %struct.nfs_parsed_mount_data* %58, %struct.nfs_parsed_mount_data** %10, align 8
  %59 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %60 = icmp eq %struct.nfs_parsed_mount_data* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %218

64:                                               ; preds = %57
  %65 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %66 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %69 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %71 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %70, i32 0, i32 9
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %74 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %73, i32 0, i32 14
  store i32 %72, i32* %74, align 4
  %75 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %76 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %79 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %78, i32 0, i32 13
  store i32 %77, i32* %79, align 4
  %80 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %81 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %80, i32 0, i32 7
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %88 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %87, i32 0, i32 12
  store i32 %86, i32* %88, align 4
  %89 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %90 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %89, i32 0, i32 7
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %97 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %96, i32 0, i32 11
  store i32 %95, i32* %97, align 4
  %98 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %99 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @HZ, align 4
  %102 = udiv i32 %100, %101
  %103 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %104 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %106 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @HZ, align 4
  %109 = udiv i32 %107, %108
  %110 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %111 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  %112 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %113 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @HZ, align 4
  %116 = udiv i32 %114, %115
  %117 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %118 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  %119 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %120 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @HZ, align 4
  %123 = udiv i32 %121, %122
  %124 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %125 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %124, i32 0, i32 4
  store i32 %123, i32* %125, align 4
  %126 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %127 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %126, i32 0, i32 7
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = mul i32 10, %132
  %134 = load i32, i32* @HZ, align 4
  %135 = udiv i32 %133, %134
  %136 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %137 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %136, i32 0, i32 5
  store i32 %135, i32* %137, align 4
  %138 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %139 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %142 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %141, i32 0, i32 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 2
  store i32 %140, i32* %143, align 4
  %144 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %145 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %144, i32 0, i32 5
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %150 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %149, i32 0, i32 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  store i32 %148, i32* %151, align 4
  %152 = load i32, i32* %13, align 4
  %153 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %154 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %153, i32 0, i32 6
  store i32 %152, i32* %154, align 4
  %155 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %156 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %155, i32 0, i32 5
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %161 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %160, i32 0, i32 10
  store i32 %159, i32* %161, align 4
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** @current, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %168 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %167, i32 0, i32 9
  store i32 %166, i32* %168, align 4
  %169 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %170 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %169, i32 0, i32 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 1
  %172 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %173 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %172, i32 0, i32 5
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 0
  %176 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %177 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %176, i32 0, i32 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @memcpy(i32* %171, i32* %175, i32 %179)
  %181 = load i32, i32* @EINVAL, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %8, align 4
  %183 = load %struct.nfs_mount_data*, %struct.nfs_mount_data** %11, align 8
  %184 = bitcast %struct.nfs_mount_data* %183 to i8*
  %185 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %186 = call i32 @nfs_parse_mount_options(i8* %184, %struct.nfs_parsed_mount_data* %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %64
  br label %214

189:                                              ; preds = %64
  %190 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %191 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @NFS_MOUNT_NOAC, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %189
  %197 = load i32, i32* @SB_SYNCHRONOUS, align 4
  %198 = load i32*, i32** %6, align 8
  %199 = load i32, i32* %198, align 4
  %200 = or i32 %199, %197
  store i32 %200, i32* %198, align 4
  br label %201

201:                                              ; preds = %196, %189
  %202 = load %struct.nfs_server*, %struct.nfs_server** %9, align 8
  %203 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %204 = call i32 @nfs_compare_remount_data(%struct.nfs_server* %202, %struct.nfs_parsed_mount_data* %203)
  store i32 %204, i32* %8, align 4
  %205 = load i32, i32* %8, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %213, label %207

207:                                              ; preds = %201
  %208 = load %struct.super_block*, %struct.super_block** %5, align 8
  %209 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %210 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %209, i32 0, i32 7
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @security_sb_remount(%struct.super_block* %208, i32 %211)
  store i32 %212, i32* %8, align 4
  br label %213

213:                                              ; preds = %207, %201
  br label %214

214:                                              ; preds = %213, %188
  %215 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %10, align 8
  %216 = call i32 @nfs_free_parsed_mount_data(%struct.nfs_parsed_mount_data* %215)
  %217 = load i32, i32* %8, align 4
  store i32 %217, i32* %4, align 4
  br label %218

218:                                              ; preds = %214, %61, %56
  %219 = load i32, i32* %4, align 4
  ret i32 %219
}

declare dso_local i32 @sync_filesystem(%struct.super_block*) #1

declare dso_local %struct.nfs_parsed_mount_data* @nfs_alloc_parsed_mount_data(...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @nfs_parse_mount_options(i8*, %struct.nfs_parsed_mount_data*) #1

declare dso_local i32 @nfs_compare_remount_data(%struct.nfs_server*, %struct.nfs_parsed_mount_data*) #1

declare dso_local i32 @security_sb_remount(%struct.super_block*, i32) #1

declare dso_local i32 @nfs_free_parsed_mount_data(%struct.nfs_parsed_mount_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
