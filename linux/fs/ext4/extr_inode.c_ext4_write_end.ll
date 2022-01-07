; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_write_end.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_write_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i64, i64 }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)* @ext4_write_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_write_end(%struct.file* %0, %struct.address_space* %1, i64 %2, i32 %3, i32 %4, %struct.page* %5, i8* %6) #0 {
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.address_space* %1, %struct.address_space** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.page* %5, %struct.page** %13, align 8
  store i8* %6, i8** %14, align 8
  %23 = call i32* (...) @ext4_journal_current_handle()
  store i32* %23, i32** %15, align 8
  %24 = load %struct.address_space*, %struct.address_space** %9, align 8
  %25 = getelementptr inbounds %struct.address_space, %struct.address_space* %24, i32 0, i32 0
  %26 = load %struct.inode*, %struct.inode** %25, align 8
  store %struct.inode* %26, %struct.inode** %16, align 8
  %27 = load %struct.inode*, %struct.inode** %16, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %20, align 4
  %30 = load %struct.inode*, %struct.inode** %16, align 8
  %31 = call i32 @ext4_has_inline_data(%struct.inode* %30)
  store i32 %31, i32* %21, align 4
  %32 = load %struct.inode*, %struct.inode** %16, align 8
  %33 = call i32 @ext4_verity_in_progress(%struct.inode* %32)
  store i32 %33, i32* %22, align 4
  %34 = load %struct.inode*, %struct.inode** %16, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @trace_ext4_write_end(%struct.inode* %34, i64 %35, i32 %36, i32 %37)
  %39 = load i32, i32* %21, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %7
  %42 = load %struct.inode*, %struct.inode** %16, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.page*, %struct.page** %13, align 8
  %47 = call i32 @ext4_write_inline_data_end(%struct.inode* %42, i64 %43, i32 %44, i32 %45, %struct.page* %46)
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* %18, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %41
  %51 = load %struct.page*, %struct.page** %13, align 8
  %52 = call i32 @unlock_page(%struct.page* %51)
  %53 = load %struct.page*, %struct.page** %13, align 8
  %54 = call i32 @put_page(%struct.page* %53)
  br label %123

55:                                               ; preds = %41
  %56 = load i32, i32* %18, align 4
  store i32 %56, i32* %12, align 4
  br label %66

57:                                               ; preds = %7
  %58 = load %struct.file*, %struct.file** %8, align 8
  %59 = load %struct.address_space*, %struct.address_space** %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load %struct.page*, %struct.page** %13, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = call i32 @block_write_end(%struct.file* %58, %struct.address_space* %59, i64 %60, i32 %61, i32 %62, %struct.page* %63, i8* %64)
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %57, %55
  %67 = load i32, i32* %22, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %66
  %70 = load %struct.inode*, %struct.inode** %16, align 8
  %71 = load i64, i64* %10, align 8
  %72 = load i32, i32* %12, align 4
  %73 = zext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = call i32 @ext4_update_inode_size(%struct.inode* %70, i64 %74)
  store i32 %75, i32* %20, align 4
  br label %76

76:                                               ; preds = %69, %66
  %77 = load %struct.page*, %struct.page** %13, align 8
  %78 = call i32 @unlock_page(%struct.page* %77)
  %79 = load %struct.page*, %struct.page** %13, align 8
  %80 = call i32 @put_page(%struct.page* %79)
  %81 = load i64, i64* %17, align 8
  %82 = load i64, i64* %10, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %76
  %85 = load i32, i32* %22, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %84
  %88 = load %struct.inode*, %struct.inode** %16, align 8
  %89 = load i64, i64* %17, align 8
  %90 = load i64, i64* %10, align 8
  %91 = call i32 @pagecache_isize_extended(%struct.inode* %88, i64 %89, i64 %90)
  br label %92

92:                                               ; preds = %87, %84, %76
  %93 = load i32, i32* %20, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %21, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95, %92
  %99 = load i32*, i32** %15, align 8
  %100 = load %struct.inode*, %struct.inode** %16, align 8
  %101 = call i32 @ext4_mark_inode_dirty(i32* %99, %struct.inode* %100)
  br label %102

102:                                              ; preds = %98, %95
  %103 = load i64, i64* %10, align 8
  %104 = load i32, i32* %11, align 4
  %105 = zext i32 %104 to i64
  %106 = add nsw i64 %103, %105
  %107 = load %struct.inode*, %struct.inode** %16, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp sgt i64 %106, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %102
  %112 = load i32, i32* %22, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %122, label %114

114:                                              ; preds = %111
  %115 = load %struct.inode*, %struct.inode** %16, align 8
  %116 = call i64 @ext4_can_truncate(%struct.inode* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load i32*, i32** %15, align 8
  %120 = load %struct.inode*, %struct.inode** %16, align 8
  %121 = call i32 @ext4_orphan_add(i32* %119, %struct.inode* %120)
  br label %122

122:                                              ; preds = %118, %114, %111, %102
  br label %123

123:                                              ; preds = %122, %50
  %124 = load i32*, i32** %15, align 8
  %125 = call i32 @ext4_journal_stop(i32* %124)
  store i32 %125, i32* %19, align 4
  %126 = load i32, i32* %18, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %123
  %129 = load i32, i32* %19, align 4
  store i32 %129, i32* %18, align 4
  br label %130

130:                                              ; preds = %128, %123
  %131 = load i64, i64* %10, align 8
  %132 = load i32, i32* %11, align 4
  %133 = zext i32 %132 to i64
  %134 = add nsw i64 %131, %133
  %135 = load %struct.inode*, %struct.inode** %16, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp sgt i64 %134, %137
  br i1 %138, label %139, label %153

139:                                              ; preds = %130
  %140 = load i32, i32* %22, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %153, label %142

142:                                              ; preds = %139
  %143 = load %struct.inode*, %struct.inode** %16, align 8
  %144 = call i32 @ext4_truncate_failed_write(%struct.inode* %143)
  %145 = load %struct.inode*, %struct.inode** %16, align 8
  %146 = getelementptr inbounds %struct.inode, %struct.inode* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %142
  %150 = load %struct.inode*, %struct.inode** %16, align 8
  %151 = call i32 @ext4_orphan_del(i32* null, %struct.inode* %150)
  br label %152

152:                                              ; preds = %149, %142
  br label %153

153:                                              ; preds = %152, %139, %130
  %154 = load i32, i32* %18, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = load i32, i32* %18, align 4
  br label %160

158:                                              ; preds = %153
  %159 = load i32, i32* %12, align 4
  br label %160

160:                                              ; preds = %158, %156
  %161 = phi i32 [ %157, %156 ], [ %159, %158 ]
  ret i32 %161
}

declare dso_local i32* @ext4_journal_current_handle(...) #1

declare dso_local i32 @ext4_has_inline_data(%struct.inode*) #1

declare dso_local i32 @ext4_verity_in_progress(%struct.inode*) #1

declare dso_local i32 @trace_ext4_write_end(%struct.inode*, i64, i32, i32) #1

declare dso_local i32 @ext4_write_inline_data_end(%struct.inode*, i64, i32, i32, %struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @block_write_end(%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*) #1

declare dso_local i32 @ext4_update_inode_size(%struct.inode*, i64) #1

declare dso_local i32 @pagecache_isize_extended(%struct.inode*, i64, i64) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i64 @ext4_can_truncate(%struct.inode*) #1

declare dso_local i32 @ext4_orphan_add(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i32 @ext4_truncate_failed_write(%struct.inode*) #1

declare dso_local i32 @ext4_orphan_del(i32*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
