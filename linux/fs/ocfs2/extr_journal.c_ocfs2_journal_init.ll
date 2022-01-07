; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_journal_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_journal_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_journal = type { i32, %struct.buffer_head*, %struct.inode*, %struct.TYPE_8__*, %struct.ocfs2_super* }
%struct.buffer_head = type { i64 }
%struct.inode = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_dinode = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@JOURNAL_SYSTEM_INODE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"access error (bad inode)\0A\00", align 1
@OCFS2_META_LOCK_RECOVERY = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not get lock on journal!\0A\00", align 1
@OCFS2_MIN_JOURNAL_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"Journal file size (%lld) is too small!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Linux journal layer error\0A\00", align 1
@OCFS2_JOURNAL_DIRTY_FL = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_LOADED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_journal_init(%struct.ocfs2_journal* %0, i32* %1) #0 {
  %3 = alloca %struct.ocfs2_journal*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.ocfs2_dinode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.ocfs2_super*, align 8
  %11 = alloca i32, align 4
  store %struct.ocfs2_journal* %0, %struct.ocfs2_journal** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 -1, i32* %5, align 4
  store %struct.inode* null, %struct.inode** %6, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %7, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %8, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %13 = icmp ne %struct.ocfs2_journal* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %18 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %17, i32 0, i32 4
  %19 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  store %struct.ocfs2_super* %19, %struct.ocfs2_super** %10, align 8
  %20 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %21 = load i32, i32* @JOURNAL_SYSTEM_INODE, align 4
  %22 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %23 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %20, i32 %21, i32 %24)
  store %struct.inode* %25, %struct.inode** %6, align 8
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = icmp eq %struct.inode* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load i32, i32* @EACCES, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @mlog_errno(i32 %31)
  br label %130

33:                                               ; preds = %2
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = call i64 @is_bad_inode(%struct.inode* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load i32, i32* @ML_ERROR, align 4
  %39 = call i32 (i32, i8*, ...) @mlog(i32 %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = call i32 @iput(%struct.inode* %40)
  store %struct.inode* null, %struct.inode** %6, align 8
  %42 = load i32, i32* @EACCES, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %130

44:                                               ; preds = %33
  %45 = load %struct.inode*, %struct.inode** %6, align 8
  %46 = call i32 @SET_INODE_JOURNAL(%struct.inode* %45)
  %47 = load %struct.inode*, %struct.inode** %6, align 8
  %48 = call %struct.TYPE_9__* @OCFS2_I(%struct.inode* %47)
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load %struct.inode*, %struct.inode** %6, align 8
  %53 = load i32, i32* @OCFS2_META_LOCK_RECOVERY, align 4
  %54 = call i32 @ocfs2_inode_lock_full(%struct.inode* %52, %struct.buffer_head** %9, i32 1, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %44
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @ERESTARTSYS, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp ne i32 %58, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* @ML_ERROR, align 4
  %64 = call i32 (i32, i8*, ...) @mlog(i32 %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %57
  br label %130

66:                                               ; preds = %44
  store i32 1, i32* %11, align 4
  %67 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %68 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %70, %struct.ocfs2_dinode** %8, align 8
  %71 = load %struct.inode*, %struct.inode** %6, align 8
  %72 = call i64 @i_size_read(%struct.inode* %71)
  %73 = load i64, i64* @OCFS2_MIN_JOURNAL_SIZE, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %66
  %76 = load i32, i32* @ML_ERROR, align 4
  %77 = load %struct.inode*, %struct.inode** %6, align 8
  %78 = call i64 @i_size_read(%struct.inode* %77)
  %79 = call i32 (i32, i8*, ...) @mlog(i32 %76, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %130

82:                                               ; preds = %66
  %83 = load %struct.inode*, %struct.inode** %6, align 8
  %84 = call i64 @i_size_read(%struct.inode* %83)
  %85 = load %struct.inode*, %struct.inode** %6, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.inode*, %struct.inode** %6, align 8
  %89 = call %struct.TYPE_9__* @OCFS2_I(%struct.inode* %88)
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @trace_ocfs2_journal_init(i64 %84, i64 %87, i32 %91)
  %93 = load %struct.inode*, %struct.inode** %6, align 8
  %94 = call %struct.TYPE_8__* @jbd2_journal_init_inode(%struct.inode* %93)
  store %struct.TYPE_8__* %94, %struct.TYPE_8__** %7, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %96 = icmp eq %struct.TYPE_8__* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %82
  %98 = load i32, i32* @ML_ERROR, align 4
  %99 = call i32 (i32, i8*, ...) @mlog(i32 %98, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %5, align 4
  br label %130

102:                                              ; preds = %82
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @trace_ocfs2_journal_init_maxlen(i32 %105)
  %107 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %108 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @le32_to_cpu(i32 %111)
  %113 = load i32, i32* @OCFS2_JOURNAL_DIRTY_FL, align 4
  %114 = and i32 %112, %113
  %115 = load i32*, i32** %4, align 8
  store i32 %114, i32* %115, align 4
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %117 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %118 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %117, i32 0, i32 3
  store %struct.TYPE_8__* %116, %struct.TYPE_8__** %118, align 8
  %119 = load %struct.inode*, %struct.inode** %6, align 8
  %120 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %121 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %120, i32 0, i32 2
  store %struct.inode* %119, %struct.inode** %121, align 8
  %122 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %123 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %124 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %123, i32 0, i32 1
  store %struct.buffer_head* %122, %struct.buffer_head** %124, align 8
  %125 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %126 = call i32 @ocfs2_set_journal_params(%struct.ocfs2_super* %125)
  %127 = load i32, i32* @OCFS2_JOURNAL_LOADED, align 4
  %128 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %129 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  store i32 0, i32* %5, align 4
  br label %130

130:                                              ; preds = %102, %97, %75, %65, %37, %28
  %131 = load i32, i32* %5, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %153

133:                                              ; preds = %130
  %134 = load i32, i32* %11, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load %struct.inode*, %struct.inode** %6, align 8
  %138 = call i32 @ocfs2_inode_unlock(%struct.inode* %137, i32 1)
  br label %139

139:                                              ; preds = %136, %133
  %140 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %141 = call i32 @brelse(%struct.buffer_head* %140)
  %142 = load %struct.inode*, %struct.inode** %6, align 8
  %143 = icmp ne %struct.inode* %142, null
  br i1 %143, label %144, label %152

144:                                              ; preds = %139
  %145 = load %struct.inode*, %struct.inode** %6, align 8
  %146 = call %struct.TYPE_9__* @OCFS2_I(%struct.inode* %145)
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %147, align 4
  %150 = load %struct.inode*, %struct.inode** %6, align 8
  %151 = call i32 @iput(%struct.inode* %150)
  br label %152

152:                                              ; preds = %144, %139
  br label %153

153:                                              ; preds = %152, %130
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @SET_INODE_JOURNAL(%struct.inode*) #1

declare dso_local %struct.TYPE_9__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_lock_full(%struct.inode*, %struct.buffer_head**, i32, i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @trace_ocfs2_journal_init(i64, i64, i32) #1

declare dso_local %struct.TYPE_8__* @jbd2_journal_init_inode(%struct.inode*) #1

declare dso_local i32 @trace_ocfs2_journal_init_maxlen(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_set_journal_params(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
