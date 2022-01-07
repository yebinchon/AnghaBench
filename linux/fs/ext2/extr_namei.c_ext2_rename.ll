; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_namei.c_ext2_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_namei.c_ext2_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i8*, i32 }
%struct.dentry = type { i32 }
%struct.page = type { i32 }
%struct.ext2_dir_entry_2 = type { i32 }

@RENAME_NOREPLACE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* @ext2_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca %struct.ext2_dir_entry_2*, align 8
  %16 = alloca %struct.page*, align 8
  %17 = alloca %struct.ext2_dir_entry_2*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.page*, align 8
  %20 = alloca %struct.ext2_dir_entry_2*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store %struct.dentry* %3, %struct.dentry** %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load %struct.dentry*, %struct.dentry** %8, align 8
  %22 = call %struct.inode* @d_inode(%struct.dentry* %21)
  store %struct.inode* %22, %struct.inode** %12, align 8
  %23 = load %struct.dentry*, %struct.dentry** %10, align 8
  %24 = call %struct.inode* @d_inode(%struct.dentry* %23)
  store %struct.inode* %24, %struct.inode** %13, align 8
  store %struct.page* null, %struct.page** %14, align 8
  store %struct.ext2_dir_entry_2* null, %struct.ext2_dir_entry_2** %15, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @RENAME_NOREPLACE, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %172

33:                                               ; preds = %5
  %34 = load %struct.inode*, %struct.inode** %7, align 8
  %35 = call i32 @dquot_initialize(%struct.inode* %34)
  store i32 %35, i32* %18, align 4
  %36 = load i32, i32* %18, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %170

39:                                               ; preds = %33
  %40 = load %struct.inode*, %struct.inode** %9, align 8
  %41 = call i32 @dquot_initialize(%struct.inode* %40)
  store i32 %41, i32* %18, align 4
  %42 = load i32, i32* %18, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %170

45:                                               ; preds = %39
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = load %struct.dentry*, %struct.dentry** %8, align 8
  %48 = getelementptr inbounds %struct.dentry, %struct.dentry* %47, i32 0, i32 0
  %49 = call %struct.ext2_dir_entry_2* @ext2_find_entry(%struct.inode* %46, i32* %48, %struct.page** %16)
  store %struct.ext2_dir_entry_2* %49, %struct.ext2_dir_entry_2** %17, align 8
  %50 = load %struct.ext2_dir_entry_2*, %struct.ext2_dir_entry_2** %17, align 8
  %51 = icmp ne %struct.ext2_dir_entry_2* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* @ENOENT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %18, align 4
  br label %170

55:                                               ; preds = %45
  %56 = load %struct.inode*, %struct.inode** %12, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @S_ISDIR(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %18, align 4
  %64 = load %struct.inode*, %struct.inode** %12, align 8
  %65 = call %struct.ext2_dir_entry_2* @ext2_dotdot(%struct.inode* %64, %struct.page** %14)
  store %struct.ext2_dir_entry_2* %65, %struct.ext2_dir_entry_2** %15, align 8
  %66 = load %struct.ext2_dir_entry_2*, %struct.ext2_dir_entry_2** %15, align 8
  %67 = icmp ne %struct.ext2_dir_entry_2* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %61
  br label %165

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %55
  %71 = load %struct.inode*, %struct.inode** %13, align 8
  %72 = icmp ne %struct.inode* %71, null
  br i1 %72, label %73, label %111

73:                                               ; preds = %70
  %74 = load i32, i32* @ENOTEMPTY, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %18, align 4
  %76 = load %struct.ext2_dir_entry_2*, %struct.ext2_dir_entry_2** %15, align 8
  %77 = icmp ne %struct.ext2_dir_entry_2* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.inode*, %struct.inode** %13, align 8
  %80 = call i32 @ext2_empty_dir(%struct.inode* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  br label %156

83:                                               ; preds = %78, %73
  %84 = load i32, i32* @ENOENT, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %18, align 4
  %86 = load %struct.inode*, %struct.inode** %9, align 8
  %87 = load %struct.dentry*, %struct.dentry** %10, align 8
  %88 = getelementptr inbounds %struct.dentry, %struct.dentry* %87, i32 0, i32 0
  %89 = call %struct.ext2_dir_entry_2* @ext2_find_entry(%struct.inode* %86, i32* %88, %struct.page** %19)
  store %struct.ext2_dir_entry_2* %89, %struct.ext2_dir_entry_2** %20, align 8
  %90 = load %struct.ext2_dir_entry_2*, %struct.ext2_dir_entry_2** %20, align 8
  %91 = icmp ne %struct.ext2_dir_entry_2* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %83
  br label %156

93:                                               ; preds = %83
  %94 = load %struct.inode*, %struct.inode** %9, align 8
  %95 = load %struct.ext2_dir_entry_2*, %struct.ext2_dir_entry_2** %20, align 8
  %96 = load %struct.page*, %struct.page** %19, align 8
  %97 = load %struct.inode*, %struct.inode** %12, align 8
  %98 = call i32 @ext2_set_link(%struct.inode* %94, %struct.ext2_dir_entry_2* %95, %struct.page* %96, %struct.inode* %97, i32 1)
  %99 = load %struct.inode*, %struct.inode** %13, align 8
  %100 = call i8* @current_time(%struct.inode* %99)
  %101 = load %struct.inode*, %struct.inode** %13, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  %103 = load %struct.ext2_dir_entry_2*, %struct.ext2_dir_entry_2** %15, align 8
  %104 = icmp ne %struct.ext2_dir_entry_2* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %93
  %106 = load %struct.inode*, %struct.inode** %13, align 8
  %107 = call i32 @drop_nlink(%struct.inode* %106)
  br label %108

108:                                              ; preds = %105, %93
  %109 = load %struct.inode*, %struct.inode** %13, align 8
  %110 = call i32 @inode_dec_link_count(%struct.inode* %109)
  br label %125

111:                                              ; preds = %70
  %112 = load %struct.dentry*, %struct.dentry** %10, align 8
  %113 = load %struct.inode*, %struct.inode** %12, align 8
  %114 = call i32 @ext2_add_link(%struct.dentry* %112, %struct.inode* %113)
  store i32 %114, i32* %18, align 4
  %115 = load i32, i32* %18, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %156

118:                                              ; preds = %111
  %119 = load %struct.ext2_dir_entry_2*, %struct.ext2_dir_entry_2** %15, align 8
  %120 = icmp ne %struct.ext2_dir_entry_2* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load %struct.inode*, %struct.inode** %9, align 8
  %123 = call i32 @inode_inc_link_count(%struct.inode* %122)
  br label %124

124:                                              ; preds = %121, %118
  br label %125

125:                                              ; preds = %124, %108
  %126 = load %struct.inode*, %struct.inode** %12, align 8
  %127 = call i8* @current_time(%struct.inode* %126)
  %128 = load %struct.inode*, %struct.inode** %12, align 8
  %129 = getelementptr inbounds %struct.inode, %struct.inode* %128, i32 0, i32 0
  store i8* %127, i8** %129, align 8
  %130 = load %struct.inode*, %struct.inode** %12, align 8
  %131 = call i32 @mark_inode_dirty(%struct.inode* %130)
  %132 = load %struct.ext2_dir_entry_2*, %struct.ext2_dir_entry_2** %17, align 8
  %133 = load %struct.page*, %struct.page** %16, align 8
  %134 = call i32 @ext2_delete_entry(%struct.ext2_dir_entry_2* %132, %struct.page* %133)
  %135 = load %struct.ext2_dir_entry_2*, %struct.ext2_dir_entry_2** %15, align 8
  %136 = icmp ne %struct.ext2_dir_entry_2* %135, null
  br i1 %136, label %137, label %155

137:                                              ; preds = %125
  %138 = load %struct.inode*, %struct.inode** %7, align 8
  %139 = load %struct.inode*, %struct.inode** %9, align 8
  %140 = icmp ne %struct.inode* %138, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %137
  %142 = load %struct.inode*, %struct.inode** %12, align 8
  %143 = load %struct.ext2_dir_entry_2*, %struct.ext2_dir_entry_2** %15, align 8
  %144 = load %struct.page*, %struct.page** %14, align 8
  %145 = load %struct.inode*, %struct.inode** %9, align 8
  %146 = call i32 @ext2_set_link(%struct.inode* %142, %struct.ext2_dir_entry_2* %143, %struct.page* %144, %struct.inode* %145, i32 0)
  br label %152

147:                                              ; preds = %137
  %148 = load %struct.page*, %struct.page** %14, align 8
  %149 = call i32 @kunmap(%struct.page* %148)
  %150 = load %struct.page*, %struct.page** %14, align 8
  %151 = call i32 @put_page(%struct.page* %150)
  br label %152

152:                                              ; preds = %147, %141
  %153 = load %struct.inode*, %struct.inode** %7, align 8
  %154 = call i32 @inode_dec_link_count(%struct.inode* %153)
  br label %155

155:                                              ; preds = %152, %125
  store i32 0, i32* %6, align 4
  br label %172

156:                                              ; preds = %117, %92, %82
  %157 = load %struct.ext2_dir_entry_2*, %struct.ext2_dir_entry_2** %15, align 8
  %158 = icmp ne %struct.ext2_dir_entry_2* %157, null
  br i1 %158, label %159, label %164

159:                                              ; preds = %156
  %160 = load %struct.page*, %struct.page** %14, align 8
  %161 = call i32 @kunmap(%struct.page* %160)
  %162 = load %struct.page*, %struct.page** %14, align 8
  %163 = call i32 @put_page(%struct.page* %162)
  br label %164

164:                                              ; preds = %159, %156
  br label %165

165:                                              ; preds = %164, %68
  %166 = load %struct.page*, %struct.page** %16, align 8
  %167 = call i32 @kunmap(%struct.page* %166)
  %168 = load %struct.page*, %struct.page** %16, align 8
  %169 = call i32 @put_page(%struct.page* %168)
  br label %170

170:                                              ; preds = %165, %52, %44, %38
  %171 = load i32, i32* %18, align 4
  store i32 %171, i32* %6, align 4
  br label %172

172:                                              ; preds = %170, %155, %30
  %173 = load i32, i32* %6, align 4
  ret i32 %173
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local %struct.ext2_dir_entry_2* @ext2_find_entry(%struct.inode*, i32*, %struct.page**) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.ext2_dir_entry_2* @ext2_dotdot(%struct.inode*, %struct.page**) #1

declare dso_local i32 @ext2_empty_dir(%struct.inode*) #1

declare dso_local i32 @ext2_set_link(%struct.inode*, %struct.ext2_dir_entry_2*, %struct.page*, %struct.inode*, i32) #1

declare dso_local i8* @current_time(%struct.inode*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @ext2_add_link(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @inode_inc_link_count(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @ext2_delete_entry(%struct.ext2_dir_entry_2*, %struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
