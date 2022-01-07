; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_da_write_end.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_da_write_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i32 }

@FALL_BACK_TO_NONDELALLOC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@CONVERT_INLINE_DATA = common dso_local global i32 0, align 4
@EXT4_STATE_MAY_INLINE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*)* @ext4_da_write_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_da_write_end(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %9, align 8
  store %struct.address_space* %1, %struct.address_space** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.page* %5, %struct.page** %14, align 8
  store i8* %6, i8** %15, align 8
  %24 = load %struct.address_space*, %struct.address_space** %10, align 8
  %25 = getelementptr inbounds %struct.address_space, %struct.address_space* %24, i32 0, i32 0
  %26 = load %struct.inode*, %struct.inode** %25, align 8
  store %struct.inode* %26, %struct.inode** %16, align 8
  store i32 0, i32* %17, align 4
  %27 = call i32* (...) @ext4_journal_current_handle()
  store i32* %27, i32** %19, align 8
  %28 = load i8*, i8** %15, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %23, align 4
  %31 = load i32, i32* %23, align 4
  %32 = load i32, i32* @FALL_BACK_TO_NONDELALLOC, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %7
  %35 = load %struct.file*, %struct.file** %9, align 8
  %36 = load %struct.address_space*, %struct.address_space** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.page*, %struct.page** %14, align 8
  %41 = load i8*, i8** %15, align 8
  %42 = call i32 @ext4_write_end(%struct.file* %35, %struct.address_space* %36, i32 %37, i32 %38, i32 %39, %struct.page* %40, i8* %41)
  store i32 %42, i32* %8, align 4
  br label %139

43:                                               ; preds = %7
  %44 = load %struct.inode*, %struct.inode** %16, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @trace_ext4_da_write_end(%struct.inode* %44, i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @PAGE_SIZE, align 4
  %51 = sub nsw i32 %50, 1
  %52 = and i32 %49, %51
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %21, align 8
  %54 = load i64, i64* %21, align 8
  %55 = load i32, i32* %13, align 4
  %56 = zext i32 %55 to i64
  %57 = add i64 %54, %56
  %58 = sub i64 %57, 1
  store i64 %58, i64* %22, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %13, align 4
  %61 = add i32 %59, %60
  store i32 %61, i32* %20, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %88

64:                                               ; preds = %43
  %65 = load i32, i32* %20, align 4
  %66 = load %struct.inode*, %struct.inode** %16, align 8
  %67 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %66)
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %65, %69
  br i1 %70, label %71, label %88

71:                                               ; preds = %64
  %72 = load %struct.inode*, %struct.inode** %16, align 8
  %73 = call i64 @ext4_has_inline_data(%struct.inode* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %71
  %76 = load %struct.page*, %struct.page** %14, align 8
  %77 = load i64, i64* %22, align 8
  %78 = call i64 @ext4_da_should_update_i_disksize(%struct.page* %76, i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75, %71
  %81 = load %struct.inode*, %struct.inode** %16, align 8
  %82 = load i32, i32* %20, align 4
  %83 = call i32 @ext4_update_i_disksize(%struct.inode* %81, i32 %82)
  %84 = load i32*, i32** %19, align 8
  %85 = load %struct.inode*, %struct.inode** %16, align 8
  %86 = call i32 @ext4_mark_inode_dirty(i32* %84, %struct.inode* %85)
  br label %87

87:                                               ; preds = %80, %75
  br label %88

88:                                               ; preds = %87, %64, %43
  %89 = load i32, i32* %23, align 4
  %90 = load i32, i32* @CONVERT_INLINE_DATA, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %88
  %93 = load %struct.inode*, %struct.inode** %16, align 8
  %94 = load i32, i32* @EXT4_STATE_MAY_INLINE_DATA, align 4
  %95 = call i64 @ext4_test_inode_state(%struct.inode* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %92
  %98 = load %struct.inode*, %struct.inode** %16, align 8
  %99 = call i64 @ext4_has_inline_data(%struct.inode* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %97
  %102 = load %struct.inode*, %struct.inode** %16, align 8
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %13, align 4
  %106 = load %struct.page*, %struct.page** %14, align 8
  %107 = call i32 @ext4_da_write_inline_data_end(%struct.inode* %102, i32 %103, i32 %104, i32 %105, %struct.page* %106)
  store i32 %107, i32* %18, align 4
  br label %117

108:                                              ; preds = %97, %92, %88
  %109 = load %struct.file*, %struct.file** %9, align 8
  %110 = load %struct.address_space*, %struct.address_space** %10, align 8
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %13, align 4
  %114 = load %struct.page*, %struct.page** %14, align 8
  %115 = load i8*, i8** %15, align 8
  %116 = call i32 @generic_write_end(%struct.file* %109, %struct.address_space* %110, i32 %111, i32 %112, i32 %113, %struct.page* %114, i8* %115)
  store i32 %116, i32* %18, align 4
  br label %117

117:                                              ; preds = %108, %101
  %118 = load i32, i32* %18, align 4
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %18, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load i32, i32* %18, align 4
  store i32 %122, i32* %17, align 4
  br label %123

123:                                              ; preds = %121, %117
  %124 = load i32*, i32** %19, align 8
  %125 = call i32 @ext4_journal_stop(i32* %124)
  store i32 %125, i32* %18, align 4
  %126 = load i32, i32* %17, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %123
  %129 = load i32, i32* %18, align 4
  store i32 %129, i32* %17, align 4
  br label %130

130:                                              ; preds = %128, %123
  %131 = load i32, i32* %17, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = load i32, i32* %17, align 4
  br label %137

135:                                              ; preds = %130
  %136 = load i32, i32* %13, align 4
  br label %137

137:                                              ; preds = %135, %133
  %138 = phi i32 [ %134, %133 ], [ %136, %135 ]
  store i32 %138, i32* %8, align 4
  br label %139

139:                                              ; preds = %137, %34
  %140 = load i32, i32* %8, align 4
  ret i32 %140
}

declare dso_local i32* @ext4_journal_current_handle(...) #1

declare dso_local i32 @ext4_write_end(%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*) #1

declare dso_local i32 @trace_ext4_da_write_end(%struct.inode*, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i64 @ext4_has_inline_data(%struct.inode*) #1

declare dso_local i64 @ext4_da_should_update_i_disksize(%struct.page*, i64) #1

declare dso_local i32 @ext4_update_i_disksize(%struct.inode*, i32) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i64 @ext4_test_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @ext4_da_write_inline_data_end(%struct.inode*, i32, i32, i32, %struct.page*) #1

declare dso_local i32 @generic_write_end(%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
