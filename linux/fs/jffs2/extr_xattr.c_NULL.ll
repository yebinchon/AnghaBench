; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_xattr.c_NULL.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_xattr.c_NULL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.jffs2_inode_info = type { %struct.jffs2_inode_cache* }
%struct.jffs2_inode_cache = type { %struct.jffs2_xattr_ref* }
%struct.jffs2_xattr_ref = type { %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_datum*, %struct.jffs2_inode_cache* }
%struct.jffs2_xattr_datum = type { i8*, i64, i32 }
%struct.jffs2_sb_info = type { i32 }
%struct.xattr_handler = type { i8*, i64, i32 (%struct.dentry.0*)* }
%struct.dentry.0 = type opaque

@ERANGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @jffs2_listxattr(%struct.dentry* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.jffs2_inode_info*, align 8
  %10 = alloca %struct.jffs2_sb_info*, align 8
  %11 = alloca %struct.jffs2_inode_cache*, align 8
  %12 = alloca %struct.jffs2_xattr_ref*, align 8
  %13 = alloca %struct.jffs2_xattr_ref**, align 8
  %14 = alloca %struct.jffs2_xattr_datum*, align 8
  %15 = alloca %struct.xattr_handler*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %21 = load %struct.dentry*, %struct.dentry** %5, align 8
  %22 = call %struct.inode* @d_inode(%struct.dentry* %21)
  store %struct.inode* %22, %struct.inode** %8, align 8
  %23 = load %struct.inode*, %struct.inode** %8, align 8
  %24 = call %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.inode* %23)
  store %struct.jffs2_inode_info* %24, %struct.jffs2_inode_info** %9, align 8
  %25 = load %struct.inode*, %struct.inode** %8, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.jffs2_sb_info* @JFFS2_SB_INFO(i32 %27)
  store %struct.jffs2_sb_info* %28, %struct.jffs2_sb_info** %10, align 8
  %29 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %9, align 8
  %30 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %29, i32 0, i32 0
  %31 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %30, align 8
  store %struct.jffs2_inode_cache* %31, %struct.jffs2_inode_cache** %11, align 8
  store i32 0, i32* %20, align 4
  %32 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  %33 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %11, align 8
  %34 = call i64 @check_xattr_ref_inode(%struct.jffs2_sb_info* %32, %struct.jffs2_inode_cache* %33)
  store i64 %34, i64* %19, align 8
  %35 = load i64, i64* %19, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %3
  %40 = load i64, i64* %19, align 8
  store i64 %40, i64* %4, align 8
  br label %207

41:                                               ; preds = %3
  %42 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  %43 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %42, i32 0, i32 0
  %44 = call i32 @down_read(i32* %43)
  br label %45

45:                                               ; preds = %88, %72, %41
  store i64 0, i64* %18, align 8
  %46 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %11, align 8
  %47 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %46, i32 0, i32 0
  %48 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %47, align 8
  store %struct.jffs2_xattr_ref* %48, %struct.jffs2_xattr_ref** %12, align 8
  %49 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %11, align 8
  %50 = getelementptr inbounds %struct.jffs2_inode_cache, %struct.jffs2_inode_cache* %49, i32 0, i32 0
  store %struct.jffs2_xattr_ref** %50, %struct.jffs2_xattr_ref*** %13, align 8
  br label %51

51:                                               ; preds = %186, %45
  %52 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %12, align 8
  %53 = icmp ne %struct.jffs2_xattr_ref* %52, null
  br i1 %53, label %54, label %192

54:                                               ; preds = %51
  %55 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %12, align 8
  %56 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %55, i32 0, i32 2
  %57 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %56, align 8
  %58 = load %struct.jffs2_inode_cache*, %struct.jffs2_inode_cache** %11, align 8
  %59 = icmp ne %struct.jffs2_inode_cache* %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @BUG_ON(i32 %60)
  %62 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %12, align 8
  %63 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %62, i32 0, i32 1
  %64 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %63, align 8
  store %struct.jffs2_xattr_datum* %64, %struct.jffs2_xattr_datum** %14, align 8
  %65 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %14, align 8
  %66 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %106, label %69

69:                                               ; preds = %54
  %70 = load i32, i32* %20, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %69
  store i32 1, i32* %20, align 4
  %73 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  %74 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %73, i32 0, i32 0
  %75 = call i32 @up_read(i32* %74)
  %76 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  %77 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %76, i32 0, i32 0
  %78 = call i32 @down_write(i32* %77)
  br label %45

79:                                               ; preds = %69
  %80 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  %81 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %14, align 8
  %82 = call i64 @load_xattr_datum(%struct.jffs2_sb_info* %80, %struct.jffs2_xattr_datum* %81)
  store i64 %82, i64* %19, align 8
  %83 = load i64, i64* %19, align 8
  %84 = icmp ugt i64 %83, 0
  %85 = zext i1 %84 to i32
  %86 = call i64 @unlikely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %79
  %89 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %12, align 8
  %90 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %89, i32 0, i32 0
  %91 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %90, align 8
  %92 = load %struct.jffs2_xattr_ref**, %struct.jffs2_xattr_ref*** %13, align 8
  store %struct.jffs2_xattr_ref* %91, %struct.jffs2_xattr_ref** %92, align 8
  %93 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  %94 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %12, align 8
  %95 = call i32 @delete_xattr_ref(%struct.jffs2_sb_info* %93, %struct.jffs2_xattr_ref* %94)
  br label %45

96:                                               ; preds = %79
  %97 = load i64, i64* %19, align 8
  %98 = icmp ult i64 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i64 @unlikely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %194

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103
  br label %105

105:                                              ; preds = %104
  br label %106

106:                                              ; preds = %105, %54
  %107 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %14, align 8
  %108 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call %struct.xattr_handler* @xprefix_to_handler(i32 %109)
  store %struct.xattr_handler* %110, %struct.xattr_handler** %15, align 8
  %111 = load %struct.xattr_handler*, %struct.xattr_handler** %15, align 8
  %112 = icmp ne %struct.xattr_handler* %111, null
  br i1 %112, label %113, label %126

113:                                              ; preds = %106
  %114 = load %struct.xattr_handler*, %struct.xattr_handler** %15, align 8
  %115 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %114, i32 0, i32 2
  %116 = load i32 (%struct.dentry.0*)*, i32 (%struct.dentry.0*)** %115, align 8
  %117 = icmp ne i32 (%struct.dentry.0*)* %116, null
  br i1 %117, label %118, label %127

118:                                              ; preds = %113
  %119 = load %struct.xattr_handler*, %struct.xattr_handler** %15, align 8
  %120 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %119, i32 0, i32 2
  %121 = load i32 (%struct.dentry.0*)*, i32 (%struct.dentry.0*)** %120, align 8
  %122 = load %struct.dentry*, %struct.dentry** %5, align 8
  %123 = bitcast %struct.dentry* %122 to %struct.dentry.0*
  %124 = call i32 %121(%struct.dentry.0* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %118, %106
  br label %186

127:                                              ; preds = %118, %113
  %128 = load %struct.xattr_handler*, %struct.xattr_handler** %15, align 8
  %129 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = inttoptr i64 %130 to i8*
  br label %138

134:                                              ; preds = %127
  %135 = load %struct.xattr_handler*, %struct.xattr_handler** %15, align 8
  %136 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  br label %138

138:                                              ; preds = %134, %132
  %139 = phi i8* [ %133, %132 ], [ %137, %134 ]
  store i8* %139, i8** %16, align 8
  %140 = load i8*, i8** %16, align 8
  %141 = call i64 @strlen(i8* %140)
  store i64 %141, i64* %17, align 8
  %142 = load i64, i64* %17, align 8
  %143 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %14, align 8
  %144 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = add i64 %142, %145
  %147 = add i64 %146, 1
  store i64 %147, i64* %19, align 8
  %148 = load i8*, i8** %6, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %182

150:                                              ; preds = %138
  %151 = load i64, i64* %19, align 8
  %152 = load i64, i64* %7, align 8
  %153 = load i64, i64* %18, align 8
  %154 = sub i64 %152, %153
  %155 = icmp ugt i64 %151, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %150
  %157 = load i64, i64* @ERANGE, align 8
  %158 = sub i64 0, %157
  store i64 %158, i64* %19, align 8
  br label %194

159:                                              ; preds = %150
  %160 = load i8*, i8** %6, align 8
  %161 = load i8*, i8** %16, align 8
  %162 = load i64, i64* %17, align 8
  %163 = call i32 @memcpy(i8* %160, i8* %161, i64 %162)
  %164 = load i64, i64* %17, align 8
  %165 = load i8*, i8** %6, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 %164
  store i8* %166, i8** %6, align 8
  %167 = load i8*, i8** %6, align 8
  %168 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %14, align 8
  %169 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %14, align 8
  %172 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @memcpy(i8* %167, i8* %170, i64 %173)
  %175 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %14, align 8
  %176 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load i8*, i8** %6, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 %177
  store i8* %179, i8** %6, align 8
  %180 = load i8*, i8** %6, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %6, align 8
  store i8 0, i8* %180, align 1
  br label %182

182:                                              ; preds = %159, %138
  %183 = load i64, i64* %19, align 8
  %184 = load i64, i64* %18, align 8
  %185 = add i64 %184, %183
  store i64 %185, i64* %18, align 8
  br label %186

186:                                              ; preds = %182, %126
  %187 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %12, align 8
  %188 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %187, i32 0, i32 0
  store %struct.jffs2_xattr_ref** %188, %struct.jffs2_xattr_ref*** %13, align 8
  %189 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %12, align 8
  %190 = getelementptr inbounds %struct.jffs2_xattr_ref, %struct.jffs2_xattr_ref* %189, i32 0, i32 0
  %191 = load %struct.jffs2_xattr_ref*, %struct.jffs2_xattr_ref** %190, align 8
  store %struct.jffs2_xattr_ref* %191, %struct.jffs2_xattr_ref** %12, align 8
  br label %51

192:                                              ; preds = %51
  %193 = load i64, i64* %18, align 8
  store i64 %193, i64* %19, align 8
  br label %194

194:                                              ; preds = %192, %156, %102
  %195 = load i32, i32* %20, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %194
  %198 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  %199 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %198, i32 0, i32 0
  %200 = call i32 @up_read(i32* %199)
  br label %205

201:                                              ; preds = %194
  %202 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  %203 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %202, i32 0, i32 0
  %204 = call i32 @up_write(i32* %203)
  br label %205

205:                                              ; preds = %201, %197
  %206 = load i64, i64* %19, align 8
  store i64 %206, i64* %4, align 8
  br label %207

207:                                              ; preds = %205, %39
  %208 = load i64, i64* %4, align 8
  ret i64 %208
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.inode*) #1

declare dso_local %struct.jffs2_sb_info* @JFFS2_SB_INFO(i32) #1

declare dso_local i64 @check_xattr_ref_inode(%struct.jffs2_sb_info*, %struct.jffs2_inode_cache*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @load_xattr_datum(%struct.jffs2_sb_info*, %struct.jffs2_xattr_datum*) #1

declare dso_local i32 @delete_xattr_ref(%struct.jffs2_sb_info*, %struct.jffs2_xattr_ref*) #1

declare dso_local %struct.xattr_handler* @xprefix_to_handler(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
