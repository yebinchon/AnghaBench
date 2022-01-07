; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_file.c_do_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_file.c_do_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.inode = type { %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.inode*, i32*)* }
%struct.iattr = type { i32, i32 }
%struct.ubifs_inode = type { i32, i32, i32, i32 }
%struct.ubifs_budget_req = type { i32, i32 }

@ATTR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"size %lld -> %lld\00", align 1
@I_DIRTY_DATASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.inode*, %struct.iattr*)* @do_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_setattr(%struct.ubifs_info* %0, %struct.inode* %1, %struct.iattr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.iattr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ubifs_inode*, align 8
  %12 = alloca %struct.ubifs_budget_req, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.iattr* %2, %struct.iattr** %7, align 8
  %13 = load %struct.iattr*, %struct.iattr** %7, align 8
  %14 = getelementptr inbounds %struct.iattr, %struct.iattr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %16)
  store %struct.ubifs_inode* %17, %struct.ubifs_inode** %11, align 8
  %18 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %12, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %12, i32 0, i32 1
  %20 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %21 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ALIGN(i32 %22, i32 8)
  store i32 %23, i32* %19, align 4
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %25 = call i32 @ubifs_budget_space(%struct.ubifs_info* %24, %struct.ubifs_budget_req* %12)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %113

30:                                               ; preds = %3
  %31 = load %struct.iattr*, %struct.iattr** %7, align 8
  %32 = getelementptr inbounds %struct.iattr, %struct.iattr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ATTR_SIZE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %30
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @dbg_gen(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load %struct.inode*, %struct.inode** %6, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @truncate_setsize(%struct.inode* %43, i32 %44)
  br label %46

46:                                               ; preds = %37, %30
  %47 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %48 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %47, i32 0, i32 1
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.iattr*, %struct.iattr** %7, align 8
  %51 = getelementptr inbounds %struct.iattr, %struct.iattr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ATTR_SIZE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %46
  %57 = load %struct.inode*, %struct.inode** %6, align 8
  %58 = call i32 @current_time(%struct.inode* %57)
  %59 = load %struct.inode*, %struct.inode** %6, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load %struct.inode*, %struct.inode** %6, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 3
  store i32 %58, i32* %62, align 8
  %63 = load %struct.inode*, %struct.inode** %6, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %67 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %56, %46
  %69 = load %struct.inode*, %struct.inode** %6, align 8
  %70 = load %struct.iattr*, %struct.iattr** %7, align 8
  %71 = call i32 @do_attr_changes(%struct.inode* %69, %struct.iattr* %70)
  %72 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %73 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %9, align 4
  %75 = load %struct.iattr*, %struct.iattr** %7, align 8
  %76 = getelementptr inbounds %struct.iattr, %struct.iattr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ATTR_SIZE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %68
  %82 = load %struct.inode*, %struct.inode** %6, align 8
  %83 = load i32, i32* @I_DIRTY_DATASYNC, align 4
  %84 = call i32 @__mark_inode_dirty(%struct.inode* %82, i32 %83)
  br label %88

85:                                               ; preds = %68
  %86 = load %struct.inode*, %struct.inode** %6, align 8
  %87 = call i32 @mark_inode_dirty_sync(%struct.inode* %86)
  br label %88

88:                                               ; preds = %85, %81
  %89 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %90 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %89, i32 0, i32 1
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %96 = call i32 @ubifs_release_budget(%struct.ubifs_info* %95, %struct.ubifs_budget_req* %12)
  br label %97

97:                                               ; preds = %94, %88
  %98 = load %struct.inode*, %struct.inode** %6, align 8
  %99 = call i64 @IS_SYNC(%struct.inode* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %97
  %102 = load %struct.inode*, %struct.inode** %6, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32 (%struct.inode*, i32*)*, i32 (%struct.inode*, i32*)** %107, align 8
  %109 = load %struct.inode*, %struct.inode** %6, align 8
  %110 = call i32 %108(%struct.inode* %109, i32* null)
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %101, %97
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %111, %28
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @ubifs_budget_space(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @dbg_gen(i8*, i32, i32) #1

declare dso_local i32 @truncate_setsize(%struct.inode*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @do_attr_changes(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @__mark_inode_dirty(%struct.inode*, i32) #1

declare dso_local i32 @mark_inode_dirty_sync(%struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ubifs_release_budget(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
