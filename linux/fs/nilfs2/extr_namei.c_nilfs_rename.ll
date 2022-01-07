; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_namei.c_nilfs_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_namei.c_nilfs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i8*, i32 }
%struct.dentry = type { i32 }
%struct.page = type { i32 }
%struct.nilfs_dir_entry = type { i32 }
%struct.nilfs_transaction_info = type { i32 }

@RENAME_NOREPLACE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* @nilfs_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca %struct.nilfs_dir_entry*, align 8
  %16 = alloca %struct.page*, align 8
  %17 = alloca %struct.nilfs_dir_entry*, align 8
  %18 = alloca %struct.nilfs_transaction_info, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.page*, align 8
  %21 = alloca %struct.nilfs_dir_entry*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store %struct.dentry* %3, %struct.dentry** %10, align 8
  store i32 %4, i32* %11, align 4
  %22 = load %struct.dentry*, %struct.dentry** %8, align 8
  %23 = call %struct.inode* @d_inode(%struct.dentry* %22)
  store %struct.inode* %23, %struct.inode** %12, align 8
  %24 = load %struct.dentry*, %struct.dentry** %10, align 8
  %25 = call %struct.inode* @d_inode(%struct.dentry* %24)
  store %struct.inode* %25, %struct.inode** %13, align 8
  store %struct.page* null, %struct.page** %14, align 8
  store %struct.nilfs_dir_entry* null, %struct.nilfs_dir_entry** %15, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @RENAME_NOREPLACE, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %5
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %178

34:                                               ; preds = %5
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @nilfs_transaction_begin(i32 %37, %struct.nilfs_transaction_info* %18, i32 1)
  store i32 %38, i32* %19, align 4
  %39 = load i32, i32* %19, align 4
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %19, align 4
  store i32 %43, i32* %6, align 4
  br label %178

44:                                               ; preds = %34
  %45 = load i32, i32* @ENOENT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %19, align 4
  %47 = load %struct.inode*, %struct.inode** %7, align 8
  %48 = load %struct.dentry*, %struct.dentry** %8, align 8
  %49 = getelementptr inbounds %struct.dentry, %struct.dentry* %48, i32 0, i32 0
  %50 = call %struct.nilfs_dir_entry* @nilfs_find_entry(%struct.inode* %47, i32* %49, %struct.page** %16)
  store %struct.nilfs_dir_entry* %50, %struct.nilfs_dir_entry** %17, align 8
  %51 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %17, align 8
  %52 = icmp ne %struct.nilfs_dir_entry* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %44
  br label %172

54:                                               ; preds = %44
  %55 = load %struct.inode*, %struct.inode** %12, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @S_ISDIR(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %19, align 4
  %63 = load %struct.inode*, %struct.inode** %12, align 8
  %64 = call %struct.nilfs_dir_entry* @nilfs_dotdot(%struct.inode* %63, %struct.page** %14)
  store %struct.nilfs_dir_entry* %64, %struct.nilfs_dir_entry** %15, align 8
  %65 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %15, align 8
  %66 = icmp ne %struct.nilfs_dir_entry* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  br label %167

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68, %54
  %70 = load %struct.inode*, %struct.inode** %13, align 8
  %71 = icmp ne %struct.inode* %70, null
  br i1 %71, label %72, label %114

72:                                               ; preds = %69
  %73 = load i32, i32* @ENOTEMPTY, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %19, align 4
  %75 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %15, align 8
  %76 = icmp ne %struct.nilfs_dir_entry* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.inode*, %struct.inode** %13, align 8
  %79 = call i32 @nilfs_empty_dir(%struct.inode* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  br label %158

82:                                               ; preds = %77, %72
  %83 = load i32, i32* @ENOENT, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %19, align 4
  %85 = load %struct.inode*, %struct.inode** %9, align 8
  %86 = load %struct.dentry*, %struct.dentry** %10, align 8
  %87 = getelementptr inbounds %struct.dentry, %struct.dentry* %86, i32 0, i32 0
  %88 = call %struct.nilfs_dir_entry* @nilfs_find_entry(%struct.inode* %85, i32* %87, %struct.page** %20)
  store %struct.nilfs_dir_entry* %88, %struct.nilfs_dir_entry** %21, align 8
  %89 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %21, align 8
  %90 = icmp ne %struct.nilfs_dir_entry* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %82
  br label %158

92:                                               ; preds = %82
  %93 = load %struct.inode*, %struct.inode** %9, align 8
  %94 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %21, align 8
  %95 = load %struct.page*, %struct.page** %20, align 8
  %96 = load %struct.inode*, %struct.inode** %12, align 8
  %97 = call i32 @nilfs_set_link(%struct.inode* %93, %struct.nilfs_dir_entry* %94, %struct.page* %95, %struct.inode* %96)
  %98 = load %struct.inode*, %struct.inode** %9, align 8
  %99 = call i32 @nilfs_mark_inode_dirty(%struct.inode* %98)
  %100 = load %struct.inode*, %struct.inode** %13, align 8
  %101 = call i8* @current_time(%struct.inode* %100)
  %102 = load %struct.inode*, %struct.inode** %13, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  %104 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %15, align 8
  %105 = icmp ne %struct.nilfs_dir_entry* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %92
  %107 = load %struct.inode*, %struct.inode** %13, align 8
  %108 = call i32 @drop_nlink(%struct.inode* %107)
  br label %109

109:                                              ; preds = %106, %92
  %110 = load %struct.inode*, %struct.inode** %13, align 8
  %111 = call i32 @drop_nlink(%struct.inode* %110)
  %112 = load %struct.inode*, %struct.inode** %13, align 8
  %113 = call i32 @nilfs_mark_inode_dirty(%struct.inode* %112)
  br label %130

114:                                              ; preds = %69
  %115 = load %struct.dentry*, %struct.dentry** %10, align 8
  %116 = load %struct.inode*, %struct.inode** %12, align 8
  %117 = call i32 @nilfs_add_link(%struct.dentry* %115, %struct.inode* %116)
  store i32 %117, i32* %19, align 4
  %118 = load i32, i32* %19, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  br label %158

121:                                              ; preds = %114
  %122 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %15, align 8
  %123 = icmp ne %struct.nilfs_dir_entry* %122, null
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  %125 = load %struct.inode*, %struct.inode** %9, align 8
  %126 = call i32 @inc_nlink(%struct.inode* %125)
  %127 = load %struct.inode*, %struct.inode** %9, align 8
  %128 = call i32 @nilfs_mark_inode_dirty(%struct.inode* %127)
  br label %129

129:                                              ; preds = %124, %121
  br label %130

130:                                              ; preds = %129, %109
  %131 = load %struct.inode*, %struct.inode** %12, align 8
  %132 = call i8* @current_time(%struct.inode* %131)
  %133 = load %struct.inode*, %struct.inode** %12, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 1
  store i8* %132, i8** %134, align 8
  %135 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %17, align 8
  %136 = load %struct.page*, %struct.page** %16, align 8
  %137 = call i32 @nilfs_delete_entry(%struct.nilfs_dir_entry* %135, %struct.page* %136)
  %138 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %15, align 8
  %139 = icmp ne %struct.nilfs_dir_entry* %138, null
  br i1 %139, label %140, label %148

140:                                              ; preds = %130
  %141 = load %struct.inode*, %struct.inode** %12, align 8
  %142 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %15, align 8
  %143 = load %struct.page*, %struct.page** %14, align 8
  %144 = load %struct.inode*, %struct.inode** %9, align 8
  %145 = call i32 @nilfs_set_link(%struct.inode* %141, %struct.nilfs_dir_entry* %142, %struct.page* %143, %struct.inode* %144)
  %146 = load %struct.inode*, %struct.inode** %7, align 8
  %147 = call i32 @drop_nlink(%struct.inode* %146)
  br label %148

148:                                              ; preds = %140, %130
  %149 = load %struct.inode*, %struct.inode** %7, align 8
  %150 = call i32 @nilfs_mark_inode_dirty(%struct.inode* %149)
  %151 = load %struct.inode*, %struct.inode** %12, align 8
  %152 = call i32 @nilfs_mark_inode_dirty(%struct.inode* %151)
  %153 = load %struct.inode*, %struct.inode** %7, align 8
  %154 = getelementptr inbounds %struct.inode, %struct.inode* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @nilfs_transaction_commit(i32 %155)
  store i32 %156, i32* %19, align 4
  %157 = load i32, i32* %19, align 4
  store i32 %157, i32* %6, align 4
  br label %178

158:                                              ; preds = %120, %91, %81
  %159 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %15, align 8
  %160 = icmp ne %struct.nilfs_dir_entry* %159, null
  br i1 %160, label %161, label %166

161:                                              ; preds = %158
  %162 = load %struct.page*, %struct.page** %14, align 8
  %163 = call i32 @kunmap(%struct.page* %162)
  %164 = load %struct.page*, %struct.page** %14, align 8
  %165 = call i32 @put_page(%struct.page* %164)
  br label %166

166:                                              ; preds = %161, %158
  br label %167

167:                                              ; preds = %166, %67
  %168 = load %struct.page*, %struct.page** %16, align 8
  %169 = call i32 @kunmap(%struct.page* %168)
  %170 = load %struct.page*, %struct.page** %16, align 8
  %171 = call i32 @put_page(%struct.page* %170)
  br label %172

172:                                              ; preds = %167, %53
  %173 = load %struct.inode*, %struct.inode** %7, align 8
  %174 = getelementptr inbounds %struct.inode, %struct.inode* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @nilfs_transaction_abort(i32 %175)
  %177 = load i32, i32* %19, align 4
  store i32 %177, i32* %6, align 4
  br label %178

178:                                              ; preds = %172, %148, %42, %31
  %179 = load i32, i32* %6, align 4
  ret i32 %179
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @nilfs_transaction_begin(i32, %struct.nilfs_transaction_info*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.nilfs_dir_entry* @nilfs_find_entry(%struct.inode*, i32*, %struct.page**) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.nilfs_dir_entry* @nilfs_dotdot(%struct.inode*, %struct.page**) #1

declare dso_local i32 @nilfs_empty_dir(%struct.inode*) #1

declare dso_local i32 @nilfs_set_link(%struct.inode*, %struct.nilfs_dir_entry*, %struct.page*, %struct.inode*) #1

declare dso_local i32 @nilfs_mark_inode_dirty(%struct.inode*) #1

declare dso_local i8* @current_time(%struct.inode*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @nilfs_add_link(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @nilfs_delete_entry(%struct.nilfs_dir_entry*, %struct.page*) #1

declare dso_local i32 @nilfs_transaction_commit(i32) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @nilfs_transaction_abort(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
