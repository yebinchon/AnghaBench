; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_libfs.c_simple_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_libfs.c_simple_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dentry = type { i32 }

@RENAME_NOREPLACE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @simple_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store %struct.dentry* %3, %struct.dentry** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.dentry*, %struct.dentry** %8, align 8
  %15 = call %struct.inode* @d_inode(%struct.dentry* %14)
  store %struct.inode* %15, %struct.inode** %12, align 8
  %16 = load %struct.dentry*, %struct.dentry** %8, align 8
  %17 = call i32 @d_is_dir(%struct.dentry* %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @RENAME_NOREPLACE, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %72

26:                                               ; preds = %5
  %27 = load %struct.dentry*, %struct.dentry** %10, align 8
  %28 = call i32 @simple_empty(%struct.dentry* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @ENOTEMPTY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %72

33:                                               ; preds = %26
  %34 = load %struct.dentry*, %struct.dentry** %10, align 8
  %35 = call i64 @d_really_is_positive(%struct.dentry* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load %struct.inode*, %struct.inode** %9, align 8
  %39 = load %struct.dentry*, %struct.dentry** %10, align 8
  %40 = call i32 @simple_unlink(%struct.inode* %38, %struct.dentry* %39)
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.dentry*, %struct.dentry** %10, align 8
  %45 = call %struct.inode* @d_inode(%struct.dentry* %44)
  %46 = call i32 @drop_nlink(%struct.inode* %45)
  %47 = load %struct.inode*, %struct.inode** %7, align 8
  %48 = call i32 @drop_nlink(%struct.inode* %47)
  br label %49

49:                                               ; preds = %43, %37
  br label %59

50:                                               ; preds = %33
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load %struct.inode*, %struct.inode** %7, align 8
  %55 = call i32 @drop_nlink(%struct.inode* %54)
  %56 = load %struct.inode*, %struct.inode** %9, align 8
  %57 = call i32 @inc_nlink(%struct.inode* %56)
  br label %58

58:                                               ; preds = %53, %50
  br label %59

59:                                               ; preds = %58, %49
  %60 = load %struct.inode*, %struct.inode** %7, align 8
  %61 = call i32 @current_time(%struct.inode* %60)
  %62 = load %struct.inode*, %struct.inode** %12, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load %struct.inode*, %struct.inode** %9, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 1
  store i32 %61, i32* %65, align 4
  %66 = load %struct.inode*, %struct.inode** %9, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 0
  store i32 %61, i32* %67, align 4
  %68 = load %struct.inode*, %struct.inode** %7, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 1
  store i32 %61, i32* %69, align 4
  %70 = load %struct.inode*, %struct.inode** %7, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 0
  store i32 %61, i32* %71, align 4
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %59, %30, %23
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @d_is_dir(%struct.dentry*) #1

declare dso_local i32 @simple_empty(%struct.dentry*) #1

declare dso_local i64 @d_really_is_positive(%struct.dentry*) #1

declare dso_local i32 @simple_unlink(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
