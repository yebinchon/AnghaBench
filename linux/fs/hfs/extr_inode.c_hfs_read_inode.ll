; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_inode.c_hfs_read_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_inode.c_hfs_read_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.inode = type { i32, i32*, i32*, i8*, i8*, i8*, i32, i8*, %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.hfs_iget_data = type { %struct.TYPE_10__*, i32* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hfs_sb_info = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32* }

@HFS_FLG_RSRC = common dso_local global i32 0, align 4
@sys_tz = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@HFS_FIL_LOCK = common dso_local global i32 0, align 4
@S_IWUGO = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@hfs_file_inode_operations = common dso_local global i32 0, align 4
@hfs_file_operations = common dso_local global i32 0, align 4
@hfs_aops = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@hfs_dir_inode_operations = common dso_local global i32 0, align 4
@hfs_dir_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*)* @hfs_read_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfs_read_inode(%struct.inode* %0, i8* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hfs_iget_data*, align 8
  %6 = alloca %struct.hfs_sb_info*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.hfs_iget_data*
  store %struct.hfs_iget_data* %9, %struct.hfs_iget_data** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 11
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.hfs_sb_info* @HFS_SB(i32 %12)
  store %struct.hfs_sb_info* %13, %struct.hfs_sb_info** %6, align 8
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = call %struct.TYPE_12__* @HFS_I(%struct.inode* %14)
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  store i32 0, i32* %16, align 8
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = call %struct.TYPE_12__* @HFS_I(%struct.inode* %17)
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 7
  store i32* null, i32** %19, align 8
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = call %struct.TYPE_12__* @HFS_I(%struct.inode* %20)
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 6
  %23 = call i32 @mutex_init(i32* %22)
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = call %struct.TYPE_12__* @HFS_I(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 5
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = call %struct.TYPE_12__* @HFS_I(%struct.inode* %28)
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 4
  %31 = call i32 @spin_lock_init(i32* %30)
  %32 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %6, align 8
  %33 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.inode*, %struct.inode** %3, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 10
  store i32 %34, i32* %36, align 4
  %37 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %6, align 8
  %38 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.inode*, %struct.inode** %3, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 9
  store i32 %39, i32* %41, align 8
  %42 = load %struct.inode*, %struct.inode** %3, align 8
  %43 = call i32 @set_nlink(%struct.inode* %42, i32 1)
  %44 = load %struct.hfs_iget_data*, %struct.hfs_iget_data** %5, align 8
  %45 = getelementptr inbounds %struct.hfs_iget_data, %struct.hfs_iget_data* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %2
  %49 = load %struct.hfs_iget_data*, %struct.hfs_iget_data** %5, align 8
  %50 = getelementptr inbounds %struct.hfs_iget_data, %struct.hfs_iget_data* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.inode*, %struct.inode** %3, align 8
  %54 = call %struct.TYPE_12__* @HFS_I(%struct.inode* %53)
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 3
  store i32 %52, i32* %55, align 4
  br label %63

56:                                               ; preds = %2
  %57 = load i32, i32* @HFS_FLG_RSRC, align 4
  %58 = load %struct.inode*, %struct.inode** %3, align 8
  %59 = call %struct.TYPE_12__* @HFS_I(%struct.inode* %58)
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %57
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %56, %48
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sys_tz, i32 0, i32 0), align 4
  %65 = mul nsw i32 %64, 60
  %66 = load %struct.inode*, %struct.inode** %3, align 8
  %67 = call %struct.TYPE_12__* @HFS_I(%struct.inode* %66)
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = load %struct.hfs_iget_data*, %struct.hfs_iget_data** %5, align 8
  %70 = getelementptr inbounds %struct.hfs_iget_data, %struct.hfs_iget_data* %69, i32 0, i32 0
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  store %struct.TYPE_10__* %71, %struct.TYPE_10__** %7, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %224 [
    i32 128, label %75
    i32 129, label %179
  ]

75:                                               ; preds = %63
  %76 = load %struct.inode*, %struct.inode** %3, align 8
  %77 = call i32 @HFS_IS_RSRC(%struct.inode* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %99, label %79

79:                                               ; preds = %75
  %80 = load %struct.inode*, %struct.inode** %3, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 9
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 8
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @be16_to_cpu(i32 %96)
  %98 = call i32 @hfs_inode_read_fork(%struct.inode* %80, i32 %84, i32 %88, i32 %92, i32 %97)
  br label %119

99:                                               ; preds = %75
  %100 = load %struct.inode*, %struct.inode** %3, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @be16_to_cpu(i32 %116)
  %118 = call i32 @hfs_inode_read_fork(%struct.inode* %100, i32 %104, i32 %108, i32 %112, i32 %117)
  br label %119

119:                                              ; preds = %99, %79
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @be32_to_cpu(i32 %123)
  %125 = load %struct.inode*, %struct.inode** %3, align 8
  %126 = getelementptr inbounds %struct.inode, %struct.inode* %125, i32 0, i32 7
  store i8* %124, i8** %126, align 8
  %127 = load i32, i32* @S_IRUGO, align 4
  %128 = load i32, i32* @S_IXUGO, align 4
  %129 = or i32 %127, %128
  %130 = load %struct.inode*, %struct.inode** %3, align 8
  %131 = getelementptr inbounds %struct.inode, %struct.inode* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @HFS_FIL_LOCK, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %145, label %139

139:                                              ; preds = %119
  %140 = load i32, i32* @S_IWUGO, align 4
  %141 = load %struct.inode*, %struct.inode** %3, align 8
  %142 = getelementptr inbounds %struct.inode, %struct.inode* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 8
  br label %145

145:                                              ; preds = %139, %119
  %146 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %6, align 8
  %147 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = xor i32 %148, -1
  %150 = load %struct.inode*, %struct.inode** %3, align 8
  %151 = getelementptr inbounds %struct.inode, %struct.inode* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = and i32 %152, %149
  store i32 %153, i32* %151, align 8
  %154 = load i32, i32* @S_IFREG, align 4
  %155 = load %struct.inode*, %struct.inode** %3, align 8
  %156 = getelementptr inbounds %struct.inode, %struct.inode* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 8
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @hfs_m_to_utime(i32 %162)
  %164 = call i8* @timespec_to_timespec64(i32 %163)
  %165 = load %struct.inode*, %struct.inode** %3, align 8
  %166 = getelementptr inbounds %struct.inode, %struct.inode* %165, i32 0, i32 3
  store i8* %164, i8** %166, align 8
  %167 = load %struct.inode*, %struct.inode** %3, align 8
  %168 = getelementptr inbounds %struct.inode, %struct.inode* %167, i32 0, i32 4
  store i8* %164, i8** %168, align 8
  %169 = load %struct.inode*, %struct.inode** %3, align 8
  %170 = getelementptr inbounds %struct.inode, %struct.inode* %169, i32 0, i32 5
  store i8* %164, i8** %170, align 8
  %171 = load %struct.inode*, %struct.inode** %3, align 8
  %172 = getelementptr inbounds %struct.inode, %struct.inode* %171, i32 0, i32 2
  store i32* @hfs_file_inode_operations, i32** %172, align 8
  %173 = load %struct.inode*, %struct.inode** %3, align 8
  %174 = getelementptr inbounds %struct.inode, %struct.inode* %173, i32 0, i32 1
  store i32* @hfs_file_operations, i32** %174, align 8
  %175 = load %struct.inode*, %struct.inode** %3, align 8
  %176 = getelementptr inbounds %struct.inode, %struct.inode* %175, i32 0, i32 8
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  store i32* @hfs_aops, i32** %178, align 8
  br label %227

179:                                              ; preds = %63
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = call i8* @be32_to_cpu(i32 %183)
  %185 = load %struct.inode*, %struct.inode** %3, align 8
  %186 = getelementptr inbounds %struct.inode, %struct.inode* %185, i32 0, i32 7
  store i8* %184, i8** %186, align 8
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @be16_to_cpu(i32 %190)
  %192 = add nsw i32 %191, 2
  %193 = load %struct.inode*, %struct.inode** %3, align 8
  %194 = getelementptr inbounds %struct.inode, %struct.inode* %193, i32 0, i32 6
  store i32 %192, i32* %194, align 8
  %195 = load %struct.inode*, %struct.inode** %3, align 8
  %196 = call %struct.TYPE_12__* @HFS_I(%struct.inode* %195)
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 1
  store i32 0, i32* %197, align 4
  %198 = load i32, i32* @S_IFDIR, align 4
  %199 = load i32, i32* @S_IRWXUGO, align 4
  %200 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %6, align 8
  %201 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = xor i32 %202, -1
  %204 = and i32 %199, %203
  %205 = or i32 %198, %204
  %206 = load %struct.inode*, %struct.inode** %3, align 8
  %207 = getelementptr inbounds %struct.inode, %struct.inode* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 8
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @hfs_m_to_utime(i32 %211)
  %213 = call i8* @timespec_to_timespec64(i32 %212)
  %214 = load %struct.inode*, %struct.inode** %3, align 8
  %215 = getelementptr inbounds %struct.inode, %struct.inode* %214, i32 0, i32 3
  store i8* %213, i8** %215, align 8
  %216 = load %struct.inode*, %struct.inode** %3, align 8
  %217 = getelementptr inbounds %struct.inode, %struct.inode* %216, i32 0, i32 4
  store i8* %213, i8** %217, align 8
  %218 = load %struct.inode*, %struct.inode** %3, align 8
  %219 = getelementptr inbounds %struct.inode, %struct.inode* %218, i32 0, i32 5
  store i8* %213, i8** %219, align 8
  %220 = load %struct.inode*, %struct.inode** %3, align 8
  %221 = getelementptr inbounds %struct.inode, %struct.inode* %220, i32 0, i32 2
  store i32* @hfs_dir_inode_operations, i32** %221, align 8
  %222 = load %struct.inode*, %struct.inode** %3, align 8
  %223 = getelementptr inbounds %struct.inode, %struct.inode* %222, i32 0, i32 1
  store i32* @hfs_dir_operations, i32** %223, align 8
  br label %227

224:                                              ; preds = %63
  %225 = load %struct.inode*, %struct.inode** %3, align 8
  %226 = call i32 @make_bad_inode(%struct.inode* %225)
  br label %227

227:                                              ; preds = %224, %179, %145
  ret i32 0
}

declare dso_local %struct.hfs_sb_info* @HFS_SB(i32) #1

declare dso_local %struct.TYPE_12__* @HFS_I(%struct.inode*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @HFS_IS_RSRC(%struct.inode*) #1

declare dso_local i32 @hfs_inode_read_fork(%struct.inode*, i32, i32, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i8* @timespec_to_timespec64(i32) #1

declare dso_local i32 @hfs_m_to_utime(i32) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
