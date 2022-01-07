; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_file_table.c___fput.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_file_table.c___fput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_6__*, %struct.inode*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 (%struct.inode*, %struct.file*)*, i32 (i32, %struct.file*, i32)* }
%struct.inode = type { i32*, i32 }
%struct.TYPE_4__ = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { i32 }
%struct.dentry = type { i32 }

@FMODE_OPENED = common dso_local global i32 0, align 4
@FASYNC = common dso_local global i32 0, align 4
@FMODE_PATH = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@FMODE_WRITER = common dso_local global i32 0, align 4
@FMODE_NEED_UNMOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file*)* @__fput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__fput(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 5
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load %struct.dentry*, %struct.dentry** %9, align 8
  store %struct.dentry* %10, %struct.dentry** %3, align 8
  %11 = load %struct.file*, %struct.file** %2, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 5
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.vfsmount*, %struct.vfsmount** %13, align 8
  store %struct.vfsmount* %14, %struct.vfsmount** %4, align 8
  %15 = load %struct.file*, %struct.file** %2, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 4
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %5, align 8
  %18 = load %struct.file*, %struct.file** %2, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  %21 = load %struct.file*, %struct.file** %2, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @FMODE_OPENED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  br label %152

32:                                               ; preds = %1
  %33 = call i32 (...) @might_sleep()
  %34 = load %struct.file*, %struct.file** %2, align 8
  %35 = call i32 @fsnotify_close(%struct.file* %34)
  %36 = load %struct.file*, %struct.file** %2, align 8
  %37 = call i32 @eventpoll_release(%struct.file* %36)
  %38 = load %struct.file*, %struct.file** %2, align 8
  %39 = call i32 @locks_remove_file(%struct.file* %38)
  %40 = load %struct.file*, %struct.file** %2, align 8
  %41 = call i32 @ima_file_free(%struct.file* %40)
  %42 = load %struct.file*, %struct.file** %2, align 8
  %43 = getelementptr inbounds %struct.file, %struct.file* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @FASYNC, align 4
  %46 = and i32 %44, %45
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %32
  %50 = load %struct.file*, %struct.file** %2, align 8
  %51 = getelementptr inbounds %struct.file, %struct.file* %50, i32 0, i32 3
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32 (i32, %struct.file*, i32)*, i32 (i32, %struct.file*, i32)** %53, align 8
  %55 = icmp ne i32 (i32, %struct.file*, i32)* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %49
  %57 = load %struct.file*, %struct.file** %2, align 8
  %58 = getelementptr inbounds %struct.file, %struct.file* %57, i32 0, i32 3
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32 (i32, %struct.file*, i32)*, i32 (i32, %struct.file*, i32)** %60, align 8
  %62 = load %struct.file*, %struct.file** %2, align 8
  %63 = call i32 %61(i32 -1, %struct.file* %62, i32 0)
  br label %64

64:                                               ; preds = %56, %49
  br label %65

65:                                               ; preds = %64, %32
  %66 = load %struct.file*, %struct.file** %2, align 8
  %67 = getelementptr inbounds %struct.file, %struct.file* %66, i32 0, i32 3
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32 (%struct.inode*, %struct.file*)*, i32 (%struct.inode*, %struct.file*)** %69, align 8
  %71 = icmp ne i32 (%struct.inode*, %struct.file*)* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %65
  %73 = load %struct.file*, %struct.file** %2, align 8
  %74 = getelementptr inbounds %struct.file, %struct.file* %73, i32 0, i32 3
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32 (%struct.inode*, %struct.file*)*, i32 (%struct.inode*, %struct.file*)** %76, align 8
  %78 = load %struct.inode*, %struct.inode** %5, align 8
  %79 = load %struct.file*, %struct.file** %2, align 8
  %80 = call i32 %77(%struct.inode* %78, %struct.file* %79)
  br label %81

81:                                               ; preds = %72, %65
  %82 = load %struct.inode*, %struct.inode** %5, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @S_ISCHR(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %81
  %88 = load %struct.inode*, %struct.inode** %5, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @FMODE_PATH, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  br label %98

98:                                               ; preds = %92, %87, %81
  %99 = phi i1 [ false, %87 ], [ false, %81 ], [ %97, %92 ]
  %100 = zext i1 %99 to i32
  %101 = call i64 @unlikely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.inode*, %struct.inode** %5, align 8
  %105 = getelementptr inbounds %struct.inode, %struct.inode* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @cdev_put(i32* %106)
  br label %108

108:                                              ; preds = %103, %98
  %109 = load %struct.file*, %struct.file** %2, align 8
  %110 = getelementptr inbounds %struct.file, %struct.file* %109, i32 0, i32 3
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = call i32 @fops_put(%struct.TYPE_6__* %111)
  %113 = load %struct.file*, %struct.file** %2, align 8
  %114 = getelementptr inbounds %struct.file, %struct.file* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @put_pid(i32 %116)
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @FMODE_READ, align 4
  %120 = load i32, i32* @FMODE_WRITE, align 4
  %121 = or i32 %119, %120
  %122 = and i32 %118, %121
  %123 = load i32, i32* @FMODE_READ, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %108
  %126 = load %struct.inode*, %struct.inode** %5, align 8
  %127 = call i32 @i_readcount_dec(%struct.inode* %126)
  br label %128

128:                                              ; preds = %125, %108
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @FMODE_WRITER, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load %struct.inode*, %struct.inode** %5, align 8
  %135 = call i32 @put_write_access(%struct.inode* %134)
  %136 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %137 = call i32 @__mnt_drop_write(%struct.vfsmount* %136)
  br label %138

138:                                              ; preds = %133, %128
  %139 = load %struct.dentry*, %struct.dentry** %3, align 8
  %140 = call i32 @dput(%struct.dentry* %139)
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* @FMODE_NEED_UNMOUNT, align 4
  %143 = and i32 %141, %142
  %144 = call i64 @unlikely(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %138
  %147 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %148 = call i32 @dissolve_on_fput(%struct.vfsmount* %147)
  br label %149

149:                                              ; preds = %146, %138
  %150 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %151 = call i32 @mntput(%struct.vfsmount* %150)
  br label %152

152:                                              ; preds = %149, %31
  %153 = load %struct.file*, %struct.file** %2, align 8
  %154 = call i32 @file_free(%struct.file* %153)
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @fsnotify_close(%struct.file*) #1

declare dso_local i32 @eventpoll_release(%struct.file*) #1

declare dso_local i32 @locks_remove_file(%struct.file*) #1

declare dso_local i32 @ima_file_free(%struct.file*) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i32 @cdev_put(i32*) #1

declare dso_local i32 @fops_put(%struct.TYPE_6__*) #1

declare dso_local i32 @put_pid(i32) #1

declare dso_local i32 @i_readcount_dec(%struct.inode*) #1

declare dso_local i32 @put_write_access(%struct.inode*) #1

declare dso_local i32 @__mnt_drop_write(%struct.vfsmount*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @dissolve_on_fput(%struct.vfsmount*) #1

declare dso_local i32 @mntput(%struct.vfsmount*) #1

declare dso_local i32 @file_free(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
