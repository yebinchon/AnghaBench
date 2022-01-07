; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_defrag_xattr_bucket.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_defrag_xattr_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ocfs2_xattr_bucket = type { i32 }
%struct.ocfs2_xattr_header = type { i8*, i8*, %struct.ocfs2_xattr_entry*, i8* }
%struct.ocfs2_xattr_entry = type { i8* }

@OCFS2_XATTR_BUCKET_SIZE = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@cmp_xe_offset = common dso_local global i32 0, align 4
@swap_xe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Defrag check failed for bucket %llu\0A\00", align 1
@cmp_xe = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, %struct.ocfs2_xattr_bucket*)* @ocfs2_defrag_xattr_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_defrag_xattr_bucket(%struct.inode* %0, i32* %1, %struct.ocfs2_xattr_bucket* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ocfs2_xattr_bucket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ocfs2_xattr_header*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.ocfs2_xattr_entry*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ocfs2_xattr_bucket* %2, %struct.ocfs2_xattr_bucket** %6, align 8
  store i8* null, i8** %15, align 8
  %20 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %6, align 8
  %21 = call i64 @bucket_blkno(%struct.ocfs2_xattr_bucket* %20)
  store i64 %21, i64* %16, align 8
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %18, align 8
  %27 = load i64, i64* @OCFS2_XATTR_BUCKET_SIZE, align 8
  %28 = load i32, i32* @GFP_NOFS, align 4
  %29 = call i8* @kmalloc(i64 %27, i32 %28)
  store i8* %29, i8** %15, align 8
  %30 = load i8*, i8** %15, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %228

35:                                               ; preds = %3
  %36 = load i8*, i8** %15, align 8
  store i8* %36, i8** %14, align 8
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %50, %35
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %6, align 8
  %40 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %37
  %44 = load i8*, i8** %14, align 8
  %45 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i8* @bucket_block(%struct.ocfs2_xattr_bucket* %45, i32 %46)
  %48 = load i64, i64* %18, align 8
  %49 = call i32 @memcpy(i8* %44, i8* %47, i64 %48)
  br label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  %53 = load i64, i64* %18, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 %53
  store i8* %55, i8** %14, align 8
  br label %37

56:                                               ; preds = %37
  %57 = load i32*, i32** %5, align 8
  %58 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %6, align 8
  %59 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %60 = call i32 @ocfs2_xattr_bucket_journal_access(i32* %57, %struct.ocfs2_xattr_bucket* %58, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @mlog_errno(i32 %64)
  br label %228

66:                                               ; preds = %56
  %67 = load i8*, i8** %15, align 8
  %68 = bitcast i8* %67 to %struct.ocfs2_xattr_header*
  store %struct.ocfs2_xattr_header* %68, %struct.ocfs2_xattr_header** %12, align 8
  %69 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %12, align 8
  %70 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %69, i32 0, i32 2
  %71 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %70, align 8
  %72 = bitcast %struct.ocfs2_xattr_entry* %71 to i8*
  store i8* %72, i8** %13, align 8
  %73 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %12, align 8
  %74 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @le16_to_cpu(i8* %75)
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %17, align 8
  %78 = load i64, i64* %16, align 8
  %79 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %12, align 8
  %80 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @le16_to_cpu(i8* %81)
  %83 = load i64, i64* %17, align 8
  %84 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %12, align 8
  %85 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %84, i32 0, i32 3
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @le16_to_cpu(i8* %86)
  %88 = call i32 @trace_ocfs2_defrag_xattr_bucket(i64 %78, i32 %82, i64 %83, i32 %87)
  %89 = load i8*, i8** %13, align 8
  %90 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %12, align 8
  %91 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @le16_to_cpu(i8* %92)
  %94 = load i32, i32* @cmp_xe_offset, align 4
  %95 = load i32, i32* @swap_xe, align 4
  %96 = call i32 @sort(i8* %89, i32 %93, i32 8, i32 %94, i32 %95)
  %97 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %12, align 8
  %98 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %97, i32 0, i32 2
  %99 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %98, align 8
  store %struct.ocfs2_xattr_entry* %99, %struct.ocfs2_xattr_entry** %19, align 8
  %100 = load i64, i64* @OCFS2_XATTR_BUCKET_SIZE, align 8
  store i64 %100, i64* %9, align 8
  store i32 0, i32* %8, align 4
  br label %101

101:                                              ; preds = %168, %66
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %12, align 8
  %104 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @le16_to_cpu(i8* %105)
  %107 = icmp slt i32 %102, %106
  br i1 %107, label %108, label %173

108:                                              ; preds = %101
  %109 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %19, align 8
  %110 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @le16_to_cpu(i8* %111)
  %113 = sext i32 %112 to i64
  store i64 %113, i64* %10, align 8
  %114 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %19, align 8
  %115 = call i64 @namevalue_size_xe(%struct.ocfs2_xattr_entry* %114)
  store i64 %115, i64* %11, align 8
  %116 = load i64, i64* %9, align 8
  %117 = load i64, i64* %11, align 8
  %118 = sub i64 %116, %117
  %119 = load i64, i64* %18, align 8
  %120 = udiv i64 %118, %119
  %121 = load i64, i64* %9, align 8
  %122 = sub i64 %121, 1
  %123 = load i64, i64* %18, align 8
  %124 = udiv i64 %122, %123
  %125 = icmp ne i64 %120, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %108
  %127 = load i64, i64* %9, align 8
  %128 = load i64, i64* %9, align 8
  %129 = load i64, i64* %18, align 8
  %130 = urem i64 %128, %129
  %131 = sub i64 %127, %130
  store i64 %131, i64* %9, align 8
  br label %132

132:                                              ; preds = %126, %108
  %133 = load i64, i64* %9, align 8
  %134 = load i64, i64* %10, align 8
  %135 = load i64, i64* %11, align 8
  %136 = add i64 %134, %135
  %137 = icmp ugt i64 %133, %136
  br i1 %137, label %138, label %156

138:                                              ; preds = %132
  %139 = load i8*, i8** %15, align 8
  %140 = load i64, i64* %9, align 8
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  %142 = load i64, i64* %11, align 8
  %143 = sub i64 0, %142
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  %145 = load i8*, i8** %15, align 8
  %146 = load i64, i64* %10, align 8
  %147 = getelementptr inbounds i8, i8* %145, i64 %146
  %148 = load i64, i64* %11, align 8
  %149 = call i32 @memmove(i8* %144, i8* %147, i64 %148)
  %150 = load i64, i64* %9, align 8
  %151 = load i64, i64* %11, align 8
  %152 = sub i64 %150, %151
  %153 = call i8* @cpu_to_le16(i64 %152)
  %154 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %19, align 8
  %155 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %154, i32 0, i32 0
  store i8* %153, i8** %155, align 8
  br label %156

156:                                              ; preds = %138, %132
  %157 = load i64, i64* %9, align 8
  %158 = load i64, i64* %10, align 8
  %159 = load i64, i64* %11, align 8
  %160 = add i64 %158, %159
  %161 = icmp ult i64 %157, %160
  %162 = zext i1 %161 to i32
  %163 = load i64, i64* %16, align 8
  %164 = call i32 @mlog_bug_on_msg(i32 %162, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %163)
  %165 = load i64, i64* %11, align 8
  %166 = load i64, i64* %9, align 8
  %167 = sub i64 %166, %165
  store i64 %167, i64* %9, align 8
  br label %168

168:                                              ; preds = %156
  %169 = load i32, i32* %8, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %8, align 4
  %171 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %19, align 8
  %172 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %171, i32 1
  store %struct.ocfs2_xattr_entry* %172, %struct.ocfs2_xattr_entry** %19, align 8
  br label %101

173:                                              ; preds = %101
  %174 = load i64, i64* %17, align 8
  %175 = load i64, i64* %9, align 8
  %176 = icmp ugt i64 %174, %175
  %177 = zext i1 %176 to i32
  %178 = load i64, i64* %16, align 8
  %179 = call i32 @mlog_bug_on_msg(i32 %177, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %178)
  %180 = load i64, i64* %17, align 8
  %181 = load i64, i64* %9, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %173
  br label %228

184:                                              ; preds = %173
  %185 = load i8*, i8** %15, align 8
  %186 = load i64, i64* %17, align 8
  %187 = getelementptr inbounds i8, i8* %185, i64 %186
  %188 = load i64, i64* %9, align 8
  %189 = load i64, i64* %17, align 8
  %190 = sub i64 %188, %189
  %191 = call i32 @memset(i8* %187, i32 0, i64 %190)
  %192 = load i64, i64* %9, align 8
  %193 = call i8* @cpu_to_le16(i64 %192)
  %194 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %12, align 8
  %195 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %194, i32 0, i32 1
  store i8* %193, i8** %195, align 8
  %196 = load i8*, i8** %13, align 8
  %197 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %12, align 8
  %198 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %197, i32 0, i32 0
  %199 = load i8*, i8** %198, align 8
  %200 = call i32 @le16_to_cpu(i8* %199)
  %201 = load i32, i32* @cmp_xe, align 4
  %202 = load i32, i32* @swap_xe, align 4
  %203 = call i32 @sort(i8* %196, i32 %200, i32 8, i32 %201, i32 %202)
  %204 = load i8*, i8** %15, align 8
  store i8* %204, i8** %14, align 8
  store i32 0, i32* %8, align 4
  br label %205

205:                                              ; preds = %218, %184
  %206 = load i32, i32* %8, align 4
  %207 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %6, align 8
  %208 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = icmp slt i32 %206, %209
  br i1 %210, label %211, label %224

211:                                              ; preds = %205
  %212 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %6, align 8
  %213 = load i32, i32* %8, align 4
  %214 = call i8* @bucket_block(%struct.ocfs2_xattr_bucket* %212, i32 %213)
  %215 = load i8*, i8** %14, align 8
  %216 = load i64, i64* %18, align 8
  %217 = call i32 @memcpy(i8* %214, i8* %215, i64 %216)
  br label %218

218:                                              ; preds = %211
  %219 = load i32, i32* %8, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %8, align 4
  %221 = load i64, i64* %18, align 8
  %222 = load i8*, i8** %14, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 %221
  store i8* %223, i8** %14, align 8
  br label %205

224:                                              ; preds = %205
  %225 = load i32*, i32** %5, align 8
  %226 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %6, align 8
  %227 = call i32 @ocfs2_xattr_bucket_journal_dirty(i32* %225, %struct.ocfs2_xattr_bucket* %226)
  br label %228

228:                                              ; preds = %224, %183, %63, %32
  %229 = load i8*, i8** %15, align 8
  %230 = call i32 @kfree(i8* %229)
  %231 = load i32, i32* %7, align 4
  ret i32 %231
}

declare dso_local i64 @bucket_blkno(%struct.ocfs2_xattr_bucket*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @bucket_block(%struct.ocfs2_xattr_bucket*, i32) #1

declare dso_local i32 @ocfs2_xattr_bucket_journal_access(i32*, %struct.ocfs2_xattr_bucket*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i32 @trace_ocfs2_defrag_xattr_bucket(i64, i32, i64, i32) #1

declare dso_local i32 @sort(i8*, i32, i32, i32, i32) #1

declare dso_local i64 @namevalue_size_xe(%struct.ocfs2_xattr_entry*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @ocfs2_xattr_bucket_journal_dirty(i32*, %struct.ocfs2_xattr_bucket*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
