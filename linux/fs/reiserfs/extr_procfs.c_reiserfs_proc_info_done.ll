; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_procfs.c_reiserfs_proc_info_done.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_procfs.c_reiserfs_proc_info_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.proc_dir_entry = type { i32 }
%struct.TYPE_2__ = type { %struct.proc_dir_entry* }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@proc_info_root = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_proc_info_done(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.proc_dir_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %7 = load %struct.super_block*, %struct.super_block** %2, align 8
  %8 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %9, align 8
  store %struct.proc_dir_entry* %10, %struct.proc_dir_entry** %3, align 8
  %11 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %12 = icmp ne %struct.proc_dir_entry* %11, null
  br i1 %12, label %13, label %35

13:                                               ; preds = %1
  %14 = load i32, i32* @BDEVNAME_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %4, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  %18 = load %struct.super_block*, %struct.super_block** %2, align 8
  %19 = getelementptr inbounds %struct.super_block, %struct.super_block* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @BDEVNAME_SIZE, align 4
  %22 = call i32 @strlcpy(i8* %17, i32 %20, i32 %21)
  %23 = call i8* @strchr(i8* %17, i8 signext 47)
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %13
  %27 = load i8*, i8** %6, align 8
  store i8 33, i8* %27, align 1
  br label %28

28:                                               ; preds = %26, %13
  %29 = load i32, i32* @proc_info_root, align 4
  %30 = call i32 @remove_proc_subtree(i8* %17, i32 %29)
  %31 = load %struct.super_block*, %struct.super_block** %2, align 8
  %32 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store %struct.proc_dir_entry* null, %struct.proc_dir_entry** %33, align 8
  %34 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %34)
  br label %35

35:                                               ; preds = %28, %1
  ret i32 0
}

declare dso_local %struct.TYPE_2__* @REISERFS_SB(%struct.super_block*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @remove_proc_subtree(i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
