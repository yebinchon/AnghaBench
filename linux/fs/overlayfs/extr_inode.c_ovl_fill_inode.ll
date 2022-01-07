; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_inode.c_ovl_fill_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_inode.c_ovl_fill_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32*, i32*, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@S_NOCMTIME = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@ovl_file_inode_operations = common dso_local global i32 0, align 4
@ovl_file_operations = common dso_local global i32 0, align 4
@ovl_aops = common dso_local global i32 0, align 4
@ovl_dir_inode_operations = common dso_local global i32 0, align 4
@ovl_dir_operations = common dso_local global i32 0, align 4
@ovl_symlink_inode_operations = common dso_local global i32 0, align 4
@ovl_special_inode_operations = common dso_local global i32 0, align 4
@ACL_DONT_CACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i32, i32, i64, i32)* @ovl_fill_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ovl_fill_inode(%struct.inode* %0, i32 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 8
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ovl_xino_bits(i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @ovl_same_sb(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %21, %5
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %24
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %30
  %34 = load i64, i64* %9, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sub nsw i32 64, %35
  %37 = zext i32 %36 to i64
  %38 = lshr i64 %34, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = load i32, i32* %11, align 4
  %44 = sub nsw i32 64, %43
  %45 = zext i32 %44 to i64
  %46 = shl i64 %42, %45
  %47 = load %struct.inode*, %struct.inode** %6, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = or i64 %49, %46
  store i64 %50, i64* %48, align 8
  br label %51

51:                                               ; preds = %40, %33, %30, %24
  br label %56

52:                                               ; preds = %21
  %53 = call i64 (...) @get_next_ino()
  %54 = load %struct.inode*, %struct.inode** %6, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %52, %51
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.inode*, %struct.inode** %6, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @S_NOCMTIME, align 4
  %61 = load %struct.inode*, %struct.inode** %6, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load %struct.inode*, %struct.inode** %6, align 8
  %66 = call i32 @ovl_lockdep_annotate_inode_mutex_key(%struct.inode* %65)
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @S_IFMT, align 4
  %69 = and i32 %67, %68
  switch i32 %69, label %87 [
    i32 128, label %70
    i32 130, label %79
    i32 129, label %84
  ]

70:                                               ; preds = %56
  %71 = load %struct.inode*, %struct.inode** %6, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 2
  store i32* @ovl_file_inode_operations, i32** %72, align 8
  %73 = load %struct.inode*, %struct.inode** %6, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 3
  store i32* @ovl_file_operations, i32** %74, align 8
  %75 = load %struct.inode*, %struct.inode** %6, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 4
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32* @ovl_aops, i32** %78, align 8
  br label %94

79:                                               ; preds = %56
  %80 = load %struct.inode*, %struct.inode** %6, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 2
  store i32* @ovl_dir_inode_operations, i32** %81, align 8
  %82 = load %struct.inode*, %struct.inode** %6, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 3
  store i32* @ovl_dir_operations, i32** %83, align 8
  br label %94

84:                                               ; preds = %56
  %85 = load %struct.inode*, %struct.inode** %6, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 2
  store i32* @ovl_symlink_inode_operations, i32** %86, align 8
  br label %94

87:                                               ; preds = %56
  %88 = load %struct.inode*, %struct.inode** %6, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 2
  store i32* @ovl_special_inode_operations, i32** %89, align 8
  %90 = load %struct.inode*, %struct.inode** %6, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @init_special_inode(%struct.inode* %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %87, %84, %79, %70
  ret void
}

declare dso_local i32 @ovl_xino_bits(i32) #1

declare dso_local i64 @ovl_same_sb(i32) #1

declare dso_local i64 @get_next_ino(...) #1

declare dso_local i32 @ovl_lockdep_annotate_inode_mutex_key(%struct.inode*) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
