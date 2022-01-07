; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_filecache.c_nfsd_file_fsnotify_handle_event.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_filecache.c_nfsd_file_fsnotify_handle_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_group = type { i32 }
%struct.inode = type { i64, i32 }
%struct.qstr = type { i32 }
%struct.fsnotify_iter_info = type { i32 }

@FS_ATTRIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsnotify_group*, %struct.inode*, i32, i8*, i32, %struct.qstr*, i32, %struct.fsnotify_iter_info*)* @nfsd_file_fsnotify_handle_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_file_fsnotify_handle_event(%struct.fsnotify_group* %0, %struct.inode* %1, i32 %2, i8* %3, i32 %4, %struct.qstr* %5, i32 %6, %struct.fsnotify_iter_info* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.fsnotify_group*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.qstr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.fsnotify_iter_info*, align 8
  store %struct.fsnotify_group* %0, %struct.fsnotify_group** %10, align 8
  store %struct.inode* %1, %struct.inode** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store %struct.qstr* %5, %struct.qstr** %15, align 8
  store i32 %6, i32* %16, align 4
  store %struct.fsnotify_iter_info* %7, %struct.fsnotify_iter_info** %17, align 8
  %18 = load %struct.inode*, %struct.inode** %11, align 8
  %19 = load i32, i32* %12, align 4
  %20 = call i32 @trace_nfsd_file_fsnotify_handle_event(%struct.inode* %18, i32 %19)
  %21 = load %struct.inode*, %struct.inode** %11, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @S_ISREG(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %8
  %27 = call i32 @WARN_ON_ONCE(i32 1)
  store i32 0, i32* %9, align 4
  br label %43

28:                                               ; preds = %8
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @FS_ATTRIB, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %struct.inode*, %struct.inode** %11, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  br label %43

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %28
  %41 = load %struct.inode*, %struct.inode** %11, align 8
  %42 = call i32 @nfsd_file_close_inode(%struct.inode* %41)
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %40, %38, %26
  %44 = load i32, i32* %9, align 4
  ret i32 %44
}

declare dso_local i32 @trace_nfsd_file_fsnotify_handle_event(%struct.inode*, i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @nfsd_file_close_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
