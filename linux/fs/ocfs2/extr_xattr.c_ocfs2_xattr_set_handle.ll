; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_set_handle.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_set_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_dinode = type { i32 }
%struct.ocfs2_xattr_info = type { i32, i8*, i8*, i64, i32 }
%struct.ocfs2_xattr_search = type { i32, i32, i64, %struct.buffer_head* }
%struct.ocfs2_xattr_set_ctxt = type { %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context*, i32* }
%struct.TYPE_4__ = type { i32 }

@ENODATA = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@OCFS2_MIN_BLOCKSIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_xattr_set_handle(i32* %0, %struct.inode* %1, %struct.buffer_head* %2, i32 %3, i8* %4, i8* %5, i64 %6, i32 %7, %struct.ocfs2_alloc_context* %8, %struct.ocfs2_alloc_context* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.ocfs2_alloc_context*, align 8
  %21 = alloca %struct.ocfs2_alloc_context*, align 8
  %22 = alloca %struct.ocfs2_dinode*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.ocfs2_xattr_info, align 8
  %25 = alloca %struct.ocfs2_xattr_search, align 8
  %26 = alloca %struct.ocfs2_xattr_search, align 8
  %27 = alloca %struct.ocfs2_xattr_set_ctxt, align 8
  store i32* %0, i32** %12, align 8
  store %struct.inode* %1, %struct.inode** %13, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %14, align 8
  store i32 %3, i32* %15, align 4
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i64 %6, i64* %18, align 8
  store i32 %7, i32* %19, align 4
  store %struct.ocfs2_alloc_context* %8, %struct.ocfs2_alloc_context** %20, align 8
  store %struct.ocfs2_alloc_context* %9, %struct.ocfs2_alloc_context** %21, align 8
  %28 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %24, i32 0, i32 0
  %29 = load i32, i32* %15, align 4
  store i32 %29, i32* %28, align 8
  %30 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %24, i32 0, i32 1
  %31 = load i8*, i8** %16, align 8
  store i8* %31, i8** %30, align 8
  %32 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %24, i32 0, i32 2
  %33 = load i8*, i8** %17, align 8
  store i8* %33, i8** %32, align 8
  %34 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %24, i32 0, i32 3
  %35 = load i64, i64* %18, align 8
  store i64 %35, i64* %34, align 8
  %36 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %24, i32 0, i32 4
  %37 = load i8*, i8** %16, align 8
  %38 = call i32 @strlen(i8* %37)
  store i32 %38, i32* %36, align 8
  %39 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %25, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %25, i32 0, i32 1
  store i32 0, i32* %40, align 4
  %41 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %25, i32 0, i32 2
  %42 = load i64, i64* @ENODATA, align 8
  %43 = sub nsw i64 0, %42
  store i64 %43, i64* %41, align 8
  %44 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %25, i32 0, i32 3
  store %struct.buffer_head* null, %struct.buffer_head** %44, align 8
  %45 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %26, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %26, i32 0, i32 1
  store i32 0, i32* %46, align 4
  %47 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %26, i32 0, i32 2
  %48 = load i64, i64* @ENODATA, align 8
  %49 = sub nsw i64 0, %48
  store i64 %49, i64* %47, align 8
  %50 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %26, i32 0, i32 3
  store %struct.buffer_head* null, %struct.buffer_head** %50, align 8
  %51 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %27, i32 0, i32 0
  %52 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %21, align 8
  store %struct.ocfs2_alloc_context* %52, %struct.ocfs2_alloc_context** %51, align 8
  %53 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %27, i32 0, i32 1
  %54 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %20, align 8
  store %struct.ocfs2_alloc_context* %54, %struct.ocfs2_alloc_context** %53, align 8
  %55 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %27, i32 0, i32 2
  %56 = load i32*, i32** %12, align 8
  store i32* %56, i32** %55, align 8
  %57 = load %struct.inode*, %struct.inode** %13, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = call i32 @OCFS2_SB(%struct.TYPE_3__* %59)
  %61 = call i32 @ocfs2_supports_xattr(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %10
  %64 = load i32, i32* @EOPNOTSUPP, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %11, align 4
  br label %136

66:                                               ; preds = %10
  %67 = load %struct.inode*, %struct.inode** %13, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @OCFS2_MIN_BLOCKSIZE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %66
  %75 = load %struct.inode*, %struct.inode** %13, align 8
  %76 = call i32 @ocfs2_xattr_bucket_new(%struct.inode* %75)
  %77 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %26, i32 0, i32 0
  store i32 %76, i32* %77, align 8
  %78 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %26, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %74
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  %84 = call i32 @mlog_errno(i32 %83)
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %11, align 4
  br label %136

87:                                               ; preds = %74
  br label %88

88:                                               ; preds = %87, %66
  %89 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %90 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %26, i32 0, i32 3
  store %struct.buffer_head* %89, %struct.buffer_head** %90, align 8
  %91 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %25, i32 0, i32 3
  store %struct.buffer_head* %89, %struct.buffer_head** %91, align 8
  %92 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %93 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %95, %struct.ocfs2_dinode** %22, align 8
  %96 = load %struct.inode*, %struct.inode** %13, align 8
  %97 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %96)
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = call i32 @down_write(i32* %98)
  %100 = load %struct.inode*, %struct.inode** %13, align 8
  %101 = load i32, i32* %15, align 4
  %102 = load i8*, i8** %16, align 8
  %103 = call i32 @ocfs2_xattr_ibody_find(%struct.inode* %100, i32 %101, i8* %102, %struct.ocfs2_xattr_search* %25)
  store i32 %103, i32* %23, align 4
  %104 = load i32, i32* %23, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %88
  br label %124

107:                                              ; preds = %88
  %108 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %25, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %107
  %112 = load %struct.inode*, %struct.inode** %13, align 8
  %113 = load i32, i32* %15, align 4
  %114 = load i8*, i8** %16, align 8
  %115 = call i32 @ocfs2_xattr_block_find(%struct.inode* %112, i32 %113, i8* %114, %struct.ocfs2_xattr_search* %26)
  store i32 %115, i32* %23, align 4
  %116 = load i32, i32* %23, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  br label %124

119:                                              ; preds = %111
  br label %120

120:                                              ; preds = %119, %107
  %121 = load %struct.inode*, %struct.inode** %13, align 8
  %122 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %22, align 8
  %123 = call i32 @__ocfs2_xattr_set_handle(%struct.inode* %121, %struct.ocfs2_dinode* %122, %struct.ocfs2_xattr_info* %24, %struct.ocfs2_xattr_search* %25, %struct.ocfs2_xattr_search* %26, %struct.ocfs2_xattr_set_ctxt* %27)
  store i32 %123, i32* %23, align 4
  br label %124

124:                                              ; preds = %120, %118, %106
  %125 = load %struct.inode*, %struct.inode** %13, align 8
  %126 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %125)
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = call i32 @up_write(i32* %127)
  %129 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %26, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @brelse(i32 %130)
  %132 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %26, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @ocfs2_xattr_bucket_free(i32 %133)
  %135 = load i32, i32* %23, align 4
  store i32 %135, i32* %11, align 4
  br label %136

136:                                              ; preds = %124, %81, %63
  %137 = load i32, i32* %11, align 4
  ret i32 %137
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ocfs2_supports_xattr(i32) #1

declare dso_local i32 @OCFS2_SB(%struct.TYPE_3__*) #1

declare dso_local i32 @ocfs2_xattr_bucket_new(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_4__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_xattr_ibody_find(%struct.inode*, i32, i8*, %struct.ocfs2_xattr_search*) #1

declare dso_local i32 @ocfs2_xattr_block_find(%struct.inode*, i32, i8*, %struct.ocfs2_xattr_search*) #1

declare dso_local i32 @__ocfs2_xattr_set_handle(%struct.inode*, %struct.ocfs2_dinode*, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_set_ctxt*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @brelse(i32) #1

declare dso_local i32 @ocfs2_xattr_bucket_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
