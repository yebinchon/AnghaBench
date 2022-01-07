; ModuleID = '/home/carl/AnghaBench/linux/fs/minix/extr_namei.c_minix_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/minix/extr_namei.c_minix_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dentry = type { i32 }
%struct.page = type { i32 }
%struct.minix_dir_entry = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@RENAME_NOREPLACE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)* @minix_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @minix_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca %struct.minix_dir_entry*, align 8
  %16 = alloca %struct.page*, align 8
  %17 = alloca %struct.minix_dir_entry*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.page*, align 8
  %20 = alloca %struct.minix_dir_entry*, align 8
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
  store %struct.minix_dir_entry* null, %struct.minix_dir_entry** %15, align 8
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
  br label %140

35:                                               ; preds = %5
  %36 = load %struct.dentry*, %struct.dentry** %8, align 8
  %37 = call %struct.minix_dir_entry* @minix_find_entry(%struct.dentry* %36, %struct.page** %16)
  store %struct.minix_dir_entry* %37, %struct.minix_dir_entry** %17, align 8
  %38 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %17, align 8
  %39 = icmp ne %struct.minix_dir_entry* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %138

41:                                               ; preds = %35
  %42 = load %struct.inode*, %struct.inode** %12, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @S_ISDIR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %18, align 4
  %50 = load %struct.inode*, %struct.inode** %12, align 8
  %51 = call %struct.minix_dir_entry* @minix_dotdot(%struct.inode* %50, %struct.page** %14)
  store %struct.minix_dir_entry* %51, %struct.minix_dir_entry** %15, align 8
  %52 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %15, align 8
  %53 = icmp ne %struct.minix_dir_entry* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  br label %133

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %41
  %57 = load %struct.inode*, %struct.inode** %13, align 8
  %58 = icmp ne %struct.inode* %57, null
  br i1 %58, label %59, label %94

59:                                               ; preds = %56
  %60 = load i32, i32* @ENOTEMPTY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %18, align 4
  %62 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %15, align 8
  %63 = icmp ne %struct.minix_dir_entry* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.inode*, %struct.inode** %13, align 8
  %66 = call i32 @minix_empty_dir(%struct.inode* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  br label %124

69:                                               ; preds = %64, %59
  %70 = load i32, i32* @ENOENT, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %18, align 4
  %72 = load %struct.dentry*, %struct.dentry** %10, align 8
  %73 = call %struct.minix_dir_entry* @minix_find_entry(%struct.dentry* %72, %struct.page** %19)
  store %struct.minix_dir_entry* %73, %struct.minix_dir_entry** %20, align 8
  %74 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %20, align 8
  %75 = icmp ne %struct.minix_dir_entry* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %69
  br label %124

77:                                               ; preds = %69
  %78 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %20, align 8
  %79 = load %struct.page*, %struct.page** %19, align 8
  %80 = load %struct.inode*, %struct.inode** %12, align 8
  %81 = call i32 @minix_set_link(%struct.minix_dir_entry* %78, %struct.page* %79, %struct.inode* %80)
  %82 = load %struct.inode*, %struct.inode** %13, align 8
  %83 = call i32 @current_time(%struct.inode* %82)
  %84 = load %struct.inode*, %struct.inode** %13, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %15, align 8
  %87 = icmp ne %struct.minix_dir_entry* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %77
  %89 = load %struct.inode*, %struct.inode** %13, align 8
  %90 = call i32 @drop_nlink(%struct.inode* %89)
  br label %91

91:                                               ; preds = %88, %77
  %92 = load %struct.inode*, %struct.inode** %13, align 8
  %93 = call i32 @inode_dec_link_count(%struct.inode* %92)
  br label %108

94:                                               ; preds = %56
  %95 = load %struct.dentry*, %struct.dentry** %10, align 8
  %96 = load %struct.inode*, %struct.inode** %12, align 8
  %97 = call i32 @minix_add_link(%struct.dentry* %95, %struct.inode* %96)
  store i32 %97, i32* %18, align 4
  %98 = load i32, i32* %18, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %124

101:                                              ; preds = %94
  %102 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %15, align 8
  %103 = icmp ne %struct.minix_dir_entry* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load %struct.inode*, %struct.inode** %9, align 8
  %106 = call i32 @inode_inc_link_count(%struct.inode* %105)
  br label %107

107:                                              ; preds = %104, %101
  br label %108

108:                                              ; preds = %107, %91
  %109 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %17, align 8
  %110 = load %struct.page*, %struct.page** %16, align 8
  %111 = call i32 @minix_delete_entry(%struct.minix_dir_entry* %109, %struct.page* %110)
  %112 = load %struct.inode*, %struct.inode** %12, align 8
  %113 = call i32 @mark_inode_dirty(%struct.inode* %112)
  %114 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %15, align 8
  %115 = icmp ne %struct.minix_dir_entry* %114, null
  br i1 %115, label %116, label %123

116:                                              ; preds = %108
  %117 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %15, align 8
  %118 = load %struct.page*, %struct.page** %14, align 8
  %119 = load %struct.inode*, %struct.inode** %9, align 8
  %120 = call i32 @minix_set_link(%struct.minix_dir_entry* %117, %struct.page* %118, %struct.inode* %119)
  %121 = load %struct.inode*, %struct.inode** %7, align 8
  %122 = call i32 @inode_dec_link_count(%struct.inode* %121)
  br label %123

123:                                              ; preds = %116, %108
  store i32 0, i32* %6, align 4
  br label %140

124:                                              ; preds = %100, %76, %68
  %125 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %15, align 8
  %126 = icmp ne %struct.minix_dir_entry* %125, null
  br i1 %126, label %127, label %132

127:                                              ; preds = %124
  %128 = load %struct.page*, %struct.page** %14, align 8
  %129 = call i32 @kunmap(%struct.page* %128)
  %130 = load %struct.page*, %struct.page** %14, align 8
  %131 = call i32 @put_page(%struct.page* %130)
  br label %132

132:                                              ; preds = %127, %124
  br label %133

133:                                              ; preds = %132, %54
  %134 = load %struct.page*, %struct.page** %16, align 8
  %135 = call i32 @kunmap(%struct.page* %134)
  %136 = load %struct.page*, %struct.page** %16, align 8
  %137 = call i32 @put_page(%struct.page* %136)
  br label %138

138:                                              ; preds = %133, %40
  %139 = load i32, i32* %18, align 4
  store i32 %139, i32* %6, align 4
  br label %140

140:                                              ; preds = %138, %123, %32
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.minix_dir_entry* @minix_find_entry(%struct.dentry*, %struct.page**) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.minix_dir_entry* @minix_dotdot(%struct.inode*, %struct.page**) #1

declare dso_local i32 @minix_empty_dir(%struct.inode*) #1

declare dso_local i32 @minix_set_link(%struct.minix_dir_entry*, %struct.page*, %struct.inode*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @minix_add_link(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @inode_inc_link_count(%struct.inode*) #1

declare dso_local i32 @minix_delete_entry(%struct.minix_dir_entry*, %struct.page*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
