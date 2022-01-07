; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btnode.c_nilfs_btnode_submit_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btnode.c_nilfs_btnode_submit_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.buffer_head = type { i8*, i32, i32, %struct.page* }
%struct.page = type { i32 }
%struct.inode = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.the_nilfs* }
%struct.the_nilfs = type { i32 }

@BH_NILFS_Node = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@NILFS_DAT_INO = common dso_local global i64 0, align 8
@REQ_RAHEAD = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@end_buffer_read_sync = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_btnode_submit_block(%struct.address_space* %0, i8* %1, i64 %2, i32 %3, i32 %4, %struct.buffer_head** %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.buffer_head**, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.buffer_head*, align 8
  %17 = alloca %struct.inode*, align 8
  %18 = alloca %struct.page*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.the_nilfs*, align 8
  store %struct.address_space* %0, %struct.address_space** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.buffer_head** %5, %struct.buffer_head*** %14, align 8
  store i64* %6, i64** %15, align 8
  %21 = load %struct.address_space*, %struct.address_space** %9, align 8
  %22 = call %struct.inode* @NILFS_BTNC_I(%struct.address_space* %21)
  store %struct.inode* %22, %struct.inode** %17, align 8
  %23 = load %struct.inode*, %struct.inode** %17, align 8
  %24 = load %struct.address_space*, %struct.address_space** %9, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i32, i32* @BH_NILFS_Node, align 4
  %27 = call i32 @BIT(i32 %26)
  %28 = call %struct.buffer_head* @nilfs_grab_buffer(%struct.inode* %23, %struct.address_space* %24, i8* %25, i32 %27)
  store %struct.buffer_head* %28, %struct.buffer_head** %16, align 8
  %29 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %30 = icmp ne %struct.buffer_head* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %7
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %152

38:                                               ; preds = %7
  %39 = load i32, i32* @EEXIST, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %19, align 4
  %41 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %42 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %41, i32 0, i32 3
  %43 = load %struct.page*, %struct.page** %42, align 8
  store %struct.page* %43, %struct.page** %18, align 8
  %44 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %45 = call i64 @buffer_uptodate(%struct.buffer_head* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %38
  %48 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %49 = call i64 @buffer_dirty(%struct.buffer_head* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %38
  br label %143

52:                                               ; preds = %47
  %53 = load i64, i64* %11, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %82

55:                                               ; preds = %52
  %56 = load i8*, i8** %10, align 8
  %57 = ptrtoint i8* %56 to i64
  store i64 %57, i64* %11, align 8
  %58 = load %struct.inode*, %struct.inode** %17, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @NILFS_DAT_INO, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %81

63:                                               ; preds = %55
  %64 = load %struct.inode*, %struct.inode** %17, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load %struct.the_nilfs*, %struct.the_nilfs** %67, align 8
  store %struct.the_nilfs* %68, %struct.the_nilfs** %20, align 8
  %69 = load %struct.the_nilfs*, %struct.the_nilfs** %20, align 8
  %70 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %10, align 8
  %73 = call i32 @nilfs_dat_translate(i32 %71, i8* %72, i64* %11)
  store i32 %73, i32* %19, align 4
  %74 = load i32, i32* %19, align 4
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %63
  %78 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %79 = call i32 @brelse(%struct.buffer_head* %78)
  br label %146

80:                                               ; preds = %63
  br label %81

81:                                               ; preds = %80, %55
  br label %82

82:                                               ; preds = %81, %52
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* @REQ_RAHEAD, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %103

87:                                               ; preds = %82
  %88 = load i64, i64* %11, align 8
  %89 = load i64*, i64** %15, align 8
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 1
  %92 = icmp ne i64 %88, %91
  br i1 %92, label %97, label %93

93:                                               ; preds = %87
  %94 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %95 = call i32 @trylock_buffer(%struct.buffer_head* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %93, %87
  %98 = load i32, i32* @EBUSY, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %19, align 4
  %100 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %101 = call i32 @brelse(%struct.buffer_head* %100)
  br label %146

102:                                              ; preds = %93
  br label %106

103:                                              ; preds = %82
  %104 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %105 = call i32 @lock_buffer(%struct.buffer_head* %104)
  br label %106

106:                                              ; preds = %103, %102
  %107 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %108 = call i64 @buffer_uptodate(%struct.buffer_head* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %106
  %111 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %112 = call i32 @unlock_buffer(%struct.buffer_head* %111)
  %113 = load i32, i32* @EEXIST, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %19, align 4
  br label %143

115:                                              ; preds = %106
  %116 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %117 = call i32 @set_buffer_mapped(%struct.buffer_head* %116)
  %118 = load %struct.inode*, %struct.inode** %17, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 1
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %124 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 4
  %125 = load i64, i64* %11, align 8
  %126 = inttoptr i64 %125 to i8*
  %127 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %128 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %127, i32 0, i32 0
  store i8* %126, i8** %128, align 8
  %129 = load i32, i32* @end_buffer_read_sync, align 4
  %130 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %131 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 8
  %132 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %133 = call i32 @get_bh(%struct.buffer_head* %132)
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* %13, align 4
  %136 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %137 = call i32 @submit_bh(i32 %134, i32 %135, %struct.buffer_head* %136)
  %138 = load i8*, i8** %10, align 8
  %139 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %140 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %139, i32 0, i32 0
  store i8* %138, i8** %140, align 8
  %141 = load i64, i64* %11, align 8
  %142 = load i64*, i64** %15, align 8
  store i64 %141, i64* %142, align 8
  store i32 0, i32* %19, align 4
  br label %143

143:                                              ; preds = %115, %110, %51
  %144 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %145 = load %struct.buffer_head**, %struct.buffer_head*** %14, align 8
  store %struct.buffer_head* %144, %struct.buffer_head** %145, align 8
  br label %146

146:                                              ; preds = %143, %97, %77
  %147 = load %struct.page*, %struct.page** %18, align 8
  %148 = call i32 @unlock_page(%struct.page* %147)
  %149 = load %struct.page*, %struct.page** %18, align 8
  %150 = call i32 @put_page(%struct.page* %149)
  %151 = load i32, i32* %19, align 4
  store i32 %151, i32* %8, align 4
  br label %152

152:                                              ; preds = %146, %35
  %153 = load i32, i32* %8, align 4
  ret i32 %153
}

declare dso_local %struct.inode* @NILFS_BTNC_I(%struct.address_space*) #1

declare dso_local %struct.buffer_head* @nilfs_grab_buffer(%struct.inode*, %struct.address_space*, i8*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_dat_translate(i32, i8*, i64*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @trylock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @submit_bh(i32, i32, %struct.buffer_head*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
