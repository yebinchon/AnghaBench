; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_inode.c_ocfs2_iget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_inode.c_ocfs2_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_super = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ocfs2_find_inode_args = type { i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i8*, %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }
%struct.ocfs2_inode_info = type { i64, i8*, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }

@ESTALE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ocfs2_find_actor = common dso_local global i32 0, align 4
@ocfs2_init_locked_inode = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @ocfs2_iget(%struct.ocfs2_super* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ocfs2_super*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.super_block*, align 8
  %12 = alloca %struct.ocfs2_find_inode_args, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.ocfs2_inode_info*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* @ESTALE, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %9, align 4
  store %struct.inode* null, %struct.inode** %10, align 8
  %19 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %20 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %19, i32 0, i32 0
  %21 = load %struct.super_block*, %struct.super_block** %20, align 8
  store %struct.super_block* %21, %struct.super_block** %11, align 8
  %22 = load %struct.super_block*, %struct.super_block** %11, align 8
  %23 = call %struct.TYPE_8__* @OCFS2_SB(%struct.super_block* %22)
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %13, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @trace_ocfs2_iget_begin(i64 %28, i32 %29, i32 %30)
  %32 = load i64, i64* %6, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %4
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.inode* @ERR_PTR(i32 %36)
  store %struct.inode* %37, %struct.inode** %10, align 8
  %38 = load %struct.inode*, %struct.inode** %10, align 8
  %39 = call i32 @PTR_ERR(%struct.inode* %38)
  %40 = call i32 @mlog_errno(i32 %39)
  br label %135

41:                                               ; preds = %4
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %12, i32 0, i32 3
  store i64 %42, i64* %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %12, i32 0, i32 0
  store i32 %44, i32* %45, align 8
  %46 = load %struct.super_block*, %struct.super_block** %11, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @ino_from_blkno(%struct.super_block* %46, i64 %47)
  %49 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %12, i32 0, i32 2
  store i32 %48, i32* %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %12, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = load %struct.super_block*, %struct.super_block** %11, align 8
  %53 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %12, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @ocfs2_find_actor, align 4
  %56 = load i32, i32* @ocfs2_init_locked_inode, align 4
  %57 = call %struct.inode* @iget5_locked(%struct.super_block* %52, i32 %54, i32 %55, i32 %56, %struct.ocfs2_find_inode_args* %12)
  store %struct.inode* %57, %struct.inode** %10, align 8
  %58 = load %struct.inode*, %struct.inode** %10, align 8
  %59 = icmp eq %struct.inode* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %41
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  %63 = call %struct.inode* @ERR_PTR(i32 %62)
  store %struct.inode* %63, %struct.inode** %10, align 8
  %64 = load %struct.inode*, %struct.inode** %10, align 8
  %65 = call i32 @PTR_ERR(%struct.inode* %64)
  %66 = call i32 @mlog_errno(i32 %65)
  br label %135

67:                                               ; preds = %41
  %68 = load %struct.inode*, %struct.inode** %10, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @trace_ocfs2_iget5_locked(i32 %70)
  %72 = load %struct.inode*, %struct.inode** %10, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @I_NEW, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %67
  %79 = load %struct.inode*, %struct.inode** %10, align 8
  %80 = call i32 @ocfs2_read_locked_inode(%struct.inode* %79, %struct.ocfs2_find_inode_args* %12)
  store i32 %80, i32* %9, align 4
  %81 = load %struct.inode*, %struct.inode** %10, align 8
  %82 = call i32 @unlock_new_inode(%struct.inode* %81)
  br label %83

83:                                               ; preds = %78, %67
  %84 = load %struct.inode*, %struct.inode** %10, align 8
  %85 = call i64 @is_bad_inode(%struct.inode* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load %struct.inode*, %struct.inode** %10, align 8
  %89 = call i32 @iput(%struct.inode* %88)
  %90 = load i32, i32* %9, align 4
  %91 = call %struct.inode* @ERR_PTR(i32 %90)
  store %struct.inode* %91, %struct.inode** %10, align 8
  br label %135

92:                                               ; preds = %83
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %94 = icmp ne %struct.TYPE_7__* %93, null
  br i1 %94, label %95, label %134

95:                                               ; preds = %92
  %96 = load %struct.inode*, %struct.inode** %10, align 8
  %97 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %96)
  store %struct.ocfs2_inode_info* %97, %struct.ocfs2_inode_info** %16, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = call i32 @read_lock(i32* %99)
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 3
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = icmp ne %struct.TYPE_6__* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %95
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  store %struct.TYPE_6__* %108, %struct.TYPE_6__** %14, align 8
  br label %113

109:                                              ; preds = %95
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  store %struct.TYPE_6__* %112, %struct.TYPE_6__** %14, align 8
  br label %113

113:                                              ; preds = %109, %105
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %115 = icmp ne %struct.TYPE_6__* %114, null
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  store i8* %119, i8** %15, align 8
  br label %124

120:                                              ; preds = %113
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  store i8* %123, i8** %15, align 8
  br label %124

124:                                              ; preds = %120, %116
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = call i32 @read_unlock(i32* %126)
  %128 = load i8*, i8** %15, align 8
  %129 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %16, align 8
  %130 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %129, i32 0, i32 2
  store i8* %128, i8** %130, align 8
  %131 = load i8*, i8** %15, align 8
  %132 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %16, align 8
  %133 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %132, i32 0, i32 1
  store i8* %131, i8** %133, align 8
  br label %134

134:                                              ; preds = %124, %92
  br label %135

135:                                              ; preds = %134, %87, %60, %34
  %136 = load %struct.inode*, %struct.inode** %10, align 8
  %137 = call i32 @IS_ERR(%struct.inode* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %146, label %139

139:                                              ; preds = %135
  %140 = load %struct.inode*, %struct.inode** %10, align 8
  %141 = load %struct.inode*, %struct.inode** %10, align 8
  %142 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %141)
  %143 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @trace_ocfs2_iget_end(%struct.inode* %140, i64 %144)
  br label %146

146:                                              ; preds = %139, %135
  %147 = load %struct.inode*, %struct.inode** %10, align 8
  ret %struct.inode* %147
}

declare dso_local %struct.TYPE_8__* @OCFS2_SB(%struct.super_block*) #1

declare dso_local i32 @trace_ocfs2_iget_begin(i64, i32, i32) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @ino_from_blkno(%struct.super_block*, i64) #1

declare dso_local %struct.inode* @iget5_locked(%struct.super_block*, i32, i32, i32, %struct.ocfs2_find_inode_args*) #1

declare dso_local i32 @trace_ocfs2_iget5_locked(i32) #1

declare dso_local i32 @ocfs2_read_locked_inode(%struct.inode*, %struct.ocfs2_find_inode_args*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @trace_ocfs2_iget_end(%struct.inode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
