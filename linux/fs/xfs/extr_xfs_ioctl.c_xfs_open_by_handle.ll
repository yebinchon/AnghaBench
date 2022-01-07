; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_ioctl.c_xfs_open_by_handle.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_ioctl.c_xfs_open_by_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.cred = type { i32 }
%struct.inode = type { i32 }
%struct.dentry = type { i32, i32, %struct.TYPE_5__ }
%struct.path = type { %struct.file*, i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@O_LARGEFILE = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@O_NOATIME = common dso_local global i32 0, align 4
@FMODE_NOCMTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_open_by_handle(%struct.file* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.cred*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.file*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.path, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %15 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %15, %struct.cred** %6, align 8
  %16 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %17 = call i32 @capable(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EPERM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %169

22:                                               ; preds = %2
  %23 = load %struct.file*, %struct.file** %4, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = call %struct.file* @xfs_handlereq_to_dentry(%struct.file* %23, %struct.TYPE_6__* %24)
  %26 = bitcast %struct.file* %25 to %struct.dentry*
  store %struct.dentry* %26, %struct.dentry** %12, align 8
  %27 = load %struct.dentry*, %struct.dentry** %12, align 8
  %28 = bitcast %struct.dentry* %27 to %struct.file*
  %29 = call i64 @IS_ERR(%struct.file* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load %struct.dentry*, %struct.dentry** %12, align 8
  %33 = bitcast %struct.dentry* %32 to %struct.file*
  %34 = call i32 @PTR_ERR(%struct.file* %33)
  store i32 %34, i32* %3, align 4
  br label %169

35:                                               ; preds = %22
  %36 = load %struct.dentry*, %struct.dentry** %12, align 8
  %37 = bitcast %struct.dentry* %36 to %struct.file*
  %38 = call %struct.inode* @d_inode(%struct.file* %37)
  store %struct.inode* %38, %struct.inode** %11, align 8
  %39 = load %struct.inode*, %struct.inode** %11, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @S_ISREG(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %35
  %45 = load %struct.inode*, %struct.inode** %11, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @S_ISDIR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* @EPERM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  br label %164

53:                                               ; preds = %44, %35
  %54 = load i32, i32* @O_LARGEFILE, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @OPEN_FMODE(i32 %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @O_APPEND, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %53
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @O_TRUNC, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %68, %53
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @FMODE_WRITE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load %struct.inode*, %struct.inode** %11, align 8
  %80 = call i64 @IS_APPEND(%struct.inode* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32, i32* @EPERM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %7, align 4
  br label %164

85:                                               ; preds = %78, %73, %68
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @FMODE_WRITE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load %struct.inode*, %struct.inode** %11, align 8
  %92 = call i64 @IS_IMMUTABLE(%struct.inode* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i32, i32* @EPERM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %7, align 4
  br label %164

97:                                               ; preds = %90, %85
  %98 = load %struct.inode*, %struct.inode** %11, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @S_ISDIR(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %97
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* @FMODE_WRITE, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i32, i32* @EISDIR, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %7, align 4
  br label %164

111:                                              ; preds = %103, %97
  %112 = call i32 @get_unused_fd_flags(i32 0)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %7, align 4
  br label %164

117:                                              ; preds = %111
  %118 = load %struct.file*, %struct.file** %4, align 8
  %119 = getelementptr inbounds %struct.file, %struct.file* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.path, %struct.path* %14, i32 0, i32 1
  store i32 %121, i32* %122, align 8
  %123 = load %struct.dentry*, %struct.dentry** %12, align 8
  %124 = bitcast %struct.dentry* %123 to %struct.file*
  %125 = getelementptr inbounds %struct.path, %struct.path* %14, i32 0, i32 0
  store %struct.file* %124, %struct.file** %125, align 8
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.cred*, %struct.cred** %6, align 8
  %130 = call %struct.file* @dentry_open(%struct.path* %14, i32 %128, %struct.cred* %129)
  store %struct.file* %130, %struct.file** %10, align 8
  %131 = load %struct.dentry*, %struct.dentry** %12, align 8
  %132 = bitcast %struct.dentry* %131 to %struct.file*
  %133 = call i32 @dput(%struct.file* %132)
  %134 = load %struct.file*, %struct.file** %10, align 8
  %135 = call i64 @IS_ERR(%struct.file* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %117
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @put_unused_fd(i32 %138)
  %140 = load %struct.file*, %struct.file** %10, align 8
  %141 = call i32 @PTR_ERR(%struct.file* %140)
  store i32 %141, i32* %3, align 4
  br label %169

142:                                              ; preds = %117
  %143 = load %struct.inode*, %struct.inode** %11, align 8
  %144 = getelementptr inbounds %struct.inode, %struct.inode* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @S_ISREG(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %159

148:                                              ; preds = %142
  %149 = load i32, i32* @O_NOATIME, align 4
  %150 = load %struct.file*, %struct.file** %10, align 8
  %151 = getelementptr inbounds %struct.file, %struct.file* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 4
  %154 = load i32, i32* @FMODE_NOCMTIME, align 4
  %155 = load %struct.file*, %struct.file** %10, align 8
  %156 = getelementptr inbounds %struct.file, %struct.file* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %148, %142
  %160 = load i32, i32* %8, align 4
  %161 = load %struct.file*, %struct.file** %10, align 8
  %162 = call i32 @fd_install(i32 %160, %struct.file* %161)
  %163 = load i32, i32* %8, align 4
  store i32 %163, i32* %3, align 4
  br label %169

164:                                              ; preds = %115, %108, %94, %82, %50
  %165 = load %struct.dentry*, %struct.dentry** %12, align 8
  %166 = bitcast %struct.dentry* %165 to %struct.file*
  %167 = call i32 @dput(%struct.file* %166)
  %168 = load i32, i32* %7, align 4
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %164, %159, %137, %31, %19
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.file* @xfs_handlereq_to_dentry(%struct.file*, %struct.TYPE_6__*) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local %struct.inode* @d_inode(%struct.file*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @OPEN_FMODE(i32) #1

declare dso_local i64 @IS_APPEND(%struct.inode*) #1

declare dso_local i64 @IS_IMMUTABLE(%struct.inode*) #1

declare dso_local i32 @get_unused_fd_flags(i32) #1

declare dso_local %struct.file* @dentry_open(%struct.path*, i32, %struct.cred*) #1

declare dso_local i32 @dput(%struct.file*) #1

declare dso_local i32 @put_unused_fd(i32) #1

declare dso_local i32 @fd_install(i32, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
