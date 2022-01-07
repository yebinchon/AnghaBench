; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_inode.c___kernfs_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_inode.c___kernfs_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { i32 }
%struct.iattr = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.kernfs_iattrs = type { i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@ATTR_ATIME = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@ATTR_CTIME = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__kernfs_setattr(%struct.kernfs_node* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kernfs_node*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.kernfs_iattrs*, align 8
  %7 = alloca i32, align 4
  store %struct.kernfs_node* %0, %struct.kernfs_node** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %8 = load %struct.iattr*, %struct.iattr** %5, align 8
  %9 = getelementptr inbounds %struct.iattr, %struct.iattr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %12 = call %struct.kernfs_iattrs* @kernfs_iattrs(%struct.kernfs_node* %11)
  store %struct.kernfs_iattrs* %12, %struct.kernfs_iattrs** %6, align 8
  %13 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %6, align 8
  %14 = icmp ne %struct.kernfs_iattrs* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %85

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @ATTR_UID, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.iattr*, %struct.iattr** %5, align 8
  %25 = getelementptr inbounds %struct.iattr, %struct.iattr* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %6, align 8
  %28 = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %23, %18
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @ATTR_GID, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.iattr*, %struct.iattr** %5, align 8
  %36 = getelementptr inbounds %struct.iattr, %struct.iattr* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %6, align 8
  %39 = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %34, %29
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @ATTR_ATIME, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.iattr*, %struct.iattr** %5, align 8
  %47 = getelementptr inbounds %struct.iattr, %struct.iattr* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %6, align 8
  %50 = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %45, %40
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @ATTR_MTIME, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.iattr*, %struct.iattr** %5, align 8
  %58 = getelementptr inbounds %struct.iattr, %struct.iattr* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %6, align 8
  %61 = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %56, %51
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @ATTR_CTIME, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load %struct.iattr*, %struct.iattr** %5, align 8
  %69 = getelementptr inbounds %struct.iattr, %struct.iattr* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.kernfs_iattrs*, %struct.kernfs_iattrs** %6, align 8
  %72 = getelementptr inbounds %struct.kernfs_iattrs, %struct.kernfs_iattrs* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %67, %62
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @ATTR_MODE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.iattr*, %struct.iattr** %5, align 8
  %80 = getelementptr inbounds %struct.iattr, %struct.iattr* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %83 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %78, %73
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %15
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.kernfs_iattrs* @kernfs_iattrs(%struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
