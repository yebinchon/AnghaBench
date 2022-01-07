; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_sysfile.c_ocfs2_get_system_file_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_sysfile.c_ocfs2_get_system_file_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_super = type { i32, %struct.inode** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ocfs2_super*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.inode**, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.inode* null, %struct.inode** %8, align 8
  store %struct.inode** null, %struct.inode*** %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @is_global_system_inode(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %15 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %14, i32 0, i32 1
  %16 = load %struct.inode**, %struct.inode*** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.inode*, %struct.inode** %16, i64 %18
  store %struct.inode** %19, %struct.inode*** %9, align 8
  br label %25

20:                                               ; preds = %3
  %21 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call %struct.inode** @get_local_system_inode(%struct.ocfs2_super* %21, i32 %22, i32 %23)
  store %struct.inode** %24, %struct.inode*** %9, align 8
  br label %25

25:                                               ; preds = %20, %13
  %26 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %27 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.inode**, %struct.inode*** %9, align 8
  %30 = icmp ne %struct.inode** %29, null
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = load %struct.inode**, %struct.inode*** %9, align 8
  %33 = load %struct.inode*, %struct.inode** %32, align 8
  store %struct.inode* %33, %struct.inode** %8, align 8
  %34 = icmp ne %struct.inode* %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load %struct.inode*, %struct.inode** %8, align 8
  %37 = call %struct.inode* @igrab(%struct.inode* %36)
  store %struct.inode* %37, %struct.inode** %8, align 8
  %38 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %39 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load %struct.inode*, %struct.inode** %8, align 8
  %42 = icmp ne %struct.inode* %41, null
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @BUG_ON(i32 %44)
  %46 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %46, %struct.inode** %4, align 8
  br label %72

47:                                               ; preds = %31, %25
  %48 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call %struct.inode* @_ocfs2_get_system_file_inode(%struct.ocfs2_super* %48, i32 %49, i32 %50)
  store %struct.inode* %51, %struct.inode** %8, align 8
  %52 = load %struct.inode**, %struct.inode*** %9, align 8
  %53 = icmp ne %struct.inode** %52, null
  br i1 %53, label %54, label %67

54:                                               ; preds = %47
  %55 = load %struct.inode*, %struct.inode** %8, align 8
  %56 = icmp ne %struct.inode* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load %struct.inode*, %struct.inode** %8, align 8
  %59 = call %struct.inode* @igrab(%struct.inode* %58)
  %60 = load %struct.inode**, %struct.inode*** %9, align 8
  store %struct.inode* %59, %struct.inode** %60, align 8
  %61 = load %struct.inode**, %struct.inode*** %9, align 8
  %62 = load %struct.inode*, %struct.inode** %61, align 8
  %63 = icmp ne %struct.inode* %62, null
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @BUG_ON(i32 %65)
  br label %67

67:                                               ; preds = %57, %54, %47
  %68 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %69 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %71, %struct.inode** %4, align 8
  br label %72

72:                                               ; preds = %67, %35
  %73 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %73
}

declare dso_local i64 @is_global_system_inode(i32) #1

declare dso_local %struct.inode** @get_local_system_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.inode* @igrab(%struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.inode* @_ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
