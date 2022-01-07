; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_da_write_inline_data_begin.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_da_write_inline_data_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.ext4_iloc = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EXT4_HT_INODE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@AOP_FLAG_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_da_write_inline_data_begin(%struct.address_space* %0, %struct.inode* %1, i32 %2, i32 %3, i32 %4, %struct.page** %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.page*, align 8
  %20 = alloca %struct.ext4_iloc, align 4
  %21 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %9, align 8
  store %struct.inode* %1, %struct.inode** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.page** %5, %struct.page*** %14, align 8
  store i8** %6, i8*** %15, align 8
  store i32 0, i32* %21, align 4
  %22 = load %struct.inode*, %struct.inode** %10, align 8
  %23 = call i32 @ext4_get_inode_loc(%struct.inode* %22, %struct.ext4_iloc* %20)
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %16, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %7
  %27 = load i32, i32* %16, align 4
  store i32 %27, i32* %8, align 4
  br label %158

28:                                               ; preds = %7
  br label %29

29:                                               ; preds = %91, %28
  %30 = load %struct.inode*, %struct.inode** %10, align 8
  %31 = load i32, i32* @EXT4_HT_INODE, align 4
  %32 = call i32* @ext4_journal_start(%struct.inode* %30, i32 %31, i32 1)
  store i32* %32, i32** %18, align 8
  %33 = load i32*, i32** %18, align 8
  %34 = call i64 @IS_ERR(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32*, i32** %18, align 8
  %38 = call i32 @PTR_ERR(i32* %37)
  store i32 %38, i32* %16, align 4
  br label %153

39:                                               ; preds = %29
  %40 = load %struct.inode*, %struct.inode** %10, align 8
  %41 = call i32 @ext4_get_max_inline_size(%struct.inode* %40)
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* @ENOSPC, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = add i32 %45, %46
  %48 = icmp uge i32 %44, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %39
  %50 = load i32*, i32** %18, align 8
  %51 = load %struct.inode*, %struct.inode** %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = add i32 %52, %53
  %55 = call i32 @ext4_prepare_inline_data(i32* %50, %struct.inode* %51, i32 %54)
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %49
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* @ENOSPC, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp ne i32 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %150

64:                                               ; preds = %58, %49
  br label %65

65:                                               ; preds = %64, %39
  %66 = load i32, i32* @AOP_FLAG_NOFS, align 4
  %67 = load i32, i32* %13, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* @ENOSPC, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %93

73:                                               ; preds = %65
  %74 = load i32*, i32** %18, align 8
  %75 = call i32 @ext4_journal_stop(i32* %74)
  %76 = load %struct.address_space*, %struct.address_space** %9, align 8
  %77 = load %struct.inode*, %struct.inode** %10, align 8
  %78 = load i32, i32* %13, align 4
  %79 = load i8**, i8*** %15, align 8
  %80 = call i32 @ext4_da_convert_inline_data_to_extent(%struct.address_space* %76, %struct.inode* %77, i32 %78, i8** %79)
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* @ENOSPC, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %73
  %86 = load %struct.inode*, %struct.inode** %10, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @ext4_should_retry_alloc(i32 %88, i32* %21)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %29

92:                                               ; preds = %85, %73
  br label %153

93:                                               ; preds = %65
  %94 = load %struct.address_space*, %struct.address_space** %9, align 8
  %95 = load i32, i32* %13, align 4
  %96 = call %struct.page* @grab_cache_page_write_begin(%struct.address_space* %94, i32 0, i32 %95)
  store %struct.page* %96, %struct.page** %19, align 8
  %97 = load %struct.page*, %struct.page** %19, align 8
  %98 = icmp ne %struct.page* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %93
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %16, align 4
  br label %150

102:                                              ; preds = %93
  %103 = load %struct.inode*, %struct.inode** %10, align 8
  %104 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %103)
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = call i32 @down_read(i32* %105)
  %107 = load %struct.inode*, %struct.inode** %10, align 8
  %108 = call i32 @ext4_has_inline_data(%struct.inode* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %102
  store i32 0, i32* %16, align 4
  br label %141

111:                                              ; preds = %102
  %112 = load %struct.page*, %struct.page** %19, align 8
  %113 = call i32 @PageUptodate(%struct.page* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %111
  %116 = load %struct.inode*, %struct.inode** %10, align 8
  %117 = load %struct.page*, %struct.page** %19, align 8
  %118 = call i32 @ext4_read_inline_page(%struct.inode* %116, %struct.page* %117)
  store i32 %118, i32* %16, align 4
  %119 = load i32, i32* %16, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %141

122:                                              ; preds = %115
  br label %123

123:                                              ; preds = %122, %111
  %124 = load i32*, i32** %18, align 8
  %125 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %20, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @ext4_journal_get_write_access(i32* %124, i32 %126)
  store i32 %127, i32* %16, align 4
  %128 = load i32, i32* %16, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  br label %141

131:                                              ; preds = %123
  %132 = load %struct.inode*, %struct.inode** %10, align 8
  %133 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %132)
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = call i32 @up_read(i32* %134)
  %136 = load %struct.page*, %struct.page** %19, align 8
  %137 = load %struct.page**, %struct.page*** %14, align 8
  store %struct.page* %136, %struct.page** %137, align 8
  %138 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %20, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @brelse(i32 %139)
  store i32 1, i32* %8, align 4
  br label %158

141:                                              ; preds = %130, %121, %110
  %142 = load %struct.inode*, %struct.inode** %10, align 8
  %143 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %142)
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = call i32 @up_read(i32* %144)
  %146 = load %struct.page*, %struct.page** %19, align 8
  %147 = call i32 @unlock_page(%struct.page* %146)
  %148 = load %struct.page*, %struct.page** %19, align 8
  %149 = call i32 @put_page(%struct.page* %148)
  br label %150

150:                                              ; preds = %141, %99, %63
  %151 = load i32*, i32** %18, align 8
  %152 = call i32 @ext4_journal_stop(i32* %151)
  br label %153

153:                                              ; preds = %150, %92, %36
  %154 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %20, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @brelse(i32 %155)
  %157 = load i32, i32* %16, align 4
  store i32 %157, i32* %8, align 4
  br label %158

158:                                              ; preds = %153, %131, %26
  %159 = load i32, i32* %8, align 4
  ret i32 %159
}

declare dso_local i32 @ext4_get_inode_loc(%struct.inode*, %struct.ext4_iloc*) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ext4_get_max_inline_size(%struct.inode*) #1

declare dso_local i32 @ext4_prepare_inline_data(i32*, %struct.inode*, i32) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i32 @ext4_da_convert_inline_data_to_extent(%struct.address_space*, %struct.inode*, i32, i8**) #1

declare dso_local i64 @ext4_should_retry_alloc(i32, i32*) #1

declare dso_local %struct.page* @grab_cache_page_write_begin(%struct.address_space*, i32, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_has_inline_data(%struct.inode*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @ext4_read_inline_page(%struct.inode*, %struct.page*) #1

declare dso_local i32 @ext4_journal_get_write_access(i32*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @brelse(i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
