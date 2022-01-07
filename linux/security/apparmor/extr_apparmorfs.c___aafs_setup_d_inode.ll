; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c___aafs_setup_d_inode.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c___aafs_setup_d_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode_operations = type { i32 }
%struct.file_operations = type { i32 }
%struct.inode = type { i8*, %struct.file_operations*, %struct.inode_operations*, i8*, i32, i32, i32, i32, i32, i32 }
%struct.dentry = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@simple_dir_inode_operations = common dso_local global %struct.inode_operations zeroinitializer, align 4
@simple_dir_operations = common dso_local global %struct.file_operations zeroinitializer, align 4
@simple_symlink_inode_operations = common dso_local global %struct.inode_operations zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i8*, i8*, %struct.file_operations*, %struct.inode_operations*)* @__aafs_setup_d_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__aafs_setup_d_inode(%struct.inode* %0, %struct.dentry* %1, i32 %2, i8* %3, i8* %4, %struct.file_operations* %5, %struct.inode_operations* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.file_operations*, align 8
  %15 = alloca %struct.inode_operations*, align 8
  %16 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %9, align 8
  store %struct.dentry* %1, %struct.dentry** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store %struct.file_operations* %5, %struct.file_operations** %14, align 8
  store %struct.inode_operations* %6, %struct.inode_operations** %15, align 8
  %17 = load %struct.inode*, %struct.inode** %9, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.inode* @new_inode(i32 %19)
  store %struct.inode* %20, %struct.inode** %16, align 8
  %21 = load %struct.inode*, %struct.inode** %9, align 8
  %22 = icmp ne %struct.inode* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @AA_BUG(i32 %24)
  %26 = load %struct.dentry*, %struct.dentry** %10, align 8
  %27 = icmp ne %struct.dentry* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @AA_BUG(i32 %29)
  %31 = load %struct.inode*, %struct.inode** %16, align 8
  %32 = icmp ne %struct.inode* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %7
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %8, align 4
  br label %101

36:                                               ; preds = %7
  %37 = call i32 (...) @get_next_ino()
  %38 = load %struct.inode*, %struct.inode** %16, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 8
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.inode*, %struct.inode** %16, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 4
  %43 = load %struct.inode*, %struct.inode** %16, align 8
  %44 = call i32 @current_time(%struct.inode* %43)
  %45 = load %struct.inode*, %struct.inode** %16, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load %struct.inode*, %struct.inode** %16, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 5
  store i32 %44, i32* %48, align 4
  %49 = load %struct.inode*, %struct.inode** %16, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 6
  store i32 %44, i32* %50, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = load %struct.inode*, %struct.inode** %16, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i64 @S_ISDIR(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %36
  %58 = load %struct.inode_operations*, %struct.inode_operations** %15, align 8
  %59 = icmp ne %struct.inode_operations* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load %struct.inode_operations*, %struct.inode_operations** %15, align 8
  br label %63

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi %struct.inode_operations* [ %61, %60 ], [ @simple_dir_inode_operations, %62 ]
  %65 = load %struct.inode*, %struct.inode** %16, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 2
  store %struct.inode_operations* %64, %struct.inode_operations** %66, align 8
  %67 = load %struct.inode*, %struct.inode** %16, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 1
  store %struct.file_operations* @simple_dir_operations, %struct.file_operations** %68, align 8
  %69 = load %struct.inode*, %struct.inode** %16, align 8
  %70 = call i32 @inc_nlink(%struct.inode* %69)
  %71 = load %struct.inode*, %struct.inode** %9, align 8
  %72 = call i32 @inc_nlink(%struct.inode* %71)
  br label %95

73:                                               ; preds = %36
  %74 = load i32, i32* %11, align 4
  %75 = call i64 @S_ISLNK(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %73
  %78 = load %struct.inode_operations*, %struct.inode_operations** %15, align 8
  %79 = icmp ne %struct.inode_operations* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load %struct.inode_operations*, %struct.inode_operations** %15, align 8
  br label %83

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %82, %80
  %84 = phi %struct.inode_operations* [ %81, %80 ], [ @simple_symlink_inode_operations, %82 ]
  %85 = load %struct.inode*, %struct.inode** %16, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 2
  store %struct.inode_operations* %84, %struct.inode_operations** %86, align 8
  %87 = load i8*, i8** %13, align 8
  %88 = load %struct.inode*, %struct.inode** %16, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  br label %94

90:                                               ; preds = %73
  %91 = load %struct.file_operations*, %struct.file_operations** %14, align 8
  %92 = load %struct.inode*, %struct.inode** %16, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 1
  store %struct.file_operations* %91, %struct.file_operations** %93, align 8
  br label %94

94:                                               ; preds = %90, %83
  br label %95

95:                                               ; preds = %94, %63
  %96 = load %struct.dentry*, %struct.dentry** %10, align 8
  %97 = load %struct.inode*, %struct.inode** %16, align 8
  %98 = call i32 @d_instantiate(%struct.dentry* %96, %struct.inode* %97)
  %99 = load %struct.dentry*, %struct.dentry** %10, align 8
  %100 = call i32 @dget(%struct.dentry* %99)
  store i32 0, i32* %8, align 4
  br label %101

101:                                              ; preds = %95, %33
  %102 = load i32, i32* %8, align 4
  ret i32 %102
}

declare dso_local %struct.inode* @new_inode(i32) #1

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @get_next_ino(...) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
