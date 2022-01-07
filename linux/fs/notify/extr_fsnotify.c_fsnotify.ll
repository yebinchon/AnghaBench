; ModuleID = '/home/carl/AnghaBench/linux/fs/notify/extr_fsnotify.c_fsnotify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/notify/extr_fsnotify.c_fsnotify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.super_block* }
%struct.super_block = type { i32, i32 }
%struct.qstr = type { i32 }
%struct.fsnotify_iter_info = type { i32, i8** }
%struct.mount = type { i32, i32 }
%struct.path = type { i32 }

@ALL_FSNOTIFY_EVENTS = common dso_local global i32 0, align 4
@FSNOTIFY_EVENT_PATH = common dso_local global i32 0, align 4
@FS_EVENT_ON_CHILD = common dso_local global i32 0, align 4
@FS_MODIFY = common dso_local global i32 0, align 4
@fsnotify_mark_srcu = common dso_local global i32 0, align 4
@FSNOTIFY_OBJ_TYPE_INODE = common dso_local global i64 0, align 8
@FSNOTIFY_OBJ_TYPE_SB = common dso_local global i64 0, align 8
@FSNOTIFY_OBJ_TYPE_VFSMOUNT = common dso_local global i64 0, align 8
@ALL_FSNOTIFY_PERM_EVENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsnotify(%struct.inode* %0, i32 %1, i8* %2, i32 %3, %struct.qstr* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.qstr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.fsnotify_iter_info, align 8
  %15 = alloca %struct.super_block*, align 8
  %16 = alloca %struct.mount*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.qstr* %4, %struct.qstr** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = bitcast %struct.fsnotify_iter_info* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 16, i1 false)
  %21 = load %struct.inode*, %struct.inode** %8, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 2
  %23 = load %struct.super_block*, %struct.super_block** %22, align 8
  store %struct.super_block* %23, %struct.super_block** %15, align 8
  store %struct.mount* null, %struct.mount** %16, align 8
  %24 = load %struct.super_block*, %struct.super_block** %15, align 8
  %25 = getelementptr inbounds %struct.super_block, %struct.super_block* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @ALL_FSNOTIFY_EVENTS, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %19, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @FSNOTIFY_EVENT_PATH, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %6
  %34 = load i8*, i8** %10, align 8
  %35 = bitcast i8* %34 to %struct.path*
  %36 = getelementptr inbounds %struct.path, %struct.path* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.mount* @real_mount(i32 %37)
  store %struct.mount* %38, %struct.mount** %16, align 8
  %39 = load %struct.mount*, %struct.mount** %16, align 8
  %40 = getelementptr inbounds %struct.mount, %struct.mount* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %17, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %17, align 4
  br label %44

44:                                               ; preds = %33, %6
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @FS_EVENT_ON_CHILD, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 0, i32* %17, align 4
  br label %50

50:                                               ; preds = %49, %44
  %51 = load %struct.inode*, %struct.inode** %8, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %69, label %55

55:                                               ; preds = %50
  %56 = load %struct.super_block*, %struct.super_block** %15, align 8
  %57 = getelementptr inbounds %struct.super_block, %struct.super_block* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %55
  %61 = load %struct.mount*, %struct.mount** %16, align 8
  %62 = icmp ne %struct.mount* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load %struct.mount*, %struct.mount** %16, align 8
  %65 = getelementptr inbounds %struct.mount, %struct.mount* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63, %60
  store i32 0, i32* %7, align 4
  br label %139

69:                                               ; preds = %63, %55, %50
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @FS_MODIFY, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %19, align 4
  %76 = load %struct.inode*, %struct.inode** %8, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %17, align 4
  %80 = or i32 %78, %79
  %81 = and i32 %75, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %74
  store i32 0, i32* %7, align 4
  br label %139

84:                                               ; preds = %74, %69
  %85 = call i32 @srcu_read_lock(i32* @fsnotify_mark_srcu)
  %86 = getelementptr inbounds %struct.fsnotify_iter_info, %struct.fsnotify_iter_info* %14, i32 0, i32 0
  store i32 %85, i32* %86, align 8
  %87 = load %struct.inode*, %struct.inode** %8, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 1
  %89 = call i8* @fsnotify_first_mark(i32* %88)
  %90 = getelementptr inbounds %struct.fsnotify_iter_info, %struct.fsnotify_iter_info* %14, i32 0, i32 1
  %91 = load i8**, i8*** %90, align 8
  %92 = load i64, i64* @FSNOTIFY_OBJ_TYPE_INODE, align 8
  %93 = getelementptr inbounds i8*, i8** %91, i64 %92
  store i8* %89, i8** %93, align 8
  %94 = load %struct.super_block*, %struct.super_block** %15, align 8
  %95 = getelementptr inbounds %struct.super_block, %struct.super_block* %94, i32 0, i32 1
  %96 = call i8* @fsnotify_first_mark(i32* %95)
  %97 = getelementptr inbounds %struct.fsnotify_iter_info, %struct.fsnotify_iter_info* %14, i32 0, i32 1
  %98 = load i8**, i8*** %97, align 8
  %99 = load i64, i64* @FSNOTIFY_OBJ_TYPE_SB, align 8
  %100 = getelementptr inbounds i8*, i8** %98, i64 %99
  store i8* %96, i8** %100, align 8
  %101 = load %struct.mount*, %struct.mount** %16, align 8
  %102 = icmp ne %struct.mount* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %84
  %104 = load %struct.mount*, %struct.mount** %16, align 8
  %105 = getelementptr inbounds %struct.mount, %struct.mount* %104, i32 0, i32 1
  %106 = call i8* @fsnotify_first_mark(i32* %105)
  %107 = getelementptr inbounds %struct.fsnotify_iter_info, %struct.fsnotify_iter_info* %14, i32 0, i32 1
  %108 = load i8**, i8*** %107, align 8
  %109 = load i64, i64* @FSNOTIFY_OBJ_TYPE_VFSMOUNT, align 8
  %110 = getelementptr inbounds i8*, i8** %108, i64 %109
  store i8* %106, i8** %110, align 8
  br label %111

111:                                              ; preds = %103, %84
  br label %112

112:                                              ; preds = %131, %111
  %113 = call i64 @fsnotify_iter_select_report_types(%struct.fsnotify_iter_info* %14)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %133

115:                                              ; preds = %112
  %116 = load %struct.inode*, %struct.inode** %8, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load i8*, i8** %10, align 8
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %13, align 4
  %121 = load %struct.qstr*, %struct.qstr** %12, align 8
  %122 = call i32 @send_to_group(%struct.inode* %116, i32 %117, i8* %118, i32 %119, i32 %120, %struct.qstr* %121, %struct.fsnotify_iter_info* %14)
  store i32 %122, i32* %18, align 4
  %123 = load i32, i32* %18, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %115
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @ALL_FSNOTIFY_PERM_EVENTS, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  br label %134

131:                                              ; preds = %125, %115
  %132 = call i32 @fsnotify_iter_next(%struct.fsnotify_iter_info* %14)
  br label %112

133:                                              ; preds = %112
  store i32 0, i32* %18, align 4
  br label %134

134:                                              ; preds = %133, %130
  %135 = getelementptr inbounds %struct.fsnotify_iter_info, %struct.fsnotify_iter_info* %14, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @srcu_read_unlock(i32* @fsnotify_mark_srcu, i32 %136)
  %138 = load i32, i32* %18, align 4
  store i32 %138, i32* %7, align 4
  br label %139

139:                                              ; preds = %134, %83, %68
  %140 = load i32, i32* %7, align 4
  ret i32 %140
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.mount* @real_mount(i32) #2

declare dso_local i32 @srcu_read_lock(i32*) #2

declare dso_local i8* @fsnotify_first_mark(i32*) #2

declare dso_local i64 @fsnotify_iter_select_report_types(%struct.fsnotify_iter_info*) #2

declare dso_local i32 @send_to_group(%struct.inode*, i32, i8*, i32, i32, %struct.qstr*, %struct.fsnotify_iter_info*) #2

declare dso_local i32 @fsnotify_iter_next(%struct.fsnotify_iter_info*) #2

declare dso_local i32 @srcu_read_unlock(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
