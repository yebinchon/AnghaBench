; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_xattr.c_hfsplus_listxattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_xattr.c_hfsplus_listxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i64, i32, i32 }
%struct.hfs_find_data = type { %struct.TYPE_7__*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.hfsplus_attr_key = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.hfsplus_unistr = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"can't init xattr find struct\0A\00", align 1
@NLS_MAX_CHARSET_SIZE = common dso_local global i32 0, align 4
@HFSPLUS_ATTR_MAX_STRLEN = common dso_local global i32 0, align 4
@XATTR_MAC_OSX_PREFIX_LEN = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"invalid xattr key length: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"unicode conversion failed\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfsplus_listxattr(%struct.dentry* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.hfs_find_data, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.hfsplus_attr_key, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.dentry*, %struct.dentry** %5, align 8
  %17 = call %struct.inode* @d_inode(%struct.dentry* %16)
  store %struct.inode* %17, %struct.inode** %10, align 8
  store i64 0, i64* %12, align 8
  %18 = load %struct.inode*, %struct.inode** %10, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @S_ISREG(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %3
  %24 = load %struct.inode*, %struct.inode** %10, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @S_ISDIR(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23, %3
  %30 = load %struct.inode*, %struct.inode** %10, align 8
  %31 = call i64 @HFSPLUS_IS_RSRC(%struct.inode* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29, %23
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %230

36:                                               ; preds = %29
  %37 = load %struct.dentry*, %struct.dentry** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @hfsplus_listxattr_finder_info(%struct.dentry* %37, i8* %38, i64 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %230

45:                                               ; preds = %36
  %46 = load %struct.inode*, %struct.inode** %10, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.TYPE_8__* @HFSPLUS_SB(i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %45
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* @EOPNOTSUPP, align 4
  %58 = sub nsw i32 0, %57
  br label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %9, align 4
  br label %61

61:                                               ; preds = %59, %56
  %62 = phi i32 [ %58, %56 ], [ %60, %59 ]
  store i32 %62, i32* %4, align 4
  br label %230

63:                                               ; preds = %45
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.inode*, %struct.inode** %10, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call %struct.TYPE_8__* @HFSPLUS_SB(i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @hfs_find_init(i32 %70, %struct.hfs_find_data* %11)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %64
  %75 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %4, align 4
  br label %230

77:                                               ; preds = %64
  %78 = load i32, i32* @NLS_MAX_CHARSET_SIZE, align 4
  %79 = load i32, i32* @HFSPLUS_ATTR_MAX_STRLEN, align 4
  %80 = mul nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* @XATTR_MAC_OSX_PREFIX_LEN, align 8
  %83 = add nsw i64 %81, %82
  %84 = add nsw i64 %83, 1
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call i8* @kmalloc(i64 %84, i32 %85)
  store i8* %86, i8** %14, align 8
  %87 = load i8*, i8** %14, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %77
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %9, align 4
  br label %227

92:                                               ; preds = %77
  %93 = load %struct.inode*, %struct.inode** %10, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.inode*, %struct.inode** %10, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @hfsplus_find_attr(i32 %95, i64 %98, i32* null, %struct.hfs_find_data* %11)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %92
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @ENOENT, align 4
  %105 = sub nsw i32 0, %104
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %102
  %108 = load i32, i32* %9, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32, i32* @ENODATA, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %110, %107
  br label %224

114:                                              ; preds = %102
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %9, align 4
  br label %224

116:                                              ; preds = %92
  br label %117

117:                                              ; preds = %223, %116
  %118 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %11, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %11, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @hfs_bnode_read_u16(i32 %119, i32 %121)
  store i64 %122, i64* %12, align 8
  %123 = load i64, i64* %12, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %117
  %126 = load i64, i64* %12, align 8
  %127 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %11, i32 0, i32 3
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp sgt i64 %126, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %125, %117
  %133 = load i64, i64* %12, align 8
  %134 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %133)
  %135 = load i32, i32* @EIO, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %9, align 4
  br label %224

137:                                              ; preds = %125
  %138 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %11, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %11, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i64, i64* %12, align 8
  %143 = add i64 %142, 8
  %144 = call i32 @hfs_bnode_read(i32 %139, %struct.hfsplus_attr_key* %13, i32 %141, i64 %143)
  %145 = getelementptr inbounds %struct.hfsplus_attr_key, %struct.hfsplus_attr_key* %13, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i64 @be32_to_cpu(i32 %146)
  %148 = load %struct.inode*, %struct.inode** %10, align 8
  %149 = getelementptr inbounds %struct.inode, %struct.inode* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %147, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %137
  br label %224

153:                                              ; preds = %137
  %154 = load i32, i32* @NLS_MAX_CHARSET_SIZE, align 4
  %155 = load i32, i32* @HFSPLUS_ATTR_MAX_STRLEN, align 4
  %156 = mul nsw i32 %154, %155
  store i32 %156, i32* %15, align 4
  %157 = load %struct.inode*, %struct.inode** %10, align 8
  %158 = getelementptr inbounds %struct.inode, %struct.inode* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %11, i32 0, i32 0
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = bitcast i32* %163 to %struct.hfsplus_unistr*
  %165 = load i8*, i8** %14, align 8
  %166 = call i64 @hfsplus_uni2asc(i32 %159, %struct.hfsplus_unistr* %164, i8* %165, i32* %15)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %153
  %169 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %170 = load i32, i32* @EIO, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %9, align 4
  br label %224

172:                                              ; preds = %153
  %173 = load i8*, i8** %6, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i64, i64* %7, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %189, label %178

178:                                              ; preds = %175, %172
  %179 = load i8*, i8** %14, align 8
  %180 = call i64 @can_list(i8* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %178
  %183 = load i8*, i8** %14, align 8
  %184 = load i32, i32* %15, align 4
  %185 = call i32 @name_len(i8* %183, i32 %184)
  %186 = load i32, i32* %9, align 4
  %187 = add nsw i32 %186, %185
  store i32 %187, i32* %9, align 4
  br label %188

188:                                              ; preds = %182, %178
  br label %219

189:                                              ; preds = %175
  %190 = load i8*, i8** %14, align 8
  %191 = call i64 @can_list(i8* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %218

193:                                              ; preds = %189
  %194 = load i64, i64* %7, align 8
  %195 = load i32, i32* %9, align 4
  %196 = load i8*, i8** %14, align 8
  %197 = load i32, i32* %15, align 4
  %198 = call i32 @name_len(i8* %196, i32 %197)
  %199 = add nsw i32 %195, %198
  %200 = sext i32 %199 to i64
  %201 = icmp ult i64 %194, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %193
  %203 = load i32, i32* @ERANGE, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %9, align 4
  br label %224

205:                                              ; preds = %193
  %206 = load i8*, i8** %6, align 8
  %207 = load i32, i32* %9, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %206, i64 %208
  %210 = load i8*, i8** %14, align 8
  %211 = load i32, i32* %15, align 4
  %212 = call i64 @copy_name(i8* %209, i8* %210, i32 %211)
  %213 = load i32, i32* %9, align 4
  %214 = sext i32 %213 to i64
  %215 = add nsw i64 %214, %212
  %216 = trunc i64 %215 to i32
  store i32 %216, i32* %9, align 4
  br label %217

217:                                              ; preds = %205
  br label %218

218:                                              ; preds = %217, %189
  br label %219

219:                                              ; preds = %218, %188
  %220 = call i64 @hfs_brec_goto(%struct.hfs_find_data* %11, i32 1)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %219
  br label %224

223:                                              ; preds = %219
  br label %117

224:                                              ; preds = %222, %202, %168, %152, %132, %114, %113
  %225 = load i8*, i8** %14, align 8
  %226 = call i32 @kfree(i8* %225)
  br label %227

227:                                              ; preds = %224, %89
  %228 = call i32 @hfs_find_exit(%struct.hfs_find_data* %11)
  %229 = load i32, i32* %9, align 4
  store i32 %229, i32* %4, align 4
  br label %230

230:                                              ; preds = %227, %74, %61, %43, %33
  %231 = load i32, i32* %4, align 4
  ret i32 %231
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i64 @HFSPLUS_IS_RSRC(%struct.inode*) #1

declare dso_local i32 @hfsplus_listxattr_finder_info(%struct.dentry*, i8*, i64) #1

declare dso_local %struct.TYPE_8__* @HFSPLUS_SB(i32) #1

declare dso_local i32 @hfs_find_init(i32, %struct.hfs_find_data*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @hfsplus_find_attr(i32, i64, i32*, %struct.hfs_find_data*) #1

declare dso_local i64 @hfs_bnode_read_u16(i32, i32) #1

declare dso_local i32 @hfs_bnode_read(i32, %struct.hfsplus_attr_key*, i32, i64) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @hfsplus_uni2asc(i32, %struct.hfsplus_unistr*, i8*, i32*) #1

declare dso_local i64 @can_list(i8*) #1

declare dso_local i32 @name_len(i8*, i32) #1

declare dso_local i64 @copy_name(i8*, i8*, i32) #1

declare dso_local i64 @hfs_brec_goto(%struct.hfs_find_data*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @hfs_find_exit(%struct.hfs_find_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
