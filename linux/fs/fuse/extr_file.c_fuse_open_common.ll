; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_open_common.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_open_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.fuse_conn = type { i64, i64 }

@O_TRUNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_open_common(%struct.inode* %0, %struct.file* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fuse_conn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %11)
  store %struct.fuse_conn* %12, %struct.fuse_conn** %8, align 8
  %13 = load %struct.file*, %struct.file** %6, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @O_TRUNC, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %21 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %26 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %24, %19, %3
  %30 = phi i1 [ false, %19 ], [ false, %3 ], [ %28, %24 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %10, align 4
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = load %struct.file*, %struct.file** %6, align 8
  %34 = call i32 @generic_file_open(%struct.inode* %32, %struct.file* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %70

39:                                               ; preds = %29
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = call i32 @inode_lock(%struct.inode* %43)
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = call i32 @fuse_set_nowrite(%struct.inode* %45)
  br label %47

47:                                               ; preds = %42, %39
  %48 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %49 = load %struct.inode*, %struct.inode** %5, align 8
  %50 = call i32 @get_node_id(%struct.inode* %49)
  %51 = load %struct.file*, %struct.file** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @fuse_do_open(%struct.fuse_conn* %48, i32 %50, %struct.file* %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %47
  %57 = load %struct.inode*, %struct.inode** %5, align 8
  %58 = load %struct.file*, %struct.file** %6, align 8
  %59 = call i32 @fuse_finish_open(%struct.inode* %57, %struct.file* %58)
  br label %60

60:                                               ; preds = %56, %47
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load %struct.inode*, %struct.inode** %5, align 8
  %65 = call i32 @fuse_release_nowrite(%struct.inode* %64)
  %66 = load %struct.inode*, %struct.inode** %5, align 8
  %67 = call i32 @inode_unlock(%struct.inode* %66)
  br label %68

68:                                               ; preds = %63, %60
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %37
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i32 @generic_file_open(%struct.inode*, %struct.file*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @fuse_set_nowrite(%struct.inode*) #1

declare dso_local i32 @fuse_do_open(%struct.fuse_conn*, i32, %struct.file*, i32) #1

declare dso_local i32 @get_node_id(%struct.inode*) #1

declare dso_local i32 @fuse_finish_open(%struct.inode*, %struct.file*) #1

declare dso_local i32 @fuse_release_nowrite(%struct.inode*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
