; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_acl.c_NULL.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_acl.c_NULL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32 }
%struct.posix_acl = type { i32 }

@EXT4_HT_XATTR = common dso_local global i32 0, align 4
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_set_acl(%struct.inode* %0, %struct.posix_acl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.posix_acl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.posix_acl* %1, %struct.posix_acl** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %16 = icmp ne %struct.posix_acl* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %19 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @ext4_acl_size(i32 %20)
  br label %23

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %22, %17
  %24 = phi i64 [ %21, %17 ], [ 0, %22 ]
  store i64 %24, i64* %12, align 8
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = call i32 @dquot_initialize(%struct.inode* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %114

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %111, %34
  %36 = load %struct.inode*, %struct.inode** %5, align 8
  %37 = load i64, i64* %12, align 8
  %38 = call i32 @ext4_xattr_set_credits(%struct.inode* %36, i64 %37, i32 0, i32* %10)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %114

43:                                               ; preds = %35
  %44 = load %struct.inode*, %struct.inode** %5, align 8
  %45 = load i32, i32* @EXT4_HT_XATTR, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32* @ext4_journal_start(%struct.inode* %44, i32 %45, i32 %46)
  store i32* %47, i32** %8, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i64 @IS_ERR(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @PTR_ERR(i32* %52)
  store i32 %53, i32* %4, align 4
  br label %114

54:                                               ; preds = %43
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %54
  %59 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %60 = icmp ne %struct.posix_acl* %59, null
  br i1 %60, label %61, label %75

61:                                               ; preds = %58
  %62 = load %struct.inode*, %struct.inode** %5, align 8
  %63 = call i32 @posix_acl_update_mode(%struct.inode* %62, i64* %13, %struct.posix_acl** %6)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %98

67:                                               ; preds = %61
  %68 = load i64, i64* %13, align 8
  %69 = load %struct.inode*, %struct.inode** %5, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store i32 1, i32* %14, align 4
  br label %74

74:                                               ; preds = %73, %67
  br label %75

75:                                               ; preds = %74, %58, %54
  %76 = load i32*, i32** %8, align 8
  %77 = load %struct.inode*, %struct.inode** %5, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %80 = call i32 @__ext4_set_acl(i32* %76, %struct.inode* %77, i32 %78, %struct.posix_acl* %79, i32 0)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %97, label %83

83:                                               ; preds = %75
  %84 = load i32, i32* %14, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %83
  %87 = load i64, i64* %13, align 8
  %88 = load %struct.inode*, %struct.inode** %5, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.inode*, %struct.inode** %5, align 8
  %91 = call i32 @current_time(%struct.inode* %90)
  %92 = load %struct.inode*, %struct.inode** %5, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = load %struct.inode*, %struct.inode** %5, align 8
  %96 = call i32 @ext4_mark_inode_dirty(i32* %94, %struct.inode* %95)
  br label %97

97:                                               ; preds = %86, %83, %75
  br label %98

98:                                               ; preds = %97, %66
  %99 = load i32*, i32** %8, align 8
  %100 = call i32 @ext4_journal_stop(i32* %99)
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @ENOSPC, align 4
  %103 = sub nsw i32 0, %102
  %104 = icmp eq i32 %101, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %98
  %106 = load %struct.inode*, %struct.inode** %5, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i64 @ext4_should_retry_alloc(i32 %108, i32* %11)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %35

112:                                              ; preds = %105, %98
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %112, %51, %41, %32
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i64 @ext4_acl_size(i32) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32 @ext4_xattr_set_credits(%struct.inode*, i64, i32, i32*) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @posix_acl_update_mode(%struct.inode*, i64*, %struct.posix_acl**) #1

declare dso_local i32 @__ext4_set_acl(i32*, %struct.inode*, i32, %struct.posix_acl*, i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i64 @ext4_should_retry_alloc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
