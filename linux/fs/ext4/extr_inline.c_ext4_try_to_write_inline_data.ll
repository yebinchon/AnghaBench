; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_try_to_write_inline_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_try_to_write_inline_data.c"
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
define dso_local i32 @ext4_try_to_write_inline_data(%struct.address_space* %0, %struct.inode* %1, i32 %2, i32 %3, i32 %4, %struct.page** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.page*, align 8
  %17 = alloca %struct.ext4_iloc, align 4
  store %struct.address_space* %0, %struct.address_space** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.page** %5, %struct.page*** %13, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = add i32 %18, %19
  %21 = load %struct.inode*, %struct.inode** %9, align 8
  %22 = call i32 @ext4_get_max_inline_size(%struct.inode* %21)
  %23 = icmp ugt i32 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  br label %139

25:                                               ; preds = %6
  %26 = load %struct.inode*, %struct.inode** %9, align 8
  %27 = call i32 @ext4_get_inode_loc(%struct.inode* %26, %struct.ext4_iloc* %17)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %7, align 4
  br label %144

32:                                               ; preds = %25
  %33 = load %struct.inode*, %struct.inode** %9, align 8
  %34 = load i32, i32* @EXT4_HT_INODE, align 4
  %35 = call i32* @ext4_journal_start(%struct.inode* %33, i32 %34, i32 1)
  store i32* %35, i32** %15, align 8
  %36 = load i32*, i32** %15, align 8
  %37 = call i64 @IS_ERR(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32*, i32** %15, align 8
  %41 = call i32 @PTR_ERR(i32* %40)
  store i32 %41, i32* %14, align 4
  store i32* null, i32** %15, align 8
  br label %125

42:                                               ; preds = %32
  %43 = load i32*, i32** %15, align 8
  %44 = load %struct.inode*, %struct.inode** %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = add i32 %45, %46
  %48 = call i32 @ext4_prepare_inline_data(i32* %43, %struct.inode* %44, i32 %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %42
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @ENOSPC, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp ne i32 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %125

57:                                               ; preds = %51, %42
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* @ENOSPC, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i32*, i32** %15, align 8
  %64 = call i32 @ext4_journal_stop(i32* %63)
  %65 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %17, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @brelse(i32 %66)
  br label %139

68:                                               ; preds = %57
  %69 = load i32*, i32** %15, align 8
  %70 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %17, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ext4_journal_get_write_access(i32* %69, i32 %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %125

76:                                               ; preds = %68
  %77 = load i32, i32* @AOP_FLAG_NOFS, align 4
  %78 = load i32, i32* %12, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %12, align 4
  %80 = load %struct.address_space*, %struct.address_space** %8, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call %struct.page* @grab_cache_page_write_begin(%struct.address_space* %80, i32 0, i32 %81)
  store %struct.page* %82, %struct.page** %16, align 8
  %83 = load %struct.page*, %struct.page** %16, align 8
  %84 = icmp ne %struct.page* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %76
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %14, align 4
  br label %125

88:                                               ; preds = %76
  %89 = load %struct.page*, %struct.page** %16, align 8
  %90 = load %struct.page**, %struct.page*** %13, align 8
  store %struct.page* %89, %struct.page** %90, align 8
  %91 = load %struct.inode*, %struct.inode** %9, align 8
  %92 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %91)
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = call i32 @down_read(i32* %93)
  %95 = load %struct.inode*, %struct.inode** %9, align 8
  %96 = call i32 @ext4_has_inline_data(%struct.inode* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %88
  store i32 0, i32* %14, align 4
  %99 = load %struct.page*, %struct.page** %16, align 8
  %100 = call i32 @unlock_page(%struct.page* %99)
  %101 = load %struct.page*, %struct.page** %16, align 8
  %102 = call i32 @put_page(%struct.page* %101)
  br label %120

103:                                              ; preds = %88
  %104 = load %struct.page*, %struct.page** %16, align 8
  %105 = call i32 @PageUptodate(%struct.page* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %119, label %107

107:                                              ; preds = %103
  %108 = load %struct.inode*, %struct.inode** %9, align 8
  %109 = load %struct.page*, %struct.page** %16, align 8
  %110 = call i32 @ext4_read_inline_page(%struct.inode* %108, %struct.page* %109)
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %14, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %107
  %114 = load %struct.page*, %struct.page** %16, align 8
  %115 = call i32 @unlock_page(%struct.page* %114)
  %116 = load %struct.page*, %struct.page** %16, align 8
  %117 = call i32 @put_page(%struct.page* %116)
  br label %120

118:                                              ; preds = %107
  br label %119

119:                                              ; preds = %118, %103
  store i32 1, i32* %14, align 4
  store i32* null, i32** %15, align 8
  br label %120

120:                                              ; preds = %119, %113, %98
  %121 = load %struct.inode*, %struct.inode** %9, align 8
  %122 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %121)
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = call i32 @up_read(i32* %123)
  br label %125

125:                                              ; preds = %120, %85, %75, %56, %39
  %126 = load i32*, i32** %15, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load i32, i32* %14, align 4
  %130 = icmp ne i32 %129, 1
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i32*, i32** %15, align 8
  %133 = call i32 @ext4_journal_stop(i32* %132)
  br label %134

134:                                              ; preds = %131, %128, %125
  %135 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %17, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @brelse(i32 %136)
  %138 = load i32, i32* %14, align 4
  store i32 %138, i32* %7, align 4
  br label %144

139:                                              ; preds = %62, %24
  %140 = load %struct.address_space*, %struct.address_space** %8, align 8
  %141 = load %struct.inode*, %struct.inode** %9, align 8
  %142 = load i32, i32* %12, align 4
  %143 = call i32 @ext4_convert_inline_data_to_extent(%struct.address_space* %140, %struct.inode* %141, i32 %142)
  store i32 %143, i32* %7, align 4
  br label %144

144:                                              ; preds = %139, %134, %30
  %145 = load i32, i32* %7, align 4
  ret i32 %145
}

declare dso_local i32 @ext4_get_max_inline_size(%struct.inode*) #1

declare dso_local i32 @ext4_get_inode_loc(%struct.inode*, %struct.ext4_iloc*) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ext4_prepare_inline_data(i32*, %struct.inode*, i32) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i32 @brelse(i32) #1

declare dso_local i32 @ext4_journal_get_write_access(i32*, i32) #1

declare dso_local %struct.page* @grab_cache_page_write_begin(%struct.address_space*, i32, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_has_inline_data(%struct.inode*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @ext4_read_inline_page(%struct.inode*, %struct.page*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @ext4_convert_inline_data_to_extent(%struct.address_space*, %struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
