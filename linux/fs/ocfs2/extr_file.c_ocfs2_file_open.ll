; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_file_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_file_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ocfs2_inode_info = type { i32, i32, i32, i64 }

@FMODE_WRITE = common dso_local global i32 0, align 4
@OCFS2_INODE_DELETED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@O_DIRECT = common dso_local global i32 0, align 4
@OCFS2_INODE_OPEN_DIRECT = common dso_local global i32 0, align 4
@FMODE_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @ocfs2_file_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_file_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %11)
  store %struct.ocfs2_inode_info* %12, %struct.ocfs2_inode_info** %7, align 8
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = load %struct.file*, %struct.file** %4, align 8
  %15 = load %struct.file*, %struct.file** %4, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %7, align 8
  %20 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.file*, %struct.file** %4, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.file*, %struct.file** %4, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @trace_ocfs2_file_open(%struct.inode* %13, %struct.file* %14, %struct.TYPE_6__* %18, i64 %21, i32 %28, i32 %35, i32 %36)
  %38 = load %struct.file*, %struct.file** %4, align 8
  %39 = getelementptr inbounds %struct.file, %struct.file* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @FMODE_WRITE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %2
  %45 = load %struct.inode*, %struct.inode** %3, align 8
  %46 = call i32 @dquot_initialize(%struct.inode* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %108

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %2
  %52 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %7, align 8
  %53 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %52, i32 0, i32 1
  %54 = call i32 @spin_lock(i32* %53)
  %55 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %7, align 8
  %56 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @OCFS2_INODE_DELETED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %51
  %62 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %7, align 8
  %63 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %62, i32 0, i32 1
  %64 = call i32 @spin_unlock(i32* %63)
  %65 = load i32, i32* @ENOENT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %108

67:                                               ; preds = %51
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @O_DIRECT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load i32, i32* @OCFS2_INODE_OPEN_DIRECT, align 4
  %74 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %7, align 8
  %75 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %72, %67
  %79 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %7, align 8
  %80 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  %83 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %7, align 8
  %84 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %83, i32 0, i32 1
  %85 = call i32 @spin_unlock(i32* %84)
  %86 = load %struct.inode*, %struct.inode** %3, align 8
  %87 = load %struct.file*, %struct.file** %4, align 8
  %88 = call i32 @ocfs2_init_file_private(%struct.inode* %86, %struct.file* %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %78
  %92 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %7, align 8
  %93 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %92, i32 0, i32 1
  %94 = call i32 @spin_lock(i32* %93)
  %95 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %7, align 8
  %96 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %96, align 8
  %99 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %7, align 8
  %100 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %99, i32 0, i32 1
  %101 = call i32 @spin_unlock(i32* %100)
  br label %102

102:                                              ; preds = %91, %78
  %103 = load i32, i32* @FMODE_NOWAIT, align 4
  %104 = load %struct.file*, %struct.file** %4, align 8
  %105 = getelementptr inbounds %struct.file, %struct.file* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %102, %61, %49
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @trace_ocfs2_file_open(%struct.inode*, %struct.file*, %struct.TYPE_6__*, i64, i32, i32, i32) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ocfs2_init_file_private(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
