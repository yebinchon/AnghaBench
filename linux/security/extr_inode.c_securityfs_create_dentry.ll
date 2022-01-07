; ModuleID = '/home/carl/AnghaBench/linux/security/extr_inode.c_securityfs_create_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/security/extr_inode.c_securityfs_create_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.inode_operations = type { i32 }
%struct.file_operations = type { i32 }
%struct.inode = type { i32, %struct.file_operations*, i8*, %struct.inode_operations*, i8*, i32, i32, i32, i32, i32 }

@S_IFMT = common dso_local global i32 0, align 4
@S_IALLUGO = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"securityfs: creating file '%s'\0A\00", align 1
@fs_type = common dso_local global i32 0, align 4
@mount = common dso_local global %struct.TYPE_4__* null, align 8
@mount_count = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@simple_dir_inode_operations = common dso_local global %struct.inode_operations zeroinitializer, align 4
@simple_dir_operations = common dso_local global %struct.file_operations zeroinitializer, align 4
@simple_symlink_inode_operations = common dso_local global %struct.inode_operations zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (i8*, i32, %struct.dentry*, i8*, %struct.file_operations*, %struct.inode_operations*)* @securityfs_create_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @securityfs_create_dentry(i8* %0, i32 %1, %struct.dentry* %2, i8* %3, %struct.file_operations* %4, %struct.inode_operations* %5) #0 {
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.file_operations*, align 8
  %13 = alloca %struct.inode_operations*, align 8
  %14 = alloca %struct.dentry*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.dentry* %2, %struct.dentry** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.file_operations* %4, %struct.file_operations** %12, align 8
  store %struct.inode_operations* %5, %struct.inode_operations** %13, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @S_IFMT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @S_IALLUGO, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @S_IFREG, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %22, %6
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = call i32 @simple_pin_fs(i32* @fs_type, %struct.TYPE_4__** @mount, i32* @mount_count)
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %17, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* %17, align 4
  %36 = call %struct.dentry* @ERR_PTR(i32 %35)
  store %struct.dentry* %36, %struct.dentry** %7, align 8
  br label %146

37:                                               ; preds = %28
  %38 = load %struct.dentry*, %struct.dentry** %10, align 8
  %39 = icmp ne %struct.dentry* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mount, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.dentry*, %struct.dentry** %42, align 8
  store %struct.dentry* %43, %struct.dentry** %10, align 8
  br label %44

44:                                               ; preds = %40, %37
  %45 = load %struct.dentry*, %struct.dentry** %10, align 8
  %46 = call %struct.inode* @d_inode(%struct.dentry* %45)
  store %struct.inode* %46, %struct.inode** %15, align 8
  %47 = load %struct.inode*, %struct.inode** %15, align 8
  %48 = call i32 @inode_lock(%struct.inode* %47)
  %49 = load i8*, i8** %8, align 8
  %50 = load %struct.dentry*, %struct.dentry** %10, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @strlen(i8* %51)
  %53 = call %struct.dentry* @lookup_one_len(i8* %49, %struct.dentry* %50, i32 %52)
  store %struct.dentry* %53, %struct.dentry** %14, align 8
  %54 = load %struct.dentry*, %struct.dentry** %14, align 8
  %55 = call i64 @IS_ERR(%struct.dentry* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %44
  br label %141

58:                                               ; preds = %44
  %59 = load %struct.dentry*, %struct.dentry** %14, align 8
  %60 = call i64 @d_really_is_positive(%struct.dentry* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* @EEXIST, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %17, align 4
  br label %136

65:                                               ; preds = %58
  %66 = load %struct.inode*, %struct.inode** %15, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 9
  %68 = load i32, i32* %67, align 8
  %69 = call %struct.inode* @new_inode(i32 %68)
  store %struct.inode* %69, %struct.inode** %16, align 8
  %70 = load %struct.inode*, %struct.inode** %16, align 8
  %71 = icmp ne %struct.inode* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %65
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %17, align 4
  br label %136

75:                                               ; preds = %65
  %76 = call i32 (...) @get_next_ino()
  %77 = load %struct.inode*, %struct.inode** %16, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 8
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.inode*, %struct.inode** %16, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.inode*, %struct.inode** %16, align 8
  %83 = call i32 @current_time(%struct.inode* %82)
  %84 = load %struct.inode*, %struct.inode** %16, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 5
  store i32 %83, i32* %85, align 8
  %86 = load %struct.inode*, %struct.inode** %16, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 6
  store i32 %83, i32* %87, align 4
  %88 = load %struct.inode*, %struct.inode** %16, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 7
  store i32 %83, i32* %89, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = load %struct.inode*, %struct.inode** %16, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 4
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i64 @S_ISDIR(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %75
  %97 = load %struct.inode*, %struct.inode** %16, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 3
  store %struct.inode_operations* @simple_dir_inode_operations, %struct.inode_operations** %98, align 8
  %99 = load %struct.inode*, %struct.inode** %16, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 1
  store %struct.file_operations* @simple_dir_operations, %struct.file_operations** %100, align 8
  %101 = load %struct.inode*, %struct.inode** %16, align 8
  %102 = call i32 @inc_nlink(%struct.inode* %101)
  %103 = load %struct.inode*, %struct.inode** %15, align 8
  %104 = call i32 @inc_nlink(%struct.inode* %103)
  br label %127

105:                                              ; preds = %75
  %106 = load i32, i32* %9, align 4
  %107 = call i64 @S_ISLNK(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %105
  %110 = load %struct.inode_operations*, %struct.inode_operations** %13, align 8
  %111 = icmp ne %struct.inode_operations* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load %struct.inode_operations*, %struct.inode_operations** %13, align 8
  br label %115

114:                                              ; preds = %109
  br label %115

115:                                              ; preds = %114, %112
  %116 = phi %struct.inode_operations* [ %113, %112 ], [ @simple_symlink_inode_operations, %114 ]
  %117 = load %struct.inode*, %struct.inode** %16, align 8
  %118 = getelementptr inbounds %struct.inode, %struct.inode* %117, i32 0, i32 3
  store %struct.inode_operations* %116, %struct.inode_operations** %118, align 8
  %119 = load i8*, i8** %11, align 8
  %120 = load %struct.inode*, %struct.inode** %16, align 8
  %121 = getelementptr inbounds %struct.inode, %struct.inode* %120, i32 0, i32 2
  store i8* %119, i8** %121, align 8
  br label %126

122:                                              ; preds = %105
  %123 = load %struct.file_operations*, %struct.file_operations** %12, align 8
  %124 = load %struct.inode*, %struct.inode** %16, align 8
  %125 = getelementptr inbounds %struct.inode, %struct.inode* %124, i32 0, i32 1
  store %struct.file_operations* %123, %struct.file_operations** %125, align 8
  br label %126

126:                                              ; preds = %122, %115
  br label %127

127:                                              ; preds = %126, %96
  %128 = load %struct.dentry*, %struct.dentry** %14, align 8
  %129 = load %struct.inode*, %struct.inode** %16, align 8
  %130 = call i32 @d_instantiate(%struct.dentry* %128, %struct.inode* %129)
  %131 = load %struct.dentry*, %struct.dentry** %14, align 8
  %132 = call i32 @dget(%struct.dentry* %131)
  %133 = load %struct.inode*, %struct.inode** %15, align 8
  %134 = call i32 @inode_unlock(%struct.inode* %133)
  %135 = load %struct.dentry*, %struct.dentry** %14, align 8
  store %struct.dentry* %135, %struct.dentry** %7, align 8
  br label %146

136:                                              ; preds = %72, %62
  %137 = load %struct.dentry*, %struct.dentry** %14, align 8
  %138 = call i32 @dput(%struct.dentry* %137)
  %139 = load i32, i32* %17, align 4
  %140 = call %struct.dentry* @ERR_PTR(i32 %139)
  store %struct.dentry* %140, %struct.dentry** %14, align 8
  br label %141

141:                                              ; preds = %136, %57
  %142 = load %struct.inode*, %struct.inode** %15, align 8
  %143 = call i32 @inode_unlock(%struct.inode* %142)
  %144 = call i32 @simple_release_fs(%struct.TYPE_4__** @mount, i32* @mount_count)
  %145 = load %struct.dentry*, %struct.dentry** %14, align 8
  store %struct.dentry* %145, %struct.dentry** %7, align 8
  br label %146

146:                                              ; preds = %141, %127, %34
  %147 = load %struct.dentry*, %struct.dentry** %7, align 8
  ret %struct.dentry* %147
}

declare dso_local i32 @pr_debug(i8*, i8*) #1

declare dso_local i32 @simple_pin_fs(i32*, %struct.TYPE_4__**, i32*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local %struct.dentry* @lookup_one_len(i8*, %struct.dentry*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i64 @d_really_is_positive(%struct.dentry*) #1

declare dso_local %struct.inode* @new_inode(i32) #1

declare dso_local i32 @get_next_ino(...) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @simple_release_fs(%struct.TYPE_4__**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
