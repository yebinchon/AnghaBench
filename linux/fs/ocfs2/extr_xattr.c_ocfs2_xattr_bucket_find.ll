; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_bucket_find.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_bucket_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.ocfs2_xattr_search = type { %struct.ocfs2_xattr_bucket*, %struct.TYPE_4__*, i32*, i64, i64 }
%struct.ocfs2_xattr_bucket = type { i32 }
%struct.TYPE_4__ = type { i32* }
%struct.ocfs2_xattr_header = type { i64, %struct.ocfs2_xattr_entry*, i64 }
%struct.ocfs2_xattr_entry = type { i32 }
%struct.TYPE_6__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i8*, i32, i64, i32, i32, %struct.ocfs2_xattr_search*)* @ocfs2_xattr_bucket_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_bucket_find(%struct.inode* %0, i32 %1, i8* %2, i32 %3, i64 %4, i32 %5, i32 %6, %struct.ocfs2_xattr_search* %7) #0 {
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ocfs2_xattr_search*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ocfs2_xattr_header*, align 8
  %20 = alloca %struct.ocfs2_xattr_entry*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.ocfs2_xattr_bucket*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.ocfs2_xattr_search* %7, %struct.ocfs2_xattr_search** %16, align 8
  store i32 0, i32* %18, align 4
  store %struct.ocfs2_xattr_header* null, %struct.ocfs2_xattr_header** %19, align 8
  store %struct.ocfs2_xattr_entry* null, %struct.ocfs2_xattr_entry** %20, align 8
  store i32 0, i32* %21, align 4
  %29 = load %struct.inode*, %struct.inode** %9, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = call i32 @ocfs2_blocks_per_xattr_bucket(%struct.TYPE_5__* %31)
  store i32 %32, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i64 0, i64* %28, align 8
  %33 = load %struct.inode*, %struct.inode** %9, align 8
  %34 = call %struct.ocfs2_xattr_bucket* @ocfs2_xattr_bucket_new(%struct.inode* %33)
  store %struct.ocfs2_xattr_bucket* %34, %struct.ocfs2_xattr_bucket** %26, align 8
  %35 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %26, align 8
  %36 = icmp ne %struct.ocfs2_xattr_bucket* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %8
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %17, align 4
  %41 = call i32 @mlog_errno(i32 %40)
  br label %213

42:                                               ; preds = %8
  %43 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %26, align 8
  %44 = load i64, i64* %13, align 8
  %45 = call i32 @ocfs2_read_xattr_bucket(%struct.ocfs2_xattr_bucket* %43, i64 %44)
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* %17, align 4
  %50 = call i32 @mlog_errno(i32 %49)
  br label %213

51:                                               ; preds = %42
  %52 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %26, align 8
  %53 = call i8* @bucket_xh(%struct.ocfs2_xattr_bucket* %52)
  %54 = bitcast i8* %53 to %struct.ocfs2_xattr_header*
  store %struct.ocfs2_xattr_header* %54, %struct.ocfs2_xattr_header** %19, align 8
  %55 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %19, align 8
  %56 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @le16_to_cpu(i64 %57)
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %25, align 4
  br label %60

60:                                               ; preds = %126, %99, %51
  %61 = load i32, i32* %23, align 4
  %62 = load i32, i32* %25, align 4
  %63 = icmp sle i32 %61, %62
  br i1 %63, label %64, label %142

64:                                               ; preds = %60
  %65 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %26, align 8
  %66 = call i32 @ocfs2_xattr_bucket_relse(%struct.ocfs2_xattr_bucket* %65)
  %67 = load i32, i32* %23, align 4
  %68 = load i32, i32* %25, align 4
  %69 = add nsw i32 %67, %68
  %70 = sdiv i32 %69, 2
  store i32 %70, i32* %24, align 4
  %71 = load i64, i64* %13, align 8
  %72 = load i32, i32* %24, align 4
  %73 = load i32, i32* %22, align 4
  %74 = mul nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %71, %75
  store i64 %76, i64* %27, align 8
  %77 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %26, align 8
  %78 = load i64, i64* %27, align 8
  %79 = call i32 @ocfs2_read_xattr_bucket(%struct.ocfs2_xattr_bucket* %77, i64 %78)
  store i32 %79, i32* %17, align 4
  %80 = load i32, i32* %17, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %64
  %83 = load i32, i32* %17, align 4
  %84 = call i32 @mlog_errno(i32 %83)
  br label %213

85:                                               ; preds = %64
  %86 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %26, align 8
  %87 = call i8* @bucket_xh(%struct.ocfs2_xattr_bucket* %86)
  %88 = bitcast i8* %87 to %struct.ocfs2_xattr_header*
  store %struct.ocfs2_xattr_header* %88, %struct.ocfs2_xattr_header** %19, align 8
  %89 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %19, align 8
  %90 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %89, i32 0, i32 1
  %91 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %90, align 8
  %92 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %91, i64 0
  store %struct.ocfs2_xattr_entry* %92, %struct.ocfs2_xattr_entry** %20, align 8
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %20, align 8
  %95 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @le32_to_cpu(i32 %96)
  %98 = icmp slt i32 %93, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %85
  %100 = load i32, i32* %24, align 4
  %101 = sub nsw i32 %100, 1
  store i32 %101, i32* %25, align 4
  br label %60

102:                                              ; preds = %85
  %103 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %19, align 8
  %104 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %102
  %108 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %19, align 8
  %109 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %108, i32 0, i32 1
  %110 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %109, align 8
  %111 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %19, align 8
  %112 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @le16_to_cpu(i64 %113)
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %110, i64 %116
  store %struct.ocfs2_xattr_entry* %117, %struct.ocfs2_xattr_entry** %20, align 8
  br label %118

118:                                              ; preds = %107, %102
  %119 = load i64, i64* %27, align 8
  store i64 %119, i64* %28, align 8
  %120 = load i32, i32* %12, align 4
  %121 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %20, align 8
  %122 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @le32_to_cpu(i32 %123)
  %125 = icmp sgt i32 %120, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %118
  %127 = load i32, i32* %24, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %23, align 4
  br label %60

129:                                              ; preds = %118
  %130 = load %struct.inode*, %struct.inode** %9, align 8
  %131 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %26, align 8
  %132 = load i32, i32* %10, align 4
  %133 = load i8*, i8** %11, align 8
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @ocfs2_find_xe_in_bucket(%struct.inode* %130, %struct.ocfs2_xattr_bucket* %131, i32 %132, i8* %133, i32 %134, i32* %21, i32* %18)
  store i32 %135, i32* %17, align 4
  %136 = load i32, i32* %17, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %129
  %139 = load i32, i32* %17, align 4
  %140 = call i32 @mlog_errno(i32 %139)
  br label %213

141:                                              ; preds = %129
  br label %142

142:                                              ; preds = %141, %60
  %143 = load i64, i64* %28, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %142
  %146 = load i64, i64* %13, align 8
  store i64 %146, i64* %28, align 8
  br label %147

147:                                              ; preds = %145, %142
  %148 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %16, align 8
  %149 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %148, i32 0, i32 0
  %150 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %149, align 8
  %151 = load i64, i64* %28, align 8
  %152 = call i32 @ocfs2_read_xattr_bucket(%struct.ocfs2_xattr_bucket* %150, i64 %151)
  store i32 %152, i32* %17, align 4
  %153 = load i32, i32* %17, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %147
  %156 = load i32, i32* %17, align 4
  %157 = call i32 @mlog_errno(i32 %156)
  br label %213

158:                                              ; preds = %147
  %159 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %16, align 8
  %160 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %159, i32 0, i32 0
  %161 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %160, align 8
  %162 = call i8* @bucket_xh(%struct.ocfs2_xattr_bucket* %161)
  %163 = bitcast i8* %162 to %struct.TYPE_4__*
  %164 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %16, align 8
  %165 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %164, i32 0, i32 1
  store %struct.TYPE_4__* %163, %struct.TYPE_4__** %165, align 8
  %166 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %16, align 8
  %167 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %166, i32 0, i32 0
  %168 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %167, align 8
  %169 = call i64 @bucket_block(%struct.ocfs2_xattr_bucket* %168, i32 0)
  %170 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %16, align 8
  %171 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %170, i32 0, i32 3
  store i64 %169, i64* %171, align 8
  %172 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %16, align 8
  %173 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.inode*, %struct.inode** %9, align 8
  %176 = getelementptr inbounds %struct.inode, %struct.inode* %175, i32 0, i32 0
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %174, %179
  %181 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %16, align 8
  %182 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %181, i32 0, i32 4
  store i64 %180, i64* %182, align 8
  %183 = load i32, i32* %18, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %209

185:                                              ; preds = %158
  %186 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %16, align 8
  %187 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %186, i32 0, i32 1
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %21, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %16, align 8
  %195 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %194, i32 0, i32 2
  store i32* %193, i32** %195, align 8
  %196 = load %struct.inode*, %struct.inode** %9, align 8
  %197 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %196)
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i8*, i8** %11, align 8
  %201 = load i32, i32* %10, align 4
  %202 = load i32, i32* %12, align 4
  %203 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %16, align 8
  %204 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %203, i32 0, i32 0
  %205 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %204, align 8
  %206 = call i64 @bucket_blkno(%struct.ocfs2_xattr_bucket* %205)
  %207 = load i32, i32* %21, align 4
  %208 = call i32 @trace_ocfs2_xattr_bucket_find(i32 %199, i8* %200, i32 %201, i32 %202, i64 %206, i32 %207)
  br label %212

209:                                              ; preds = %158
  %210 = load i32, i32* @ENODATA, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %17, align 4
  br label %212

212:                                              ; preds = %209, %185
  br label %213

213:                                              ; preds = %212, %155, %138, %82, %48, %37
  %214 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %26, align 8
  %215 = call i32 @ocfs2_xattr_bucket_free(%struct.ocfs2_xattr_bucket* %214)
  %216 = load i32, i32* %17, align 4
  ret i32 %216
}

declare dso_local i32 @ocfs2_blocks_per_xattr_bucket(%struct.TYPE_5__*) #1

declare dso_local %struct.ocfs2_xattr_bucket* @ocfs2_xattr_bucket_new(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_read_xattr_bucket(%struct.ocfs2_xattr_bucket*, i64) #1

declare dso_local i8* @bucket_xh(%struct.ocfs2_xattr_bucket*) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @ocfs2_xattr_bucket_relse(%struct.ocfs2_xattr_bucket*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_find_xe_in_bucket(%struct.inode*, %struct.ocfs2_xattr_bucket*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i64 @bucket_block(%struct.ocfs2_xattr_bucket*, i32) #1

declare dso_local i32 @trace_ocfs2_xattr_bucket_find(i32, i8*, i32, i32, i64, i32) #1

declare dso_local %struct.TYPE_6__* @OCFS2_I(%struct.inode*) #1

declare dso_local i64 @bucket_blkno(%struct.ocfs2_xattr_bucket*) #1

declare dso_local i32 @ocfs2_xattr_bucket_free(%struct.ocfs2_xattr_bucket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
