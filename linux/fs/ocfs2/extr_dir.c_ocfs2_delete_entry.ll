; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_delete_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dir.c_ocfs2_delete_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_dir_lookup_result = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_delete_entry(i32* %0, %struct.inode* %1, %struct.ocfs2_dir_lookup_result* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ocfs2_dir_lookup_result*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.ocfs2_dir_lookup_result* %2, %struct.ocfs2_dir_lookup_result** %7, align 8
  %8 = load %struct.inode*, %struct.inode** %6, align 8
  %9 = call i64 @ocfs2_dir_indexed(%struct.inode* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %7, align 8
  %15 = call i32 @ocfs2_delete_entry_dx(i32* %12, %struct.inode* %13, %struct.ocfs2_dir_lookup_result* %14)
  store i32 %15, i32* %4, align 4
  br label %44

16:                                               ; preds = %3
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %16
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %7, align 8
  %28 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %7, align 8
  %31 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ocfs2_delete_entry_id(i32* %25, %struct.inode* %26, i32 %29, i32 %32)
  store i32 %33, i32* %4, align 4
  br label %44

34:                                               ; preds = %16
  %35 = load i32*, i32** %5, align 8
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %7, align 8
  %38 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %7, align 8
  %41 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ocfs2_delete_entry_el(i32* %35, %struct.inode* %36, i32 %39, i32 %42)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %34, %24, %11
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i64 @ocfs2_dir_indexed(%struct.inode*) #1

declare dso_local i32 @ocfs2_delete_entry_dx(i32*, %struct.inode*, %struct.ocfs2_dir_lookup_result*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_delete_entry_id(i32*, %struct.inode*, i32, i32) #1

declare dso_local i32 @ocfs2_delete_entry_el(i32*, %struct.inode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
