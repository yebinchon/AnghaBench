; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_namei.c_ufs_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_namei.c_ufs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i8*, i32 }
%struct.dentry = type { i32 }
%struct.page = type { i32 }
%struct.ufs_dir_entry = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@RENAME_NOREPLACE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* @ufs_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca %struct.ufs_dir_entry*, align 8
  %16 = alloca %struct.page*, align 8
  %17 = alloca %struct.ufs_dir_entry*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.page*, align 8
  %20 = alloca %struct.ufs_dir_entry*, align 8
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
  store %struct.ufs_dir_entry* null, %struct.ufs_dir_entry** %15, align 8
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %18, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @RENAME_NOREPLACE, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %5
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %161

35:                                               ; preds = %5
  %36 = load %struct.inode*, %struct.inode** %7, align 8
  %37 = load %struct.dentry*, %struct.dentry** %8, align 8
  %38 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i32 0, i32 0
  %39 = call %struct.ufs_dir_entry* @ufs_find_entry(%struct.inode* %36, i32* %38, %struct.page** %16)
  store %struct.ufs_dir_entry* %39, %struct.ufs_dir_entry** %17, align 8
  %40 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %17, align 8
  %41 = icmp ne %struct.ufs_dir_entry* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  br label %159

43:                                               ; preds = %35
  %44 = load %struct.inode*, %struct.inode** %12, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @S_ISDIR(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %18, align 4
  %52 = load %struct.inode*, %struct.inode** %12, align 8
  %53 = call %struct.ufs_dir_entry* @ufs_dotdot(%struct.inode* %52, %struct.page** %14)
  store %struct.ufs_dir_entry* %53, %struct.ufs_dir_entry** %15, align 8
  %54 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %15, align 8
  %55 = icmp ne %struct.ufs_dir_entry* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  br label %154

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %43
  %59 = load %struct.inode*, %struct.inode** %13, align 8
  %60 = icmp ne %struct.inode* %59, null
  br i1 %60, label %61, label %99

61:                                               ; preds = %58
  %62 = load i32, i32* @ENOTEMPTY, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %18, align 4
  %64 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %15, align 8
  %65 = icmp ne %struct.ufs_dir_entry* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.inode*, %struct.inode** %13, align 8
  %68 = call i32 @ufs_empty_dir(%struct.inode* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  br label %145

71:                                               ; preds = %66, %61
  %72 = load i32, i32* @ENOENT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %18, align 4
  %74 = load %struct.inode*, %struct.inode** %9, align 8
  %75 = load %struct.dentry*, %struct.dentry** %10, align 8
  %76 = getelementptr inbounds %struct.dentry, %struct.dentry* %75, i32 0, i32 0
  %77 = call %struct.ufs_dir_entry* @ufs_find_entry(%struct.inode* %74, i32* %76, %struct.page** %19)
  store %struct.ufs_dir_entry* %77, %struct.ufs_dir_entry** %20, align 8
  %78 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %20, align 8
  %79 = icmp ne %struct.ufs_dir_entry* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %71
  br label %145

81:                                               ; preds = %71
  %82 = load %struct.inode*, %struct.inode** %9, align 8
  %83 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %20, align 8
  %84 = load %struct.page*, %struct.page** %19, align 8
  %85 = load %struct.inode*, %struct.inode** %12, align 8
  %86 = call i32 @ufs_set_link(%struct.inode* %82, %struct.ufs_dir_entry* %83, %struct.page* %84, %struct.inode* %85, i32 1)
  %87 = load %struct.inode*, %struct.inode** %13, align 8
  %88 = call i8* @current_time(%struct.inode* %87)
  %89 = load %struct.inode*, %struct.inode** %13, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  %91 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %15, align 8
  %92 = icmp ne %struct.ufs_dir_entry* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %81
  %94 = load %struct.inode*, %struct.inode** %13, align 8
  %95 = call i32 @drop_nlink(%struct.inode* %94)
  br label %96

96:                                               ; preds = %93, %81
  %97 = load %struct.inode*, %struct.inode** %13, align 8
  %98 = call i32 @inode_dec_link_count(%struct.inode* %97)
  br label %113

99:                                               ; preds = %58
  %100 = load %struct.dentry*, %struct.dentry** %10, align 8
  %101 = load %struct.inode*, %struct.inode** %12, align 8
  %102 = call i32 @ufs_add_link(%struct.dentry* %100, %struct.inode* %101)
  store i32 %102, i32* %18, align 4
  %103 = load i32, i32* %18, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %145

106:                                              ; preds = %99
  %107 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %15, align 8
  %108 = icmp ne %struct.ufs_dir_entry* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load %struct.inode*, %struct.inode** %9, align 8
  %111 = call i32 @inode_inc_link_count(%struct.inode* %110)
  br label %112

112:                                              ; preds = %109, %106
  br label %113

113:                                              ; preds = %112, %96
  %114 = load %struct.inode*, %struct.inode** %12, align 8
  %115 = call i8* @current_time(%struct.inode* %114)
  %116 = load %struct.inode*, %struct.inode** %12, align 8
  %117 = getelementptr inbounds %struct.inode, %struct.inode* %116, i32 0, i32 0
  store i8* %115, i8** %117, align 8
  %118 = load %struct.inode*, %struct.inode** %7, align 8
  %119 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %17, align 8
  %120 = load %struct.page*, %struct.page** %16, align 8
  %121 = call i32 @ufs_delete_entry(%struct.inode* %118, %struct.ufs_dir_entry* %119, %struct.page* %120)
  %122 = load %struct.inode*, %struct.inode** %12, align 8
  %123 = call i32 @mark_inode_dirty(%struct.inode* %122)
  %124 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %15, align 8
  %125 = icmp ne %struct.ufs_dir_entry* %124, null
  br i1 %125, label %126, label %144

126:                                              ; preds = %113
  %127 = load %struct.inode*, %struct.inode** %7, align 8
  %128 = load %struct.inode*, %struct.inode** %9, align 8
  %129 = icmp ne %struct.inode* %127, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %126
  %131 = load %struct.inode*, %struct.inode** %12, align 8
  %132 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %15, align 8
  %133 = load %struct.page*, %struct.page** %14, align 8
  %134 = load %struct.inode*, %struct.inode** %9, align 8
  %135 = call i32 @ufs_set_link(%struct.inode* %131, %struct.ufs_dir_entry* %132, %struct.page* %133, %struct.inode* %134, i32 0)
  br label %141

136:                                              ; preds = %126
  %137 = load %struct.page*, %struct.page** %14, align 8
  %138 = call i32 @kunmap(%struct.page* %137)
  %139 = load %struct.page*, %struct.page** %14, align 8
  %140 = call i32 @put_page(%struct.page* %139)
  br label %141

141:                                              ; preds = %136, %130
  %142 = load %struct.inode*, %struct.inode** %7, align 8
  %143 = call i32 @inode_dec_link_count(%struct.inode* %142)
  br label %144

144:                                              ; preds = %141, %113
  store i32 0, i32* %6, align 4
  br label %161

145:                                              ; preds = %105, %80, %70
  %146 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %15, align 8
  %147 = icmp ne %struct.ufs_dir_entry* %146, null
  br i1 %147, label %148, label %153

148:                                              ; preds = %145
  %149 = load %struct.page*, %struct.page** %14, align 8
  %150 = call i32 @kunmap(%struct.page* %149)
  %151 = load %struct.page*, %struct.page** %14, align 8
  %152 = call i32 @put_page(%struct.page* %151)
  br label %153

153:                                              ; preds = %148, %145
  br label %154

154:                                              ; preds = %153, %56
  %155 = load %struct.page*, %struct.page** %16, align 8
  %156 = call i32 @kunmap(%struct.page* %155)
  %157 = load %struct.page*, %struct.page** %16, align 8
  %158 = call i32 @put_page(%struct.page* %157)
  br label %159

159:                                              ; preds = %154, %42
  %160 = load i32, i32* %18, align 4
  store i32 %160, i32* %6, align 4
  br label %161

161:                                              ; preds = %159, %144, %32
  %162 = load i32, i32* %6, align 4
  ret i32 %162
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.ufs_dir_entry* @ufs_find_entry(%struct.inode*, i32*, %struct.page**) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.ufs_dir_entry* @ufs_dotdot(%struct.inode*, %struct.page**) #1

declare dso_local i32 @ufs_empty_dir(%struct.inode*) #1

declare dso_local i32 @ufs_set_link(%struct.inode*, %struct.ufs_dir_entry*, %struct.page*, %struct.inode*, i32) #1

declare dso_local i8* @current_time(%struct.inode*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @ufs_add_link(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @inode_inc_link_count(%struct.inode*) #1

declare dso_local i32 @ufs_delete_entry(%struct.inode*, %struct.ufs_dir_entry*, %struct.page*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
