; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_whiteout_for_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_whiteout_for_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32*, i32 }
%struct.ext4_renament = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@EXT4_XATTR_TRANS_BLOCKS = common dso_local global i64 0, align 8
@S_IFCHR = common dso_local global i32 0, align 4
@WHITEOUT_MODE = common dso_local global i32 0, align 4
@EXT4_HT_DIR = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@WHITEOUT_DEV = common dso_local global i32 0, align 4
@ext4_special_inode_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.ext4_renament*, i32, i32**)* @ext4_whiteout_for_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @ext4_whiteout_for_rename(%struct.ext4_renament* %0, i32 %1, i32** %2) #0 {
  %4 = alloca %struct.ext4_renament*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ext4_renament* %0, %struct.ext4_renament** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.ext4_renament*, %struct.ext4_renament** %4, align 8
  %11 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @EXT4_MAXQUOTAS_TRANS_BLOCKS(i32 %14)
  %16 = load i64, i64* @EXT4_XATTR_TRANS_BLOCKS, align 8
  %17 = add nsw i64 %15, %16
  %18 = add nsw i64 %17, 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %18
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %61, %3
  %24 = load %struct.ext4_renament*, %struct.ext4_renament** %4, align 8
  %25 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* @S_IFCHR, align 4
  %28 = load i32, i32* @WHITEOUT_MODE, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.ext4_renament*, %struct.ext4_renament** %4, align 8
  %31 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* @EXT4_HT_DIR, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call %struct.inode* @ext4_new_inode_start_handle(%struct.TYPE_4__* %26, i32 %29, i32* %33, i32 0, i32* null, i32 %34, i32 %35)
  store %struct.inode* %36, %struct.inode** %7, align 8
  %37 = call i32* (...) @ext4_journal_current_handle()
  store i32* %37, i32** %8, align 8
  %38 = load %struct.inode*, %struct.inode** %7, align 8
  %39 = call i64 @IS_ERR(%struct.inode* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %23
  %42 = load i32*, i32** %8, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @ext4_journal_stop(i32* %45)
  br label %47

47:                                               ; preds = %44, %41
  %48 = load %struct.inode*, %struct.inode** %7, align 8
  %49 = call i32 @PTR_ERR(%struct.inode* %48)
  %50 = load i32, i32* @ENOSPC, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load %struct.ext4_renament*, %struct.ext4_renament** %4, align 8
  %55 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @ext4_should_retry_alloc(i32 %58, i32* %9)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %23

62:                                               ; preds = %53, %47
  br label %74

63:                                               ; preds = %23
  %64 = load i32*, i32** %8, align 8
  %65 = load i32**, i32*** %6, align 8
  store i32* %64, i32** %65, align 8
  %66 = load %struct.inode*, %struct.inode** %7, align 8
  %67 = load %struct.inode*, %struct.inode** %7, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @WHITEOUT_DEV, align 4
  %71 = call i32 @init_special_inode(%struct.inode* %66, i32 %69, i32 %70)
  %72 = load %struct.inode*, %struct.inode** %7, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 0
  store i32* @ext4_special_inode_operations, i32** %73, align 8
  br label %74

74:                                               ; preds = %63, %62
  %75 = load %struct.inode*, %struct.inode** %7, align 8
  ret %struct.inode* %75
}

declare dso_local i64 @EXT4_MAXQUOTAS_TRANS_BLOCKS(i32) #1

declare dso_local %struct.inode* @ext4_new_inode_start_handle(%struct.TYPE_4__*, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32* @ext4_journal_current_handle(...) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i64 @ext4_should_retry_alloc(i32, i32*) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
