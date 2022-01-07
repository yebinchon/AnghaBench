; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dcache.c_d_add_ci.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dcache.c_d_add_ci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i32 }
%struct.inode = type { i32 }
%struct.qstr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @d_add_ci(%struct.dentry* %0, %struct.inode* %1, %struct.qstr* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.qstr*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.qstr* %2, %struct.qstr** %7, align 8
  %10 = load %struct.dentry*, %struct.dentry** %5, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.qstr*, %struct.qstr** %7, align 8
  %14 = call %struct.dentry* @d_hash_and_lookup(i32 %12, %struct.qstr* %13)
  store %struct.dentry* %14, %struct.dentry** %8, align 8
  %15 = load %struct.dentry*, %struct.dentry** %8, align 8
  %16 = icmp ne %struct.dentry* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = call i32 @iput(%struct.inode* %18)
  %20 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %20, %struct.dentry** %4, align 8
  br label %73

21:                                               ; preds = %3
  %22 = load %struct.dentry*, %struct.dentry** %5, align 8
  %23 = call i64 @d_in_lookup(%struct.dentry* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %21
  %26 = load %struct.dentry*, %struct.dentry** %5, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.qstr*, %struct.qstr** %7, align 8
  %30 = load %struct.dentry*, %struct.dentry** %5, align 8
  %31 = getelementptr inbounds %struct.dentry, %struct.dentry* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.dentry* @d_alloc_parallel(i32 %28, %struct.qstr* %29, i32 %32)
  store %struct.dentry* %33, %struct.dentry** %8, align 8
  %34 = load %struct.dentry*, %struct.dentry** %8, align 8
  %35 = call i64 @IS_ERR(%struct.dentry* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %25
  %38 = load %struct.dentry*, %struct.dentry** %8, align 8
  %39 = call i64 @d_in_lookup(%struct.dentry* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37, %25
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = call i32 @iput(%struct.inode* %42)
  %44 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %44, %struct.dentry** %4, align 8
  br label %73

45:                                               ; preds = %37
  br label %61

46:                                               ; preds = %21
  %47 = load %struct.dentry*, %struct.dentry** %5, align 8
  %48 = getelementptr inbounds %struct.dentry, %struct.dentry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.qstr*, %struct.qstr** %7, align 8
  %51 = call %struct.dentry* @d_alloc(i32 %49, %struct.qstr* %50)
  store %struct.dentry* %51, %struct.dentry** %8, align 8
  %52 = load %struct.dentry*, %struct.dentry** %8, align 8
  %53 = icmp ne %struct.dentry* %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %46
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = call i32 @iput(%struct.inode* %55)
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  %59 = call %struct.dentry* @ERR_PTR(i32 %58)
  store %struct.dentry* %59, %struct.dentry** %4, align 8
  br label %73

60:                                               ; preds = %46
  br label %61

61:                                               ; preds = %60, %45
  %62 = load %struct.inode*, %struct.inode** %6, align 8
  %63 = load %struct.dentry*, %struct.dentry** %8, align 8
  %64 = call %struct.dentry* @d_splice_alias(%struct.inode* %62, %struct.dentry* %63)
  store %struct.dentry* %64, %struct.dentry** %9, align 8
  %65 = load %struct.dentry*, %struct.dentry** %9, align 8
  %66 = icmp ne %struct.dentry* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.dentry*, %struct.dentry** %8, align 8
  %69 = call i32 @dput(%struct.dentry* %68)
  %70 = load %struct.dentry*, %struct.dentry** %9, align 8
  store %struct.dentry* %70, %struct.dentry** %4, align 8
  br label %73

71:                                               ; preds = %61
  %72 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %72, %struct.dentry** %4, align 8
  br label %73

73:                                               ; preds = %71, %67, %54, %41, %17
  %74 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %74
}

declare dso_local %struct.dentry* @d_hash_and_lookup(i32, %struct.qstr*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i64 @d_in_lookup(%struct.dentry*) #1

declare dso_local %struct.dentry* @d_alloc_parallel(i32, %struct.qstr*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local %struct.dentry* @d_alloc(i32, %struct.qstr*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.dentry* @d_splice_alias(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
