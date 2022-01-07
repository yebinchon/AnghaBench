; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_inode.c_hfsplus_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_inode.c_hfsplus_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.iattr = type { i32, i64 }
%struct.inode = type { i64, i32, i32 }

@ATTR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.iattr*)* @hfsplus_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsplus_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %8 = load %struct.dentry*, %struct.dentry** %4, align 8
  %9 = call %struct.inode* @d_inode(%struct.dentry* %8)
  store %struct.inode* %9, %struct.inode** %6, align 8
  %10 = load %struct.dentry*, %struct.dentry** %4, align 8
  %11 = load %struct.iattr*, %struct.iattr** %5, align 8
  %12 = call i32 @setattr_prepare(%struct.dentry* %10, %struct.iattr* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %72

17:                                               ; preds = %2
  %18 = load %struct.iattr*, %struct.iattr** %5, align 8
  %19 = getelementptr inbounds %struct.iattr, %struct.iattr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ATTR_SIZE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %66

24:                                               ; preds = %17
  %25 = load %struct.iattr*, %struct.iattr** %5, align 8
  %26 = getelementptr inbounds %struct.iattr, %struct.iattr* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = call i64 @i_size_read(%struct.inode* %28)
  %30 = icmp ne i64 %27, %29
  br i1 %30, label %31, label %66

31:                                               ; preds = %24
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = call i32 @inode_dio_wait(%struct.inode* %32)
  %34 = load %struct.iattr*, %struct.iattr** %5, align 8
  %35 = getelementptr inbounds %struct.iattr, %struct.iattr* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %36, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %31
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = load %struct.iattr*, %struct.iattr** %5, align 8
  %44 = getelementptr inbounds %struct.iattr, %struct.iattr* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @generic_cont_expand_simple(%struct.inode* %42, i64 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %72

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51, %31
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = load %struct.iattr*, %struct.iattr** %5, align 8
  %55 = getelementptr inbounds %struct.iattr, %struct.iattr* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @truncate_setsize(%struct.inode* %53, i64 %56)
  %58 = load %struct.inode*, %struct.inode** %6, align 8
  %59 = call i32 @hfsplus_file_truncate(%struct.inode* %58)
  %60 = load %struct.inode*, %struct.inode** %6, align 8
  %61 = call i32 @current_time(%struct.inode* %60)
  %62 = load %struct.inode*, %struct.inode** %6, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.inode*, %struct.inode** %6, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 2
  store i32 %61, i32* %65, align 4
  br label %66

66:                                               ; preds = %52, %24, %17
  %67 = load %struct.inode*, %struct.inode** %6, align 8
  %68 = load %struct.iattr*, %struct.iattr** %5, align 8
  %69 = call i32 @setattr_copy(%struct.inode* %67, %struct.iattr* %68)
  %70 = load %struct.inode*, %struct.inode** %6, align 8
  %71 = call i32 @mark_inode_dirty(%struct.inode* %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %66, %49, %15
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @setattr_prepare(%struct.dentry*, %struct.iattr*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @inode_dio_wait(%struct.inode*) #1

declare dso_local i32 @generic_cont_expand_simple(%struct.inode*, i64) #1

declare dso_local i32 @truncate_setsize(%struct.inode*, i64) #1

declare dso_local i32 @hfsplus_file_truncate(%struct.inode*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @setattr_copy(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
