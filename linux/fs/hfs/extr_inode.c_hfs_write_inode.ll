; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_inode.c_hfs_write_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_inode.c_hfs_write_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, i64, i32, i32 }
%struct.writeback_control = type { i32 }
%struct.hfs_find_data = type { i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i8*, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.inode* }

@INODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"hfs_write_inode: %lu\0A\00", align 1
@HFS_FIRSTUSER_CNID = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@HFS_CDR_DIR = common dso_local global i64 0, align 8
@HFS_CDR_FIL = common dso_local global i64 0, align 8
@S_IWUSR = common dso_local global i32 0, align 4
@HFS_FIL_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfs_write_inode(%struct.inode* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.hfs_find_data, align 8
  %8 = alloca %struct.TYPE_12__, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  store %struct.inode* %10, %struct.inode** %6, align 8
  %11 = load i32, i32* @INODE, align 4
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @hfs_dbg(i32 %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = call i32 @hfs_ext_write_extent(%struct.inode* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %3, align 4
  br label %238

22:                                               ; preds = %2
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @HFS_FIRSTUSER_CNID, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %54

28:                                               ; preds = %22
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  switch i64 %31, label %49 [
    i64 128, label %32
    i64 129, label %33
    i64 130, label %41
  ]

32:                                               ; preds = %28
  br label %53

33:                                               ; preds = %28
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.TYPE_13__* @HFS_SB(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @hfs_btree_write(i32 %39)
  store i32 0, i32* %3, align 4
  br label %238

41:                                               ; preds = %28
  %42 = load %struct.inode*, %struct.inode** %4, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call %struct.TYPE_13__* @HFS_SB(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @hfs_btree_write(i32 %47)
  store i32 0, i32* %3, align 4
  br label %238

49:                                               ; preds = %28
  %50 = call i32 (...) @BUG()
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %238

53:                                               ; preds = %32
  br label %54

54:                                               ; preds = %53, %22
  %55 = load %struct.inode*, %struct.inode** %4, align 8
  %56 = call i64 @HFS_IS_RSRC(%struct.inode* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load %struct.inode*, %struct.inode** %4, align 8
  %60 = call %struct.TYPE_14__* @HFS_I(%struct.inode* %59)
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load %struct.inode*, %struct.inode** %61, align 8
  store %struct.inode* %62, %struct.inode** %6, align 8
  br label %63

63:                                               ; preds = %58, %54
  %64 = load %struct.inode*, %struct.inode** %6, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %238

69:                                               ; preds = %63
  %70 = load %struct.inode*, %struct.inode** %6, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call %struct.TYPE_13__* @HFS_SB(i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @hfs_find_init(i32 %75, %struct.hfs_find_data* %7)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %69
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %238

81:                                               ; preds = %69
  %82 = load %struct.inode*, %struct.inode** %6, align 8
  %83 = call %struct.TYPE_14__* @HFS_I(%struct.inode* %82)
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %7, i32 0, i32 3
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 4
  %89 = call i64 @hfs_brec_find(%struct.hfs_find_data* %7)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  br label %236

92:                                               ; preds = %81
  %93 = load %struct.inode*, %struct.inode** %6, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @S_ISDIR(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %143

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %7, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = icmp ult i64 %101, 4
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %104

104:                                              ; preds = %103, %98
  %105 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %7, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %7, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @hfs_bnode_read(i32 %106, %struct.TYPE_12__* %8, i32 %108, i32 4)
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @HFS_CDR_DIR, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %123, label %114

114:                                              ; preds = %104
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i64 @be32_to_cpu(i32 %117)
  %119 = load %struct.inode*, %struct.inode** %4, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %118, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %114, %104
  br label %124

124:                                              ; preds = %123, %114
  %125 = load %struct.inode*, %struct.inode** %4, align 8
  %126 = getelementptr inbounds %struct.inode, %struct.inode* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i8* @hfs_u_to_mtime(i32 %127)
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  store i8* %128, i8** %130, align 8
  %131 = load %struct.inode*, %struct.inode** %4, align 8
  %132 = getelementptr inbounds %struct.inode, %struct.inode* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = sub nsw i64 %133, 2
  %135 = call i32 @cpu_to_be16(i64 %134)
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %7, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %7, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @hfs_bnode_write(i32 %139, %struct.TYPE_12__* %8, i32 %141, i32 4)
  br label %235

143:                                              ; preds = %92
  %144 = load %struct.inode*, %struct.inode** %4, align 8
  %145 = call i64 @HFS_IS_RSRC(%struct.inode* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %167

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %7, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %7, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @hfs_bnode_read(i32 %149, %struct.TYPE_12__* %8, i32 %151, i32 4)
  %153 = load %struct.inode*, %struct.inode** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 8
  %156 = load i32, i32* %155, align 4
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 7
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 6
  %161 = call i32 @hfs_inode_write_fork(%struct.inode* %153, i32 %156, i32* %158, i32* %160)
  %162 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %7, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %7, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @hfs_bnode_write(i32 %163, %struct.TYPE_12__* %8, i32 %165, i32 4)
  br label %234

167:                                              ; preds = %143
  %168 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %7, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = sext i32 %169 to i64
  %171 = icmp ult i64 %170, 4
  br i1 %171, label %172, label %173

172:                                              ; preds = %167
  br label %173

173:                                              ; preds = %172, %167
  %174 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %7, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %7, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @hfs_bnode_read(i32 %175, %struct.TYPE_12__* %8, i32 %177, i32 4)
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @HFS_CDR_FIL, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %192, label %183

183:                                              ; preds = %173
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 8
  %187 = call i64 @be32_to_cpu(i32 %186)
  %188 = load %struct.inode*, %struct.inode** %4, align 8
  %189 = getelementptr inbounds %struct.inode, %struct.inode* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %187, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %183, %173
  br label %193

193:                                              ; preds = %192, %183
  %194 = load %struct.inode*, %struct.inode** %4, align 8
  %195 = getelementptr inbounds %struct.inode, %struct.inode* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @S_IWUSR, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %193
  %201 = load i32, i32* @HFS_FIL_LOCK, align 4
  %202 = xor i32 %201, -1
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 4
  %206 = and i32 %205, %202
  store i32 %206, i32* %204, align 4
  br label %213

207:                                              ; preds = %193
  %208 = load i32, i32* @HFS_FIL_LOCK, align 4
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 4
  %212 = or i32 %211, %208
  store i32 %212, i32* %210, align 4
  br label %213

213:                                              ; preds = %207, %200
  %214 = load %struct.inode*, %struct.inode** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 1
  %222 = call i32 @hfs_inode_write_fork(%struct.inode* %214, i32 %217, i32* %219, i32* %221)
  %223 = load %struct.inode*, %struct.inode** %4, align 8
  %224 = getelementptr inbounds %struct.inode, %struct.inode* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = call i8* @hfs_u_to_mtime(i32 %225)
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 0
  store i8* %226, i8** %228, align 8
  %229 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %7, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %7, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @hfs_bnode_write(i32 %230, %struct.TYPE_12__* %8, i32 %232, i32 4)
  br label %234

234:                                              ; preds = %213, %147
  br label %235

235:                                              ; preds = %234, %124
  br label %236

236:                                              ; preds = %235, %91
  %237 = call i32 @hfs_find_exit(%struct.hfs_find_data* %7)
  store i32 0, i32* %3, align 4
  br label %238

238:                                              ; preds = %236, %78, %68, %49, %41, %33, %20
  %239 = load i32, i32* %3, align 4
  ret i32 %239
}

declare dso_local i32 @hfs_dbg(i32, i8*, i64) #1

declare dso_local i32 @hfs_ext_write_extent(%struct.inode*) #1

declare dso_local i32 @hfs_btree_write(i32) #1

declare dso_local %struct.TYPE_13__* @HFS_SB(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @HFS_IS_RSRC(%struct.inode*) #1

declare dso_local %struct.TYPE_14__* @HFS_I(%struct.inode*) #1

declare dso_local i64 @hfs_find_init(i32, %struct.hfs_find_data*) #1

declare dso_local i64 @hfs_brec_find(%struct.hfs_find_data*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @hfs_bnode_read(i32, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i8* @hfs_u_to_mtime(i32) #1

declare dso_local i32 @cpu_to_be16(i64) #1

declare dso_local i32 @hfs_bnode_write(i32, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @hfs_inode_write_fork(%struct.inode*, i32, i32*, i32*) #1

declare dso_local i32 @hfs_find_exit(%struct.hfs_find_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
