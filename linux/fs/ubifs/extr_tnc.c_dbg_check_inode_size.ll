; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_dbg_check_inode_size.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_dbg_check_inode_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.inode = type { i64, i32 }
%union.ubifs_key = type { i32 }
%struct.ubifs_znode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %union.ubifs_key }

@UBIFS_BLOCK_SIZE = common dso_local global i32 0, align 4
@UBIFS_BLOCK_SHIFT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"inode %lu has size %lld, but there are data at offset %lld\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbg_check_inode_size(%struct.ubifs_info* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.ubifs_key, align 4
  %11 = alloca %union.ubifs_key, align 4
  %12 = alloca %union.ubifs_key*, align 8
  %13 = alloca %struct.ubifs_znode*, align 8
  %14 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @S_ISREG(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %114

21:                                               ; preds = %3
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %23 = call i32 @dbg_is_chk_gen(%struct.ubifs_info* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %114

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %29 = add nsw i32 %27, %28
  %30 = sub nsw i32 %29, 1
  %31 = load i32, i32* @UBIFS_BLOCK_SHIFT, align 4
  %32 = ashr i32 %30, %31
  store i32 %32, i32* %14, align 4
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @data_key_init(%struct.ubifs_info* %33, %union.ubifs_key* %10, i64 %36, i32 %37)
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @highest_data_key(%struct.ubifs_info* %39, %union.ubifs_key* %11, i64 %42)
  %44 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %45 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %44, i32 0, i32 0
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %48 = call i32 @ubifs_lookup_level0(%struct.ubifs_info* %47, %union.ubifs_key* %10, %struct.ubifs_znode** %13, i32* %9)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %26
  br label %109

52:                                               ; preds = %26
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store %union.ubifs_key* %10, %union.ubifs_key** %12, align 8
  br label %87

56:                                               ; preds = %52
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %58 = call i32 @tnc_next(%struct.ubifs_info* %57, %struct.ubifs_znode** %13, i32* %9)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @ENOENT, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 0, i32* %8, align 4
  br label %109

64:                                               ; preds = %56
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %109

68:                                               ; preds = %64
  %69 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %70 = load i32, i32* %8, align 4
  %71 = icmp eq i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i32 @ubifs_assert(%struct.ubifs_info* %69, i32 %72)
  %74 = load %struct.ubifs_znode*, %struct.ubifs_znode** %13, align 8
  %75 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store %union.ubifs_key* %80, %union.ubifs_key** %12, align 8
  %81 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %82 = load %union.ubifs_key*, %union.ubifs_key** %12, align 8
  %83 = call i32 @key_in_range(%struct.ubifs_info* %81, %union.ubifs_key* %82, %union.ubifs_key* %10, %union.ubifs_key* %11)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %68
  br label %109

86:                                               ; preds = %68
  br label %87

87:                                               ; preds = %86, %55
  %88 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %89 = load %union.ubifs_key*, %union.ubifs_key** %12, align 8
  %90 = call i32 @key_block(%struct.ubifs_info* %88, %union.ubifs_key* %89)
  store i32 %90, i32* %14, align 4
  %91 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %92 = load %struct.inode*, %struct.inode** %6, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* @UBIFS_BLOCK_SHIFT, align 4
  %98 = shl i32 %96, %97
  %99 = call i32 @ubifs_err(%struct.ubifs_info* %91, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %94, i32 %95, i32 %98)
  %100 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %101 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %100, i32 0, i32 0
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %104 = load %struct.inode*, %struct.inode** %6, align 8
  %105 = call i32 @ubifs_dump_inode(%struct.ubifs_info* %103, %struct.inode* %104)
  %106 = call i32 (...) @dump_stack()
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %114

109:                                              ; preds = %85, %67, %63, %51
  %110 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %111 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %110, i32 0, i32 0
  %112 = call i32 @mutex_unlock(i32* %111)
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %109, %87, %25, %20
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @dbg_is_chk_gen(%struct.ubifs_info*) #1

declare dso_local i32 @data_key_init(%struct.ubifs_info*, %union.ubifs_key*, i64, i32) #1

declare dso_local i32 @highest_data_key(%struct.ubifs_info*, %union.ubifs_key*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ubifs_lookup_level0(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_znode**, i32*) #1

declare dso_local i32 @tnc_next(%struct.ubifs_info*, %struct.ubifs_znode**, i32*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @key_in_range(%struct.ubifs_info*, %union.ubifs_key*, %union.ubifs_key*, %union.ubifs_key*) #1

declare dso_local i32 @key_block(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i64, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ubifs_dump_inode(%struct.ubifs_info*, %struct.inode*) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
