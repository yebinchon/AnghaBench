; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_reflink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_reflink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dentry = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_lock_holder = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*, i32)* @ocfs2_reflink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_reflink(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.ocfs2_lock_holder, align 4
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.dentry* %2, %struct.dentry** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.dentry*, %struct.dentry** %6, align 8
  %17 = call %struct.inode* @d_inode(%struct.dentry* %16)
  store %struct.inode* %17, %struct.inode** %12, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %13, align 8
  store %struct.inode* null, %struct.inode** %14, align 8
  %18 = load %struct.inode*, %struct.inode** %12, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @OCFS2_SB(i32 %20)
  %22 = call i32 @ocfs2_refcount_tree(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %145

27:                                               ; preds = %4
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = load %struct.inode*, %struct.inode** %12, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ocfs2_create_inode_in_orphan(%struct.inode* %28, i32 %31, %struct.inode** %14)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @mlog_errno(i32 %36)
  br label %131

38:                                               ; preds = %27
  %39 = load %struct.inode*, %struct.inode** %12, align 8
  %40 = call i32 @ocfs2_rw_lock(%struct.inode* %39, i32 1)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @mlog_errno(i32 %44)
  br label %131

46:                                               ; preds = %38
  %47 = load %struct.inode*, %struct.inode** %12, align 8
  %48 = call i32 @ocfs2_inode_lock(%struct.inode* %47, %struct.buffer_head** %13, i32 1)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @mlog_errno(i32 %52)
  %54 = load %struct.inode*, %struct.inode** %12, align 8
  %55 = call i32 @ocfs2_rw_unlock(%struct.inode* %54, i32 1)
  br label %131

56:                                               ; preds = %46
  %57 = load %struct.inode*, %struct.inode** %12, align 8
  %58 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %57)
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32 @down_write(i32* %59)
  %61 = load %struct.inode*, %struct.inode** %12, align 8
  %62 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = call i32 @down_write(i32* %63)
  %65 = load %struct.dentry*, %struct.dentry** %6, align 8
  %66 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %67 = load %struct.inode*, %struct.inode** %14, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @__ocfs2_reflink(%struct.dentry* %65, %struct.buffer_head* %66, %struct.inode* %67, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load %struct.inode*, %struct.inode** %12, align 8
  %71 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %70)
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = call i32 @up_write(i32* %72)
  %74 = load %struct.inode*, %struct.inode** %12, align 8
  %75 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %74)
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = call i32 @up_write(i32* %76)
  %78 = load %struct.inode*, %struct.inode** %12, align 8
  %79 = call i32 @ocfs2_inode_unlock(%struct.inode* %78, i32 1)
  %80 = load %struct.inode*, %struct.inode** %12, align 8
  %81 = call i32 @ocfs2_rw_unlock(%struct.inode* %80, i32 1)
  %82 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %83 = call i32 @brelse(%struct.buffer_head* %82)
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %56
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @mlog_errno(i32 %87)
  br label %131

89:                                               ; preds = %56
  %90 = load %struct.inode*, %struct.inode** %14, align 8
  %91 = call i32 @ocfs2_inode_lock_tracker(%struct.inode* %90, i32* null, i32 1, %struct.ocfs2_lock_holder* %15)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i32, i32* %11, align 4
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @mlog_errno(i32 %96)
  br label %131

98:                                               ; preds = %89
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %113, label %101

101:                                              ; preds = %98
  %102 = load %struct.inode*, %struct.inode** %7, align 8
  %103 = load %struct.inode*, %struct.inode** %14, align 8
  %104 = load %struct.dentry*, %struct.dentry** %8, align 8
  %105 = getelementptr inbounds %struct.dentry, %struct.dentry* %104, i32 0, i32 0
  %106 = call i32 @ocfs2_init_security_and_acl(%struct.inode* %102, %struct.inode* %103, i32* %105)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @mlog_errno(i32 %110)
  br label %112

112:                                              ; preds = %109, %101
  br label %113

113:                                              ; preds = %112, %98
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %127, label %116

116:                                              ; preds = %113
  %117 = load %struct.inode*, %struct.inode** %7, align 8
  %118 = load %struct.inode*, %struct.inode** %14, align 8
  %119 = load %struct.dentry*, %struct.dentry** %8, align 8
  %120 = call i32 @ocfs2_mv_orphaned_inode_to_new(%struct.inode* %117, %struct.inode* %118, %struct.dentry* %119)
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %116
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @mlog_errno(i32 %124)
  br label %126

126:                                              ; preds = %123, %116
  br label %127

127:                                              ; preds = %126, %113
  %128 = load %struct.inode*, %struct.inode** %14, align 8
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @ocfs2_inode_unlock_tracker(%struct.inode* %128, i32 1, %struct.ocfs2_lock_holder* %15, i32 %129)
  br label %131

131:                                              ; preds = %127, %94, %86, %51, %43, %35
  %132 = load %struct.inode*, %struct.inode** %14, align 8
  %133 = icmp ne %struct.inode* %132, null
  br i1 %133, label %134, label %143

134:                                              ; preds = %131
  %135 = load %struct.inode*, %struct.inode** %14, align 8
  %136 = call i32 @ocfs2_open_unlock(%struct.inode* %135)
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load %struct.inode*, %struct.inode** %14, align 8
  %141 = call i32 @iput(%struct.inode* %140)
  br label %142

142:                                              ; preds = %139, %134
  br label %143

143:                                              ; preds = %142, %131
  %144 = load i32, i32* %10, align 4
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %143, %24
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @ocfs2_refcount_tree(i32) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_create_inode_in_orphan(%struct.inode*, i32, %struct.inode**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_rw_lock(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @ocfs2_rw_unlock(%struct.inode*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @__ocfs2_reflink(%struct.dentry*, %struct.buffer_head*, %struct.inode*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_inode_lock_tracker(%struct.inode*, i32*, i32, %struct.ocfs2_lock_holder*) #1

declare dso_local i32 @ocfs2_init_security_and_acl(%struct.inode*, %struct.inode*, i32*) #1

declare dso_local i32 @ocfs2_mv_orphaned_inode_to_new(%struct.inode*, %struct.inode*, %struct.dentry*) #1

declare dso_local i32 @ocfs2_inode_unlock_tracker(%struct.inode*, i32, %struct.ocfs2_lock_holder*, i32) #1

declare dso_local i32 @ocfs2_open_unlock(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
