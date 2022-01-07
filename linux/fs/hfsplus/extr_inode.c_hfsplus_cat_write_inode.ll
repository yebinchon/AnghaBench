; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_inode.c_hfsplus_cat_write_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_inode.c_hfsplus_cat_write_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.hfs_find_data = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.hfsplus_cat_file, %struct.hfsplus_cat_folder }
%struct.hfsplus_cat_file = type { i32, i8*, i8*, i8*, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.hfsplus_cat_folder = type { i32, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i64, %struct.inode* }
%struct.TYPE_9__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@HFSPLUS_HAS_FOLDER_COUNT = common dso_local global i32 0, align 4
@HFSPLUS_FLG_IMMUTABLE = common dso_local global i32 0, align 4
@HFSPLUS_FILE_LOCKED = common dso_local global i32 0, align 4
@HFSPLUS_I_CAT_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfsplus_cat_write_inode(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.hfs_find_data, align 4
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca %struct.hfsplus_cat_folder*, align 8
  %8 = alloca %struct.hfsplus_cat_file*, align 8
  %9 = alloca %struct.hfsplus_cat_file*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  store %struct.inode* %10, %struct.inode** %4, align 8
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = call i64 @HFSPLUS_IS_RSRC(%struct.inode* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = call %struct.TYPE_10__* @HFSPLUS_I(%struct.inode* %15)
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %4, align 8
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %217

25:                                               ; preds = %19
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.TYPE_9__* @HFSPLUS_SB(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @hfs_find_init(i32 %31, %struct.hfs_find_data* %5)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %217

37:                                               ; preds = %25
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.inode*, %struct.inode** %4, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @hfsplus_find_cat(i32 %40, i32 %43, %struct.hfs_find_data* %5)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %215

47:                                               ; preds = %37
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @S_ISDIR(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %116

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store %struct.hfsplus_cat_folder* %54, %struct.hfsplus_cat_folder** %7, align 8
  %55 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %5, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp ult i64 %57, 56
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %53
  %61 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %5, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %5, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @hfs_bnode_read(i32 %62, %struct.TYPE_7__* %6, i32 %64, i32 56)
  %66 = load %struct.inode*, %struct.inode** %3, align 8
  %67 = load %struct.hfsplus_cat_folder*, %struct.hfsplus_cat_folder** %7, align 8
  %68 = getelementptr inbounds %struct.hfsplus_cat_folder, %struct.hfsplus_cat_folder* %67, i32 0, i32 6
  %69 = call i32 @hfsplus_cat_set_perms(%struct.inode* %66, %struct.TYPE_8__* %68)
  %70 = load %struct.inode*, %struct.inode** %3, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i8* @hfsp_ut2mt(i32 %72)
  %74 = load %struct.hfsplus_cat_folder*, %struct.hfsplus_cat_folder** %7, align 8
  %75 = getelementptr inbounds %struct.hfsplus_cat_folder, %struct.hfsplus_cat_folder* %74, i32 0, i32 5
  store i8* %73, i8** %75, align 8
  %76 = load %struct.inode*, %struct.inode** %3, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @hfsp_ut2mt(i32 %78)
  %80 = load %struct.hfsplus_cat_folder*, %struct.hfsplus_cat_folder** %7, align 8
  %81 = getelementptr inbounds %struct.hfsplus_cat_folder, %struct.hfsplus_cat_folder* %80, i32 0, i32 4
  store i8* %79, i8** %81, align 8
  %82 = load %struct.inode*, %struct.inode** %3, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @hfsp_ut2mt(i32 %84)
  %86 = load %struct.hfsplus_cat_folder*, %struct.hfsplus_cat_folder** %7, align 8
  %87 = getelementptr inbounds %struct.hfsplus_cat_folder, %struct.hfsplus_cat_folder* %86, i32 0, i32 3
  store i8* %85, i8** %87, align 8
  %88 = load %struct.inode*, %struct.inode** %3, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = sub nsw i64 %90, 2
  %92 = call i8* @cpu_to_be32(i64 %91)
  %93 = load %struct.hfsplus_cat_folder*, %struct.hfsplus_cat_folder** %7, align 8
  %94 = getelementptr inbounds %struct.hfsplus_cat_folder, %struct.hfsplus_cat_folder* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  %95 = load %struct.hfsplus_cat_folder*, %struct.hfsplus_cat_folder** %7, align 8
  %96 = getelementptr inbounds %struct.hfsplus_cat_folder, %struct.hfsplus_cat_folder* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @HFSPLUS_HAS_FOLDER_COUNT, align 4
  %99 = call i32 @cpu_to_be16(i32 %98)
  %100 = and i32 %97, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %60
  %103 = load %struct.inode*, %struct.inode** %3, align 8
  %104 = call %struct.TYPE_10__* @HFSPLUS_I(%struct.inode* %103)
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i8* @cpu_to_be32(i64 %106)
  %108 = load %struct.hfsplus_cat_folder*, %struct.hfsplus_cat_folder** %7, align 8
  %109 = getelementptr inbounds %struct.hfsplus_cat_folder, %struct.hfsplus_cat_folder* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  br label %110

110:                                              ; preds = %102, %60
  %111 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %5, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %5, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @hfs_bnode_write(i32 %112, %struct.TYPE_7__* %6, i32 %114, i32 56)
  br label %209

116:                                              ; preds = %47
  %117 = load %struct.inode*, %struct.inode** %3, align 8
  %118 = call i64 @HFSPLUS_IS_RSRC(%struct.inode* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %136

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store %struct.hfsplus_cat_file* %121, %struct.hfsplus_cat_file** %8, align 8
  %122 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %5, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %5, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @hfs_bnode_read(i32 %123, %struct.TYPE_7__* %6, i32 %125, i32 48)
  %127 = load %struct.inode*, %struct.inode** %3, align 8
  %128 = load %struct.hfsplus_cat_file*, %struct.hfsplus_cat_file** %8, align 8
  %129 = getelementptr inbounds %struct.hfsplus_cat_file, %struct.hfsplus_cat_file* %128, i32 0, i32 6
  %130 = call i32 @hfsplus_inode_write_fork(%struct.inode* %127, i32* %129)
  %131 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %5, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %5, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @hfs_bnode_write(i32 %132, %struct.TYPE_7__* %6, i32 %134, i32 48)
  br label %208

136:                                              ; preds = %116
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store %struct.hfsplus_cat_file* %137, %struct.hfsplus_cat_file** %9, align 8
  %138 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %5, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = icmp ult i64 %140, 48
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  br label %143

143:                                              ; preds = %142, %136
  %144 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %5, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %5, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @hfs_bnode_read(i32 %145, %struct.TYPE_7__* %6, i32 %147, i32 48)
  %149 = load %struct.inode*, %struct.inode** %3, align 8
  %150 = load %struct.hfsplus_cat_file*, %struct.hfsplus_cat_file** %9, align 8
  %151 = getelementptr inbounds %struct.hfsplus_cat_file, %struct.hfsplus_cat_file* %150, i32 0, i32 5
  %152 = call i32 @hfsplus_inode_write_fork(%struct.inode* %149, i32* %151)
  %153 = load %struct.inode*, %struct.inode** %3, align 8
  %154 = load %struct.hfsplus_cat_file*, %struct.hfsplus_cat_file** %9, align 8
  %155 = getelementptr inbounds %struct.hfsplus_cat_file, %struct.hfsplus_cat_file* %154, i32 0, i32 4
  %156 = call i32 @hfsplus_cat_set_perms(%struct.inode* %153, %struct.TYPE_8__* %155)
  %157 = load i32, i32* @HFSPLUS_FLG_IMMUTABLE, align 4
  %158 = load %struct.hfsplus_cat_file*, %struct.hfsplus_cat_file** %9, align 8
  %159 = getelementptr inbounds %struct.hfsplus_cat_file, %struct.hfsplus_cat_file* %158, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.hfsplus_cat_file*, %struct.hfsplus_cat_file** %9, align 8
  %163 = getelementptr inbounds %struct.hfsplus_cat_file, %struct.hfsplus_cat_file* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %161, %165
  %167 = and i32 %157, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %143
  %170 = load i32, i32* @HFSPLUS_FILE_LOCKED, align 4
  %171 = call i32 @cpu_to_be16(i32 %170)
  %172 = load %struct.hfsplus_cat_file*, %struct.hfsplus_cat_file** %9, align 8
  %173 = getelementptr inbounds %struct.hfsplus_cat_file, %struct.hfsplus_cat_file* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 8
  br label %184

176:                                              ; preds = %143
  %177 = load i32, i32* @HFSPLUS_FILE_LOCKED, align 4
  %178 = xor i32 %177, -1
  %179 = call i32 @cpu_to_be16(i32 %178)
  %180 = load %struct.hfsplus_cat_file*, %struct.hfsplus_cat_file** %9, align 8
  %181 = getelementptr inbounds %struct.hfsplus_cat_file, %struct.hfsplus_cat_file* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = and i32 %182, %179
  store i32 %183, i32* %181, align 8
  br label %184

184:                                              ; preds = %176, %169
  %185 = load %struct.inode*, %struct.inode** %3, align 8
  %186 = getelementptr inbounds %struct.inode, %struct.inode* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = call i8* @hfsp_ut2mt(i32 %187)
  %189 = load %struct.hfsplus_cat_file*, %struct.hfsplus_cat_file** %9, align 8
  %190 = getelementptr inbounds %struct.hfsplus_cat_file, %struct.hfsplus_cat_file* %189, i32 0, i32 3
  store i8* %188, i8** %190, align 8
  %191 = load %struct.inode*, %struct.inode** %3, align 8
  %192 = getelementptr inbounds %struct.inode, %struct.inode* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i8* @hfsp_ut2mt(i32 %193)
  %195 = load %struct.hfsplus_cat_file*, %struct.hfsplus_cat_file** %9, align 8
  %196 = getelementptr inbounds %struct.hfsplus_cat_file, %struct.hfsplus_cat_file* %195, i32 0, i32 2
  store i8* %194, i8** %196, align 8
  %197 = load %struct.inode*, %struct.inode** %3, align 8
  %198 = getelementptr inbounds %struct.inode, %struct.inode* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i8* @hfsp_ut2mt(i32 %199)
  %201 = load %struct.hfsplus_cat_file*, %struct.hfsplus_cat_file** %9, align 8
  %202 = getelementptr inbounds %struct.hfsplus_cat_file, %struct.hfsplus_cat_file* %201, i32 0, i32 1
  store i8* %200, i8** %202, align 8
  %203 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %5, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %5, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @hfs_bnode_write(i32 %204, %struct.TYPE_7__* %6, i32 %206, i32 48)
  br label %208

208:                                              ; preds = %184, %120
  br label %209

209:                                              ; preds = %208, %110
  %210 = load i32, i32* @HFSPLUS_I_CAT_DIRTY, align 4
  %211 = load %struct.inode*, %struct.inode** %3, align 8
  %212 = call %struct.TYPE_10__* @HFSPLUS_I(%struct.inode* %211)
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  %214 = call i32 @set_bit(i32 %210, i32* %213)
  br label %215

215:                                              ; preds = %209, %46
  %216 = call i32 @hfs_find_exit(%struct.hfs_find_data* %5)
  store i32 0, i32* %2, align 4
  br label %217

217:                                              ; preds = %215, %34, %24
  %218 = load i32, i32* %2, align 4
  ret i32 %218
}

declare dso_local i64 @HFSPLUS_IS_RSRC(%struct.inode*) #1

declare dso_local %struct.TYPE_10__* @HFSPLUS_I(%struct.inode*) #1

declare dso_local i64 @hfs_find_init(i32, %struct.hfs_find_data*) #1

declare dso_local %struct.TYPE_9__* @HFSPLUS_SB(i32) #1

declare dso_local i64 @hfsplus_find_cat(i32, i32, %struct.hfs_find_data*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @hfs_bnode_read(i32, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @hfsplus_cat_set_perms(%struct.inode*, %struct.TYPE_8__*) #1

declare dso_local i8* @hfsp_ut2mt(i32) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @hfs_bnode_write(i32, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @hfsplus_inode_write_fork(%struct.inode*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hfs_find_exit(%struct.hfs_find_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
