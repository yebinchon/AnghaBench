; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_ibody_find.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_ibody_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.ocfs2_xattr_search = type { i32, %struct.ocfs2_xattr_header*, i32, i8*, i8*, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.ocfs2_xattr_header = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.ocfs2_inode_info = type { i32, i32 }
%struct.ocfs2_dinode = type { i32 }
%struct.TYPE_5__ = type { i32 }

@OCFS2_MIN_BLOCKSIZE = common dso_local global i64 0, align 8
@OCFS2_INLINE_XATTR_FL = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i8*, %struct.ocfs2_xattr_search*)* @ocfs2_xattr_ibody_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_ibody_find(%struct.inode* %0, i32 %1, i8* %2, %struct.ocfs2_xattr_search* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ocfs2_xattr_search*, align 8
  %10 = alloca %struct.ocfs2_inode_info*, align 8
  %11 = alloca %struct.ocfs2_dinode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.ocfs2_xattr_search* %3, %struct.ocfs2_xattr_search** %9, align 8
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %14)
  store %struct.ocfs2_inode_info* %15, %struct.ocfs2_inode_info** %10, align 8
  %16 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %9, align 8
  %17 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %16, i32 0, i32 5
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %21, %struct.ocfs2_dinode** %11, align 8
  store i32 0, i32* %13, align 4
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @OCFS2_MIN_BLOCKSIZE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %142

30:                                               ; preds = %4
  %31 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %10, align 8
  %32 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @OCFS2_INLINE_XATTR_FL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %30
  %38 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %10, align 8
  %39 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %38, i32 0, i32 1
  %40 = call i32 @down_read(i32* %39)
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %43 = call i32 @ocfs2_xattr_has_space_inline(%struct.inode* %41, %struct.ocfs2_dinode* %42)
  store i32 %43, i32* %13, align 4
  %44 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %10, align 8
  %45 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %44, i32 0, i32 1
  %46 = call i32 @up_read(i32* %45)
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %142

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50, %30
  %52 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %9, align 8
  %53 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %52, i32 0, i32 5
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %9, align 8
  %56 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %55, i32 0, i32 6
  store %struct.TYPE_4__* %54, %struct.TYPE_4__** %56, align 8
  %57 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %58 = bitcast %struct.ocfs2_dinode* %57 to i8*
  %59 = load %struct.inode*, %struct.inode** %6, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr i8, i8* %58, i64 %63
  %65 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %9, align 8
  %66 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %65, i32 0, i32 4
  store i8* %64, i8** %66, align 8
  %67 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %10, align 8
  %68 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @OCFS2_INLINE_XATTR_FL, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %51
  %74 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %9, align 8
  %75 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %74, i32 0, i32 4
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %78 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @le16_to_cpu(i32 %79)
  %81 = sext i32 %80 to i64
  %82 = sub i64 0, %81
  %83 = getelementptr i8, i8* %76, i64 %82
  %84 = bitcast i8* %83 to %struct.ocfs2_xattr_header*
  %85 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %9, align 8
  %86 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %85, i32 0, i32 1
  store %struct.ocfs2_xattr_header* %84, %struct.ocfs2_xattr_header** %86, align 8
  br label %103

87:                                               ; preds = %51
  %88 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %9, align 8
  %89 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %88, i32 0, i32 4
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.inode*, %struct.inode** %6, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = call %struct.TYPE_5__* @OCFS2_SB(%struct.TYPE_6__* %93)
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = sub i64 0, %97
  %99 = getelementptr i8, i8* %90, i64 %98
  %100 = bitcast i8* %99 to %struct.ocfs2_xattr_header*
  %101 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %9, align 8
  %102 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %101, i32 0, i32 1
  store %struct.ocfs2_xattr_header* %100, %struct.ocfs2_xattr_header** %102, align 8
  br label %103

103:                                              ; preds = %87, %73
  %104 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %9, align 8
  %105 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %104, i32 0, i32 1
  %106 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %105, align 8
  %107 = bitcast %struct.ocfs2_xattr_header* %106 to i8*
  %108 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %9, align 8
  %109 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %108, i32 0, i32 3
  store i8* %107, i8** %109, align 8
  %110 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %9, align 8
  %111 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %110, i32 0, i32 1
  %112 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %111, align 8
  %113 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %9, align 8
  %116 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %10, align 8
  %118 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @OCFS2_INLINE_XATTR_FL, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %141

123:                                              ; preds = %103
  %124 = load i32, i32* %7, align 4
  %125 = load i8*, i8** %8, align 8
  %126 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %9, align 8
  %127 = call i32 @ocfs2_xattr_find_entry(i32 %124, i8* %125, %struct.ocfs2_xattr_search* %126)
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %12, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %123
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* @ENODATA, align 4
  %133 = sub nsw i32 0, %132
  %134 = icmp ne i32 %131, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = load i32, i32* %12, align 4
  store i32 %136, i32* %5, align 4
  br label %142

137:                                              ; preds = %130, %123
  %138 = load i32, i32* %12, align 4
  %139 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %9, align 8
  %140 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  br label %141

141:                                              ; preds = %137, %103
  store i32 0, i32* %5, align 4
  br label %142

142:                                              ; preds = %141, %135, %49, %29
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @ocfs2_xattr_has_space_inline(%struct.inode*, %struct.ocfs2_dinode*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.TYPE_5__* @OCFS2_SB(%struct.TYPE_6__*) #1

declare dso_local i32 @ocfs2_xattr_find_entry(i32, i8*, %struct.ocfs2_xattr_search*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
