; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_inode_lookup_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_inode_lookup_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, i8*, i64, %struct.inode**)* @ext4_xattr_inode_lookup_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_xattr_inode_lookup_create(i32* %0, %struct.inode* %1, i8* %2, i64 %3, %struct.inode** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.inode**, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.inode** %4, %struct.inode*** %11, align 8
  %15 = load %struct.inode*, %struct.inode** %8, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @EXT4_SB(i32 %17)
  %19 = load i8*, i8** %9, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @ext4_xattr_inode_hash(i32 %18, i8* %19, i64 %20)
  store i32 %21, i32* %13, align 4
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i32, i32* %13, align 4
  %26 = call %struct.inode* @ext4_xattr_inode_cache_find(%struct.inode* %22, i8* %23, i64 %24, i32 %25)
  store %struct.inode* %26, %struct.inode** %12, align 8
  %27 = load %struct.inode*, %struct.inode** %12, align 8
  %28 = icmp ne %struct.inode* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %5
  %30 = load i32*, i32** %7, align 8
  %31 = load %struct.inode*, %struct.inode** %12, align 8
  %32 = call i32 @ext4_xattr_inode_inc_ref(i32* %30, %struct.inode* %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.inode*, %struct.inode** %12, align 8
  %37 = call i32 @iput(%struct.inode* %36)
  %38 = load i32, i32* %14, align 4
  store i32 %38, i32* %6, align 4
  br label %84

39:                                               ; preds = %29
  %40 = load %struct.inode*, %struct.inode** %12, align 8
  %41 = load %struct.inode**, %struct.inode*** %11, align 8
  store %struct.inode* %40, %struct.inode** %41, align 8
  store i32 0, i32* %6, align 4
  br label %84

42:                                               ; preds = %5
  %43 = load i32*, i32** %7, align 8
  %44 = load %struct.inode*, %struct.inode** %8, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call %struct.inode* @ext4_xattr_inode_create(i32* %43, %struct.inode* %44, i32 %45)
  store %struct.inode* %46, %struct.inode** %12, align 8
  %47 = load %struct.inode*, %struct.inode** %12, align 8
  %48 = call i64 @IS_ERR(%struct.inode* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load %struct.inode*, %struct.inode** %12, align 8
  %52 = call i32 @PTR_ERR(%struct.inode* %51)
  store i32 %52, i32* %6, align 4
  br label %84

53:                                               ; preds = %42
  %54 = load i32*, i32** %7, align 8
  %55 = load %struct.inode*, %struct.inode** %12, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @ext4_xattr_inode_write(i32* %54, %struct.inode* %55, i8* %56, i64 %57)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %53
  %62 = load i32*, i32** %7, align 8
  %63 = load %struct.inode*, %struct.inode** %12, align 8
  %64 = call i32 @ext4_xattr_inode_dec_ref(i32* %62, %struct.inode* %63)
  %65 = load %struct.inode*, %struct.inode** %12, align 8
  %66 = call i32 @iput(%struct.inode* %65)
  %67 = load i32, i32* %14, align 4
  store i32 %67, i32* %6, align 4
  br label %84

68:                                               ; preds = %53
  %69 = load %struct.inode*, %struct.inode** %8, align 8
  %70 = call i64 @EA_INODE_CACHE(%struct.inode* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %68
  %73 = load %struct.inode*, %struct.inode** %8, align 8
  %74 = call i64 @EA_INODE_CACHE(%struct.inode* %73)
  %75 = load i32, i32* @GFP_NOFS, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load %struct.inode*, %struct.inode** %12, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @mb_cache_entry_create(i64 %74, i32 %75, i32 %76, i32 %79, i32 1)
  br label %81

81:                                               ; preds = %72, %68
  %82 = load %struct.inode*, %struct.inode** %12, align 8
  %83 = load %struct.inode**, %struct.inode*** %11, align 8
  store %struct.inode* %82, %struct.inode** %83, align 8
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %81, %61, %50, %39, %35
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i32 @ext4_xattr_inode_hash(i32, i8*, i64) #1

declare dso_local i32 @EXT4_SB(i32) #1

declare dso_local %struct.inode* @ext4_xattr_inode_cache_find(%struct.inode*, i8*, i64, i32) #1

declare dso_local i32 @ext4_xattr_inode_inc_ref(i32*, %struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.inode* @ext4_xattr_inode_create(i32*, %struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @ext4_xattr_inode_write(i32*, %struct.inode*, i8*, i64) #1

declare dso_local i32 @ext4_xattr_inode_dec_ref(i32*, %struct.inode*) #1

declare dso_local i64 @EA_INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @mb_cache_entry_create(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
