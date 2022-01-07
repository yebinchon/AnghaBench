; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_prepare_inode_for_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_prepare_inode_for_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i64, i32)* @ocfs2_prepare_inode_for_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_prepare_inode_for_write(%struct.file* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.dentry*, align 8
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.dentry*, %struct.dentry** %20, align 8
  store %struct.dentry* %21, %struct.dentry** %13, align 8
  %22 = load %struct.dentry*, %struct.dentry** %13, align 8
  %23 = call %struct.inode* @d_inode(%struct.dentry* %22)
  store %struct.inode* %23, %struct.inode** %14, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  br label %24

24:                                               ; preds = %73, %4
  %25 = load %struct.inode*, %struct.inode** %14, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @ocfs2_inode_lock_for_extent_tree(%struct.inode* %25, %struct.buffer_head** %15, i32 %26, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %24
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @EAGAIN, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @mlog_errno(i32 %39)
  br label %41

41:                                               ; preds = %38, %33
  br label %168

42:                                               ; preds = %24
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %66, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %66, label %48

48:                                               ; preds = %45
  store i32 1, i32* %11, align 4
  %49 = load %struct.inode*, %struct.inode** %14, align 8
  %50 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @ocfs2_overwrite_io(%struct.inode* %49, %struct.buffer_head* %50, i32 %51, i64 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %48
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @EAGAIN, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp ne i32 %57, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @mlog_errno(i32 %62)
  br label %64

64:                                               ; preds = %61, %56
  br label %155

65:                                               ; preds = %48
  br label %66

66:                                               ; preds = %65, %45, %42
  %67 = load %struct.dentry*, %struct.dentry** %13, align 8
  %68 = call i64 @should_remove_suid(%struct.dentry* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %66
  %71 = load i32, i32* %10, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load %struct.inode*, %struct.inode** %14, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @ocfs2_inode_unlock_for_extent_tree(%struct.inode* %74, %struct.buffer_head** %15, i32 %75, i32 %76)
  store i32 1, i32* %10, align 4
  br label %24

78:                                               ; preds = %70
  %79 = load %struct.inode*, %struct.inode** %14, align 8
  %80 = call i32 @ocfs2_write_remove_suid(%struct.inode* %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @mlog_errno(i32 %84)
  br label %155

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %86, %66
  %88 = load %struct.inode*, %struct.inode** %14, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i64, i64* %7, align 8
  %91 = call i32 @ocfs2_check_range_for_refcount(%struct.inode* %88, i32 %89, i64 %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %141

94:                                               ; preds = %87
  %95 = load %struct.inode*, %struct.inode** %14, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @ocfs2_inode_unlock_for_extent_tree(%struct.inode* %95, %struct.buffer_head** %15, i32 %96, i32 %97)
  %99 = load %struct.inode*, %struct.inode** %14, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @ocfs2_inode_lock_for_extent_tree(%struct.inode* %99, %struct.buffer_head** %15, i32 %100, i32 %101, i32 1, i32 %102)
  store i32 %103, i32* %9, align 4
  store i32 1, i32* %12, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %94
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @EAGAIN, align 4
  %109 = sub nsw i32 0, %108
  %110 = icmp ne i32 %107, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @mlog_errno(i32 %112)
  br label %114

114:                                              ; preds = %111, %106
  br label %168

115:                                              ; preds = %94
  %116 = load i32, i32* %6, align 4
  %117 = load %struct.inode*, %struct.inode** %14, align 8
  %118 = getelementptr inbounds %struct.inode, %struct.inode* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call %struct.TYPE_5__* @OCFS2_SB(i32 %119)
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = ashr i32 %116, %122
  store i32 %123, i32* %16, align 4
  %124 = load %struct.inode*, %struct.inode** %14, align 8
  %125 = getelementptr inbounds %struct.inode, %struct.inode* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = load i64, i64* %7, align 8
  %130 = add i64 %128, %129
  %131 = trunc i64 %130 to i32
  %132 = call i32 @ocfs2_clusters_for_bytes(i32 %126, i32 %131)
  %133 = load i32, i32* %16, align 4
  %134 = sub nsw i32 %132, %133
  store i32 %134, i32* %17, align 4
  %135 = load %struct.inode*, %struct.inode** %14, align 8
  %136 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* %17, align 4
  %139 = load i32, i32* @UINT_MAX, align 4
  %140 = call i32 @ocfs2_refcount_cow(%struct.inode* %135, %struct.buffer_head* %136, i32 %137, i32 %138, i32 %139)
  store i32 %140, i32* %9, align 4
  br label %141

141:                                              ; preds = %115, %87
  %142 = load i32, i32* %9, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %141
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @EAGAIN, align 4
  %147 = sub nsw i32 0, %146
  %148 = icmp ne i32 %145, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @mlog_errno(i32 %150)
  br label %152

152:                                              ; preds = %149, %144
  br label %155

153:                                              ; preds = %141
  br label %154

154:                                              ; preds = %153
  br label %155

155:                                              ; preds = %154, %152, %83, %64
  %156 = load %struct.inode*, %struct.inode** %14, align 8
  %157 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %156)
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %6, align 4
  %161 = load i64, i64* %7, align 8
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @trace_ocfs2_prepare_inode_for_write(i32 %159, i32 %160, i64 %161, i32 %162)
  %164 = load %struct.inode*, %struct.inode** %14, align 8
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* %12, align 4
  %167 = call i32 @ocfs2_inode_unlock_for_extent_tree(%struct.inode* %164, %struct.buffer_head** %15, i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %155, %114, %41
  %169 = load i32, i32* %9, align 4
  ret i32 %169
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @ocfs2_inode_lock_for_extent_tree(%struct.inode*, %struct.buffer_head**, i32, i32, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_overwrite_io(%struct.inode*, %struct.buffer_head*, i32, i64) #1

declare dso_local i64 @should_remove_suid(%struct.dentry*) #1

declare dso_local i32 @ocfs2_inode_unlock_for_extent_tree(%struct.inode*, %struct.buffer_head**, i32, i32) #1

declare dso_local i32 @ocfs2_write_remove_suid(%struct.inode*) #1

declare dso_local i32 @ocfs2_check_range_for_refcount(%struct.inode*, i32, i64) #1

declare dso_local %struct.TYPE_5__* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_clusters_for_bytes(i32, i32) #1

declare dso_local i32 @ocfs2_refcount_cow(%struct.inode*, %struct.buffer_head*, i32, i32, i32) #1

declare dso_local i32 @trace_ocfs2_prepare_inode_for_write(i32, i32, i64, i32) #1

declare dso_local %struct.TYPE_6__* @OCFS2_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
