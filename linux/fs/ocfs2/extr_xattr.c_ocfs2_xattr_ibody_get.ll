; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_ibody_get.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_ibody_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ocfs2_xattr_search = type { %struct.TYPE_6__*, i8*, %struct.ocfs2_xattr_header*, i8*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.ocfs2_xattr_header = type { %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i64 }
%struct.ocfs2_inode_info = type { i32 }
%struct.ocfs2_dinode = type { i32 }
%struct.ocfs2_xattr_value_root = type { i32 }

@OCFS2_INLINE_XATTR_FL = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i8*, i8*, i64, %struct.ocfs2_xattr_search*)* @ocfs2_xattr_ibody_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_ibody_get(%struct.inode* %0, i32 %1, i8* %2, i8* %3, i64 %4, %struct.ocfs2_xattr_search* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ocfs2_xattr_search*, align 8
  %14 = alloca %struct.ocfs2_inode_info*, align 8
  %15 = alloca %struct.ocfs2_dinode*, align 8
  %16 = alloca %struct.ocfs2_xattr_value_root*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.ocfs2_xattr_search* %5, %struct.ocfs2_xattr_search** %13, align 8
  %19 = load %struct.inode*, %struct.inode** %8, align 8
  %20 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %19)
  store %struct.ocfs2_inode_info* %20, %struct.ocfs2_inode_info** %14, align 8
  %21 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %13, align 8
  %22 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %21, i32 0, i32 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %26, %struct.ocfs2_dinode** %15, align 8
  store i32 0, i32* %18, align 4
  %27 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %14, align 8
  %28 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @OCFS2_INLINE_XATTR_FL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %6
  %34 = load i32, i32* @ENODATA, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %164

36:                                               ; preds = %6
  %37 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %38 = bitcast %struct.ocfs2_dinode* %37 to i8*
  %39 = load %struct.inode*, %struct.inode** %8, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr i8, i8* %38, i64 %44
  %46 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %13, align 8
  %47 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %13, align 8
  %49 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %48, i32 0, i32 3
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %52 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le16_to_cpu(i32 %53)
  %55 = sext i32 %54 to i64
  %56 = sub i64 0, %55
  %57 = getelementptr i8, i8* %50, i64 %56
  %58 = bitcast i8* %57 to %struct.ocfs2_xattr_header*
  %59 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %13, align 8
  %60 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %59, i32 0, i32 2
  store %struct.ocfs2_xattr_header* %58, %struct.ocfs2_xattr_header** %60, align 8
  %61 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %13, align 8
  %62 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %61, i32 0, i32 2
  %63 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %62, align 8
  %64 = bitcast %struct.ocfs2_xattr_header* %63 to i8*
  %65 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %13, align 8
  %66 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %13, align 8
  %68 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %67, i32 0, i32 2
  %69 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %68, align 8
  %70 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %13, align 8
  %73 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %72, i32 0, i32 0
  store %struct.TYPE_6__* %71, %struct.TYPE_6__** %73, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load i8*, i8** %10, align 8
  %76 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %13, align 8
  %77 = call i32 @ocfs2_xattr_find_entry(i32 %74, i8* %75, %struct.ocfs2_xattr_search* %76)
  store i32 %77, i32* %18, align 4
  %78 = load i32, i32* %18, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %36
  %81 = load i32, i32* %18, align 4
  store i32 %81, i32* %7, align 4
  br label %164

82:                                               ; preds = %36
  %83 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %13, align 8
  %84 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @le64_to_cpu(i32 %87)
  store i64 %88, i64* %17, align 8
  %89 = load i8*, i8** %11, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %161

91:                                               ; preds = %82
  %92 = load i64, i64* %17, align 8
  %93 = load i64, i64* %12, align 8
  %94 = icmp ugt i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i32, i32* @ERANGE, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %7, align 4
  br label %164

98:                                               ; preds = %91
  %99 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %13, align 8
  %100 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = call i64 @ocfs2_xattr_is_local(%struct.TYPE_6__* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %127

104:                                              ; preds = %98
  %105 = load i8*, i8** %11, align 8
  %106 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %13, align 8
  %107 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %13, align 8
  %110 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @le16_to_cpu(i32 %113)
  %115 = sext i32 %114 to i64
  %116 = getelementptr i8, i8* %108, i64 %115
  %117 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %13, align 8
  %118 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %117, i32 0, i32 0
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @OCFS2_XATTR_SIZE(i32 %121)
  %123 = sext i32 %122 to i64
  %124 = getelementptr i8, i8* %116, i64 %123
  %125 = load i64, i64* %17, align 8
  %126 = call i32 @memcpy(i8* %105, i8* %124, i64 %125)
  br label %160

127:                                              ; preds = %98
  %128 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %13, align 8
  %129 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %13, align 8
  %132 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %131, i32 0, i32 0
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @le16_to_cpu(i32 %135)
  %137 = sext i32 %136 to i64
  %138 = getelementptr i8, i8* %130, i64 %137
  %139 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %13, align 8
  %140 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %139, i32 0, i32 0
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @OCFS2_XATTR_SIZE(i32 %143)
  %145 = sext i32 %144 to i64
  %146 = getelementptr i8, i8* %138, i64 %145
  %147 = bitcast i8* %146 to %struct.ocfs2_xattr_value_root*
  store %struct.ocfs2_xattr_value_root* %147, %struct.ocfs2_xattr_value_root** %16, align 8
  %148 = load %struct.inode*, %struct.inode** %8, align 8
  %149 = load %struct.ocfs2_xattr_value_root*, %struct.ocfs2_xattr_value_root** %16, align 8
  %150 = load i8*, i8** %11, align 8
  %151 = load i64, i64* %17, align 8
  %152 = call i32 @ocfs2_xattr_get_value_outside(%struct.inode* %148, %struct.ocfs2_xattr_value_root* %149, i8* %150, i64 %151)
  store i32 %152, i32* %18, align 4
  %153 = load i32, i32* %18, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %127
  %156 = load i32, i32* %18, align 4
  %157 = call i32 @mlog_errno(i32 %156)
  %158 = load i32, i32* %18, align 4
  store i32 %158, i32* %7, align 4
  br label %164

159:                                              ; preds = %127
  br label %160

160:                                              ; preds = %159, %104
  br label %161

161:                                              ; preds = %160, %82
  %162 = load i64, i64* %17, align 8
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %7, align 4
  br label %164

164:                                              ; preds = %161, %155, %95, %80, %33
  %165 = load i32, i32* %7, align 4
  ret i32 %165
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_xattr_find_entry(i32, i8*, %struct.ocfs2_xattr_search*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i64 @ocfs2_xattr_is_local(%struct.TYPE_6__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @OCFS2_XATTR_SIZE(i32) #1

declare dso_local i32 @ocfs2_xattr_get_value_outside(%struct.inode*, %struct.ocfs2_xattr_value_root*, i8*, i64) #1

declare dso_local i32 @mlog_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
