; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_getattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.kstat = type { i32, i32, i32 }
%struct.inode = type { i32, i32 }
%struct.nfs_server = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@AT_STATX_FORCE_SYNC = common dso_local global i32 0, align 4
@AT_STATX_DONT_SYNC = common dso_local global i32 0, align 4
@STATX_CTIME = common dso_local global i32 0, align 4
@STATX_MTIME = common dso_local global i32 0, align 4
@MNT_NOATIME = common dso_local global i32 0, align 4
@MNT_NODIRATIME = common dso_local global i32 0, align 4
@STATX_ATIME = common dso_local global i32 0, align 4
@STATX_MODE = common dso_local global i32 0, align 4
@STATX_NLINK = common dso_local global i32 0, align 4
@STATX_UID = common dso_local global i32 0, align 4
@STATX_GID = common dso_local global i32 0, align 4
@STATX_SIZE = common dso_local global i32 0, align 4
@STATX_BLOCKS = common dso_local global i32 0, align 4
@NFS_INO_INVALID_ATTR = common dso_local global i64 0, align 8
@NFS_INO_INVALID_LABEL = common dso_local global i64 0, align 8
@NFS_INO_INVALID_ATIME = common dso_local global i64 0, align 8
@NFS_INO_REVAL_PAGECACHE = common dso_local global i64 0, align 8
@NFS_MOUNT_NOAC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_getattr(%struct.path* %0, %struct.kstat* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.kstat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.nfs_server*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %5, align 8
  store %struct.kstat* %1, %struct.kstat** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.path*, %struct.path** %5, align 8
  %16 = getelementptr inbounds %struct.path, %struct.path* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.inode* @d_inode(i32 %17)
  store %struct.inode* %18, %struct.inode** %9, align 8
  %19 = load %struct.inode*, %struct.inode** %9, align 8
  %20 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %19)
  store %struct.nfs_server* %20, %struct.nfs_server** %10, align 8
  store i32 0, i32* %12, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @AT_STATX_FORCE_SYNC, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %24 = load %struct.inode*, %struct.inode** %9, align 8
  %25 = call i32 @trace_nfs_getattr_enter(%struct.inode* %24)
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @AT_STATX_DONT_SYNC, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  br label %200

34:                                               ; preds = %30, %4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @STATX_CTIME, align 4
  %37 = load i32, i32* @STATX_MTIME, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %34
  %42 = load %struct.inode*, %struct.inode** %9, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @S_ISREG(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load %struct.inode*, %struct.inode** %9, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @filemap_write_and_wait(i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %222

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %41, %34
  %57 = load %struct.path*, %struct.path** %5, align 8
  %58 = getelementptr inbounds %struct.path, %struct.path* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @MNT_NOATIME, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %80, label %65

65:                                               ; preds = %56
  %66 = load %struct.path*, %struct.path** %5, align 8
  %67 = getelementptr inbounds %struct.path, %struct.path* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @MNT_NODIRATIME, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %65
  %75 = load %struct.inode*, %struct.inode** %9, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @S_ISDIR(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %74, %56
  %81 = load i32, i32* @STATX_ATIME, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %7, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %80, %74, %65
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @STATX_MODE, align 4
  %88 = load i32, i32* @STATX_NLINK, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @STATX_ATIME, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @STATX_CTIME, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @STATX_MTIME, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @STATX_UID, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @STATX_GID, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @STATX_SIZE, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @STATX_BLOCKS, align 4
  %103 = or i32 %101, %102
  %104 = and i32 %86, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %85
  br label %194

107:                                              ; preds = %85
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %107
  %111 = load %struct.inode*, %struct.inode** %9, align 8
  %112 = call i64 @nfs_attribute_cache_expired(%struct.inode* %111)
  %113 = icmp ne i64 %112, 0
  br label %114

114:                                              ; preds = %110, %107
  %115 = phi i1 [ true, %107 ], [ %113, %110 ]
  %116 = zext i1 %115 to i32
  %117 = load i32, i32* %14, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %14, align 4
  %119 = load %struct.inode*, %struct.inode** %9, align 8
  %120 = call %struct.TYPE_4__* @NFS_I(%struct.inode* %119)
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @READ_ONCE(i32 %122)
  store i64 %123, i64* %11, align 8
  %124 = load i64, i64* %11, align 8
  %125 = load i64, i64* @NFS_INO_INVALID_ATTR, align 8
  %126 = load i64, i64* @NFS_INO_INVALID_LABEL, align 8
  %127 = or i64 %125, %126
  %128 = and i64 %124, %127
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = or i64 %130, %128
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %14, align 4
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @STATX_ATIME, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %114
  %138 = load i64, i64* %11, align 8
  %139 = load i64, i64* @NFS_INO_INVALID_ATIME, align 8
  %140 = and i64 %138, %139
  %141 = load i32, i32* %14, align 4
  %142 = sext i32 %141 to i64
  %143 = or i64 %142, %140
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %14, align 4
  br label %145

145:                                              ; preds = %137, %114
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* @STATX_CTIME, align 4
  %148 = load i32, i32* @STATX_MTIME, align 4
  %149 = or i32 %147, %148
  %150 = and i32 %146, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %145
  %153 = load i64, i64* %11, align 8
  %154 = load i64, i64* @NFS_INO_REVAL_PAGECACHE, align 8
  %155 = and i64 %153, %154
  %156 = load i32, i32* %14, align 4
  %157 = sext i32 %156 to i64
  %158 = or i64 %157, %155
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %14, align 4
  br label %160

160:                                              ; preds = %152, %145
  %161 = load i32, i32* %14, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %188

163:                                              ; preds = %160
  %164 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %165 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @NFS_MOUNT_NOAC, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %175, label %170

170:                                              ; preds = %163
  %171 = load %struct.path*, %struct.path** %5, align 8
  %172 = getelementptr inbounds %struct.path, %struct.path* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @nfs_readdirplus_parent_cache_miss(i32 %173)
  br label %180

175:                                              ; preds = %163
  %176 = load %struct.path*, %struct.path** %5, align 8
  %177 = getelementptr inbounds %struct.path, %struct.path* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @nfs_readdirplus_parent_cache_hit(i32 %178)
  br label %180

180:                                              ; preds = %175, %170
  %181 = load %struct.nfs_server*, %struct.nfs_server** %10, align 8
  %182 = load %struct.inode*, %struct.inode** %9, align 8
  %183 = call i32 @__nfs_revalidate_inode(%struct.nfs_server* %181, %struct.inode* %182)
  store i32 %183, i32* %12, align 4
  %184 = load i32, i32* %12, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %180
  br label %222

187:                                              ; preds = %180
  br label %193

188:                                              ; preds = %160
  %189 = load %struct.path*, %struct.path** %5, align 8
  %190 = getelementptr inbounds %struct.path, %struct.path* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @nfs_readdirplus_parent_cache_hit(i32 %191)
  br label %193

193:                                              ; preds = %188, %187
  br label %194

194:                                              ; preds = %193, %106
  %195 = load i32, i32* %7, align 4
  %196 = load %struct.kstat*, %struct.kstat** %6, align 8
  %197 = getelementptr inbounds %struct.kstat, %struct.kstat* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = and i32 %198, %195
  store i32 %199, i32* %197, align 4
  br label %200

200:                                              ; preds = %194, %33
  %201 = load %struct.inode*, %struct.inode** %9, align 8
  %202 = load %struct.kstat*, %struct.kstat** %6, align 8
  %203 = call i32 @generic_fillattr(%struct.inode* %201, %struct.kstat* %202)
  %204 = load %struct.inode*, %struct.inode** %9, align 8
  %205 = call i32 @NFS_FILEID(%struct.inode* %204)
  %206 = call i32 @nfs_compat_user_ino64(i32 %205)
  %207 = load %struct.kstat*, %struct.kstat** %6, align 8
  %208 = getelementptr inbounds %struct.kstat, %struct.kstat* %207, i32 0, i32 2
  store i32 %206, i32* %208, align 4
  %209 = load %struct.inode*, %struct.inode** %9, align 8
  %210 = getelementptr inbounds %struct.inode, %struct.inode* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i64 @S_ISDIR(i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %221

214:                                              ; preds = %200
  %215 = load %struct.inode*, %struct.inode** %9, align 8
  %216 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %215)
  %217 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.kstat*, %struct.kstat** %6, align 8
  %220 = getelementptr inbounds %struct.kstat, %struct.kstat* %219, i32 0, i32 1
  store i32 %218, i32* %220, align 4
  br label %221

221:                                              ; preds = %214, %200
  br label %222

222:                                              ; preds = %221, %186, %54
  %223 = load %struct.inode*, %struct.inode** %9, align 8
  %224 = load i32, i32* %12, align 4
  %225 = call i32 @trace_nfs_getattr_exit(%struct.inode* %223, i32 %224)
  %226 = load i32, i32* %12, align 4
  ret i32 %226
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @trace_nfs_getattr_enter(%struct.inode*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @filemap_write_and_wait(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @nfs_attribute_cache_expired(%struct.inode*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local %struct.TYPE_4__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @nfs_readdirplus_parent_cache_miss(i32) #1

declare dso_local i32 @nfs_readdirplus_parent_cache_hit(i32) #1

declare dso_local i32 @__nfs_revalidate_inode(%struct.nfs_server*, %struct.inode*) #1

declare dso_local i32 @generic_fillattr(%struct.inode*, %struct.kstat*) #1

declare dso_local i32 @nfs_compat_user_ino64(i32) #1

declare dso_local i32 @NFS_FILEID(%struct.inode*) #1

declare dso_local i32 @trace_nfs_getattr_exit(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
