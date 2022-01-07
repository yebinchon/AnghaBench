; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_reflink_inodes_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_reflink_inodes_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_inode_info = type { i64 }

@ENOLCK = common dso_local global i32 0, align 4
@OI_LS_REFLINK_TARGET = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_reflink_inodes_lock(%struct.inode* %0, %struct.buffer_head** %1, %struct.inode* %2, %struct.buffer_head** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head**, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head**, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.ocfs2_inode_info*, align 8
  %13 = alloca %struct.ocfs2_inode_info*, align 8
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.buffer_head** %1, %struct.buffer_head*** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.buffer_head** %3, %struct.buffer_head*** %9, align 8
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %19, %struct.inode** %10, align 8
  %20 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %20, %struct.inode** %11, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %14, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  %23 = icmp eq %struct.inode* %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %16, align 4
  %25 = load %struct.inode*, %struct.inode** %10, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.inode*, %struct.inode** %11, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %27, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %17, align 4
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = load %struct.inode*, %struct.inode** %8, align 8
  %35 = call i32 @lock_two_nondirectories(%struct.inode* %33, %struct.inode* %34)
  %36 = load i32, i32* %17, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %4
  %39 = load %struct.inode*, %struct.inode** %10, align 8
  %40 = load %struct.inode*, %struct.inode** %11, align 8
  %41 = call i32 @swap(%struct.inode* %39, %struct.inode* %40)
  br label %42

42:                                               ; preds = %38, %4
  %43 = load %struct.inode*, %struct.inode** %10, align 8
  %44 = call i32 @ocfs2_rw_lock(%struct.inode* %43, i32 1)
  store i32 %44, i32* %18, align 4
  %45 = load i32, i32* %18, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* %18, align 4
  %49 = call i32 @mlog_errno(i32 %48)
  br label %156

50:                                               ; preds = %42
  %51 = load i32, i32* %16, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %50
  %54 = load %struct.inode*, %struct.inode** %11, align 8
  %55 = call i32 @ocfs2_rw_lock(%struct.inode* %54, i32 1)
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %18, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* %18, align 4
  %60 = call i32 @mlog_errno(i32 %59)
  br label %153

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %50
  %63 = load %struct.inode*, %struct.inode** %10, align 8
  %64 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %63)
  store %struct.ocfs2_inode_info* %64, %struct.ocfs2_inode_info** %12, align 8
  %65 = load %struct.inode*, %struct.inode** %11, align 8
  %66 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %65)
  store %struct.ocfs2_inode_info* %66, %struct.ocfs2_inode_info** %13, align 8
  %67 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %12, align 8
  %68 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %13, align 8
  %71 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @trace_ocfs2_double_lock(i64 %69, i64 %72)
  %74 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %12, align 8
  %75 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %13, align 8
  %78 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp sgt i64 %76, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %62
  %82 = load i32, i32* @ENOLCK, align 4
  %83 = sub nsw i32 0, %82
  %84 = call i32 @mlog_errno(i32 %83)
  br label %85

85:                                               ; preds = %81, %62
  %86 = load %struct.inode*, %struct.inode** %10, align 8
  %87 = bitcast %struct.buffer_head** %14 to %struct.inode**
  %88 = load i32, i32* @OI_LS_REFLINK_TARGET, align 4
  %89 = call i32 @ocfs2_inode_lock_nested(%struct.inode* %86, %struct.inode** %87, i32 1, i32 %88)
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* %18, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %85
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* @ENOENT, align 4
  %95 = sub nsw i32 0, %94
  %96 = icmp ne i32 %93, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i32, i32* %18, align 4
  %99 = call i32 @mlog_errno(i32 %98)
  br label %100

100:                                              ; preds = %97, %92
  br label %150

101:                                              ; preds = %85
  %102 = load i32, i32* %16, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %121, label %104

104:                                              ; preds = %101
  %105 = load %struct.inode*, %struct.inode** %11, align 8
  %106 = bitcast %struct.buffer_head** %15 to %struct.inode**
  %107 = load i32, i32* @OI_LS_REFLINK_TARGET, align 4
  %108 = call i32 @ocfs2_inode_lock_nested(%struct.inode* %105, %struct.inode** %106, i32 1, i32 %107)
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* %18, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %104
  %112 = load i32, i32* %18, align 4
  %113 = load i32, i32* @ENOENT, align 4
  %114 = sub nsw i32 0, %113
  %115 = icmp ne i32 %112, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i32, i32* %18, align 4
  %118 = call i32 @mlog_errno(i32 %117)
  br label %119

119:                                              ; preds = %116, %111
  br label %144

120:                                              ; preds = %104
  br label %123

121:                                              ; preds = %101
  %122 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  store %struct.buffer_head* %122, %struct.buffer_head** %15, align 8
  br label %123

123:                                              ; preds = %121, %120
  %124 = load i32, i32* %17, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %123
  %127 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %128 = bitcast %struct.buffer_head* %127 to %struct.inode*
  %129 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %130 = bitcast %struct.buffer_head* %129 to %struct.inode*
  %131 = call i32 @swap(%struct.inode* %128, %struct.inode* %130)
  br label %132

132:                                              ; preds = %126, %123
  %133 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %134 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  store %struct.buffer_head* %133, %struct.buffer_head** %134, align 8
  %135 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %136 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  store %struct.buffer_head* %135, %struct.buffer_head** %136, align 8
  %137 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %12, align 8
  %138 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %13, align 8
  %141 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @trace_ocfs2_double_lock_end(i64 %139, i64 %142)
  store i32 0, i32* %5, align 4
  br label %161

144:                                              ; preds = %119
  %145 = load %struct.inode*, %struct.inode** %10, align 8
  %146 = call i32 @ocfs2_inode_unlock(%struct.inode* %145, i32 1)
  %147 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %148 = bitcast %struct.buffer_head* %147 to %struct.inode*
  %149 = call i32 @brelse(%struct.inode* %148)
  br label %150

150:                                              ; preds = %144, %100
  %151 = load %struct.inode*, %struct.inode** %11, align 8
  %152 = call i32 @ocfs2_rw_unlock(%struct.inode* %151, i32 1)
  br label %153

153:                                              ; preds = %150, %58
  %154 = load %struct.inode*, %struct.inode** %10, align 8
  %155 = call i32 @ocfs2_rw_unlock(%struct.inode* %154, i32 1)
  br label %156

156:                                              ; preds = %153, %47
  %157 = load %struct.inode*, %struct.inode** %6, align 8
  %158 = load %struct.inode*, %struct.inode** %8, align 8
  %159 = call i32 @unlock_two_nondirectories(%struct.inode* %157, %struct.inode* %158)
  %160 = load i32, i32* %18, align 4
  store i32 %160, i32* %5, align 4
  br label %161

161:                                              ; preds = %156, %132
  %162 = load i32, i32* %5, align 4
  ret i32 %162
}

declare dso_local i32 @lock_two_nondirectories(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @swap(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @ocfs2_rw_lock(%struct.inode*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @trace_ocfs2_double_lock(i64, i64) #1

declare dso_local i32 @ocfs2_inode_lock_nested(%struct.inode*, %struct.inode**, i32, i32) #1

declare dso_local i32 @trace_ocfs2_double_lock_end(i64, i64) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @brelse(%struct.inode*) #1

declare dso_local i32 @ocfs2_rw_unlock(%struct.inode*, i32) #1

declare dso_local i32 @unlock_two_nondirectories(%struct.inode*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
