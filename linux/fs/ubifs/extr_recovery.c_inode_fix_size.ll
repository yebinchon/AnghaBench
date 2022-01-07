; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_recovery.c_inode_fix_size.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_recovery.c_inode_fix_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i64, i32 }
%struct.size_entry = type { i64, i32, %struct.inode*, i64 }
%struct.inode = type { i64 }
%struct.ubifs_inode = type { i64, i64 }

@.str = private unnamed_addr constant [26 x i8] c"ino %lu size %lld -> %lld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.size_entry*)* @inode_fix_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inode_fix_size(%struct.ubifs_info* %0, %struct.size_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.size_entry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ubifs_inode*, align 8
  %8 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.size_entry* %1, %struct.size_entry** %5, align 8
  %9 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %10 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %15 = load %struct.size_entry*, %struct.size_entry** %5, align 8
  %16 = getelementptr inbounds %struct.size_entry, %struct.size_entry* %15, i32 0, i32 2
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  %18 = icmp ne %struct.inode* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @ubifs_assert(%struct.ubifs_info* %14, i32 %20)
  br label %22

22:                                               ; preds = %13, %2
  %23 = load %struct.size_entry*, %struct.size_entry** %5, align 8
  %24 = getelementptr inbounds %struct.size_entry, %struct.size_entry* %23, i32 0, i32 2
  %25 = load %struct.inode*, %struct.inode** %24, align 8
  %26 = icmp ne %struct.inode* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.size_entry*, %struct.size_entry** %5, align 8
  %29 = getelementptr inbounds %struct.size_entry, %struct.size_entry* %28, i32 0, i32 2
  %30 = load %struct.inode*, %struct.inode** %29, align 8
  store %struct.inode* %30, %struct.inode** %6, align 8
  br label %87

31:                                               ; preds = %22
  %32 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %33 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.size_entry*, %struct.size_entry** %5, align 8
  %36 = getelementptr inbounds %struct.size_entry, %struct.size_entry* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = call %struct.inode* @ubifs_iget(i32 %34, i64 %37)
  store %struct.inode* %38, %struct.inode** %6, align 8
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = call i64 @IS_ERR(%struct.inode* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load %struct.inode*, %struct.inode** %6, align 8
  %44 = call i32 @PTR_ERR(%struct.inode* %43)
  store i32 %44, i32* %3, align 4
  br label %111

45:                                               ; preds = %31
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.size_entry*, %struct.size_entry** %5, align 8
  %50 = getelementptr inbounds %struct.size_entry, %struct.size_entry* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sge i64 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load %struct.inode*, %struct.inode** %6, align 8
  %55 = call i32 @iput(%struct.inode* %54)
  store i32 0, i32* %3, align 4
  br label %111

56:                                               ; preds = %45
  %57 = load %struct.size_entry*, %struct.size_entry** %5, align 8
  %58 = getelementptr inbounds %struct.size_entry, %struct.size_entry* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.inode*, %struct.inode** %6, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.size_entry*, %struct.size_entry** %5, align 8
  %64 = getelementptr inbounds %struct.size_entry, %struct.size_entry* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @dbg_rcvry(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %59, i64 %62, i64 %65)
  %67 = load %struct.inode*, %struct.inode** %6, align 8
  %68 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %67)
  store %struct.ubifs_inode* %68, %struct.ubifs_inode** %7, align 8
  %69 = load %struct.size_entry*, %struct.size_entry** %5, align 8
  %70 = getelementptr inbounds %struct.size_entry, %struct.size_entry* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.size_entry*, %struct.size_entry** %5, align 8
  %75 = getelementptr inbounds %struct.size_entry, %struct.size_entry* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %78 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.size_entry*, %struct.size_entry** %5, align 8
  %80 = getelementptr inbounds %struct.size_entry, %struct.size_entry* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %83 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = load %struct.inode*, %struct.inode** %6, align 8
  %85 = load %struct.size_entry*, %struct.size_entry** %5, align 8
  %86 = getelementptr inbounds %struct.size_entry, %struct.size_entry* %85, i32 0, i32 2
  store %struct.inode* %84, %struct.inode** %86, align 8
  br label %87

87:                                               ; preds = %56, %27
  %88 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %89 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store i32 0, i32* %3, align 4
  br label %111

93:                                               ; preds = %87
  %94 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %95 = load %struct.inode*, %struct.inode** %6, align 8
  %96 = call i32 @ubifs_jnl_write_inode(%struct.ubifs_info* %94, %struct.inode* %95)
  store i32 %96, i32* %8, align 4
  %97 = load %struct.inode*, %struct.inode** %6, align 8
  %98 = call i32 @iput(%struct.inode* %97)
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %93
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %3, align 4
  br label %111

103:                                              ; preds = %93
  %104 = load %struct.size_entry*, %struct.size_entry** %5, align 8
  %105 = getelementptr inbounds %struct.size_entry, %struct.size_entry* %104, i32 0, i32 1
  %106 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %107 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %106, i32 0, i32 0
  %108 = call i32 @rb_erase(i32* %105, i32* %107)
  %109 = load %struct.size_entry*, %struct.size_entry** %5, align 8
  %110 = call i32 @kfree(%struct.size_entry* %109)
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %103, %101, %92, %53, %42
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local %struct.inode* @ubifs_iget(i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @dbg_rcvry(i8*, i64, i64, i64) #1

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @ubifs_jnl_write_inode(%struct.ubifs_info*, %struct.inode*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.size_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
