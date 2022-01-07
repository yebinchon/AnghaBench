; ModuleID = '/home/carl/AnghaBench/linux/fs/tracefs/extr_inode.c_tracefs_create_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/tracefs/extr_inode.c_tracefs_create_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_operations = type { i32 }
%struct.dentry = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32, i8*, %struct.file_operations* }

@LOCKDOWN_TRACEFS = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@tracefs_file_operations = common dso_local global %struct.file_operations zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @tracefs_create_file(i8* %0, i32 %1, %struct.dentry* %2, i8* %3, %struct.file_operations* %4) #0 {
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.file_operations*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca %struct.inode*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.dentry* %2, %struct.dentry** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.file_operations* %4, %struct.file_operations** %11, align 8
  %14 = load i32, i32* @LOCKDOWN_TRACEFS, align 4
  %15 = call i64 @security_locked_down(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store %struct.dentry* null, %struct.dentry** %6, align 8
  br label %83

18:                                               ; preds = %5
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @S_IFMT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @S_IFREG, align 4
  %25 = load i32, i32* %8, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %23, %18
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @S_ISREG(i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.dentry*, %struct.dentry** %9, align 8
  %36 = call %struct.dentry* @start_creating(i8* %34, %struct.dentry* %35)
  store %struct.dentry* %36, %struct.dentry** %12, align 8
  %37 = load %struct.dentry*, %struct.dentry** %12, align 8
  %38 = call i64 @IS_ERR(%struct.dentry* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  store %struct.dentry* null, %struct.dentry** %6, align 8
  br label %83

41:                                               ; preds = %27
  %42 = load %struct.dentry*, %struct.dentry** %12, align 8
  %43 = getelementptr inbounds %struct.dentry, %struct.dentry* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call %struct.inode* @tracefs_get_inode(i32 %44)
  store %struct.inode* %45, %struct.inode** %13, align 8
  %46 = load %struct.inode*, %struct.inode** %13, align 8
  %47 = icmp ne %struct.inode* %46, null
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = load %struct.dentry*, %struct.dentry** %12, align 8
  %54 = call %struct.dentry* @failed_creating(%struct.dentry* %53)
  store %struct.dentry* %54, %struct.dentry** %6, align 8
  br label %83

55:                                               ; preds = %41
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.inode*, %struct.inode** %13, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.file_operations*, %struct.file_operations** %11, align 8
  %60 = icmp ne %struct.file_operations* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load %struct.file_operations*, %struct.file_operations** %11, align 8
  br label %64

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi %struct.file_operations* [ %62, %61 ], [ @tracefs_file_operations, %63 ]
  %66 = load %struct.inode*, %struct.inode** %13, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 2
  store %struct.file_operations* %65, %struct.file_operations** %67, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load %struct.inode*, %struct.inode** %13, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load %struct.dentry*, %struct.dentry** %12, align 8
  %72 = load %struct.inode*, %struct.inode** %13, align 8
  %73 = call i32 @d_instantiate(%struct.dentry* %71, %struct.inode* %72)
  %74 = load %struct.dentry*, %struct.dentry** %12, align 8
  %75 = getelementptr inbounds %struct.dentry, %struct.dentry* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.dentry*, %struct.dentry** %12, align 8
  %80 = call i32 @fsnotify_create(i32 %78, %struct.dentry* %79)
  %81 = load %struct.dentry*, %struct.dentry** %12, align 8
  %82 = call %struct.dentry* @end_creating(%struct.dentry* %81)
  store %struct.dentry* %82, %struct.dentry** %6, align 8
  br label %83

83:                                               ; preds = %64, %52, %40, %17
  %84 = load %struct.dentry*, %struct.dentry** %6, align 8
  ret %struct.dentry* %84
}

declare dso_local i64 @security_locked_down(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local %struct.dentry* @start_creating(i8*, %struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local %struct.inode* @tracefs_get_inode(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.dentry* @failed_creating(%struct.dentry*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @fsnotify_create(i32, %struct.dentry*) #1

declare dso_local %struct.dentry* @end_creating(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
