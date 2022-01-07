; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_ioctl.c_ocfs2_info_freefrag_scan_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_ioctl.c_ocfs2_info_freefrag_scan_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.inode = type { i32 }
%struct.ocfs2_info_freefrag = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i8*, i32, i32, i8* }
%struct.buffer_head = type { i64 }
%struct.ocfs2_chain_list = type { %struct.ocfs2_chain_rec*, i32, i32 }
%struct.ocfs2_chain_rec = type { i32 }
%struct.ocfs2_dinode = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.ocfs2_chain_list }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.inode*, i32, %struct.ocfs2_info_freefrag*)* @ocfs2_info_freefrag_scan_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_info_freefrag_scan_bitmap(%struct.ocfs2_super* %0, %struct.inode* %1, i32 %2, %struct.ocfs2_info_freefrag* %3) #0 {
  %5 = alloca %struct.ocfs2_super*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_info_freefrag*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca %struct.ocfs2_chain_list*, align 8
  %15 = alloca %struct.ocfs2_chain_rec*, align 8
  %16 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ocfs2_info_freefrag* %3, %struct.ocfs2_info_freefrag** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %13, align 8
  store %struct.ocfs2_chain_list* null, %struct.ocfs2_chain_list** %14, align 8
  store %struct.ocfs2_chain_rec* null, %struct.ocfs2_chain_rec** %15, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %16, align 8
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = icmp ne %struct.inode* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = call i32 @inode_lock(%struct.inode* %20)
  br label %22

22:                                               ; preds = %19, %4
  %23 = load %struct.ocfs2_info_freefrag*, %struct.ocfs2_info_freefrag** %8, align 8
  %24 = getelementptr inbounds %struct.ocfs2_info_freefrag, %struct.ocfs2_info_freefrag* %23, i32 0, i32 2
  %25 = call i64 @o2info_coherent(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = call i32 @ocfs2_inode_lock(%struct.inode* %28, %struct.buffer_head** %13, i32 0)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @mlog_errno(i32 %33)
  br label %155

35:                                               ; preds = %27
  store i32 1, i32* %11, align 4
  br label %46

36:                                               ; preds = %22
  %37 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @ocfs2_read_blocks_sync(%struct.ocfs2_super* %37, i32 %38, i32 1, %struct.buffer_head** %13)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @mlog_errno(i32 %43)
  br label %155

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45, %35
  %47 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %48 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %50, %struct.ocfs2_dinode** %16, align 8
  %51 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %16, align 8
  %52 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store %struct.ocfs2_chain_list* %53, %struct.ocfs2_chain_list** %14, align 8
  %54 = load %struct.ocfs2_info_freefrag*, %struct.ocfs2_info_freefrag** %8, align 8
  %55 = getelementptr inbounds %struct.ocfs2_info_freefrag, %struct.ocfs2_info_freefrag* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %14, align 8
  %58 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le16_to_cpu(i32 %59)
  %61 = icmp sgt i32 %56, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %46
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %10, align 4
  br label %155

65:                                               ; preds = %46
  %66 = load %struct.ocfs2_info_freefrag*, %struct.ocfs2_info_freefrag** %8, align 8
  %67 = getelementptr inbounds %struct.ocfs2_info_freefrag, %struct.ocfs2_info_freefrag* %66, i32 0, i32 1
  %68 = call i32 @memset(%struct.TYPE_8__* %67, i32 0, i32 4)
  %69 = load %struct.ocfs2_info_freefrag*, %struct.ocfs2_info_freefrag** %8, align 8
  %70 = getelementptr inbounds %struct.ocfs2_info_freefrag, %struct.ocfs2_info_freefrag* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store i32 -1, i32* %71, align 8
  %72 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %16, align 8
  %73 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @le32_to_cpu(i32 %76)
  %78 = load %struct.ocfs2_info_freefrag*, %struct.ocfs2_info_freefrag** %8, align 8
  %79 = getelementptr inbounds %struct.ocfs2_info_freefrag, %struct.ocfs2_info_freefrag* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  store i8* %77, i8** %80, align 8
  %81 = load %struct.ocfs2_info_freefrag*, %struct.ocfs2_info_freefrag** %8, align 8
  %82 = getelementptr inbounds %struct.ocfs2_info_freefrag, %struct.ocfs2_info_freefrag* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %16, align 8
  %86 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i8* @le32_to_cpu(i32 %89)
  %91 = ptrtoint i8* %84 to i64
  %92 = ptrtoint i8* %90 to i64
  %93 = sub i64 %91, %92
  %94 = inttoptr i64 %93 to i8*
  %95 = load %struct.ocfs2_info_freefrag*, %struct.ocfs2_info_freefrag** %8, align 8
  %96 = getelementptr inbounds %struct.ocfs2_info_freefrag, %struct.ocfs2_info_freefrag* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 4
  store i8* %94, i8** %97, align 8
  %98 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %14, align 8
  %99 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @le16_to_cpu(i32 %100)
  %102 = load %struct.ocfs2_info_freefrag*, %struct.ocfs2_info_freefrag** %8, align 8
  %103 = getelementptr inbounds %struct.ocfs2_info_freefrag, %struct.ocfs2_info_freefrag* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sdiv i32 %101, %104
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %107

107:                                              ; preds = %132, %65
  %108 = load i32, i32* %12, align 4
  %109 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %14, align 8
  %110 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @le16_to_cpu(i32 %111)
  %113 = icmp slt i32 %108, %112
  br i1 %113, label %114, label %135

114:                                              ; preds = %107
  %115 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %14, align 8
  %116 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %115, i32 0, i32 0
  %117 = load %struct.ocfs2_chain_rec*, %struct.ocfs2_chain_rec** %116, align 8
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.ocfs2_chain_rec, %struct.ocfs2_chain_rec* %117, i64 %119
  store %struct.ocfs2_chain_rec* %120, %struct.ocfs2_chain_rec** %15, align 8
  %121 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %122 = load %struct.inode*, %struct.inode** %6, align 8
  %123 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %16, align 8
  %124 = load %struct.ocfs2_chain_rec*, %struct.ocfs2_chain_rec** %15, align 8
  %125 = load %struct.ocfs2_info_freefrag*, %struct.ocfs2_info_freefrag** %8, align 8
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @ocfs2_info_freefrag_scan_chain(%struct.ocfs2_super* %121, %struct.inode* %122, %struct.ocfs2_dinode* %123, %struct.ocfs2_chain_rec* %124, %struct.ocfs2_info_freefrag* %125, i32 %126)
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %114
  br label %155

131:                                              ; preds = %114
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %12, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %12, align 4
  br label %107

135:                                              ; preds = %107
  %136 = load %struct.ocfs2_info_freefrag*, %struct.ocfs2_info_freefrag** %8, align 8
  %137 = getelementptr inbounds %struct.ocfs2_info_freefrag, %struct.ocfs2_info_freefrag* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %154

141:                                              ; preds = %135
  %142 = load %struct.ocfs2_info_freefrag*, %struct.ocfs2_info_freefrag** %8, align 8
  %143 = getelementptr inbounds %struct.ocfs2_info_freefrag, %struct.ocfs2_info_freefrag* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.ocfs2_info_freefrag*, %struct.ocfs2_info_freefrag** %8, align 8
  %147 = getelementptr inbounds %struct.ocfs2_info_freefrag, %struct.ocfs2_info_freefrag* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = sdiv i32 %145, %149
  %151 = load %struct.ocfs2_info_freefrag*, %struct.ocfs2_info_freefrag** %8, align 8
  %152 = getelementptr inbounds %struct.ocfs2_info_freefrag, %struct.ocfs2_info_freefrag* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 3
  store i32 %150, i32* %153, align 4
  br label %154

154:                                              ; preds = %141, %135
  br label %155

155:                                              ; preds = %154, %130, %62, %42, %32
  %156 = load i32, i32* %11, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load %struct.inode*, %struct.inode** %6, align 8
  %160 = call i32 @ocfs2_inode_unlock(%struct.inode* %159, i32 0)
  br label %161

161:                                              ; preds = %158, %155
  %162 = load %struct.inode*, %struct.inode** %6, align 8
  %163 = icmp ne %struct.inode* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load %struct.inode*, %struct.inode** %6, align 8
  %166 = call i32 @inode_unlock(%struct.inode* %165)
  br label %167

167:                                              ; preds = %164, %161
  %168 = load %struct.inode*, %struct.inode** %6, align 8
  %169 = call i32 @iput(%struct.inode* %168)
  %170 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %171 = call i32 @brelse(%struct.buffer_head* %170)
  %172 = load i32, i32* %10, align 4
  ret i32 %172
}

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i64 @o2info_coherent(i32*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_read_blocks_sync(%struct.ocfs2_super*, i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_info_freefrag_scan_chain(%struct.ocfs2_super*, %struct.inode*, %struct.ocfs2_dinode*, %struct.ocfs2_chain_rec*, %struct.ocfs2_info_freefrag*, i32) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
